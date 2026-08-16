package java.lang.constant;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.util.Objects;

final class AsTypeMethodHandleDesc extends DynamicConstantDesc<MethodHandle> implements MethodHandleDesc {
    private final MethodHandleDesc underlying;
    private final MethodTypeDesc type;

    public AsTypeMethodHandleDesc(MethodHandleDesc underlying, MethodTypeDesc type) {
        super(ConstantDescs.BSM_INVOKE, ConstantDescs.DEFAULT_NAME, ConstantDescs.CD_MethodHandle, ConstantDescs.MHD_METHODHANDLE_ASTYPE, underlying, type);
        this.underlying = (MethodHandleDesc) Objects.requireNonNull(underlying);
        this.type = (MethodTypeDesc) Objects.requireNonNull(type);
    }

    @Override
    public MethodTypeDesc invocationType() {
        return this.type;
    }

    @Override
    public MethodHandle resolveConstantDesc(MethodHandles.Lookup lookup) throws ReflectiveOperationException {
        MethodHandle handle = this.underlying.resolveConstantDesc(lookup);
        MethodType methodType = this.type.resolveConstantDesc(lookup);
        return handle.asType(methodType);
    }

    @Override
    public String toString() {
        return String.format("%s.asType%s", this.underlying.toString(), this.type.displayDescriptor());
    }
}
