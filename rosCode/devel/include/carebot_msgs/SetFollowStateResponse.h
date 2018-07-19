// Generated by gencpp from file carebot_msgs/SetFollowStateResponse.msg
// DO NOT EDIT!


#ifndef CAREBOT_MSGS_MESSAGE_SETFOLLOWSTATERESPONSE_H
#define CAREBOT_MSGS_MESSAGE_SETFOLLOWSTATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace carebot_msgs
{
template <class ContainerAllocator>
struct SetFollowStateResponse_
{
  typedef SetFollowStateResponse_<ContainerAllocator> Type;

  SetFollowStateResponse_()
    : result(0)  {
    }
  SetFollowStateResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;



  enum {
    OK = 0u,
    ERROR = 1u,
  };


  typedef boost::shared_ptr< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetFollowStateResponse_

typedef ::carebot_msgs::SetFollowStateResponse_<std::allocator<void> > SetFollowStateResponse;

typedef boost::shared_ptr< ::carebot_msgs::SetFollowStateResponse > SetFollowStateResponsePtr;
typedef boost::shared_ptr< ::carebot_msgs::SetFollowStateResponse const> SetFollowStateResponseConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace carebot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'carebot_msgs': ['/home/sz/omniWheelCareRobot/rosCode/src/carebot_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "37065417175a2f4a49100bc798e5ee49";
  }

  static const char* value(const ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x37065417175a2f4aULL;
  static const uint64_t static_value2 = 0x49100bc798e5ee49ULL;
};

template<class ContainerAllocator>
struct DataType< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carebot_msgs/SetFollowStateResponse";
  }

  static const char* value(const ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
uint8 OK    = 0\n\
uint8 ERROR = 1\n\
\n\
uint8 result\n\
\n\
";
  }

  static const char* value(const ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetFollowStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carebot_msgs::SetFollowStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAREBOT_MSGS_MESSAGE_SETFOLLOWSTATERESPONSE_H
