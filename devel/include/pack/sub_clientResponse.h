// Generated by gencpp from file pack/sub_clientResponse.msg
// DO NOT EDIT!


#ifndef PACK_MESSAGE_SUB_CLIENTRESPONSE_H
#define PACK_MESSAGE_SUB_CLIENTRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>

namespace pack
{
template <class ContainerAllocator>
struct sub_clientResponse_
{
  typedef sub_clientResponse_<ContainerAllocator> Type;

  sub_clientResponse_()
    : distance()
    , theta()  {
    }
  sub_clientResponse_(const ContainerAllocator& _alloc)
    : distance(_alloc)
    , theta(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _distance_type;
  _distance_type distance;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _theta_type;
  _theta_type theta;





  typedef boost::shared_ptr< ::pack::sub_clientResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pack::sub_clientResponse_<ContainerAllocator> const> ConstPtr;

}; // struct sub_clientResponse_

typedef ::pack::sub_clientResponse_<std::allocator<void> > sub_clientResponse;

typedef boost::shared_ptr< ::pack::sub_clientResponse > sub_clientResponsePtr;
typedef boost::shared_ptr< ::pack::sub_clientResponse const> sub_clientResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pack::sub_clientResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pack::sub_clientResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pack::sub_clientResponse_<ContainerAllocator1> & lhs, const ::pack::sub_clientResponse_<ContainerAllocator2> & rhs)
{
  return lhs.distance == rhs.distance &&
    lhs.theta == rhs.theta;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pack::sub_clientResponse_<ContainerAllocator1> & lhs, const ::pack::sub_clientResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pack

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pack::sub_clientResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pack::sub_clientResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pack::sub_clientResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pack::sub_clientResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pack::sub_clientResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pack::sub_clientResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pack::sub_clientResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "617188794bd6047d404cba3e0a365536";
  }

  static const char* value(const ::pack::sub_clientResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x617188794bd6047dULL;
  static const uint64_t static_value2 = 0x404cba3e0a365536ULL;
};

template<class ContainerAllocator>
struct DataType< ::pack::sub_clientResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pack/sub_clientResponse";
  }

  static const char* value(const ::pack::sub_clientResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pack::sub_clientResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 distance \n"
"std_msgs/Float32 theta\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::pack::sub_clientResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pack::sub_clientResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance);
      stream.next(m.theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sub_clientResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pack::sub_clientResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pack::sub_clientResponse_<ContainerAllocator>& v)
  {
    s << indent << "distance: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.distance);
    s << indent << "theta: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.theta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PACK_MESSAGE_SUB_CLIENTRESPONSE_H