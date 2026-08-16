package java.lang.classfile.constantpool;

import java.lang.classfile.TypeKind;

public interface FloatEntry extends AnnotationConstantValueEntry, ConstantValueEntry {
    float floatValue();

    @Override
    default TypeKind typeKind() {
        return TypeKind.FLOAT;
    }
}
