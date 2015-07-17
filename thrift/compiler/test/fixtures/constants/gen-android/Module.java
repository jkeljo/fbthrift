/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */


import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Collections;
import java.util.BitSet;
import java.util.Arrays;

import com.instagram.common.rpc.thrift.*;
import com.instagram.common.rpc.thrift.protocol.*;


public class Module {

  public enum EventType {
    Internship;
  }

  // Company enum:
  public static final int Company_FACEBOOK = 0;
  public static final int Company_WHATSAPP = 1;
  public static final int Company_OCULUS = 2;
  public static final int Company_INSTAGRAM = 3;
  
  public static final ThriftProperty<Integer> Internship_weeks =
      new ThriftProperty<Integer>("weeks", TType.I32, (short)1);
  public static final ThriftProperty<String> Internship_title =
      new ThriftProperty<String>("title", TType.STRING, (short)2);
  public static final ThriftProperty<Integer> Internship_employer =
      new ThriftProperty<Integer>("employer", TType.I32, (short)3);
  
}
