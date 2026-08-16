package java.lang.classfile.attribute;

import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import jdk.internal.classfile.impl.Util;

public interface LocalVariableInfo {
    int startPc();

    int length();

    Utf8Entry name();

    Utf8Entry type();

    int slot();

    default ClassDesc typeSymbol() {
        return Util.fieldTypeSymbol(type());
    }
}
