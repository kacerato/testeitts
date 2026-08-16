package java.lang.invoke;

import jdk.internal.misc.Unsafe;
import jdk.internal.vm.annotation.Stable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/invoke/ConstantCallSite.class
 */
public class ConstantCallSite extends CallSite {
    private static final Unsafe UNSAFE = Unsafe.getUnsafe();

    @Stable
    private boolean isFrozen;

    public ConstantCallSite(MethodHandle target) {
        super(target);
        this.isFrozen = true;
        UNSAFE.storeStoreFence();
    }

    protected ConstantCallSite(MethodType targetType, MethodHandle createTargetHook) throws Throwable {
        super(targetType, createTargetHook);
        this.isFrozen = true;
        UNSAFE.storeStoreFence();
    }

    @Override
    public final MethodHandle getTarget() {
        if (this.isFrozen) {
            return this.target;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void setTarget(MethodHandle ignore) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final MethodHandle dynamicInvoker() {
        return getTarget();
    }
}
