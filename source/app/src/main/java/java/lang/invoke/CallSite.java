package java.lang.invoke;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.invoke.MethodHandles;
import jdk.internal.vm.annotation.Stable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/invoke/CallSite.class
 */
public abstract class CallSite {
    final MethodHandle target;

    @Stable
    private static MethodHandle GET_TARGET;

    @Stable
    private static MethodHandle THROW_UCS;

    @Stable
    private static long TARGET_OFFSET;
    static final boolean $assertionsDisabled;

    public abstract MethodHandle getTarget();

    public abstract void setTarget(MethodHandle methodHandle);

    public abstract MethodHandle dynamicInvoker();

    static {
        $assertionsDisabled = !CallSite.class.desiredAssertionStatus();
    }

    public CallSite(MethodType type) {
        this.target = makeUninitializedCallSite(type);
    }

    public CallSite(MethodHandle target) {
        target.type();
        this.target = target;
    }

    public CallSite(MethodType targetType, MethodHandle createTargetHook) throws Throwable {
        this(targetType);
        ConstantCallSite selfCCS = (ConstantCallSite) this;
        MethodHandle boundTarget = (MethodHandle) createTargetHook.invokeWithArguments(selfCCS);
        setTargetNormal(boundTarget);
        MethodHandleStatics.UNSAFE.storeStoreFence();
    }

    public MethodType type() {
        return this.target.type();
    }

    private void checkTargetChange(MethodHandle newTarget) {
        MethodType oldType = this.target.type();
        MethodType newType = newTarget.type();
        if (newType != oldType) {
            throw wrongTargetType(newTarget, oldType);
        }
    }

    private static WrongMethodTypeException wrongTargetType(MethodHandle target, MethodType type) {
        return new WrongMethodTypeException(String.valueOf(target) + " should be of type " + ((Object) type));
    }

    public MethodHandle makeDynamicInvoker() {
        MethodHandle getTarget = getTargetHandle().bindArgumentL(0, this);
        MethodHandle invoker = MethodHandles.exactInvoker(type());
        return MethodHandles.foldArguments(invoker, getTarget);
    }

    private static MethodHandle getTargetHandle() {
        MethodHandle handle = GET_TARGET;
        if (handle != null) {
            return handle;
        }
        try {
            MethodHandle findVirtual = MethodHandles.Lookup.IMPL_LOOKUP.findVirtual(CallSite.class, "getTarget", MethodType.methodType(MethodHandle.class));
            GET_TARGET = findVirtual;
            return findVirtual;
        } catch (ReflectiveOperationException e10) {
            throw MethodHandleStatics.newInternalError(e10);
        }
    }

    private static MethodHandle uninitializedCallSiteHandle() {
        MethodHandle handle = THROW_UCS;
        if (handle != null) {
            return handle;
        }
        try {
            MethodHandle findStatic = MethodHandles.Lookup.IMPL_LOOKUP.findStatic(CallSite.class, "uninitializedCallSite", MethodType.methodType((Class<?>) Object.class, (Class<?>) Object[].class));
            THROW_UCS = findStatic;
            return findStatic;
        } catch (ReflectiveOperationException e10) {
            throw MethodHandleStatics.newInternalError(e10);
        }
    }

    private static Object uninitializedCallSite(Object... ignore) {
        throw new IllegalStateException("uninitialized call site");
    }

    private MethodHandle makeUninitializedCallSite(MethodType targetType) {
        MethodType basicType = targetType.basicType();
        MethodHandle invoker = basicType.form().cachedMethodHandle(2);
        if (invoker == null) {
            invoker = basicType.form().setCachedMethodHandle(2, uninitializedCallSiteHandle().asType(basicType));
        }
        return invoker.viewAsType(targetType, false);
    }

    private static long getTargetOffset() {
        long offset = TARGET_OFFSET;
        if (offset > 0) {
            return offset;
        }
        long offset2 = MethodHandleStatics.UNSAFE.objectFieldOffset(CallSite.class, TypedValues.AttributesType.S_TARGET);
        TARGET_OFFSET = offset2;
        if ($assertionsDisabled || offset2 > 0) {
            return offset2;
        }
        throw new AssertionError();
    }

    public final void setTargetNormal(MethodHandle newTarget) {
        checkTargetChange(newTarget);
        MethodHandleNatives.setCallSiteTargetNormal(this, newTarget);
    }

    public final MethodHandle getTargetVolatile() {
        return (MethodHandle) MethodHandleStatics.UNSAFE.getReferenceVolatile(this, getTargetOffset());
    }

    public final void setTargetVolatile(MethodHandle newTarget) {
        checkTargetChange(newTarget);
        MethodHandleNatives.setCallSiteTargetVolatile(this, newTarget);
    }

    public static CallSite makeSite(MethodHandle bootstrapMethod, String name, MethodType type, Object info, Class<?> callerClass) {
        try {
            Object binding = BootstrapMethodInvoker.invoke(CallSite.class, bootstrapMethod, name, type, info, callerClass);
            if (!(binding instanceof CallSite)) {
                throw new ClassCastException("CallSite bootstrap method failed to produce an instance of CallSite");
            }
            CallSite cs = (CallSite) binding;
            if (!cs.getTarget().type().equals((Object) type)) {
                throw wrongTargetType(cs.getTarget(), type);
            }
            return cs;
        } catch (Error e10) {
            throw e10;
        } catch (Throwable ex) {
            throw new BootstrapMethodError("CallSite bootstrap method initialization exception", ex);
        }
    }
}
