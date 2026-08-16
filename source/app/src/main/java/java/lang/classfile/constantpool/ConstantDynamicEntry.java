package java.lang.classfile.constantpool;

import java.lang.classfile.TypeKind;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDesc;
import java.lang.constant.DynamicConstantDesc;
import jdk.internal.classfile.impl.Util;

public interface ConstantDynamicEntry extends DynamicConstantPoolEntry, LoadableConstantEntry {
    default ClassDesc typeSymbol() {
        return Util.fieldTypeSymbol(type());
    }

    @Override
    default ConstantDesc constantValue() {
        return asSymbol();
    }

    default DynamicConstantDesc<?> asSymbol() {
        return DynamicConstantDesc.ofNamed(bootstrap().bootstrapMethod().asSymbol(), name().stringValue(), typeSymbol(), (ConstantDesc[]) bootstrap().arguments().stream().map((v0) -> {
            return v0.constantValue();
        }).toArray(x$0 -> {
            return new ConstantDesc[x$0];
        }));
    }

    @Override
    default TypeKind typeKind() {
        return TypeKind.fromDescriptor(type());
    }
}
