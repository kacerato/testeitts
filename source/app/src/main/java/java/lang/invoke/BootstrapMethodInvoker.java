package java.lang.invoke;

import java.lang.invoke.AbstractConstantGroup;
import java.lang.invoke.MethodHandles;
import java.util.Arrays;
import sun.invoke.util.Wrapper;

public final class BootstrapMethodInvoker {
    private static final MethodType LMF_INDY_MT;
    private static final MethodType LMF_ALT_MT;
    private static final MethodType OBJECT_METHODS_MT;
    private static final MethodType SCF_MT;
    static final boolean $assertionsDisabled;

    BootstrapMethodInvoker() {
    }

    static {
        $assertionsDisabled = !BootstrapMethodInvoker.class.desiredAssertionStatus();
        LMF_INDY_MT = MethodType.methodType((Class<?>) CallSite.class, (Class<?>) MethodHandles.Lookup.class, (Class<?>[]) new Class[]{String.class, MethodType.class, MethodType.class, MethodHandle.class, MethodType.class});
        LMF_ALT_MT = MethodType.methodType((Class<?>) CallSite.class, (Class<?>) MethodHandles.Lookup.class, (Class<?>[]) new Class[]{String.class, MethodType.class, Object[].class});
        OBJECT_METHODS_MT = MethodType.methodType((Class<?>) Object.class, (Class<?>) MethodHandles.Lookup.class, (Class<?>[]) new Class[]{String.class, TypeDescriptor.class, Class.class, String.class, MethodHandle[].class});
        SCF_MT = MethodType.methodType((Class<?>) CallSite.class, (Class<?>) MethodHandles.Lookup.class, (Class<?>[]) new Class[]{String.class, MethodType.class, String.class, Object[].class});
    }

