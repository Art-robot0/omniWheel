/******************************************************************
功能如下：

串口通信说明：
1.写入串口
                               
（1）内容：         地址  读/写命令  灯光   窗帘   电源   风扇 
（2）格式：  oxA5    1     1/2     1/2    1/2   1/2   1/2   0x0d 0x0a
2.读取串口                        光照度   温度   湿度   CO2
（1）内容                         煤气     漏水
（2）格式：
*******************************************************************/
#include "ros/ros.h"  //ros需要的头文件
#include <ros/console.h>
#include <geometry_msgs/Twist.h>
#include <iot_modules/IOTnet.h>
#include <std_msgs/String.h>
#include <sstream>

//以下为串口通讯需要的头文件
#include <string>        
#include <iostream>
#include <cstdio>
#include <unistd.h>
#include <math.h>
#include "serial/serial.h"

using std::string;
using std::exception;
using std::cout;
using std::cerr;
using std::endl;
using std::vector;
/*****************************************************************************/

//************************************************************************
int module_adderss_S=0;  //发送的模块地址，
int module_adderss_R=0;  //接收到的模块地址
int place=0;

int sim_;
/****************************************************/

//************************通讯参数配置*******************************************************
unsigned char data_terminal0=0x0d;  
unsigned char data_terminal1=0x0a;  
unsigned char module_command[21]={0};   //要发给串口的数据
string rec_buffer;  //串口数据接收变量

union floatData 
{
    float d ;
    unsigned char data[4];
}module_data1,module_data2,module_data3,module_data4,command_data1,command_data2,command_data3,command_data4;


//********************************************************************************************/

//***********************************格式转换**************************************************************

template <typename T>
std::string ToString(T val)
{
    std::stringstream stream;
    stream << val;
    return stream.str();
}

//***************************************************************************************88
//***********************串口函数**********************************************************
void serial_write(int address,int command,float data1,float data2,float data3,float data4)// 模块地址，读写命令，要发送的数据
{
    string port("/dev/IOT_net");    
    unsigned long baud = 9600;    
    serial::Serial my_serial(port, baud, serial::Timeout::simpleTimeout(1000)); 
        
    command_data1.d=data1;
    command_data2.d=data2;
    command_data3.d=data3;
    command_data4.d=data4;

    module_command[0] = 0xa5;
    module_command[1] = address;  //模块地址
    module_command[2] = command; //写入下位机命令指令， 

    for(int i=0;i<4;i++)    //发送要读取模块的指令
      {
 	     module_command[i+3]=command_data1.data[i];
         module_command[i+7]=command_data2.data[i];
         module_command[i+11]=command_data3.data[i];
         module_command[i+15]=command_data4.data[i];
         //ROS_INFO("command_data1: %x ",command_data1.data[i]); 
       }
 
    module_command[19]=data_terminal0;
    module_command[20]=data_terminal1;
    
    my_serial.write(module_command,21);
    ROS_INFO("already send data ");
}

//****************************************************************************************

//*************************回调函数******************************************************
void callback(const iot_modules::IOTnet & cmd_input)
{
    ROS_INFO("program is running in callback!!!");  
    int position;     
    position = cmd_input.netcmd ;//获取命令
   
    ROS_INFO("position:%d",position);
    switch (position)   //位置与模块对应关系
    {
        case 1: { module_adderss_S=1; place=1;break;}
        case 2: { module_adderss_S=2; place=2;break;}
        case 3: { module_adderss_S=3; place=3;break;}
        case 4: { module_adderss_S=4; place=4;break;}
        default: module_adderss_S = 0;
    }
    if (sim_ == 0)
    {
        serial_write(module_adderss_S,1,1,0,0,0);
    }
}

