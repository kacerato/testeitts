package java.lang.classfile.constantpool;

import java.lang.constant.MethodTypeDesc;
import jdk.internal.classfile.impl.Util;

public interface InterfaceMethodRefEntry extends MemberRefEntry {
    default MethodTypeDesc typeSymbol() {
        return Util.methodTypeSymbol(type());
    }
}