    public static <T> T invoke(Class<T> cls, MethodHandle methodHandle, String str, Object obj, Object obj2, Class<?> cls2) {
        MethodHandle pushMePullYou;
        Object invokeWithManyArguments;
        Object obj3;
        Object invokeWithManyArguments2;
        MethodHandles.Lookup in2 = MethodHandles.Lookup.IMPL_LOOKUP.in(cls2);
        boolean isPullModeBSM = MethodHandleNatives.isPullModeBSM(methodHandle);
        if (!MethodHandleNatives.staticArgumentsPulled(obj2)) {
            pushMePullYou = null;
            if (isPullModeBSM) {
                methodHandle = pushMePullYou(methodHandle, true);
            }
        } else {
            pushMePullYou = isPullModeBSM ? methodHandle : pushMePullYou(methodHandle, false);
            methodHandle = null;
        }
        try {
            if (obj2 == null) {
                if (obj instanceof Class) {
                    obj3 = (Object) methodHandle.invoke(in2, str, (Class) obj);
                } else {
                    obj3 = (Object) methodHandle.invoke(in2, str, (MethodType) obj);
                }
            } else if (!obj2.getClass().isArray()) {
                if (isStringConcatFactoryBSM(methodHandle.type())) {
                    obj3 = methodHandle.invokeBasic(in2, str, (MethodType) obj, (String) obj2, new Object[0]);
                } else {
                    Object maybeReBox = maybeReBox(obj2);
                    if (obj instanceof Class) {
                        obj3 = (Object) methodHandle.invoke(in2, str, (Class) obj, maybeReBox);
                    } else {
                        obj3 = (Object) methodHandle.invoke(in2, str, (MethodType) obj, maybeReBox);
                    }
                }
            } else if (obj2.getClass() == int[].class) {
                obj3 = (Object) pushMePullYou.invoke(in2, new VM_BSCI(methodHandle, str, obj, in2, (int[]) obj2));
            } else {
                Object[] objArr = (Object[]) obj2;
                MethodType type = methodHandle.type();
                if (isLambdaMetafactoryIndyBSM(type) && objArr.length == 3) {
                    obj3 = methodHandle.invokeBasic(in2, str, (MethodType) obj, (MethodType) objArr[0], (MethodHandle) objArr[1], (MethodType) objArr[2]);
                } else if (isStringConcatFactoryBSM(type) && objArr.length >= 1) {
                    String str2 = (String) objArr[0];
                    Object[] copyOfRange = Arrays.copyOfRange(objArr, 1, objArr.length);
                    maybeReBoxElements(copyOfRange);
                    obj3 = methodHandle.invokeBasic(in2, str, (MethodType) obj, str2, copyOfRange);
                } else if (isLambdaMetafactoryAltMetafactoryBSM(type)) {
                    maybeReBoxElements(objArr);
                    obj3 = methodHandle.invokeBasic(in2, str, (MethodType) obj, objArr);
                } else if (isObjectMethodsBootstrapBSM(type)) {
                    obj3 = methodHandle.invokeBasic(in2, str, (TypeDescriptor) obj, (Class) objArr[0], (String) objArr[1], (MethodHandle[]) Arrays.copyOfRange(objArr, 2, objArr.length, MethodHandle[].class));
                } else {
                    maybeReBoxElements(objArr);
                    if (obj instanceof Class) {
                        Class cls3 = (Class) obj;
                        switch (objArr.length) {
                            case 0:
                                invokeWithManyArguments2 = (Object) methodHandle.invoke(in2, str, cls3);
                                break;
                            case 1:
                                invokeWithManyArguments2 = (Object) methodHandle.invoke(in2, str, cls3, objArr[0]);
                                break;
                            case 2:
                                invokeWithManyArguments2 = (Object) methodHandle.invoke(in2, str, cls3, objArr[0], objArr[1]);
                                break;
                            case 3:
                                invokeWithManyArguments2 = (Object) methodHandle.invoke(in2, str, cls3, objArr[0], objArr[1], objArr[2]);
                                break;
                            case 4:
                                invokeWithManyArguments2 = (Object) methodHandle.invoke(in2, str, cls3, objArr[0], objArr[1], objArr[2], objArr[3]);
                                break;
                            case 5:
                                invokeWithManyArguments2 = (Object) methodHandle.invoke(in2, str, cls3, objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
                                break;
                            case 6:
                                invokeWithManyArguments2 = (Object) methodHandle.invoke(in2, str, cls3, objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
                                break;
                            default:
                                invokeWithManyArguments2 = invokeWithManyArguments(methodHandle, in2, str, obj, objArr);
                                break;
                        }
                        obj3 = invokeWithManyArguments2;
                    } else {
                        MethodType methodType = (MethodType) obj;
                        switch (objArr.length) {
                            case 0:
                                invokeWithManyArguments = (Object) methodHandle.invoke(in2, str, methodType);
                                break;
                            case 1:
                                invokeWithManyArguments = (Object) methodHandle.invoke(in2, str, methodType, objArr[0]);
                                break;
                            case 2:
                                invokeWithManyArguments = (Object) methodHandle.invoke(in2, str, methodType, objArr[0], objArr[1]);
                                break;
                            case 3:
                                invokeWithManyArguments = (Object) methodHandle.invoke(in2, str, methodType, objArr[0], objArr[1], objArr[2]);
                                break;
                            case 4:
                                invokeWithManyArguments = (Object) methodHandle.invoke(in2, str, methodType, objArr[0], objArr[1], objArr[2], objArr[3]);
                                break;
                            case 5:
                                invokeWithManyArguments = (Object) methodHandle.invoke(in2, str, methodType, objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
                                break;
                            case 6:
                                invokeWithManyArguments = (Object) methodHandle.invoke(in2, str, methodType, objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
                                break;
                            default:
                                invokeWithManyArguments = invokeWithManyArguments(methodHandle, in2, str, obj, objArr);
                                break;
                        }
                        obj3 = invokeWithManyArguments;
                    }
                }
            }
            return (T) widenAndCast(obj3, cls);
        } catch (Error e10) {
            throw e10;
        } catch (Throwable th2) {
            throw new BootstrapMethodError("bootstrap method initialization exception", th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T widenAndCast(Object obj, Class<T> resultType) throws Throwable {
        if (!resultType.isPrimitive()) {
            return resultType.cast(obj);
        }
        Class<T> wrapperType = Wrapper.asWrapperType(resultType);
        if (wrapperType.isInstance(obj)) {
            return obj;
        }
        MethodHandle funnel = MethodHandles.identity(resultType);
        Object result = (Object) funnel.invoke(obj);
        return wrapperType.cast(result);
    }

    private static Object invokeWithManyArguments(MethodHandle bootstrapMethod, MethodHandles.Lookup caller, String name, Object type, Object[] argv) throws Throwable {
        if (argv.length >= 124) {
            Object[] newargv = new Object[3 + argv.length];
            newargv[0] = caller;
            newargv[1] = name;
            newargv[2] = type;
            System.arraycopy(argv, 0, newargv, 3, argv.length);
            return bootstrapMethod.invokeWithArguments(newargv);
        }
        MethodType invocationType = MethodType.genericMethodType(3 + argv.length);
        MethodHandle typedBSM = bootstrapMethod.asType(invocationType);
        MethodHandle spreader = invocationType.invokers().spreadInvoker(3);
        return (Object) spreader.invokeExact(typedBSM, caller, name, type, argv);
    }

    private static boolean isStringConcatFactoryBSM(MethodType bsmType) {
        return bsmType == SCF_MT;
    }

    private static boolean isLambdaMetafactoryIndyBSM(MethodType bsmType) {
        return bsmType == LMF_INDY_MT;
    }

    private static boolean isLambdaMetafactoryAltMetafactoryBSM(MethodType bsmType) {
        return bsmType == LMF_ALT_MT;
    }

    private static boolean isObjectMethodsBootstrapBSM(MethodType bsmType) {
        return bsmType == OBJECT_METHODS_MT;
    }

    private static Object maybeReBox(Object x10) {
        int xi2;
        if ((x10 instanceof Integer) && (xi2 = ((Integer) x10).intValue()) == ((byte) xi2)) {
            x10 = Integer.valueOf(xi2);
        }
        return x10;
    }

    private static void maybeReBoxElements(Object[] xa2) {
        for (int i10 = 0; i10 < xa2.length; i10++) {
            xa2[i10] = maybeReBox(xa2[i10]);
        }
    }

    private static final class VM_BSCI<T> extends AbstractConstantGroup.BSCIWithCache<T> {
        private final int[] indexInfo;
        private final Class<?> caller;
        private static final int MIN_PF = 4;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !BootstrapMethodInvoker.class.desiredAssertionStatus();
        }

        VM_BSCI(MethodHandle bsm, String name, T type, MethodHandles.Lookup lookup, int[] indexInfo) {
            super(bsm, name, type, indexInfo[0]);
            if (!lookup.hasFullPrivilegeAccess()) {
                throw new AssertionError((Object) "bad Lookup object");
            }
            this.caller = lookup.lookupClass();
            this.indexInfo = indexInfo;
            prefetchIntoCache(0, size());
        }

        @Override
        Object fillCache(int i10) {
            Object[] buf = {null};
            copyConstants(i10, i10 + 1, buf, 0);
            Object res = wrapNull(buf[0]);
            this.cache[i10] = res;
            int next = i10 + 1;
            if (next < this.cache.length && this.cache[next] == null) {
                maybePrefetchIntoCache(next, false);
            }
            return res;
        }

        @Override
        public int copyConstants(int start, int end, Object[] buf, int pos) {
            Object x10;
            int i10 = start;
            int bufi = pos;
            while (i10 < end && (x10 = this.cache[i10]) != null) {
                int i11 = bufi;
                bufi++;
                buf[i11] = unwrapNull(x10);
                i10++;
            }
            if (i10 >= end) {
                return i10;
            }
            Object[] temp = new Object[end - i10];
            if (MethodHandleStatics.TRACE_METHOD_LINKAGE) {
                System.out.println("resolving more BSM arguments: " + ((Object) Arrays.asList(this.caller.getSimpleName(), Arrays.toString(this.indexInfo), Integer.valueOf(i10), Integer.valueOf(end))));
            }
            MethodHandleNatives.copyOutBootstrapArguments(this.caller, this.indexInfo, i10, end, temp, 0, true, null);
            for (Object obj : temp) {
                Object x11 = BootstrapMethodInvoker.maybeReBox(obj);
                int i12 = bufi;
                bufi++;
                buf[i12] = x11;
                int i13 = i10;
                i10++;
                this.cache[i13] = wrapNull(x11);
            }
            if (end < this.cache.length && this.cache[end] == null) {
                maybePrefetchIntoCache(end, true);
            }
            return i10;
        }

        private void maybePrefetchIntoCache(int i10, boolean bulk) {
            int len = this.cache.length;
            if (!$assertionsDisabled && (0 > i10 || i10 > len)) {
                throw new AssertionError();
            }
            int pfLimit = i10;
            if (bulk) {
                pfLimit += i10;
            }
            if (pfLimit < i10 + 4) {
                pfLimit = i10 + 4;
            }
            if (pfLimit > len || pfLimit < 0) {
                pfLimit = len;
            }
            int empty = 0;
            int nonEmpty = 0;
            int lastEmpty = i10;
            int j10 = i10;
            while (true) {
                if (j10 >= pfLimit) {
                    break;
                }
                if (this.cache[j10] == null) {
                    empty++;
                    lastEmpty = j10;
                } else {
                    nonEmpty++;
                    if (nonEmpty > empty) {
                        pfLimit = lastEmpty + 1;
                        break;
                    } else if (pfLimit < len) {
                        pfLimit++;
                    }
                }
                j10++;
            }
            if (bulk && empty < 4 && pfLimit < len) {
                return;
            }
            prefetchIntoCache(i10, pfLimit);
        }

        private void prefetchIntoCache(int i10, int pfLimit) {
            if (pfLimit <= i10) {
                return;
            }
            Object[] temp = new Object[pfLimit - i10];
            if (MethodHandleStatics.TRACE_METHOD_LINKAGE) {
                System.out.println("prefetching BSM arguments: " + ((Object) Arrays.asList(this.caller.getSimpleName(), Arrays.toString(this.indexInfo), Integer.valueOf(i10), Integer.valueOf(pfLimit))));
            }
            MethodHandleNatives.copyOutBootstrapArguments(this.caller, this.indexInfo, i10, pfLimit, temp, 0, false, NOT_PRESENT);
            for (Object x10 : temp) {
                if (x10 != NOT_PRESENT && this.cache[i10] == null) {
                    this.cache[i10] = wrapNull(BootstrapMethodInvoker.maybeReBox(x10));
                }
                i10++;
            }
        }
    }

    public static final class PushAdapter {
        static final MethodHandle MH_pushToBootstrapMethod;

        PushAdapter() {
        }

        static Object pushToBootstrapMethod(MethodHandle pullModeBSM, MethodHandles.Lookup lookup, String name, Object type, Object... arguments) throws Throwable {
            ConstantGroup cons = ConstantGroup.makeConstantGroup(Arrays.asList(arguments));
            BootstrapCallInfo<?> bsci = BootstrapCallInfo.makeBootstrapCallInfo(pullModeBSM, name, type, cons);
            if (MethodHandleStatics.TRACE_METHOD_LINKAGE) {
                System.out.println("pull-mode BSM gets pushed arguments from fake BSCI");
            }
            return (Object) pullModeBSM.invoke(lookup, bsci);
        }

        static {
            try {
                MH_pushToBootstrapMethod = MethodHandles.Lookup.IMPL_LOOKUP.findStatic(PushAdapter.class, "pushToBootstrapMethod", MethodType.methodType((Class<?>) Object.class, (Class<?>) MethodHandle.class, (Class<?>[]) new Class[]{MethodHandles.Lookup.class, String.class, Object.class, Object[].class}));
            } catch (Throwable ex) {
                throw new InternalError(ex);
            }
        }
    }

    public static final class PullAdapter {
        static final MethodHandle MH_pullFromBootstrapMethod;

        PullAdapter() {
        }

        static Object pullFromBootstrapMethod(MethodHandle pushModeBSM, MethodHandles.Lookup lookup, BootstrapCallInfo<?> bsci) throws Throwable {
            int argc = bsci.size();
            switch (argc) {
                case 0:
                    return (Object) pushModeBSM.invoke(lookup, bsci.invocationName(), bsci.invocationType());
                case 1:
                    return (Object) pushModeBSM.invoke(lookup, bsci.invocationName(), bsci.invocationType(), bsci.get(0));
                case 2:
                    return (Object) pushModeBSM.invoke(lookup, bsci.invocationName(), bsci.invocationType(), bsci.get(0), bsci.get(1));
                case 3:
                    return (Object) pushModeBSM.invoke(lookup, bsci.invocationName(), bsci.invocationType(), bsci.get(0), bsci.get(1), bsci.get(2));
                case 4:
                    return (Object) pushModeBSM.invoke(lookup, bsci.invocationName(), bsci.invocationType(), bsci.get(0), bsci.get(1), bsci.get(2), bsci.get(3));
                case 5:
                    return (Object) pushModeBSM.invoke(lookup, bsci.invocationName(), bsci.invocationType(), bsci.get(0), bsci.get(1), bsci.get(2), bsci.get(3), bsci.get(4));
                case 6:
                    return (Object) pushModeBSM.invoke(lookup, bsci.invocationName(), bsci.invocationType(), bsci.get(0), bsci.get(1), bsci.get(2), bsci.get(3), bsci.get(4), bsci.get(5));
                default:
                    if (argc >= 124) {
                        Object[] newargv = new Object[3 + argc];
                        newargv[0] = lookup;
                        newargv[1] = bsci.invocationName();
                        newargv[2] = bsci.invocationType();
                        bsci.copyConstants(0, argc, newargv, 3);
                        return pushModeBSM.invokeWithArguments(newargv);
                    }
                    MethodType invocationType = MethodType.genericMethodType(3 + argc);
                    MethodHandle typedBSM = pushModeBSM.asType(invocationType);
                    MethodHandle spreader = invocationType.invokers().spreadInvoker(3);
                    Object[] argv = new Object[argc];
                    bsci.copyConstants(0, argc, argv, 0);
                    return (Object) spreader.invokeExact(typedBSM, lookup, bsci.invocationName(), bsci.invocationType(), argv);
            }
        }

        static {
            try {
                MH_pullFromBootstrapMethod = MethodHandles.Lookup.IMPL_LOOKUP.findStatic(PullAdapter.class, "pullFromBootstrapMethod", MethodType.methodType((Class<?>) Object.class, (Class<?>) MethodHandle.class, (Class<?>[]) new Class[]{MethodHandles.Lookup.class, BootstrapCallInfo.class}));
            } catch (Throwable ex) {
                throw new InternalError(ex);
            }
        }
    }

    static MethodHandle pushMePullYou(MethodHandle bsm, boolean goToPushMode) {
        if (MethodHandleStatics.TRACE_METHOD_LINKAGE) {
            System.out.println("converting BSM of type " + ((Object) bsm.type()) + " to " + (goToPushMode ? "push mode" : "pull mode"));
        }
        if (!$assertionsDisabled && MethodHandleNatives.isPullModeBSM(bsm) != goToPushMode) {
            throw new AssertionError();
        }
        if (goToPushMode) {
            return PushAdapter.MH_pushToBootstrapMethod.bindTo(bsm).withVarargs(true);
        }
        return PullAdapter.MH_pullFromBootstrapMethod.bindTo(bsm).withVarargs(false);
    }
}
