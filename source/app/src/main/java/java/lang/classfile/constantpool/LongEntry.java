package java.lang.classfile.constantpool;

import java.lang.classfile.TypeKind;

public interface LongEntry extends AnnotationConstantValueEntry, ConstantValueEntry {
    long longValue();

    @Override
    default TypeKind typeKind() {
        return TypeKind.LONG;
    }
}
