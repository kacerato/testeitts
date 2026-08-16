package java.lang.classfile.constantpool;

import java.lang.classfile.TypeKind;
import java.lang.constant.ConstantDesc;

public interface LoadableConstantEntry extends PoolEntry {
    ConstantDesc constantValue();

    default TypeKind typeKind() {
        return TypeKind.REFERENCE;
    }
}
