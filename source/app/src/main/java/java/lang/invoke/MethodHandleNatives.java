package java.lang.invoke;

import java.lang.invoke.MethodHandles;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Field;
import java.util.Arrays;
import jdk.internal.misc.VM;
import sun.invoke.util.Wrapper;

public class MethodHandleNatives {
    static final boolean $assertionsDisabled;

    public static native void init(MemberName memberName, Object obj);

    public static native void expand(MemberName memberName);

    public static native MemberName resolve(MemberName memberName, Class<?> cls, int i10, boolean z10) throws LinkageError, ClassNotFoundException;

    public static native long objectFieldOffset(MemberName memberName);

    public static native long staticFieldOffset(MemberName memberName);

    public static native Object staticFieldBase(MemberName memberName);

    public static native Object getMemberVMInfo(MemberName memberName);

    public static native void setCallSiteTargetNormal(CallSite callSite, MethodHandle methodHandle);

    public static native void setCallSiteTargetVolatile(CallSite callSite, MethodHandle methodHandle);

    public static native void copyOutBootstrapArguments(Class<?> cls, int[] iArr, int i10, int i11, Object[] objArr, int i12, boolean z10, Object obj);

    private static native void registerNatives();

    private static native int getNamedCon(int i10, Object[] objArr);

    static {
        $assertionsDisabled = !MethodHandleNatives.class.desiredAssertionStatus();
        registerNatives();
        byte b10 = 1;
        while (true) {
            byte refKind = b10;
            if (refKind < 10) {
                if (!$assertionsDisabled) {
                    if (refKindHasReceiver(refKind) != (((1 << refKind) & 682) != 0)) {
                        throw new AssertionError((int) refKind);
                    }
                }
                b10 = (byte) (refKind + 1);
            } else {
                VM.setJavaLangInvokeInited();
                if (!$assertionsDisabled && !verifyConstants()) {
                    throw new AssertionError();
                }
                return;
            }
        }
    }

    private MethodHandleNatives() {
    }

    static class Constants {
        static final int MN_IS_METHOD = 65536;
        static final int MN_IS_CONSTRUCTOR = 131072;
        static final int MN_IS_FIELD = 262144;
        static final int MN_IS_TYPE = 524288;
        static final int MN_CALLER_SENSITIVE = 1048576;
        static final int MN_TRUSTED_FINAL = 2097152;
        static final int MN_HIDDEN_MEMBER = 4194304;
        static final int MN_REFERENCE_KIND_SHIFT = 24;
        static final int MN_REFERENCE_KIND_MASK = 15;
        static final byte REF_NONE = 0;
        static final byte REF_getField = 1;
        static final byte REF_getStatic = 2;
        static final byte REF_putField = 3;
        static final byte REF_putStatic = 4;
        static final byte REF_invokeVirtual = 5;
        static final byte REF_invokeStatic = 6;
        static final byte REF_invokeSpecial = 7;
        static final byte REF_newInvokeSpecial = 8;
        static final byte REF_invokeInterface = 9;
        static final byte REF_LIMIT = 10;
        static final int NESTMATE_CLASS = 1;
        static final int HIDDEN_CLASS = 2;
        static final int STRONG_LOADER_LINK = 4;
        static final int ACCESS_VM_ANNOTATIONS = 8;
        static final int LM_MODULE = 16;
        static final int LM_UNCONDITIONAL = 32;
        static final int LM_TRUSTED = -1;

        Constants() {
        }
    }

    public static boolean refKindIsValid(int refKind) {
        return refKind > 0 && refKind < 10;
    }

    public static boolean refKindIsField(byte refKind) {
        if ($assertionsDisabled || refKindIsValid(refKind)) {
            return refKind <= 4;
        }
        throw new AssertionError();
    }

    public static boolean refKindIsGetter(byte refKind) {
        if ($assertionsDisabled || refKindIsValid(refKind)) {
            return refKind <= 2;
        }
        throw new AssertionError();
    }

    public static boolean refKindIsSetter(byte refKind) {
        return refKindIsField(refKind) && !refKindIsGetter(refKind);
    }

    public static boolean refKindIsMethod(byte refKind) {
        return (refKindIsField(refKind) || refKind == 8) ? false : true;
    }

    public static boolean refKindIsConstructor(byte refKind) {
        return refKind == 8;
    }

    public static boolean refKindHasReceiver(byte refKind) {
        if ($assertionsDisabled || refKindIsValid(refKind)) {
            return (refKind & 1) != 0;
        }
        throw new AssertionError();
    }

    public static boolean refKindIsStatic(byte refKind) {
        return (refKindHasReceiver(refKind) || refKind == 8) ? false : true;
    }

