package java.lang.classfile;

import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.MethodTypeDesc;
import java.util.Optional;
import jdk.internal.classfile.impl.Util;

public interface MethodModel extends CompoundElement<MethodElement>, AttributedElement, ClassElement {
    AccessFlags flags();

    Optional<ClassModel> parent();

    Utf8Entry methodName();

    Utf8Entry methodType();

    Optional<CodeModel> code();

    default MethodTypeDesc methodTypeSymbol() {
        return Util.methodTypeSymbol(methodType());
    }
}
