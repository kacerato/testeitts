package java.lang.constant;

import java.lang.constant.DirectMethodHandleDesc;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import jdk.internal.constant.DirectMethodHandleDescImpl;

public interface MethodHandleDesc extends ConstantDesc {
    MethodTypeDesc invocationType();

    @Override
    MethodHandle resolveConstantDesc(MethodHandles.Lookup lookup) throws ReflectiveOperationException;

    boolean equals(Object obj);

    static DirectMethodHandleDesc of(DirectMethodHandleDesc.Kind kind, ClassDesc owner, String name, String lookupDescriptor) {
        switch (kind) {
            case GETTER:
            case SETTER:
            case STATIC_GETTER:
            case STATIC_SETTER:
                return ofField(kind, owner, name, ClassDesc.ofDescriptor(lookupDescriptor));
            default:
                return new DirectMethodHandleDescImpl(kind, owner, name, MethodTypeDesc.ofDescriptor(lookupDescriptor));
        }
    }

    static DirectMethodHandleDesc ofMethod(DirectMethodHandleDesc.Kind kind, ClassDesc owner, String name, MethodTypeDesc lookupMethodType) {
        switch (kind) {
            case GETTER:
            case SETTER:
            case STATIC_GETTER:
            case STATIC_SETTER:
                throw new IllegalArgumentException(kind.toString());
            case VIRTUAL:
            case SPECIAL:
            case INTERFACE_VIRTUAL:
            case INTERFACE_SPECIAL:
            case INTERFACE_STATIC:
            case STATIC:
            case CONSTRUCTOR:
                return new DirectMethodHandleDescImpl(kind, owner, name, lookupMethodType);
            default:
                throw new IllegalArgumentException(kind.toString());
        }
    }

    static DirectMethodHandleDesc ofField(DirectMethodHandleDesc.Kind kind, ClassDesc owner, String fieldName, ClassDesc fieldType) {
        MethodTypeDesc of2;
        switch (kind) {
            case GETTER:
                of2 = MethodTypeDesc.of(fieldType, owner);
                break;
            case SETTER:
                of2 = MethodTypeDesc.of(ConstantDescs.CD_void, owner, fieldType);
                break;
            case STATIC_GETTER:
                of2 = MethodTypeDesc.of(fieldType);
                break;
            case STATIC_SETTER:
                of2 = MethodTypeDesc.of(ConstantDescs.CD_void, fieldType);
                break;
            default:
                throw new IllegalArgumentException(kind.toString());
        }
        MethodTypeDesc mtr = of2;
        return new DirectMethodHandleDescImpl(kind, owner, fieldName, mtr);
    }

    static DirectMethodHandleDesc ofConstructor(ClassDesc owner, ClassDesc... paramTypes) {
        return ofMethod(DirectMethodHandleDesc.Kind.CONSTRUCTOR, owner, ConstantDescs.DEFAULT_NAME, MethodTypeDesc.of(ConstantDescs.CD_void, paramTypes));
    }

    default MethodHandleDesc asType(MethodTypeDesc type) {
        return invocationType().equals(type) ? this : new AsTypeMethodHandleDesc(this, type);
    }
}