    public static boolean refKindDoesDispatch(byte refKind) {
        if ($assertionsDisabled || refKindIsValid(refKind)) {
            return refKind == 5 || refKind == 9;
        }
        throw new AssertionError();
    }

    public static String refKindName(byte refKind) {
        if (!$assertionsDisabled && !refKindIsValid(refKind)) {
            throw new AssertionError();
        }
        switch (refKind) {
            case 1:
                return "getField";
            case 2:
                return "getStatic";
            case 3:
                return "putField";
            case 4:
                return "putStatic";
            case 5:
                return "invokeVirtual";
            case 6:
                return "invokeStatic";
            case 7:
                return "invokeSpecial";
            case 8:
                return "newInvokeSpecial";
            case 9:
                return "invokeInterface";
            default:
                return "REF_???";
        }
    }

    static boolean verifyConstants() {
        Object[] box = {null};
        int i10 = 0;
        while (true) {
            box[0] = null;
            int vmval = getNamedCon(i10, box);
            if (box[0] != null) {
                String name = (String) box[0];
                try {
                    Field con = Constants.class.getDeclaredField(name);
                    int jval = con.getInt(null);
                    if (jval != vmval) {
                        String err = name + ": JVM has " + vmval + " while Java has " + jval;
                        if (name.equals("CONV_OP_LIMIT")) {
                            System.err.println("warning: " + err);
                        } else {
                            throw new InternalError(err);
                            break;
                        }
                    }
                } catch (IllegalAccessException | NoSuchFieldException e10) {
                    String str = name + ": JVM has " + vmval + " which Java does not define";
                }
                i10++;
            } else {
                return true;
            }
        }
    }

    static MemberName linkCallSite(Object callerObj, Object bootstrapMethodObj, Object nameObj, Object typeObj, Object staticArguments, Object[] appendixResult) {
        MethodHandle bootstrapMethod = (MethodHandle) bootstrapMethodObj;
        Class<?> caller = (Class) callerObj;
        String name = nameObj.toString().intern();
        MethodType type = (MethodType) typeObj;
        if (!MethodHandleStatics.TRACE_METHOD_LINKAGE) {
            return linkCallSiteImpl(caller, bootstrapMethod, name, type, staticArguments, appendixResult);
        }
        return linkCallSiteTracing(caller, bootstrapMethod, name, type, staticArguments, appendixResult);
    }

    static MemberName linkCallSiteImpl(Class<?> caller, MethodHandle bootstrapMethod, String name, MethodType type, Object staticArguments, Object[] appendixResult) {
        CallSite callSite = CallSite.makeSite(bootstrapMethod, name, type, staticArguments, caller);
        if (MethodHandleStatics.TRACE_METHOD_LINKAGE) {
            MethodHandle target = callSite.getTarget();
            System.out.println("linkCallSite target class => " + target.getClass().getName());
            System.out.println("linkCallSite target => " + target.debugString(0));
        }
        if (callSite instanceof ConstantCallSite) {
            appendixResult[0] = callSite.dynamicInvoker();
            return Invokers.linkToTargetMethod(type);
        }
        appendixResult[0] = callSite;
        return Invokers.linkToCallSiteMethod(type);
    }

    static MemberName linkCallSiteTracing(Class<?> caller, MethodHandle bootstrapMethod, String name, MethodType type, Object staticArguments, Object[] appendixResult) {
        Object bsmReference = bootstrapMethod.internalMemberName();
        if (bsmReference == null) {
            bsmReference = bootstrapMethod;
        }
        String staticArglist = staticArglistForTrace(staticArguments);
        System.out.println("linkCallSite " + getCallerInfo(caller) + " " + bsmReference + " " + name + ((Object) type) + "/" + staticArglist);
        try {
            MemberName res = linkCallSiteImpl(caller, bootstrapMethod, name, type, staticArguments, appendixResult);
            System.out.println("linkCallSite linkage => " + ((Object) res) + " + " + appendixResult[0]);
            return res;
        } catch (Throwable ex) {
            ex.printStackTrace();
            System.out.println("linkCallSite => throw " + ((Object) ex));
            throw ex;
        }
    }

    private static String getCallerInfo(Class<?> caller) {
        for (StackTraceElement e10 : Thread.currentThread().getStackTrace()) {
            if (e10.getClassName().equals(caller.getName())) {
                return e10.toString();
            }
        }
        return caller.getName();
    }

    static Object linkDynamicConstant(Object callerObj, Object bootstrapMethodObj, Object nameObj, Object typeObj, Object staticArguments) {
        MethodHandle bootstrapMethod = (MethodHandle) bootstrapMethodObj;
        Class<?> caller = (Class) callerObj;
        String name = nameObj.toString().intern();
        Class<?> type = (Class) typeObj;
        if (!MethodHandleStatics.TRACE_METHOD_LINKAGE) {
            return linkDynamicConstantImpl(caller, bootstrapMethod, name, type, staticArguments);
        }
        return linkDynamicConstantTracing(caller, bootstrapMethod, name, type, staticArguments);
    }

