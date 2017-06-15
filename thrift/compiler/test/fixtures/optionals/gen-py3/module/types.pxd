#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from thrift.py3.exceptions cimport cTException, Error
cimport thrift.py3.types


cdef extern from "src/gen-cpp2/module_types.h" namespace "cpp2":
    cdef cppclass cAnimal "cpp2::Animal":
        bint operator==(cAnimal&)
    cAnimal Animal__DOG "cpp2::Animal::DOG"
    cAnimal Animal__CAT "cpp2::Animal::CAT"
    cAnimal Animal__TARANTULA "cpp2::Animal::TARANTULA"

cdef cAnimal Animal_to_cpp(value)

cdef extern from "src/gen-cpp2/module_types.h" namespace "cpp2":
    cdef cppclass cColor__isset "cpp2::Color::__isset":
        bint red
        bint green
        bint blue
        bint alpha

    # Forward Declaration
    cdef cppclass cColor "cpp2::Color"

    cdef cppclass cColor "cpp2::Color":
        cColor() except +
        cColor(const cColor&) except +
        bint operator==(cColor&)
        double red
        double green
        double blue
        double alpha
        cColor__isset __isset

    cdef cppclass cVehicle__isset "cpp2::Vehicle::__isset":
        bint color
        bint licensePlate
        bint description
        bint name
        bint hasAC

    # Forward Declaration
    cdef cppclass cVehicle "cpp2::Vehicle"

    cdef cppclass cVehicle "cpp2::Vehicle":
        cVehicle() except +
        cVehicle(const cVehicle&) except +
        bint operator==(cVehicle&)
        cColor color
        string licensePlate
        string description
        string name
        cbool hasAC
        cVehicle__isset __isset

    cdef cppclass cPerson__isset "cpp2::Person::__isset":
        bint id
        bint name
        bint age
        bint address
        bint favoriteColor
        bint friends
        bint bestFriend
        bint petNames
        bint afraidOfAnimal
        bint vehicles

    # Forward Declaration
    cdef cppclass cPerson "cpp2::Person"

    cdef cppclass cPerson "cpp2::Person":
        cPerson() except +
        cPerson(const cPerson&) except +
        bint operator==(cPerson&)
        int64_t id
        string name
        int16_t age
        string address
        cColor favoriteColor
        cset[int64_t] friends
        int64_t bestFriend
        cmap[cAnimal,string] petNames
        cAnimal afraidOfAnimal
        vector[cVehicle] vehicles
        cPerson__isset __isset


cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cColor] move(unique_ptr[cColor])
    cdef shared_ptr[cVehicle] move(unique_ptr[cVehicle])
    cdef shared_ptr[cPerson] move(unique_ptr[cPerson])

# Forward Definition of the cython struct
cdef class Color(thrift.py3.types.Struct)

cdef class Color(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cColor] c_Color

    @staticmethod
    cdef create(shared_ptr[cColor] c_Color)

# Forward Definition of the cython struct
cdef class Vehicle(thrift.py3.types.Struct)

cdef class Vehicle(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cVehicle] c_Vehicle
    cdef Color __color

    @staticmethod
    cdef create(shared_ptr[cVehicle] c_Vehicle)

# Forward Definition of the cython struct
cdef class Person(thrift.py3.types.Struct)

cdef class Person(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cPerson] c_Person
    cdef Color __favoriteColor
    cdef Set__PersonID __friends
    cdef Map__Animal_string __petNames
    cdef List__Vehicle __vehicles

    @staticmethod
    cdef create(shared_ptr[cPerson] c_Person)


cdef class Set__PersonID:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[int64_t]] _set
    @staticmethod
    cdef create(shared_ptr[cset[int64_t]])

cdef class Map__Animal_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[cAnimal,string]] _map
    @staticmethod
    cdef create(shared_ptr[cmap[cAnimal,string]])

cdef class List__Vehicle:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cVehicle]] _vector
    @staticmethod
    cdef create(shared_ptr[vector[cVehicle]])

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cset[int64_t]] move(unique_ptr[cset[int64_t]])
    cdef shared_ptr[cmap[cAnimal,string]] move(unique_ptr[cmap[cAnimal,string]])
    cdef shared_ptr[vector[cVehicle]] move(unique_ptr[vector[cVehicle]])

