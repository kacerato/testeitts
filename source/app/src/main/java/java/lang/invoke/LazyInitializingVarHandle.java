package java.lang.invoke;

import java.lang.invoke.VarHandle;
import java.util.Optional;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Stable;

public final class LazyInitializingVarHandle extends VarHandle {
    private final VarHandle target;
    private final Class<?> refc;

    @Stable
    private boolean initialized;

    @Stable
    private static MethodHandle MH_ensureInitialized;

    public LazyInitializingVarHandle(VarHandle target, Class<?> refc) {
        super(target.vform, target.exact);
        this.target = target;
        this.refc = refc;
    }

    @Override
    MethodType accessModeTypeUncached(VarHandle.AccessType at) {
        return this.target.accessModeType(at.ordinal());
    }

    @Override
    @ForceInline
    public VarHandle asDirect() {
        return this.target;
    }

    @Override
    @ForceInline
    public VarHandle target() {
        ensureInitialized();
        return this.target;
    }

    @Override
    public VarHandle withInvokeExactBehavior() {
        if (!this.initialized && hasInvokeExactBehavior()) {
            return this;
        }
        VarHandle exactTarget = this.target.withInvokeExactBehavior();
        return this.initialized ? exactTarget : new LazyInitializingVarHandle(exactTarget, this.refc);
    }

    @Override
    public VarHandle withInvokeBehavior() {
        if (!this.initialized && !hasInvokeExactBehavior()) {
            return this;
        }
        VarHandle nonExactTarget = this.target.withInvokeBehavior();
        return this.initialized ? nonExactTarget : new LazyInitializingVarHandle(nonExactTarget, this.refc);
    }

    @Override
    public Optional<VarHandle.VarHandleDesc> describeConstable() {
        return this.target.describeConstable();
    }

    @Override
    public MethodHandle getMethodHandleUncached(int accessMode) {
        MethodHandle mh2 = this.target.getMethodHandle(accessMode);
        if (this.initialized) {
            return mh2;
        }
        return MethodHandles.collectArguments(mh2, 0, ensureInitializedMh()).bindTo(this);
    }

    @ForceInline
    private void ensureInitialized() {
        if (this.initialized) {
            return;
        }
        initialize();
    }

    private void initialize() {
        MethodHandleStatics.UNSAFE.ensureClassInitialized(this.refc);
        this.initialized = true;
        this.methodHandleTable = this.target.methodHandleTable;
    }

    private static MethodHandle ensureInitializedMh() {
        MethodHandle mh2 = MH_ensureInitialized;
        if (mh2 != null) {
            return mh2;
        }
        try {
            MethodHandle findVirtual = MethodHandles.lookup().findVirtual(LazyInitializingVarHandle.class, "ensureInitialized", MethodType.methodType(Void.TYPE));
            MH_ensureInitialized = findVirtual;
            return findVirtual;
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }
}
