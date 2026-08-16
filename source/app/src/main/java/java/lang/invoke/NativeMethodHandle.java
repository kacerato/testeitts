package java.lang.invoke;

import java.lang.invoke.LambdaForm;
import java.lang.invoke.MemberName;
import jdk.internal.foreign.abi.NativeEntryPoint;
import jdk.internal.vm.annotation.ForceInline;

public final class NativeMethodHandle extends MethodHandle {
    final NativeEntryPoint nep;
    private static final MemberName.Factory IMPL_NAMES;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !NativeMethodHandle.class.desiredAssertionStatus();
        IMPL_NAMES = MemberName.getFactory();
    }

    private NativeMethodHandle(MethodType type, LambdaForm form, NativeEntryPoint nep) {
        super(type, form);
        this.nep = nep;
    }

    public static MethodHandle make(NativeEntryPoint nep) {
        MethodType type = nep.type();
        if (hasIllegalType(type)) {
            throw new IllegalArgumentException("Illegal type(s) found: " + ((Object) type));
        }
        LambdaForm lform = preparedLambdaForm(type);
        return new NativeMethodHandle(type, lform, nep);
    }

    private static boolean hasIllegalType(MethodType type) {
        if (isIllegalType(type.returnType())) {
            return true;
        }
        for (Class<?> pType : type.ptypes()) {
            if (isIllegalType(pType)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isIllegalType(Class<?> pType) {
        return (pType == Long.TYPE || pType == Integer.TYPE || pType == Float.TYPE || pType == Double.TYPE || pType == Void.TYPE || pType == Object.class) ? false : true;
    }

    private static LambdaForm preparedLambdaForm(MethodType mtype) {
        MethodType mtype2 = mtype.basicType();
        LambdaForm lform = mtype2.form().cachedLambdaForm(21);
        if (lform != null) {
            return lform;
        }
        return mtype2.form().setCachedLambdaForm(21, makePreparedLambdaForm(mtype2));
    }

    private static LambdaForm makePreparedLambdaForm(MethodType mtype) {
        MethodType linkerType = mtype.appendParameterTypes(Object.class);
        MemberName linker = new MemberName((Class<?>) MethodHandle.class, "linkToNative", linkerType, (byte) 6);
        try {
            MemberName linker2 = IMPL_NAMES.resolveOrFail((byte) 6, linker, null, -1, NoSuchMethodException.class);
            int ARG_LIMIT = 1 + mtype.parameterCount();
            int nameCursor = ARG_LIMIT + 1;
            int nameCursor2 = nameCursor + 1;
            LambdaForm.Name[] names = LambdaForm.invokeArguments(nameCursor2 - ARG_LIMIT, mtype);
            if (!$assertionsDisabled && names.length != nameCursor2) {
                throw new AssertionError();
            }
            names[ARG_LIMIT] = new LambdaForm.Name(Lazy.NF_internalNativeEntryPoint, names[0]);
            Object[] outArgs = new Object[linkerType.parameterCount()];
            System.arraycopy(names, 1, outArgs, 0, mtype.parameterCount());
            outArgs[outArgs.length - 1] = names[ARG_LIMIT];
            names[nameCursor] = new LambdaForm.Name(linker2, outArgs);
            LambdaForm lform = LambdaForm.create(ARG_LIMIT, names, -2);
            lform.compileToBytecode();
            return lform;
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }

    @Override
    final MethodHandle copyWith(MethodType mt, LambdaForm lf2) {
        if ($assertionsDisabled || getClass() == NativeMethodHandle.class) {
            return new NativeMethodHandle(mt, lf2, this.nep);
        }
        throw new AssertionError();
    }

    @Override
    public BoundMethodHandle rebind() {
        return BoundMethodHandle.makeReinvoker(this);
    }

    @ForceInline
    static Object internalNativeEntryPoint(Object mh2) {
        return ((NativeMethodHandle) mh2).nep;
    }

    public static class Lazy {
        static final LambdaForm.NamedFunction NF_internalNativeEntryPoint;
        static final boolean $assertionsDisabled;

        private Lazy() {
        }

        static {
            $assertionsDisabled = !NativeMethodHandle.class.desiredAssertionStatus();
            try {
                LambdaForm.NamedFunction namedFunction = new LambdaForm.NamedFunction(NativeMethodHandle.class.getDeclaredMethod("internalNativeEntryPoint", Object.class));
                NF_internalNativeEntryPoint = namedFunction;
                LambdaForm.NamedFunction[] nfs = {namedFunction};
                for (LambdaForm.NamedFunction nf2 : nfs) {
                    if (!$assertionsDisabled && !InvokerBytecodeGenerator.isStaticallyInvocable(nf2.member)) {
                        throw new AssertionError(nf2);
                    }
                    nf2.resolve();
                }
            } catch (ReflectiveOperationException ex) {
                throw MethodHandleStatics.newInternalError(ex);
            }
        }
    }
}
