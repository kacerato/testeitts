package java.lang.invoke;

import java.lang.invoke.VarHandle;
import java.util.function.BiFunction;
import jdk.internal.vm.annotation.ForceInline;

public final class IndirectVarHandle extends VarHandle {
    private final VarHandle directTarget;
    private final VarHandle target;
    private final BiFunction<VarHandle.AccessMode, MethodHandle, MethodHandle> handleFactory;
    private final Class<?> value;
    private final Class<?>[] coordinates;

    public IndirectVarHandle(VarHandle target, Class<?> value, Class<?>[] coordinates, BiFunction<VarHandle.AccessMode, MethodHandle, MethodHandle> handleFactory) {
        this(target, value, coordinates, handleFactory, new VarForm(value, coordinates), false);
    }

    private IndirectVarHandle(VarHandle target, Class<?> value, Class<?>[] coordinates, BiFunction<VarHandle.AccessMode, MethodHandle, MethodHandle> handleFactory, VarForm form, boolean exact) {
        super(form, exact);
        this.handleFactory = handleFactory;
        this.target = target;
        this.directTarget = target.asDirect();
        this.value = value;
        this.coordinates = coordinates;
    }

    @Override
    MethodType accessModeTypeUncached(VarHandle.AccessType at) {
        return at.accessModeType(null, this.value, this.coordinates);
    }

    @Override
    @ForceInline
    public VarHandle asDirect() {
        return this.directTarget;
    }

    @Override
    public VarHandle withInvokeExactBehavior() {
        if (hasInvokeExactBehavior()) {
            return this;
        }
        return new IndirectVarHandle(this.target, this.value, this.coordinates, this.handleFactory, this.vform, true);
    }

    @Override
    public VarHandle withInvokeBehavior() {
        if (!hasInvokeExactBehavior()) {
            return this;
        }
        return new IndirectVarHandle(this.target, this.value, this.coordinates, this.handleFactory, this.vform, false);
    }

    @Override
    @ForceInline
    public boolean checkAccessModeThenIsDirect(VarHandle.AccessDescriptor ad2) {
        super.checkAccessModeThenIsDirect(ad2);
        return false;
    }

    @Override
    public boolean isAccessModeSupported(VarHandle.AccessMode accessMode) {
        return this.directTarget.isAccessModeSupported(accessMode);
    }

    @Override
    MethodHandle getMethodHandleUncached(int mode) {
        MethodHandle targetHandle = this.target.getMethodHandle(mode);
        return this.handleFactory.apply(VarHandle.AccessMode.valueFromOrdinal(mode), targetHandle);
    }
}