//****************************主函数***********************************************************/
int main(int argc, char **argv)
{
    ros::init(argc, argv, "IOT_net");
    ros::NodeHandle n;  

    n.param("speak_sim",sim_,0);
    ROS_INFO("sim_ = %d",sim_);

    char* my_retur;
   
    string port("/dev/IOT_net");
    unsigned long baud = 9600;
    serial::Serial my_serial(port, baud, serial::Timeout::simpleTimeout(1000));
   
    ros::Subscriber sub_cmd = n.subscribe("/IOT_cmd",20, callback); 
    //ros::Publisher pub_words= n.advertise<std_msgs::String>("/speak_string", 200); 
    ros::Publisher pub_words= n.advertise<std_msgs::String>("/voice_tts/tts_topic", 200); 

    std_msgs::String words;//要说的话
      
    ros::Rate loop_rate(10);

    ROS_INFO("IOT_net node is running now");
    
    while(ros::ok())
    {
        //ROS_INFO("my INFO MESSAGE");  
        if((module_adderss_S!=0)&&(sim_ == 0 )&&(module_adderss_S!=3))
        {
            rec_buffer =my_serial.readline(30,"\n");    
            const char *receive_data=rec_buffer.data(); 

            ROS_INFO("read data len: %d ",rec_buffer.length());  //显示接收数据的长度

            if(rec_buffer.length()==21) 
            {                  
                if(receive_data[0]==0xffffffA5)
                {   
                    module_adderss_R = receive_data[1];
                    // ROS_INFO("receive_data[0]:%x",receive_data[0]);  //调试编码器使用，
                    for(int i=0;i<4;i++)
                    {                
                        module_data1.data[i]=receive_data[i+3];
                        module_data2.data[i]=receive_data[i+7];
                        module_data3.data[i]=receive_data[i+11];
                        module_data4.data[i]=receive_data[i+15];
                        //ROS_INFO("receive_data1: %x ",receive_data[i+3]);                
                    }  
                    // printf("module_data1:%f",module_data1.d); 
                }                   
            }
        }                                   
        
        //继电器数据
        if((module_adderss_S==1)&&(module_adderss_R==1)&&(place==1))  //判断发送的地址和接收的模块地址是否相同
        {
            if(module_data1.d == 1)
            {
                words.data="关闭电灯"+ToString(module_data1.d);
                ROS_INFO("close the light.");
                pub_words.publish(words);
                serial_write(1,2,2,0,0,0);  //地址1 不上传信息  关灯
            }
            else if(module_data1.d == 2)
            {
                words.data="开启电灯"+ToString(module_data1.d);
                ROS_INFO("open the light.");
                pub_words.publish(words);
                serial_write(1,2,1,0,0,0);
            }
            else
               ROS_INFO("the receive data is not right.");

            module_adderss_S = 10; //停止读取串口数据
            module_adderss_R=0;  
            //place=0;
            serial_write(10,1,0,1,0,0);         
        }
        else if((module_adderss_S==10)&&(module_adderss_R==10)&&(place==1))  //判断发送的地址和接收的模块地址是否相同
        {
            if(module_data2.d == 1)
            {
                words.data="关闭窗帘"+ToString(module_data2.d);
                ROS_INFO("close the curtain.");
                pub_words.publish(words);
                serial_write(10,2,0,2,0,0);  //地址1 不上传信息  
            }
            else if(module_data2.d == 2)
            {
                words.data="开启窗帘"+ToString(module_data2.d);
                ROS_INFO("open the curtain.");
                pub_words.publish(words);
                serial_write(10,2,0,1,0,0);
            }
            else
               ROS_INFO("the receive data is not right.");

            module_adderss_S = 0; //停止读取串口数据
            module_adderss_R=0;  
            place=0;         
        }

        //传感器数据  
        else if((module_adderss_S==2)&&(module_adderss_R==2)&&(place==2))  //判断发送的地址和接收的模块地址是否相同
        {
            words.data="当前光照强度为"+ToString(module_data1.d)+","+"室内温度为"+ToString(module_data2.d)+","+"湿度为"+ToString(module_data3.d)+","+"二氧化碳为"+ToString(module_data4.d);
            ROS_INFO("received the sensor data.");
            pub_words.publish(words);       
            module_adderss_S = 0; //停止读取串口数据
            module_adderss_R=0;
            place=0;           
        }
        else if((module_adderss_S==3)&&(place==3))  //判断发送的地址和接收的模块地址是否相同
        {
            words.data="已到吃药时间，该吃药了。";
            ROS_INFO("received the sensor data.");
            pub_words.publish(words);       
            module_adderss_S = 0; //停止读取串口数据
            module_adderss_R=0;
            place=0;       
        }
        //传感器数据   燃气   漏水
        else if((module_adderss_S==4)&&(module_adderss_R==4)&&(place==4))  //判断发送的地址和接收的模块地址是否相同
        {
            string s1,s2;
            ROS_INFO("received the sensor data.");
            //燃气
            if(module_data1.d==1)
                s1="检测正常";
            else if(module_data1.d==2)
                s1="泄漏，请及时处理";
            else s1= "未知状态";
            //漏水
            if(module_data2.d==1)
                s2="检测正常";
            else if(module_data2.d==2)
                s2="已经发生,请及时处理";
            else s2="未知状态";

            words.data="燃气"+s1+","+"漏水"+s2+"。";
            pub_words.publish(words); 
            module_adderss_S = 0; 
            module_adderss_R=0;
            place=0;           
        }

        //*****************************sim**********************************
        else if((sim_ == 1)&&(module_adderss_S==1))
        {
            words.data="大家好，我是助老服务机器人，我可以帮助管理家庭环境的安全。";
            ROS_INFO("working in the sim...");
            pub_words.publish(words);       
            module_adderss_S = 0; 

        }
        else if((sim_ == 1)&&(module_adderss_S==2))
        {
            words.data="我可以控制家中的灯、窗帘等开关，我还能检测室内温度和光线强度。";
            ROS_INFO("working in the sim...");
            pub_words.publish(words);       
            module_adderss_S = 0; 

        }
        else if((sim_ == 1)&&(module_adderss_S==3))
        {
            words.data="我不会翻跟头，你翻一个让我学学好吧";
            ROS_INFO("working in the sim...");
            pub_words.publish(words);       
            module_adderss_S = 0; 

        }
        else if((sim_ == 1)&&(module_adderss_S==4))
        {
            words.data="我完成所有任务了哦";
            ROS_INFO("working in the sim...");
            pub_words.publish(words);       
            module_adderss_S = 0; 

        }

        //***************************************************************
        //程序周期性调用
        ros::spinOnce();  
	    //loop_rate.sleep();//周期休眠
    }
    return 0;
}