    static Object linkDynamicConstantImpl(Class<?> caller, MethodHandle bootstrapMethod, String name, Class<?> type, Object staticArguments) {
        return ConstantBootstraps.makeConstant(bootstrapMethod, name, type, staticArguments, caller);
    }

    private static String staticArglistForTrace(Object staticArguments) {
        if (staticArguments instanceof Object[]) {
            Object[] array = (Object[]) staticArguments;
            return "BSA=" + ((Object) Arrays.asList(array));
        }
        if (staticArguments instanceof int[]) {
            int[] array2 = (int[]) staticArguments;
            return "BSA@" + Arrays.toString(array2);
        }
        if (staticArguments == null) {
            return "BSA0=null";
        }
        return "BSA1=" + staticArguments;
    }

    static Object linkDynamicConstantTracing(Class<?> caller, MethodHandle bootstrapMethod, String name, Class<?> type, Object staticArguments) {
        Object bsmReference = bootstrapMethod.internalMemberName();
        if (bsmReference == null) {
            bsmReference = bootstrapMethod;
        }
        String staticArglist = staticArglistForTrace(staticArguments);
        System.out.println("linkDynamicConstant " + caller.getName() + " " + bsmReference + " " + name + ((Object) type) + "/" + staticArglist);
        try {
            Object res = linkDynamicConstantImpl(caller, bootstrapMethod, name, type, staticArguments);
            System.out.println("linkDynamicConstantImpl => " + res);
            return res;
        } catch (Throwable ex) {
            ex.printStackTrace();
            System.out.println("linkDynamicConstant => throw " + ((Object) ex));
            throw ex;
        }
    }

    public static boolean staticArgumentsPulled(Object staticArguments) {
        return staticArguments instanceof int[];
    }

    public static boolean isPullModeBSM(MethodHandle bsm) {
        return false;
    }

    static MethodType findMethodHandleType(Class<?> rtype, Class<?>[] ptypes) {
        return MethodType.methodType(rtype, ptypes, true);
    }

    static MemberName linkMethod(Class<?> callerClass, int refKind, Class<?> defc, String name, Object type, Object[] appendixResult) {
        if (!MethodHandleStatics.TRACE_METHOD_LINKAGE) {
            return linkMethodImpl(callerClass, refKind, defc, name, type, appendixResult);
        }
        return linkMethodTracing(callerClass, refKind, defc, name, type, appendixResult);
    }

    static MemberName linkMethodImpl(Class<?> callerClass, int refKind, Class<?> defc, String name, Object type, Object[] appendixResult) {
        if (refKind == 5) {
            try {
                if (defc == MethodHandle.class) {
                    return Invokers.methodHandleInvokeLinkerMethod(name, fixMethodType(callerClass, type), appendixResult);
                }
                if (defc == VarHandle.class) {
                    return varHandleOperationLinkerMethod(name, fixMethodType(callerClass, type), appendixResult);
                }
            } catch (Error e10) {
                throw e10;
            } catch (Throwable ex) {
                throw new LinkageError(ex.getMessage(), ex);
            }
        }
        throw new LinkageError("no such method " + defc.getName() + "." + name + type);
    }

    private static MethodType fixMethodType(Class<?> callerClass, Object type) {
        if (type instanceof MethodType) {
            MethodType mt = (MethodType) type;
            return mt;
        }
        return MethodType.fromDescriptor((String) type, callerClass.getClassLoader());
    }

    static MemberName linkMethodTracing(Class<?> callerClass, int refKind, Class<?> defc, String name, Object type, Object[] appendixResult) {
        System.out.println("linkMethod " + defc.getName() + "." + name + type + "/" + Integer.toHexString(refKind));
        try {
            MemberName res = linkMethodImpl(callerClass, refKind, defc, name, type, appendixResult);
            System.out.println("linkMethod => " + ((Object) res) + " + " + appendixResult[0]);
            return res;
        } catch (Throwable ex) {
            System.out.println("linkMethod => throw " + ((Object) ex));
            throw ex;
        }
    }

