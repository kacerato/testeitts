package java.lang.classfile.constantpool;

import java.lang.constant.ClassDesc;
import java.lang.constant.MethodTypeDesc;

public interface Utf8Entry extends CharSequence, AnnotationConstantValueEntry {
    String stringValue();

    boolean equalsString(String str);

    boolean isFieldType(ClassDesc classDesc);

    boolean isMethodType(MethodTypeDesc methodTypeDesc);
}
