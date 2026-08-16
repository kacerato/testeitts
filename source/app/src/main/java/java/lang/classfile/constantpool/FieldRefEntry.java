package java.lang.classfile.constantpool;

import java.lang.constant.ClassDesc;
import jdk.internal.classfile.impl.Util;

public interface FieldRefEntry extends MemberRefEntry {
    default ClassDesc typeSymbol() {
        return Util.fieldTypeSymbol(type());
    }
}