    private static MemberName varHandleOperationLinkerMethod(String name, MethodType mtype, Object[] appendixResult) {
        MethodType sigType = mtype.basicType();
        try {
            VarHandle.AccessMode ak2 = VarHandle.AccessMode.valueFromMethodName(name);
            VarHandle.AccessDescriptor ad2 = new VarHandle.AccessDescriptor(mtype, ak2.at.ordinal(), ak2.ordinal());
            appendixResult[0] = ad2;
            if (MethodHandleStatics.VAR_HANDLE_GUARDS) {
                Class<?> guardReturnType = sigType.returnType();
                if (ak2.at.isMonomorphicInReturnType) {
                    if (ak2.at.returnType != mtype.returnType()) {
                        throw newNoSuchMethodErrorOnVarHandle(name, mtype);
                    }
                    guardReturnType = ak2.at.returnType;
                }
                Class<?>[] guardParams = new Class[sigType.parameterCount() + 2];
                guardParams[0] = VarHandle.class;
                for (int i10 = 0; i10 < sigType.parameterCount(); i10++) {
                    guardParams[i10 + 1] = sigType.parameterType(i10);
                }
                guardParams[guardParams.length - 1] = VarHandle.AccessDescriptor.class;
                MethodType guardType = MethodType.methodType(guardReturnType, guardParams, true);
                MemberName linker = MemberName.getFactory().resolveOrNull((byte) 6, new MemberName((Class<?>) VarHandleGuards.class, getVarHandleGuardMethodName(guardType), guardType, (byte) 6), VarHandleGuards.class, -1);
                if (linker != null) {
                    return linker;
                }
            }
            return Invokers.varHandleInvokeLinkerMethod(mtype);
        } catch (IllegalArgumentException e10) {
            throw MethodHandleStatics.newInternalError(e10);
        }
    }

    static String getVarHandleGuardMethodName(MethodType guardType) {
        StringBuilder sb2 = new StringBuilder("guard_".length() + guardType.parameterCount());
        sb2.append("guard_");
        for (int i10 = 1; i10 < guardType.parameterCount() - 1; i10++) {
            Class<?> pt = guardType.parameterType(i10);
            sb2.append(getCharType(pt));
        }
        sb2.append('_').append(getCharType(guardType.returnType()));
        return sb2.toString();
    }

    static char getCharType(Class<?> pt) {
        return Wrapper.forBasicType(pt).basicTypeChar();
    }

    static NoSuchMethodError newNoSuchMethodErrorOnVarHandle(String name, MethodType mtype) {
        return new NoSuchMethodError("VarHandle." + name + ((Object) mtype));
    }

    static MethodHandle linkMethodHandleConstant(Class<?> callerClass, int refKind, Class<?> defc, String name, Object type) {
        try {
            MethodHandles.Lookup lookup = MethodHandles.Lookup.IMPL_LOOKUP.in(callerClass);
            if ($assertionsDisabled || refKindIsValid(refKind)) {
                return lookup.linkMethodHandleConstant((byte) refKind, defc, name, type);
            }
            throw new AssertionError();
        } catch (ReflectiveOperationException ex) {
            throw mapLookupExceptionToError(ex);
        }
    }

    public static LinkageError mapLookupExceptionToError(ReflectiveOperationException ex) {
        LinkageError err;
        if (ex instanceof IllegalAccessException) {
            Throwable cause = ex.getCause();
            if (cause instanceof AbstractMethodError) {
                AbstractMethodError ame = (AbstractMethodError) cause;
                return ame;
            }
            err = new IllegalAccessError(ex.getMessage());
        } else if (ex instanceof NoSuchMethodException) {
            err = new NoSuchMethodError(ex.getMessage());
        } else if (ex instanceof NoSuchFieldException) {
            err = new NoSuchFieldError(ex.getMessage());
        } else {
            err = new IncompatibleClassChangeError();
        }
        return (LinkageError) initCauseFrom(err, ex);
    }

    static <E extends Error> E initCauseFrom(E err, Exception ex) {
        Throwable th2 = ex.getCause();
        Class<?> cls = err.getClass();
        if (cls.isInstance(th2)) {
            return (E) cls.cast(th2);
        }
        err.initCause(th2 == null ? ex : th2);
        return err;
    }

    public static boolean isCallerSensitive(MemberName mem) {
        if (mem.isInvocable()) {
            return mem.isCallerSensitive() || canBeCalledVirtual(mem);
        }
        return false;
    }

    static boolean canBeCalledVirtual(MemberName mem) {
        if ($assertionsDisabled || mem.isInvocable()) {
            return mem.getName().equals("getContextClassLoader") && canBeCalledVirtual(mem, Thread.class);
        }
        throw new AssertionError();
    }

    static boolean canBeCalledVirtual(MemberName symbolicRef, Class<?> definingClass) {
        Class<?> symbolicRefClass = symbolicRef.getDeclaringClass();
        if (symbolicRefClass == definingClass) {
            return true;
        }
        if (symbolicRef.isStatic() || symbolicRef.isPrivate()) {
            return false;
        }
        return definingClass.isAssignableFrom(symbolicRefClass) || symbolicRefClass.isInterface();
    }
}
