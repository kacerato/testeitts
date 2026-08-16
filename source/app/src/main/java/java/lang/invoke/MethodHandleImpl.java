package java.lang.invoke;

import java.lang.classfile.ClassFile;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.MethodTypeDesc;
import java.lang.foreign.MemoryLayout;
import java.lang.invoke.BoundMethodHandle;
import java.lang.invoke.LambdaForm;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.stream.Stream;
import jdk.internal.access.JavaLangInvokeAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import jdk.internal.foreign.abi.NativeEntryPoint;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.Reflection;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Hidden;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import sun.invoke.empty.Empty;
import sun.invoke.util.ValueConversions;
import sun.invoke.util.VerifyType;
import sun.invoke.util.Wrapper;

public abstract class MethodHandleImpl {
    static MethodHandle[] FAKE_METHOD_HANDLE_INVOKE;

    @Stable
    private static final MethodHandle[] ARRAYS;
    static final int MAX_JVM_ARITY = 255;
    static final byte NF_checkSpreadArgument = 0;
    static final byte NF_guardWithCatch = 1;
    static final byte NF_throwException = 2;
    static final byte NF_tryFinally = 3;
    static final byte NF_loop = 4;
    static final byte NF_profileBoolean = 5;
    static final byte NF_tableSwitch = 6;
    static final byte NF_LIMIT = 7;

    @Stable
    private static final LambdaForm.NamedFunction[] NFS;
    static final int MH_cast = 0;
    static final int MH_selectAlternative = 1;
    static final int MH_countedLoopPred = 2;
    static final int MH_countedLoopStep = 3;
    static final int MH_initIterator = 4;
    static final int MH_iteratePred = 5;
    static final int MH_iterateNext = 6;
    static final int MH_Array_newInstance = 7;
    static final int MH_VarHandles_handleCheckedExceptions = 8;
    static final int MH_LIMIT = 9;

    @Stable
    private static final MethodHandle[] HANDLES;
    static final boolean $assertionsDisabled;

    public enum Intrinsic {
        SELECT_ALTERNATIVE,
        GUARD_WITH_CATCH,
        TRY_FINALLY,
        TABLE_SWITCH,
        LOOP,
        ARRAY_LOAD,
        ARRAY_STORE,
        ARRAY_LENGTH,
        IDENTITY,
        NONE
    }

    MethodHandleImpl() {
    }

    static {
        $assertionsDisabled = !MethodHandleImpl.class.desiredAssertionStatus();
        FAKE_METHOD_HANDLE_INVOKE = new MethodHandle[2];
        ARRAYS = new MethodHandle[MethodHandleStatics.MAX_ARITY + 1];
        NFS = new LambdaForm.NamedFunction[7];
        runtimeSetup();
        HANDLES = new MethodHandle[9];
    }

    public static MethodHandle makeArrayElementAccessor(Class<?> arrayClass, ArrayAccess access) {
        if (arrayClass == Object[].class) {
            return ArrayAccess.objectAccessor(access);
        }
        if (!arrayClass.isArray()) {
            throw MethodHandleStatics.newIllegalArgumentException("not an array: " + ((Object) arrayClass));
        }
        MethodHandle[] cache = ArrayAccessor.TYPED_ACCESSORS.get(arrayClass);
        int cacheIndex = ArrayAccess.cacheIndex(access);
        MethodHandle mh2 = cache[cacheIndex];
        if (mh2 != null) {
            return mh2;
        }
        MethodHandle mh3 = ArrayAccessor.getAccessor(arrayClass, access);
        MethodType correctType = ArrayAccessor.correctType(arrayClass, access);
        if (mh3.type() != correctType) {
            if (!$assertionsDisabled && mh3.type().parameterType(0) != Object[].class) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && access == ArrayAccess.SET && mh3.type().parameterType(2) != Object.class) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && access == ArrayAccess.GET && (mh3.type().returnType() != Object.class || correctType.parameterType(0).getComponentType() != correctType.returnType())) {
                throw new AssertionError();
            }
            mh3 = mh3.viewAsType(correctType, false);
        }
        MethodHandle mh4 = makeIntrinsic(mh3, ArrayAccess.intrinsic(access));
        synchronized (cache) {
            if (cache[cacheIndex] == null) {
                cache[cacheIndex] = mh4;
            } else {
                mh4 = cache[cacheIndex];
            }
        }
        return mh4;
    }

    public enum ArrayAccess {
        GET,
        SET,
        LENGTH;

        static String opName(ArrayAccess a10) {
            switch (a10) {
                case GET:
                    return "getElement";
                case SET:
                    return "setElement";
                case LENGTH:
                    return "length";
                default:
                    throw MethodHandleImpl.unmatchedArrayAccess(a10);
            }
        }

        static MethodHandle objectAccessor(ArrayAccess a10) {
            switch (a10) {
                case GET:
                    return ArrayAccessor.OBJECT_ARRAY_GETTER;
                case SET:
                    return ArrayAccessor.OBJECT_ARRAY_SETTER;
                case LENGTH:
                    return ArrayAccessor.OBJECT_ARRAY_LENGTH;
                default:
                    throw MethodHandleImpl.unmatchedArrayAccess(a10);
            }
        }

        static int cacheIndex(ArrayAccess a10) {
            switch (a10) {
                case GET:
                    return 0;
                case SET:
                    return 1;
                case LENGTH:
                    return 2;
                default:
                    throw MethodHandleImpl.unmatchedArrayAccess(a10);
            }
        }

        static Intrinsic intrinsic(ArrayAccess a10) {
            switch (a10) {
                case GET:
                    return Intrinsic.ARRAY_LOAD;
                case SET:
                    return Intrinsic.ARRAY_STORE;
                case LENGTH:
                    return Intrinsic.ARRAY_LENGTH;
                default:
                    throw MethodHandleImpl.unmatchedArrayAccess(a10);
            }
        }
    }

    static InternalError unmatchedArrayAccess(ArrayAccess a10) {
        return MethodHandleStatics.newInternalError("should not reach here (unmatched ArrayAccess: " + ((Object) a10) + ")");
    }

    public static final class ArrayAccessor {
        static final int GETTER_INDEX = 0;
        static final int SETTER_INDEX = 1;
        static final int LENGTH_INDEX = 2;
        static final int INDEX_LIMIT = 3;
        static final ClassValue<MethodHandle[]> TYPED_ACCESSORS;
        static final MethodHandle OBJECT_ARRAY_GETTER;
        static final MethodHandle OBJECT_ARRAY_SETTER;
        static final MethodHandle OBJECT_ARRAY_LENGTH;
        static final boolean $assertionsDisabled;

        ArrayAccessor() {
        }

        static {
            $assertionsDisabled = !MethodHandleImpl.class.desiredAssertionStatus();
            TYPED_ACCESSORS = new ClassValue<MethodHandle[]>() {
                @Override
                protected MethodHandle[] computeValue(Class cls) {
                    return computeValue((Class<?>) cls);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                protected MethodHandle[] computeValue(Class<?> type) {
                    return new MethodHandle[3];
                }
            };
            MethodHandle[] cache = TYPED_ACCESSORS.get(Object[].class);
            MethodHandle makeIntrinsic = MethodHandleImpl.makeIntrinsic(getAccessor(Object[].class, ArrayAccess.GET), Intrinsic.ARRAY_LOAD);
            OBJECT_ARRAY_GETTER = makeIntrinsic;
            cache[0] = makeIntrinsic;
            MethodHandle makeIntrinsic2 = MethodHandleImpl.makeIntrinsic(getAccessor(Object[].class, ArrayAccess.SET), Intrinsic.ARRAY_STORE);
            OBJECT_ARRAY_SETTER = makeIntrinsic2;
            cache[1] = makeIntrinsic2;
            MethodHandle makeIntrinsic3 = MethodHandleImpl.makeIntrinsic(getAccessor(Object[].class, ArrayAccess.LENGTH), Intrinsic.ARRAY_LENGTH);
            OBJECT_ARRAY_LENGTH = makeIntrinsic3;
            cache[2] = makeIntrinsic3;
            if (!$assertionsDisabled && !InvokerBytecodeGenerator.isStaticallyInvocable(OBJECT_ARRAY_GETTER.internalMemberName())) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && !InvokerBytecodeGenerator.isStaticallyInvocable(OBJECT_ARRAY_SETTER.internalMemberName())) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && !InvokerBytecodeGenerator.isStaticallyInvocable(OBJECT_ARRAY_LENGTH.internalMemberName())) {
                throw new AssertionError();
            }
        }

        static int getElementI(int[] a10, int i10) {
            return a10[i10];
        }

        static long getElementJ(long[] a10, int i10) {
            return a10[i10];
        }

        static float getElementF(float[] a10, int i10) {
            return a10[i10];
        }

        static double getElementD(double[] a10, int i10) {
            return a10[i10];
        }

        static boolean getElementZ(boolean[] a10, int i10) {
            return a10[i10];
        }

        static byte getElementB(byte[] a10, int i10) {
            return a10[i10];
        }

        static short getElementS(short[] a10, int i10) {
            return a10[i10];
        }

        static char getElementC(char[] a10, int i10) {
            return a10[i10];
        }

        static Object getElementL(Object[] a10, int i10) {
            return a10[i10];
        }

        static void setElementI(int[] a10, int i10, int x10) {
            a10[i10] = x10;
        }

        static void setElementJ(long[] a10, int i10, long x10) {
            a10[i10] = x10;
        }

        static void setElementF(float[] a10, int i10, float x10) {
            a10[i10] = x10;
        }

        static void setElementD(double[] a10, int i10, double x10) {
            a10[i10] = x10;
        }

        static void setElementZ(boolean[] a10, int i10, boolean x10) {
            a10[i10] = x10;
        }

        static void setElementB(byte[] a10, int i10, byte x10) {
            a10[i10] = x10;
        }

        static void setElementS(short[] a10, int i10, short x10) {
            a10[i10] = x10;
        }

        static void setElementC(char[] a10, int i10, char x10) {
            a10[i10] = x10;
        }

        static void setElementL(Object[] a10, int i10, Object x10) {
            a10[i10] = x10;
        }

        static int lengthI(int[] a10) {
            return a10.length;
        }

        static int lengthJ(long[] a10) {
            return a10.length;
        }

        static int lengthF(float[] a10) {
            return a10.length;
        }

        static int lengthD(double[] a10) {
            return a10.length;
        }

        static int lengthZ(boolean[] a10) {
            return a10.length;
        }

        static int lengthB(byte[] a10) {
            return a10.length;
        }

        static int lengthS(short[] a10) {
            return a10.length;
        }

        static int lengthC(char[] a10) {
            return a10.length;
        }

        static int lengthL(Object[] a10) {
            return a10.length;
        }

        static String name(Class<?> arrayClass, ArrayAccess access) {
            Class<?> elemClass = arrayClass.getComponentType();
            if (elemClass == null) {
                throw MethodHandleStatics.newIllegalArgumentException("not an array", arrayClass);
            }
            return ArrayAccess.opName(access) + Wrapper.basicTypeChar(elemClass);
        }

        static MethodType type(Class<?> arrayClass, ArrayAccess access) {
            Class<?> elemClass = arrayClass.getComponentType();
            Class<?> arrayArgClass = arrayClass;
            if (!elemClass.isPrimitive()) {
                arrayArgClass = Object[].class;
                elemClass = Object.class;
            }
            switch (access) {
                case GET:
                    return MethodType.methodType(elemClass, arrayArgClass, (Class<?>[]) new Class[]{Integer.TYPE});
                case SET:
                    return MethodType.methodType(Void.TYPE, arrayArgClass, (Class<?>[]) new Class[]{Integer.TYPE, elemClass});
                case LENGTH:
                    return MethodType.methodType(Integer.TYPE, arrayArgClass);
                default:
                    throw MethodHandleImpl.unmatchedArrayAccess(access);
            }
        }

        static MethodType correctType(Class<?> arrayClass, ArrayAccess access) {
            Class<?> elemClass = arrayClass.getComponentType();
            switch (access) {
                case GET:
                    return MethodType.methodType(elemClass, arrayClass, (Class<?>[]) new Class[]{Integer.TYPE});
                case SET:
                    return MethodType.methodType(Void.TYPE, arrayClass, (Class<?>[]) new Class[]{Integer.TYPE, elemClass});
                case LENGTH:
                    return MethodType.methodType(Integer.TYPE, arrayClass);
                default:
                    throw MethodHandleImpl.unmatchedArrayAccess(access);
            }
        }

        static MethodHandle getAccessor(Class<?> arrayClass, ArrayAccess access) {
            String name = name(arrayClass, access);
            MethodType type = type(arrayClass, access);
            try {
                return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(ArrayAccessor.class, name, type);
            } catch (ReflectiveOperationException ex) {
                throw MethodHandleStatics.uncaughtException(ex);
            }
        }
    }

    static MethodHandle makePairwiseConvert(MethodHandle target, MethodType srcType, boolean strict, boolean monobox) {
        MethodType dstType = target.type();
        if (srcType == dstType) {
            return target;
        }
        return makePairwiseConvertByEditor(target, srcType, strict, monobox);
    }

    private static int countNonNull(Object[] array) {
        int count = 0;
        if (array != null) {
            for (Object x10 : array) {
                if (x10 != null) {
                    count++;
                }
            }
        }
        return count;
    }

    static MethodHandle makePairwiseConvertByEditor(MethodHandle target, MethodType srcType, boolean strict, boolean monobox) {
        MethodHandle fn2;
        MethodHandle fn3;
        LambdaForm filterArgumentForm;
        int[] positions;
        Object[] convSpecs = computeValueConversions(srcType, target.type(), strict, monobox);
        int convCount = countNonNull(convSpecs);
        if (convCount == 0) {
            return target.viewAsType(srcType, strict);
        }
        MethodType basicSrcType = srcType.basicType();
        MethodType midType = target.type().basicType();
        BoundMethodHandle mh2 = target.rebind();
        HashMap<Object, int[]> convSpecMap = HashMap.newHashMap(convCount);
        for (int i10 = 0; i10 < convSpecs.length - 1; i10++) {
            Object convSpec = convSpecs[i10];
            if (convSpec != null) {
                int[] positions2 = convSpecMap.get(convSpec);
                if (positions2 == null) {
                    positions = new int[]{i10 + 1};
                } else {
                    positions = Arrays.copyOf(positions2, positions2.length + 1);
                    positions[positions.length - 1] = i10 + 1;
                }
                convSpecMap.put(convSpec, positions);
            }
        }
        for (Map.Entry<Object, int[]> entry : convSpecMap.entrySet()) {
            Object convSpec2 = entry.getKey();
            if (convSpec2 instanceof Class) {
                fn3 = getConstantHandle(0).bindTo(convSpec2);
            } else {
                fn3 = (MethodHandle) convSpec2;
            }
            int[] positions3 = entry.getValue();
            Class<?> newType = basicSrcType.parameterType(positions3[0] - 1);
            LambdaForm.BasicType newBasicType = LambdaForm.BasicType.basicType(newType);
            convCount -= positions3.length;
            if (convCount == 0) {
                midType = srcType;
            } else {
                Class<?>[] ptypes = (Class[]) midType.ptypes().clone();
                for (int pos : positions3) {
                    ptypes[pos - 1] = newType;
                }
                midType = MethodType.methodType(midType.rtype(), ptypes, true);
            }
            if (positions3.length > 1) {
                filterArgumentForm = mh2.editor().filterRepeatedArgumentForm(newBasicType, positions3);
            } else {
                filterArgumentForm = mh2.editor().filterArgumentForm(positions3[0], newBasicType);
            }
            LambdaForm form2 = filterArgumentForm;
            mh2 = mh2.copyWithExtendL(midType, form2, fn3);
        }
        Object convSpec3 = convSpecs[convSpecs.length - 1];
        if (convSpec3 != null) {
            if (convSpec3 instanceof Class) {
                if (convSpec3 == Void.TYPE) {
                    fn2 = null;
                } else {
                    fn2 = getConstantHandle(0).bindTo(convSpec3);
                }
            } else {
                fn2 = (MethodHandle) convSpec3;
            }
            Class<?> newType2 = basicSrcType.returnType();
            if (!$assertionsDisabled) {
                convCount--;
                if (convCount != 0) {
                    throw new AssertionError();
                }
            }
            if (fn2 != null) {
                BoundMethodHandle mh3 = mh2.rebind();
                LambdaForm form22 = mh3.editor().filterReturnForm(LambdaForm.BasicType.basicType(newType2), false);
                mh2 = mh3.copyWithExtendL(srcType, form22, fn2);
            } else {
                LambdaForm form23 = mh2.editor().filterReturnForm(LambdaForm.BasicType.basicType(newType2), true);
                mh2 = mh2.copyWith(srcType, form23);
            }
        }
        if (!$assertionsDisabled && convCount != 0) {
            throw new AssertionError();
        }
        if ($assertionsDisabled || mh2.type().equals((Object) srcType)) {
            return mh2;
        }
        throw new AssertionError();
    }

    static Object[] computeValueConversions(MethodType srcType, MethodType dstType, boolean strict, boolean monobox) {
        int INARG_COUNT = srcType.parameterCount();
        Object[] convSpecs = null;
        int i10 = 0;
        while (i10 <= INARG_COUNT) {
            boolean isRet = i10 == INARG_COUNT;
            Class<?> src = isRet ? dstType.returnType() : srcType.parameterType(i10);
            Class<?> dst = isRet ? srcType.returnType() : dstType.parameterType(i10);
            if (!VerifyType.isNullConversion(src, dst, strict)) {
                if (convSpecs == null) {
                    convSpecs = new Object[INARG_COUNT + 1];
                }
                convSpecs[i10] = valueConversion(src, dst, strict, monobox);
            }
            i10++;
        }
        return convSpecs;
    }

    public static MethodHandle makePairwiseConvert(MethodHandle target, MethodType srcType, boolean strict) {
        return makePairwiseConvert(target, srcType, strict, false);
    }

    static Object valueConversion(Class<?> src, Class<?> dst, boolean strict, boolean monobox) {
        MethodHandle fn2;
        MethodHandle unboxCast;
        if (!$assertionsDisabled && VerifyType.isNullConversion(src, dst, strict)) {
            throw new AssertionError();
        }
        if (dst == Void.TYPE) {
            return dst;
        }
        if (src.isPrimitive()) {
            if (src == Void.TYPE) {
                return Void.TYPE;
            }
            if (dst.isPrimitive()) {
                fn2 = ValueConversions.convertPrimitive(src, dst);
            } else {
                Wrapper wsrc = Wrapper.forPrimitiveType(src);
                fn2 = ValueConversions.boxExact(wsrc);
                if (!$assertionsDisabled && fn2.type().parameterType(0) != wsrc.primitiveType()) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && fn2.type().returnType() != wsrc.wrapperType()) {
                    throw new AssertionError();
                }
                if (!VerifyType.isNullConversion(wsrc.wrapperType(), dst, strict)) {
                    MethodType mt = MethodType.methodType(dst, src);
                    if (strict) {
                        fn2 = fn2.asType(mt);
                    } else {
                        fn2 = makePairwiseConvert(fn2, mt, false);
                    }
                }
            }
        } else if (dst.isPrimitive()) {
            Wrapper wdst = Wrapper.forPrimitiveType(dst);
            if (monobox || src == wdst.wrapperType()) {
                fn2 = ValueConversions.unboxExact(wdst, strict);
            } else {
                if (strict) {
                    unboxCast = ValueConversions.unboxWiden(wdst);
                } else {
                    unboxCast = ValueConversions.unboxCast(wdst);
                }
                fn2 = unboxCast;
            }
        } else {
            return dst;
        }
        if ($assertionsDisabled || fn2.type().parameterCount() <= 1) {
            return fn2;
        }
        throw new AssertionError((Object) ("pc" + ((Object) Arrays.asList(src.getSimpleName(), dst.getSimpleName(), fn2))));
    }

    public static MethodHandle makeVarargsCollector(MethodHandle target, Class<?> arrayType) {
        MethodType type = target.type();
        int last = type.parameterCount() - 1;
        if (type.parameterType(last) != arrayType) {
            target = target.asType(type.changeParameterType(last, arrayType));
        }
        return new AsVarargsCollector(target.asFixedArity(), arrayType);
    }

    public static final class AsVarargsCollector extends DelegatingMethodHandle {
        private final MethodHandle target;
        private final Class<?> arrayType;
        private MethodHandle asCollectorCache;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !MethodHandleImpl.class.desiredAssertionStatus();
        }

        AsVarargsCollector(MethodHandle target, Class<?> arrayType) {
            this(target.type(), target, arrayType);
        }

        AsVarargsCollector(MethodType type, MethodHandle target, Class<?> arrayType) {
            super(type, target);
            this.target = target;
            this.arrayType = arrayType;
        }

        @Override
        public boolean isVarargsCollector() {
            return true;
        }

        @Override
        protected MethodHandle getTarget() {
            return this.target;
        }

        @Override
        public MethodHandle asFixedArity() {
            return this.target;
        }

        @Override
        public MethodHandle setVarargs(MemberName member) {
            return member.isVarargs() ? this : asFixedArity();
        }

        @Override
        public MethodHandle withVarargs(boolean makeVarargs) {
            return makeVarargs ? this : asFixedArity();
        }

        @Override
        public MethodHandle asTypeUncached(MethodType newType) {
            MethodType type = type();
            int collectArg = type.parameterCount() - 1;
            int newArity = newType.parameterCount();
            if (newArity == collectArg + 1 && type.parameterType(collectArg).isAssignableFrom(newType.parameterType(collectArg))) {
                return asFixedArity().asType(newType);
            }
            MethodHandle acc = this.asCollectorCache;
            if (acc != null && acc.type().parameterCount() == newArity) {
                return acc.asType(newType);
            }
            int arrayLength = newArity - collectArg;
            try {
                MethodHandle collector = asFixedArity().asCollector(this.arrayType, arrayLength);
                if (!$assertionsDisabled && collector.type().parameterCount() != newArity) {
                    throw new AssertionError((Object) ("newArity=" + newArity + " but collector=" + ((Object) collector)));
                }
                this.asCollectorCache = collector;
                return collector.asType(newType);
            } catch (IllegalArgumentException ex) {
                throw new WrongMethodTypeException("cannot build collector", ex);
            }
        }

        @Override
        public boolean viewAsTypeChecks(MethodType newType, boolean strict) {
            super.viewAsTypeChecks(newType, true);
            if (!strict && !$assertionsDisabled && !type().lastParameterType().getComponentType().isAssignableFrom(newType.lastParameterType().getComponentType())) {
                throw new AssertionError(Arrays.asList(this, newType));
            }
            return true;
        }

        @Override
        public Object invokeWithArguments(Object... arguments) throws Throwable {
            int argc;
            MethodType type = type();
            if (arguments == null || (argc = arguments.length) <= 127 || argc < type.parameterCount()) {
                return super.invokeWithArguments(arguments);
            }
            int uncollected = type.parameterCount() - 1;
            Class<?> elemType = this.arrayType.getComponentType();
            int collected = argc - uncollected;
            Object collArgs = elemType == Object.class ? new Object[collected] : Array.newInstance(elemType, collected);
            if (!elemType.isPrimitive()) {
                try {
                    System.arraycopy(arguments, uncollected, collArgs, 0, collected);
                } catch (ArrayStoreException e10) {
                    return super.invokeWithArguments(arguments);
                }
            } else {
                MethodHandle arraySetter = MethodHandles.arrayElementSetter(this.arrayType);
                for (int i10 = 0; i10 < collected; i10++) {
                    try {
                        (void) arraySetter.invoke(collArgs, i10, arguments[uncollected + i10]);
                    } catch (ClassCastException | WrongMethodTypeException e11) {
                        return super.invokeWithArguments(arguments);
                    }
                }
            }
            Object[] newArgs = new Object[uncollected + 1];
            System.arraycopy(arguments, 0, newArgs, 0, uncollected);
            newArgs[uncollected] = collArgs;
            return asFixedArity().invokeWithArguments(newArgs);
        }
    }

    static void checkSpreadArgument(Object av, int n10) {
        if (av == null && n10 == 0) {
            return;
        }
        if (av == null) {
            throw new NullPointerException("null array reference");
        }
        if (av instanceof Object[]) {
            Object[] array = (Object[]) av;
            int len = array.length;
            if (len == n10) {
                return;
            }
        } else {
            int len2 = Array.getLength(av);
            if (len2 == n10) {
                return;
            }
        }
        throw MethodHandleStatics.newIllegalArgumentException("array is not of length " + n10);
    }

    @Hidden
    static MethodHandle selectAlternative(boolean testResult, MethodHandle target, MethodHandle fallback) {
        if (testResult) {
            return target;
        }
        return fallback;
    }

    @Hidden
    @IntrinsicCandidate
    static boolean profileBoolean(boolean result, int[] counters) {
        int idx = result ? 1 : 0;
        try {
            counters[idx] = Math.addExact(counters[idx], 1);
        } catch (ArithmeticException e10) {
            counters[idx] = counters[idx] / 2;
        }
        return result;
    }

    @Hidden
    @IntrinsicCandidate
    public static boolean isCompileConstant(Object obj) {
        return false;
    }

    public static MethodHandle makeGuardWithTest(MethodHandle test, MethodHandle target, MethodHandle fallback) {
        BoundMethodHandle mh2;
        MethodType type = target.type();
        if (!$assertionsDisabled && (!test.type().equals((Object) type.changeReturnType((Class<?>) Boolean.TYPE)) || !fallback.type().equals((Object) type))) {
            throw new AssertionError();
        }
        MethodType basicType = type.basicType();
        LambdaForm form = makeGuardWithTestForm(basicType);
        try {
            if (MethodHandleStatics.PROFILE_GWT) {
                int[] counts = new int[2];
                mh2 = BoundMethodHandle.speciesData_LLLL().factory().invokeBasic(type, form, test, profile(target), profile(fallback), counts);
            } else {
                mh2 = BoundMethodHandle.speciesData_LLL().factory().invokeBasic(type, form, test, profile(target), profile(fallback));
            }
            if ($assertionsDisabled || mh2.type() == type) {
                return mh2;
            }
            throw new AssertionError();
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    static MethodHandle profile(MethodHandle target) {
        if (MethodHandleStatics.DONT_INLINE_THRESHOLD >= 0) {
            return makeBlockInliningWrapper(target);
        }
        return target;
    }

    static MethodHandle makeBlockInliningWrapper(MethodHandle target) {
        LambdaForm lform;
        if (MethodHandleStatics.DONT_INLINE_THRESHOLD > 0) {
            lform = Makers.PRODUCE_BLOCK_INLINING_FORM.apply(target);
        } else {
            lform = Makers.PRODUCE_REINVOKER_FORM.apply(target);
        }
        return new CountingWrapper(target, lform, Makers.PRODUCE_BLOCK_INLINING_FORM, Makers.PRODUCE_REINVOKER_FORM, MethodHandleStatics.DONT_INLINE_THRESHOLD);
    }

    public static final class Makers {
        static final Function<MethodHandle, LambdaForm> PRODUCE_BLOCK_INLINING_FORM = new Function<MethodHandle, LambdaForm>() {
            @Override
            public LambdaForm apply(MethodHandle target) {
                return DelegatingMethodHandle.makeReinvokerForm(target, 9, CountingWrapper.class, false, DelegatingMethodHandle.NF_getTarget, CountingWrapper.NF_maybeStopCounting);
            }
        };
        static final Function<MethodHandle, LambdaForm> PRODUCE_REINVOKER_FORM = new Function<MethodHandle, LambdaForm>() {
            @Override
            public LambdaForm apply(MethodHandle target) {
                return DelegatingMethodHandle.makeReinvokerForm(target, 8, DelegatingMethodHandle.class, DelegatingMethodHandle.NF_getTarget);
            }
        };
        static final ClassValue<MethodHandle[]> TYPED_COLLECTORS = new ClassValue<MethodHandle[]>() {
            @Override
            protected MethodHandle[] computeValue(Class cls) {
                return computeValue((Class<?>) cls);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            protected MethodHandle[] computeValue(Class<?> type) {
                return new MethodHandle[256];
            }
        };

        private Makers() {
        }
    }

    public static final class CountingWrapper extends DelegatingMethodHandle {
        private final MethodHandle target;
        private int count;
        private Function<MethodHandle, LambdaForm> countingFormProducer;
        private Function<MethodHandle, LambdaForm> nonCountingFormProducer;
        private volatile boolean isCounting;
        static final LambdaForm.NamedFunction NF_maybeStopCounting;

        private CountingWrapper(MethodHandle target, LambdaForm lform, Function<MethodHandle, LambdaForm> countingFromProducer, Function<MethodHandle, LambdaForm> nonCountingFormProducer, int count) {
            super(target.type(), lform);
            this.target = target;
            this.count = count;
            this.countingFormProducer = countingFromProducer;
            this.nonCountingFormProducer = nonCountingFormProducer;
            this.isCounting = count > 0;
        }

        @Override
        @Hidden
        protected MethodHandle getTarget() {
            return this.target;
        }

        @Override
        public MethodHandle asTypeUncached(MethodType newType) {
            MethodHandle wrapper;
            MethodHandle newTarget = this.target.asType(newType);
            if (this.isCounting) {
                LambdaForm lform = this.countingFormProducer.apply(newTarget);
                wrapper = new CountingWrapper(newTarget, lform, this.countingFormProducer, this.nonCountingFormProducer, MethodHandleStatics.DONT_INLINE_THRESHOLD);
            } else {
                wrapper = newTarget;
            }
            return wrapper;
        }

        boolean countDown() {
            int c10 = this.count;
            this.target.maybeCustomize();
            if (c10 <= 1) {
                if (this.isCounting) {
                    this.isCounting = false;
                    return true;
                }
                return false;
            }
            this.count = c10 - 1;
            return false;
        }

        @Hidden
        static void maybeStopCounting(Object o12) {
            CountingWrapper wrapper = (CountingWrapper) o12;
            if (wrapper.countDown()) {
                wrapper.updateForm(new Function<LambdaForm, LambdaForm>() {
                    @Override
                    public LambdaForm apply(LambdaForm oldForm) {
                        LambdaForm lform = CountingWrapper.this.nonCountingFormProducer.apply(CountingWrapper.this.target);
                        lform.compileToBytecode();
                        return lform;
                    }
                });
            }
        }

        static {
            try {
                NF_maybeStopCounting = new LambdaForm.NamedFunction(CountingWrapper.class.getDeclaredMethod("maybeStopCounting", Object.class));
            } catch (ReflectiveOperationException ex) {
                throw MethodHandleStatics.newInternalError(ex);
            }
        }
    }

    static LambdaForm makeGuardWithTestForm(MethodType basicType) {
        int i10;
        int i11;
        LambdaForm lform = basicType.form().cachedLambdaForm(17);
        if (lform != null) {
            return lform;
        }
        int ARG_LIMIT = 1 + basicType.parameterCount();
        int nameCursor = ARG_LIMIT + 1;
        int nameCursor2 = nameCursor + 1;
        int nameCursor3 = nameCursor2 + 1;
        if (MethodHandleStatics.PROFILE_GWT) {
            i10 = nameCursor3;
            nameCursor3++;
        } else {
            i10 = -1;
        }
        int GET_COUNTERS = i10;
        int CALL_TEST = nameCursor3;
        int nameCursor4 = nameCursor3 + 1;
        if (GET_COUNTERS != -1) {
            i11 = nameCursor4;
            nameCursor4++;
        } else {
            i11 = -1;
        }
        int PROFILE = i11;
        int TEST = nameCursor4 - 1;
        int SELECT_ALT = nameCursor4;
        int nameCursor5 = nameCursor4 + 1;
        int nameCursor6 = nameCursor5 + 1;
        if (!$assertionsDisabled && nameCursor5 != SELECT_ALT + 1) {
            throw new AssertionError();
        }
        LambdaForm.Name[] names = LambdaForm.invokeArguments(nameCursor6 - ARG_LIMIT, basicType);
        BoundMethodHandle.SpeciesData data = GET_COUNTERS != -1 ? BoundMethodHandle.speciesData_LLLL() : BoundMethodHandle.speciesData_LLL();
        names[0] = names[0].withConstraint(data);
        names[ARG_LIMIT] = new LambdaForm.Name(data.getterFunction(0), names[0]);
        names[nameCursor] = new LambdaForm.Name(data.getterFunction(1), names[0]);
        names[nameCursor2] = new LambdaForm.Name(data.getterFunction(2), names[0]);
        if (GET_COUNTERS != -1) {
            names[GET_COUNTERS] = new LambdaForm.Name(data.getterFunction(3), names[0]);
        }
        Object[] invokeArgs = Arrays.copyOfRange(names, 0, ARG_LIMIT, Object[].class);
        MethodType testType = basicType.changeReturnType((Class<?>) Boolean.TYPE).basicType();
        invokeArgs[0] = names[ARG_LIMIT];
        names[CALL_TEST] = new LambdaForm.Name(testType, invokeArgs);
        if (PROFILE != -1) {
            names[PROFILE] = new LambdaForm.Name(getFunction((byte) 5), names[CALL_TEST], names[GET_COUNTERS]);
        }
        names[SELECT_ALT] = new LambdaForm.Name(new LambdaForm.NamedFunction(makeIntrinsic(getConstantHandle(1), Intrinsic.SELECT_ALTERNATIVE)), names[TEST], names[nameCursor], names[nameCursor2]);
        invokeArgs[0] = names[SELECT_ALT];
        names[nameCursor5] = new LambdaForm.Name(basicType, invokeArgs);
        return basicType.form().setCachedLambdaForm(17, LambdaForm.create(basicType.parameterCount() + 1, names, true, LambdaForm.Kind.GUARD));
    }

    private static LambdaForm makeGuardWithCatchForm(MethodType basicType) {
        LambdaForm lform = basicType.form().cachedLambdaForm(16);
        if (lform != null) {
            return lform;
        }
        int ARG_LIMIT = 1 + basicType.parameterCount();
        int nameCursor = ARG_LIMIT + 1;
        int nameCursor2 = nameCursor + 1;
        int nameCursor3 = nameCursor2 + 1;
        int nameCursor4 = nameCursor3 + 1;
        int nameCursor5 = nameCursor4 + 1;
        int nameCursor6 = nameCursor5 + 1;
        int nameCursor7 = nameCursor6 + 1;
        LambdaForm.Name[] names = LambdaForm.invokeArguments((nameCursor7 + 1) - ARG_LIMIT, basicType);
        BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_LLLLL();
        names[0] = names[0].withConstraint(data);
        names[ARG_LIMIT] = new LambdaForm.Name(data.getterFunction(0), names[0]);
        names[nameCursor] = new LambdaForm.Name(data.getterFunction(1), names[0]);
        names[nameCursor2] = new LambdaForm.Name(data.getterFunction(2), names[0]);
        names[nameCursor3] = new LambdaForm.Name(data.getterFunction(3), names[0]);
        names[nameCursor4] = new LambdaForm.Name(data.getterFunction(4), names[0]);
        MethodType collectArgsType = basicType.changeReturnType(Object.class);
        MethodHandle invokeBasic = MethodHandles.basicInvoker(collectArgsType);
        Object[] args = new Object[invokeBasic.type().parameterCount()];
        args[0] = names[nameCursor3];
        System.arraycopy(names, 1, args, 1, ARG_LIMIT - 1);
        names[nameCursor5] = new LambdaForm.Name(new LambdaForm.NamedFunction(makeIntrinsic(invokeBasic, Intrinsic.GUARD_WITH_CATCH)), args);
        Object[] gwcArgs = {names[ARG_LIMIT], names[nameCursor], names[nameCursor2], names[nameCursor5]};
        names[nameCursor6] = new LambdaForm.Name(getFunction((byte) 1), gwcArgs);
        MethodHandle invokeBasicUnbox = MethodHandles.basicInvoker(MethodType.methodType(basicType.rtype(), (Class<?>) Object.class));
        Object[] unboxArgs = {names[nameCursor4], names[nameCursor6]};
        names[nameCursor7] = new LambdaForm.Name(invokeBasicUnbox, unboxArgs);
        return basicType.form().setCachedLambdaForm(16, LambdaForm.create(basicType.parameterCount() + 1, names, LambdaForm.Kind.GUARD_WITH_CATCH));
    }

    public static MethodHandle makeGuardWithCatch(MethodHandle target, Class<? extends Throwable> exType, MethodHandle catcher) {
        MethodType type = target.type();
        LambdaForm form = makeGuardWithCatchForm(type.basicType());
        MethodType varargsType = type.changeReturnType(Object[].class);
        MethodHandle collectArgs = varargsArray(type.parameterCount()).asType(varargsType);
        MethodHandle unboxResult = unboxResultHandle(type.returnType());
        BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_LLLLL();
        try {
            BoundMethodHandle mh2 = data.factory().invokeBasic(type, form, target, exType, catcher, collectArgs, unboxResult);
            if ($assertionsDisabled || mh2.type() == type) {
                return mh2;
            }
            throw new AssertionError();
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    @Hidden
    static Object guardWithCatch(MethodHandle target, Class<? extends Throwable> exType, MethodHandle catcher, Object... av) throws Throwable {
        try {
            return target.asFixedArity().invokeWithArguments(av);
        } catch (Throwable t10) {
            if (exType.isInstance(t10)) {
                return catcher.asFixedArity().invokeWithArguments(prepend(av, t10));
            }
            throw t10;
        }
    }

    @Hidden
    private static Object[] prepend(Object[] array, Object... elems) {
        int nArray = array.length;
        int nElems = elems.length;
        Object[] newArray = new Object[nArray + nElems];
        System.arraycopy(elems, 0, newArray, 0, nElems);
        System.arraycopy(array, 0, newArray, nElems, nArray);
        return newArray;
    }

    public static MethodHandle throwException(MethodType type) {
        if (!$assertionsDisabled && !Throwable.class.isAssignableFrom(type.parameterType(0))) {
            throw new AssertionError();
        }
        int arity = type.parameterCount();
        if (arity > 1) {
            MethodHandle mh2 = throwException(type.dropParameterTypes(1, arity));
            return MethodHandles.dropArgumentsTrusted(mh2, 1, (Class[]) Arrays.copyOfRange(type.ptypes(), 1, arity));
        }
        return makePairwiseConvert(getFunction((byte) 2).resolvedHandle(), type, false, true);
    }

    static <T extends Throwable> Empty throwException(T t10) throws Throwable {
        throw t10;
    }

    public static MethodHandle fakeMethodHandleInvoke(MemberName method) {
        int i10;
        if (!$assertionsDisabled && !method.isMethodHandleInvoke()) {
            throw new AssertionError();
        }
        String name = method.getName();
        boolean z10 = -1;
        switch (name.hashCode()) {
            case -1183693704:
                if (name.equals("invoke")) {
                    z10 = false;
                    break;
                }
                break;
            case 941760871:
                if (name.equals("invokeExact")) {
                    z10 = true;
                    break;
                }
                break;
        }
        switch (z10) {
            case false:
                i10 = 0;
                break;
            case true:
                i10 = 1;
                break;
            default:
                throw new InternalError(method.getName());
        }
        int idx = i10;
        MethodHandle mh2 = FAKE_METHOD_HANDLE_INVOKE[idx];
        if (mh2 != null) {
            return mh2;
        }
        MethodType type = MethodType.methodType((Class<?>) Object.class, (Class<?>) UnsupportedOperationException.class, (Class<?>[]) new Class[]{MethodHandle.class, Object[].class});
        MethodHandle mh3 = throwException(type).bindTo(new UnsupportedOperationException("cannot reflectively invoke MethodHandle"));
        if (!method.getInvocationType().equals((Object) mh3.type())) {
            throw new InternalError(method.toString());
        }
        MethodHandle mh4 = mh3.withInternalMemberName(method, false).withVarargs(true);
        if (!$assertionsDisabled && !method.isVarargs()) {
            throw new AssertionError();
        }
        FAKE_METHOD_HANDLE_INVOKE[idx] = mh4;
        return mh4;
    }

    public static MethodHandle fakeVarHandleInvoke(MemberName method) {
        MethodType type = MethodType.methodType(method.getMethodType().returnType(), (Class<?>) UnsupportedOperationException.class, (Class<?>[]) new Class[]{VarHandle.class, Object[].class});
        MethodHandle mh2 = throwException(type).bindTo(new UnsupportedOperationException("cannot reflectively invoke VarHandle"));
        if (!method.getInvocationType().equals((Object) mh2.type())) {
            throw new InternalError(method.toString());
        }
        MethodHandle mh3 = mh2.withInternalMemberName(method, false).asVarargsCollector(Object[].class);
        if ($assertionsDisabled || method.isVarargs()) {
            return mh3;
        }
        throw new AssertionError();
    }

    public static MethodHandle bindCaller(MethodHandle mh2, Class<?> hostClass) {
        return BindCaller.bindCaller(mh2, hostClass);
    }

    public static class BindCaller {
        private static final ClassDesc CD_Object_array;
        private static final MethodType INVOKER_MT;
        private static final MethodType REFLECT_INVOKER_MT;
        private static ClassValue<InjectedInvokerHolder> CV_makeInjectedInvoker;
        private static final MethodHandle MH_checkCallerClass;
        private static final byte[] INJECTED_INVOKER_TEMPLATE;
        static final boolean $assertionsDisabled;

        private BindCaller() {
        }

        static {
            $assertionsDisabled = !MethodHandleImpl.class.desiredAssertionStatus();
            CD_Object_array = ConstantUtils.CD_Object_array;
            INVOKER_MT = MethodType.methodType((Class<?>) Object.class, (Class<?>) MethodHandle.class, (Class<?>[]) new Class[]{Object[].class});
            REFLECT_INVOKER_MT = MethodType.methodType((Class<?>) Object.class, (Class<?>) MethodHandle.class, (Class<?>[]) new Class[]{Object.class, Object[].class});
            CV_makeInjectedInvoker = new ClassValue<InjectedInvokerHolder>() {
                @Override
                protected InjectedInvokerHolder computeValue(Class cls) {
                    return computeValue((Class<?>) cls);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                protected InjectedInvokerHolder computeValue(Class<?> hostClass) {
                    return new InjectedInvokerHolder(BindCaller.makeInjectedInvoker(hostClass));
                }
            };
            if (!$assertionsDisabled && !checkCallerClass(BindCaller.class)) {
                throw new AssertionError();
            }
            try {
                MH_checkCallerClass = MethodHandles.Lookup.IMPL_LOOKUP.findStatic(BindCaller.class, "checkCallerClass", MethodType.methodType(Boolean.TYPE, (Class<?>) Class.class));
                if (!$assertionsDisabled && !(boolean) MH_checkCallerClass.invokeExact(BindCaller.class)) {
                    throw new AssertionError();
                }
                INJECTED_INVOKER_TEMPLATE = generateInvokerTemplate();
            } catch (Throwable ex) {
                throw new InternalError(ex);
            }
        }

        static MethodHandle bindCaller(MethodHandle mh2, Class<?> hostClass) {
            MemberName csmAdapter;
            if (hostClass == null || hostClass.isArray() || hostClass.isPrimitive() || hostClass.getName().startsWith("java.lang.invoke.")) {
                throw new InternalError();
            }
            MemberName member = mh2.internalMemberName();
            if (member != null && (csmAdapter = MethodHandles.Lookup.IMPL_LOOKUP.resolveOrNull(member.getReferenceKind(), new MemberName(member.getDeclaringClass(), member.getName(), member.getMethodType().appendParameterTypes(Class.class), member.getReferenceKind()))) != null) {
                if (!$assertionsDisabled && csmAdapter.isCallerSensitive()) {
                    throw new AssertionError();
                }
                MethodHandle dmh = DirectMethodHandle.make(csmAdapter);
                return new WrappedMember(MethodHandles.insertArguments(dmh, dmh.type().parameterCount() - 1, hostClass), mh2.type(), member, mh2.isInvokeSpecial(), hostClass);
            }
            try {
                return bindCallerWithInjectedInvoker(mh2, hostClass);
            } catch (ReflectiveOperationException ex) {
                throw MethodHandleStatics.uncaughtException(ex);
            }
        }

        private static MethodHandle bindCallerWithInjectedInvoker(MethodHandle mh2, Class<?> hostClass) throws ReflectiveOperationException {
            MethodHandle vamh = prepareForInvoker(mh2);
            MethodHandle bccInvoker = CV_makeInjectedInvoker.get(hostClass).invoker();
            return restoreToType(bccInvoker.bindTo(vamh), mh2, hostClass);
        }

        private static Class<?> makeInjectedInvoker(Class<?> targetClass) {
            String name = targetClass.getName() + "$$InjectedInvoker";
            if (targetClass.isHidden()) {
                name = name.replace('/', '_');
            }
            Class<?> invokerClass = new MethodHandles.Lookup(targetClass).makeHiddenClassDefiner(name.replace('.', '/'), INJECTED_INVOKER_TEMPLATE, MethodHandleStatics.dumper(), 1).defineClass(true, targetClass);
            if ($assertionsDisabled || checkInjectedInvoker(targetClass, invokerClass)) {
                return invokerClass;
            }
            throw new AssertionError();
        }

        static MethodHandle reflectiveInvoker(Class<?> caller) {
            return CV_makeInjectedInvoker.get(caller).reflectInvoker();
        }

        public static final class InjectedInvokerHolder {
            private final Class<?> invokerClass;
            private MethodHandle invoker;
            private MethodHandle reflectInvoker;

            private InjectedInvokerHolder(Class<?> invokerClass) {
                this.invokerClass = invokerClass;
            }

            private MethodHandle invoker() {
                MethodHandle mh2 = this.invoker;
                if (mh2 == null) {
                    try {
                        MethodHandle findStatic = MethodHandles.Lookup.IMPL_LOOKUP.findStatic(this.invokerClass, "invoke_V", BindCaller.INVOKER_MT);
                        mh2 = findStatic;
                        this.invoker = findStatic;
                    } catch (Error | RuntimeException ex) {
                        throw ex;
                    } catch (Throwable ex2) {
                        throw new InternalError(ex2);
                    }
                }
                return mh2;
            }

            private MethodHandle reflectInvoker() {
                MethodHandle mh2 = this.reflectInvoker;
                if (mh2 == null) {
                    try {
                        MethodHandle findStatic = MethodHandles.Lookup.IMPL_LOOKUP.findStatic(this.invokerClass, "reflect_invoke_V", BindCaller.REFLECT_INVOKER_MT);
                        mh2 = findStatic;
                        this.reflectInvoker = findStatic;
                    } catch (Error | RuntimeException ex) {
                        throw ex;
                    } catch (Throwable ex2) {
                        throw new InternalError(ex2);
                    }
                }
                return mh2;
            }
        }

        private static MethodHandle prepareForInvoker(MethodHandle mh2) {
            MethodHandle mh3 = mh2.asFixedArity();
            MethodType mt = mh3.type();
            int arity = mt.parameterCount();
            MethodHandle vamh = mh3.asType(mt.generic());
            vamh.internalForm().compileToBytecode();
            MethodHandle vamh2 = vamh.asSpreader(Object[].class, arity);
            vamh2.internalForm().compileToBytecode();
            return vamh2;
        }

        private static MethodHandle restoreToType(MethodHandle vamh, MethodHandle original, Class<?> hostClass) {
            MethodType type = original.type();
            MethodHandle mh2 = vamh.asCollector(Object[].class, type.parameterCount());
            MemberName member = original.internalMemberName();
            return new WrappedMember(mh2.asType(type), type, member, original.isInvokeSpecial(), hostClass);
        }

        private static boolean checkInjectedInvoker(Class<?> hostClass, Class<?> invokerClass) {
            if (!$assertionsDisabled && hostClass.getClassLoader() != invokerClass.getClassLoader()) {
                throw new AssertionError((Object) (hostClass.getName() + " (CL)"));
            }
            if (!$assertionsDisabled && hostClass.getProtectionDomain() != invokerClass.getProtectionDomain()) {
                throw new AssertionError((Object) (hostClass.getName() + " (PD)"));
            }
            try {
                MethodHandle invoker = MethodHandles.Lookup.IMPL_LOOKUP.findStatic(invokerClass, "invoke_V", INVOKER_MT);
                MethodHandle vamh = prepareForInvoker(MH_checkCallerClass);
                return (boolean) invoker.invoke(vamh, new Object[]{invokerClass});
            } catch (Error | RuntimeException ex) {
                throw ex;
            } catch (Throwable ex2) {
                throw new InternalError(ex2);
            }
        }

        @ForceInline
        @CallerSensitive
        private static boolean checkCallerClass(Class<?> expected) {
            Class<?> actual = Reflection.getCallerClass();
            if (actual != expected) {
                throw new InternalError("found " + actual.getName() + ", expected " + expected.getName());
            }
            return true;
        }

        private static byte[] generateInvokerTemplate() {
            return ClassFile.of().build(ClassOrInterfaceDescImpl.ofValidated("LInjectedInvoker;"), clb -> {
                clb.withFlags(34).withMethodBody("invoke_V", (MethodTypeDesc) MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{ConstantDescs.CD_MethodHandle, CD_Object_array}), 8, cob -> {
                    cob.aload(0).aload(1).invokevirtual(ConstantDescs.CD_MethodHandle, "invokeExact", MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{CD_Object_array})).areturn();
                }).withMethodBody("reflect_invoke_V", (MethodTypeDesc) MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{ConstantDescs.CD_MethodHandle, ConstantDescs.CD_Object, CD_Object_array}), 8, cob2 -> {
                    cob2.aload(0).aload(1).aload(2).invokevirtual(ConstantDescs.CD_MethodHandle, "invokeExact", MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{ConstantDescs.CD_Object, CD_Object_array})).areturn();
                });
            });
        }
    }

    public static final class WrappedMember extends DelegatingMethodHandle {
        private final MethodHandle target;
        private final MemberName member;
        private final Class<?> callerClass;
        private final boolean isInvokeSpecial;

        private WrappedMember(MethodHandle target, MethodType type, MemberName member, boolean isInvokeSpecial, Class<?> callerClass) {
            super(type, target);
            this.target = target;
            this.member = member;
            this.callerClass = callerClass;
            this.isInvokeSpecial = isInvokeSpecial;
        }

        @Override
        MemberName internalMemberName() {
            return this.member;
        }

        @Override
        Class<?> internalCallerClass() {
            return this.callerClass;
        }

        @Override
        boolean isInvokeSpecial() {
            return this.isInvokeSpecial;
        }

        @Override
        protected MethodHandle getTarget() {
            return this.target;
        }

        @Override
        public MethodHandle asTypeUncached(MethodType newType) {
            return this.target.asType(newType);
        }
    }

    public static MethodHandle makeWrappedMember(MethodHandle target, MemberName member, boolean isInvokeSpecial) {
        if (member.equals(target.internalMemberName()) && isInvokeSpecial == target.isInvokeSpecial()) {
            return target;
        }
        return new WrappedMember(target, target.type(), member, isInvokeSpecial, null);
    }

    public static final class IntrinsicMethodHandle extends DelegatingMethodHandle {
        private final MethodHandle target;
        private final Intrinsic intrinsicName;
        private final Object intrinsicData;

        IntrinsicMethodHandle(MethodHandle target, Intrinsic intrinsicName) {
            this(target, intrinsicName, null);
        }

        IntrinsicMethodHandle(MethodHandle target, Intrinsic intrinsicName, Object intrinsicData) {
            super(target.type(), target);
            this.target = target;
            this.intrinsicName = intrinsicName;
            this.intrinsicData = intrinsicData;
        }

        @Override
        protected MethodHandle getTarget() {
            return this.target;
        }

        @Override
        public Intrinsic intrinsicName() {
            return this.intrinsicName;
        }

        @Override
        public Object intrinsicData() {
            return this.intrinsicData;
        }

        @Override
        public MethodHandle asTypeUncached(MethodType newType) {
            return this.target.asType(newType);
        }

        @Override
        public String internalProperties() {
            return super.internalProperties() + "\n& Intrinsic=" + ((Object) this.intrinsicName);
        }

        @Override
        public MethodHandle asCollector(Class<?> arrayType, int arrayLength) {
            if (this.intrinsicName == Intrinsic.IDENTITY) {
                MethodType resultType = type().asCollectorType(arrayType, type().parameterCount() - 1, arrayLength);
                MethodHandle newArray = MethodHandleImpl.varargsArray(arrayType, arrayLength);
                return newArray.asType(resultType);
            }
            return super.asCollector(arrayType, arrayLength);
        }
    }

    public static MethodHandle makeIntrinsic(MethodHandle target, Intrinsic intrinsicName) {
        return makeIntrinsic(target, intrinsicName, (Object) null);
    }

    static MethodHandle makeIntrinsic(MethodHandle target, Intrinsic intrinsicName, Object intrinsicData) {
        if (intrinsicName == target.intrinsicName()) {
            return target;
        }
        return new IntrinsicMethodHandle(target, intrinsicName, intrinsicData);
    }

    public static MethodHandle makeIntrinsic(MethodType type, LambdaForm form, Intrinsic intrinsicName) {
        return new IntrinsicMethodHandle(SimpleMethodHandle.make(type, form), intrinsicName);
    }

    static MethodHandle varargsArray(int nargs) {
        MethodHandle mh2 = ARRAYS[nargs];
        if (mh2 != null) {
            return mh2;
        }
        MethodHandle mh3 = makeCollector(Object[].class, nargs);
        if (!$assertionsDisabled && !assertCorrectArity(mh3, nargs)) {
            throw new AssertionError();
        }
        ARRAYS[nargs] = mh3;
        return mh3;
    }

    public static MethodHandle varargsArray(Class<?> arrayType, int nargs) {
        Class<?> elemType = arrayType.getComponentType();
        if (elemType == null) {
            throw new IllegalArgumentException("not an array: " + ((Object) arrayType));
        }
        if (nargs >= 126) {
            int slots = nargs;
            if (slots <= 254 && elemType.isPrimitive()) {
                slots *= Wrapper.forPrimitiveType(elemType).stackSlots();
            }
            if (slots > 254) {
                throw new IllegalArgumentException("too many arguments: " + arrayType.getSimpleName() + ", length " + nargs);
            }
        }
        if (elemType == Object.class) {
            return varargsArray(nargs);
        }
        MethodHandle[] cache = Makers.TYPED_COLLECTORS.get(elemType);
        MethodHandle mh2 = nargs < cache.length ? cache[nargs] : null;
        if (mh2 != null) {
            return mh2;
        }
        MethodHandle mh3 = makeCollector(arrayType, nargs);
        if (!$assertionsDisabled && !assertCorrectArity(mh3, nargs)) {
            throw new AssertionError();
        }
        if (nargs < cache.length) {
            cache[nargs] = mh3;
        }
        return mh3;
    }

    private static boolean assertCorrectArity(MethodHandle mh2, int arity) {
        if ($assertionsDisabled || mh2.type().parameterCount() == arity) {
            return true;
        }
        throw new AssertionError((Object) ("arity != " + arity + ": " + ((Object) mh2)));
    }

    static void assertSame(Object mh1, Object mh2) {
        if (mh1 != mh2) {
            String msg = String.format("mh1 != mh2: mh1 = %s (form: %s); mh2 = %s (form: %s)", mh1, ((MethodHandle) mh1).form, mh2, ((MethodHandle) mh2).form);
            throw MethodHandleStatics.newInternalError(msg);
        }
    }

    public static LambdaForm.NamedFunction getFunction(byte func) {
        LambdaForm.NamedFunction nf2 = NFS[func];
        if (nf2 != null) {
            return nf2;
        }
        LambdaForm.NamedFunction[] namedFunctionArr = NFS;
        LambdaForm.NamedFunction createFunction = createFunction(func);
        namedFunctionArr[func] = createFunction;
        return createFunction;
    }

    private static LambdaForm.NamedFunction createFunction(byte func) {
        try {
            switch (func) {
                case 0:
                    return new LambdaForm.NamedFunction(MethodHandleImpl.class.getDeclaredMethod("checkSpreadArgument", Object.class, Integer.TYPE));
                case 1:
                    return new LambdaForm.NamedFunction(MethodHandleImpl.class.getDeclaredMethod("guardWithCatch", MethodHandle.class, Class.class, MethodHandle.class, Object[].class));
                case 2:
                    return new LambdaForm.NamedFunction(MethodHandleImpl.class.getDeclaredMethod("throwException", Throwable.class));
                case 3:
                    return new LambdaForm.NamedFunction(MethodHandleImpl.class.getDeclaredMethod("tryFinally", MethodHandle.class, MethodHandle.class, Object[].class));
                case 4:
                    return new LambdaForm.NamedFunction(MethodHandleImpl.class.getDeclaredMethod("loop", LambdaForm.BasicType[].class, LoopClauses.class, Object[].class));
                case 5:
                    return new LambdaForm.NamedFunction(MethodHandleImpl.class.getDeclaredMethod("profileBoolean", Boolean.TYPE, int[].class));
                case 6:
                    return new LambdaForm.NamedFunction(MethodHandleImpl.class.getDeclaredMethod("tableSwitch", Integer.TYPE, MethodHandle.class, CasesHolder.class, Object[].class));
                default:
                    throw new InternalError("Undefined function: " + ((int) func));
            }
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }

    private static void runtimeSetup() {
        SharedSecrets.setJavaLangInvokeAccess(new JavaLangInvokeAccess() {
            public Class<?> getDeclaringClass(Object rmname) {
                ResolvedMethodName method = (ResolvedMethodName) rmname;
                return method.declaringClass();
            }

            public MethodType getMethodType(String descriptor, ClassLoader loader) {
                return MethodType.fromDescriptor(descriptor, loader);
            }

            public boolean isCallerSensitive(int flags) {
                return (flags & 1048576) == 1048576;
            }

            public boolean isHiddenMember(int flags) {
                return (flags & 4194304) == 4194304;
            }

            public Map<String, byte[]> generateHolderClasses(Stream<String> traces) {
                return GenerateJLIClassesHelper.generateHolderClasses(traces);
            }

            public VarHandle memorySegmentViewHandle(Class<?> carrier, MemoryLayout enclosing, long alignmentMask, ByteOrder order, boolean constantOffset, long offset) {
                return VarHandles.memorySegmentViewHandle(carrier, enclosing, alignmentMask, constantOffset, offset, order);
            }

            public MethodHandle nativeMethodHandle(NativeEntryPoint nep) {
                return NativeMethodHandle.make(nep);
            }

            public VarHandle filterValue(VarHandle target, MethodHandle filterToTarget, MethodHandle filterFromTarget) {
                return VarHandles.filterValue(target, filterToTarget, filterFromTarget);
            }

            public VarHandle filterCoordinates(VarHandle target, int pos, MethodHandle... filters) {
                return VarHandles.filterCoordinates(target, pos, filters);
            }

            public VarHandle dropCoordinates(VarHandle target, int pos, Class<?>... valueTypes) {
                return VarHandles.dropCoordinates(target, pos, valueTypes);
            }

            public VarHandle permuteCoordinates(VarHandle target, List<Class<?>> newCoordinates, int... reorder) {
                return VarHandles.permuteCoordinates(target, newCoordinates, reorder);
            }

            public VarHandle collectCoordinates(VarHandle target, int pos, MethodHandle filter) {
                return VarHandles.collectCoordinates(target, pos, filter);
            }

            public VarHandle insertCoordinates(VarHandle target, int pos, Object... values) {
                return VarHandles.insertCoordinates(target, pos, values);
            }

            public MethodHandle unreflectConstructor(Constructor<?> ctor) throws IllegalAccessException {
                return MethodHandles.Lookup.IMPL_LOOKUP.unreflectConstructor(ctor);
            }

            public MethodHandle unreflectField(Field field, boolean isSetter) throws IllegalAccessException {
                return isSetter ? MethodHandles.Lookup.IMPL_LOOKUP.unreflectSetter(field) : MethodHandles.Lookup.IMPL_LOOKUP.unreflectGetter(field);
            }

            public MethodHandle findVirtual(Class<?> defc, String name, MethodType type) throws IllegalAccessException {
                try {
                    return MethodHandles.Lookup.IMPL_LOOKUP.findVirtual(defc, name, type);
                } catch (NoSuchMethodException e10) {
                    return null;
                }
            }

            public MethodHandle findStatic(Class<?> defc, String name, MethodType type) throws IllegalAccessException {
                try {
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(defc, name, type);
                } catch (NoSuchMethodException e10) {
                    return null;
                }
            }

            public MethodHandle reflectiveInvoker(Class<?> caller) {
                Objects.requireNonNull(caller);
                return BindCaller.reflectiveInvoker(caller);
            }

            public Class<?>[] exceptionTypes(MethodHandle handle) {
                return VarHandles.exceptionTypes(handle);
            }

            public MethodHandle serializableConstructor(Class<?> decl, Constructor<?> ctorToCall) throws IllegalAccessException {
                return MethodHandles.Lookup.IMPL_LOOKUP.serializableConstructor(decl, ctorToCall);
            }

            public MethodHandles.Lookup lookupIn(Class<?> lookupClass) {
                return MethodHandles.Lookup.IMPL_LOOKUP.in(lookupClass);
            }
        });
    }

    private static MethodHandle unboxResultHandle(Class<?> returnType) {
        if (returnType.isPrimitive()) {
            if (returnType == Void.TYPE) {
                return ValueConversions.ignore();
            }
            Wrapper w10 = Wrapper.forPrimitiveType(returnType);
            return ValueConversions.unboxExact(w10);
        }
        return MethodHandles.identity(Object.class);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.invoke.MethodHandle[], java.lang.invoke.MethodHandle[][]] */
    public static MethodHandle makeLoop(Class<?> tloop, List<Class<?>> targs, List<MethodHandle> init, List<MethodHandle> step, List<MethodHandle> pred, List<MethodHandle> fini) {
        MethodType type = MethodType.methodType(tloop, targs);
        LambdaForm.BasicType[] initClauseTypes = (LambdaForm.BasicType[]) init.stream().map(h10 -> {
            return h10.type().returnType();
        }).map(LambdaForm.BasicType::basicType).toArray(x$0 -> {
            return new LambdaForm.BasicType[x$0];
        });
        LambdaForm form = makeLoopForm(type.basicType(), initClauseTypes);
        MethodType varargsType = type.changeReturnType(Object[].class);
        MethodHandle collectArgs = varargsArray(type.parameterCount()).asType(varargsType);
        MethodHandle unboxResult = unboxResultHandle(tloop);
        LoopClauses clauseData = new LoopClauses(new MethodHandle[]{toArray(init), toArray(step), toArray(pred), toArray(fini)});
        BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_LLL();
        try {
            BoundMethodHandle mh2 = data.factory().invokeBasic(type, form, clauseData, collectArgs, unboxResult);
            if ($assertionsDisabled || mh2.type() == type) {
                return mh2;
            }
            throw new AssertionError();
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    private static MethodHandle[] toArray(List<MethodHandle> l10) {
        return (MethodHandle[]) l10.toArray(new MethodHandle[0]);
    }

    private static LambdaForm makeLoopForm(MethodType basicType, LambdaForm.BasicType[] localVarTypes) {
        int ARG_LIMIT = 1 + basicType.parameterCount();
        int nameCursor = ARG_LIMIT + 1;
        int nameCursor2 = nameCursor + 1;
        int nameCursor3 = nameCursor2 + 1;
        int nameCursor4 = nameCursor3 + 1;
        int nameCursor5 = nameCursor4 + 1;
        int nameCursor6 = nameCursor5 + 1;
        LambdaForm lform = basicType.form().cachedLambdaForm(19);
        if (lform == null) {
            LambdaForm.Name[] names = LambdaForm.invokeArguments(nameCursor6 - ARG_LIMIT, basicType);
            BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_LLL();
            names[0] = names[0].withConstraint(data);
            names[ARG_LIMIT] = new LambdaForm.Name(data.getterFunction(0), names[0]);
            names[nameCursor] = new LambdaForm.Name(data.getterFunction(1), names[0]);
            names[nameCursor2] = new LambdaForm.Name(data.getterFunction(2), names[0]);
            MethodType collectArgsType = basicType.changeReturnType(Object.class);
            MethodHandle invokeBasic = MethodHandles.basicInvoker(collectArgsType);
            Object[] args = new Object[invokeBasic.type().parameterCount()];
            args[0] = names[nameCursor];
            System.arraycopy(names, 1, args, 1, ARG_LIMIT - 1);
            names[nameCursor3] = new LambdaForm.Name(new LambdaForm.NamedFunction(makeIntrinsic(invokeBasic, Intrinsic.LOOP)), args);
            Object[] lArgs = {null, names[ARG_LIMIT], names[nameCursor3]};
            names[nameCursor4] = new LambdaForm.Name(getFunction((byte) 4), lArgs);
            MethodHandle invokeBasicUnbox = MethodHandles.basicInvoker(MethodType.methodType(basicType.rtype(), (Class<?>) Object.class));
            Object[] unboxArgs = {names[nameCursor2], names[nameCursor4]};
            names[nameCursor5] = new LambdaForm.Name(invokeBasicUnbox, unboxArgs);
            lform = basicType.form().setCachedLambdaForm(19, LambdaForm.create(basicType.parameterCount() + 1, names, LambdaForm.Kind.LOOP));
        }
        return lform.editor().noteLoopLocalTypesForm(nameCursor3, localVarTypes);
    }

    public static class LoopClauses {

        @Stable
        final MethodHandle[][] clauses;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !MethodHandleImpl.class.desiredAssertionStatus();
        }

        LoopClauses(MethodHandle[][] clauses) {
            if (!$assertionsDisabled && clauses.length != 4) {
                throw new AssertionError();
            }
            this.clauses = clauses;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("LoopClauses -- ");
            for (int i10 = 0; i10 < 4; i10++) {
                if (i10 > 0) {
                    sb2.append("       ");
                }
                sb2.append('<').append(i10).append(">: ");
                MethodHandle[] hs = this.clauses[i10];
                for (int j10 = 0; j10 < hs.length; j10++) {
                    if (j10 > 0) {
                        sb2.append("          ");
                    }
                    sb2.append('*').append(j10).append(": ").append((Object) hs[j10]).append('\n');
                }
            }
            sb2.append(" --\n");
            return sb2.toString();
        }
    }

    @Hidden
    static Object loop(LambdaForm.BasicType[] localTypes, LoopClauses clauseData, Object... av) throws Throwable {
        MethodHandle[] init = clauseData.clauses[0];
        MethodHandle[] step = clauseData.clauses[1];
        MethodHandle[] pred = clauseData.clauses[2];
        MethodHandle[] fini = clauseData.clauses[3];
        int varSize = (int) Stream.of((Object[]) init).filter(h10 -> {
            return h10.type().returnType() != Void.TYPE;
        }).count();
        int nArgs = init[0].type().parameterCount();
        Object[] varsAndArgs = new Object[varSize + nArgs];
        int v10 = 0;
        for (MethodHandle ih2 : init) {
            if (ih2.type().returnType() == Void.TYPE) {
                ih2.invokeWithArguments(av);
            } else {
                int i10 = v10;
                v10++;
                varsAndArgs[i10] = ih2.invokeWithArguments(av);
            }
        }
        System.arraycopy(av, 0, varsAndArgs, varSize, nArgs);
        int nSteps = step.length;
        while (true) {
            int v11 = 0;
            for (int i11 = 0; i11 < nSteps; i11++) {
                MethodHandle p10 = pred[i11];
                MethodHandle s10 = step[i11];
                MethodHandle f10 = fini[i11];
                if (s10.type().returnType() == Void.TYPE) {
                    s10.invokeWithArguments(varsAndArgs);
                } else {
                    int i12 = v11;
                    v11++;
                    varsAndArgs[i12] = s10.invokeWithArguments(varsAndArgs);
                }
                if (!((Boolean) p10.invokeWithArguments(varsAndArgs)).booleanValue()) {
                    return f10.invokeWithArguments(varsAndArgs);
                }
            }
        }
    }

    static boolean countedLoopPredicate(int limit, int counter) {
        return counter < limit;
    }

    static int countedLoopStep(int limit, int counter) {
        return counter + 1;
    }

    static Iterator<?> initIterator(Iterable<?> it) {
        return it.iterator();
    }

    static boolean iteratePredicate(Iterator<?> it) {
        return it.hasNext();
    }

    static Object iterateNext(Iterator<?> it) {
        return it.next();
    }

    public static MethodHandle makeTryFinally(MethodHandle target, MethodHandle cleanup, Class<?> rtype, Class<?>[] argTypes) {
        MethodType type = MethodType.methodType(rtype, argTypes);
        LambdaForm form = makeTryFinallyForm(type.basicType());
        MethodType varargsType = type.changeReturnType(Object[].class);
        MethodHandle collectArgs = varargsArray(type.parameterCount()).asType(varargsType);
        MethodHandle unboxResult = unboxResultHandle(rtype);
        BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_LLLL();
        try {
            BoundMethodHandle mh2 = data.factory().invokeBasic(type, form, target, cleanup, collectArgs, unboxResult);
            if ($assertionsDisabled || mh2.type() == type) {
                return mh2;
            }
            throw new AssertionError();
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    private static LambdaForm makeTryFinallyForm(MethodType basicType) {
        LambdaForm lform = basicType.form().cachedLambdaForm(18);
        if (lform != null) {
            return lform;
        }
        int ARG_LIMIT = 1 + basicType.parameterCount();
        int nameCursor = ARG_LIMIT + 1;
        int nameCursor2 = nameCursor + 1;
        int nameCursor3 = nameCursor2 + 1;
        int nameCursor4 = nameCursor3 + 1;
        int nameCursor5 = nameCursor4 + 1;
        int nameCursor6 = nameCursor5 + 1;
        LambdaForm.Name[] names = LambdaForm.invokeArguments((nameCursor6 + 1) - ARG_LIMIT, basicType);
        BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_LLLL();
        names[0] = names[0].withConstraint(data);
        names[ARG_LIMIT] = new LambdaForm.Name(data.getterFunction(0), names[0]);
        names[nameCursor] = new LambdaForm.Name(data.getterFunction(1), names[0]);
        names[nameCursor2] = new LambdaForm.Name(data.getterFunction(2), names[0]);
        names[nameCursor3] = new LambdaForm.Name(data.getterFunction(3), names[0]);
        MethodType collectArgsType = basicType.changeReturnType(Object.class);
        MethodHandle invokeBasic = MethodHandles.basicInvoker(collectArgsType);
        Object[] args = new Object[invokeBasic.type().parameterCount()];
        args[0] = names[nameCursor2];
        System.arraycopy(names, 1, args, 1, ARG_LIMIT - 1);
        names[nameCursor4] = new LambdaForm.Name(new LambdaForm.NamedFunction(makeIntrinsic(invokeBasic, Intrinsic.TRY_FINALLY)), args);
        Object[] tfArgs = {names[ARG_LIMIT], names[nameCursor], names[nameCursor4]};
        names[nameCursor5] = new LambdaForm.Name(getFunction((byte) 3), tfArgs);
        MethodHandle invokeBasicUnbox = MethodHandles.basicInvoker(MethodType.methodType(basicType.rtype(), (Class<?>) Object.class));
        Object[] unboxArgs = {names[nameCursor3], names[nameCursor5]};
        names[nameCursor6] = new LambdaForm.Name(invokeBasicUnbox, unboxArgs);
        return basicType.form().setCachedLambdaForm(18, LambdaForm.create(basicType.parameterCount() + 1, names, LambdaForm.Kind.TRY_FINALLY));
    }

    @Hidden
    static Object tryFinally(MethodHandle target, MethodHandle cleanup, Object... av) throws Throwable {
        Object r10 = null;
        try {
            r10 = target.invokeWithArguments(av);
            Object[] args = target.type().returnType() == Void.TYPE ? prepend(av, null) : prepend(av, null, r10);
            Object r11 = cleanup.invokeWithArguments(args);
            return r11;
        } catch (Throwable th2) {
            Object[] args2 = target.type().returnType() == Void.TYPE ? prepend(av, null) : prepend(av, null, r10);
            cleanup.invokeWithArguments(args2);
            throw th2;
        }
    }

    private static MethodHandle makeCollector(Class<?> arrayType, int parameterCount) {
        MethodType type = MethodType.methodType(arrayType, (List<Class<?>>) Collections.nCopies(parameterCount, arrayType.componentType()));
        MethodHandle newArray = MethodHandles.arrayConstructor(arrayType);
        LambdaForm form = makeCollectorForm(type.basicType(), arrayType);
        BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_L();
        try {
            BoundMethodHandle mh2 = data.factory().invokeBasic(type, form, newArray);
            if ($assertionsDisabled || mh2.type() == type) {
                return mh2;
            }
            throw new AssertionError();
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    private static LambdaForm makeCollectorForm(MethodType basicType, Class<?> arrayType) {
        MethodHandle makeArrayElementAccessor;
        LambdaForm lform;
        int parameterCount = basicType.parameterCount();
        boolean isReferenceType = !arrayType.componentType().isPrimitive();
        boolean isSharedLambdaForm = parameterCount == 0 || isReferenceType;
        if (isSharedLambdaForm && (lform = basicType.form().cachedLambdaForm(25)) != null) {
            return lform;
        }
        if (isReferenceType) {
            makeArrayElementAccessor = ArrayAccessor.OBJECT_ARRAY_SETTER;
        } else {
            makeArrayElementAccessor = makeArrayElementAccessor(arrayType, ArrayAccess.SET);
        }
        MethodHandle storeFunc = makeArrayElementAccessor;
        int ARG_LIMIT = 1 + parameterCount;
        int nameCursor = ARG_LIMIT + 1;
        int nameCursor2 = nameCursor + 1;
        int STORE_ELEMENT_LIMIT = nameCursor2 + parameterCount;
        LambdaForm.Name[] names = LambdaForm.invokeArguments(STORE_ELEMENT_LIMIT - ARG_LIMIT, basicType);
        BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_L();
        names[0] = names[0].withConstraint(data);
        names[ARG_LIMIT] = new LambdaForm.Name(data.getterFunction(0), names[0]);
        MethodHandle invokeBasic = MethodHandles.basicInvoker(MethodType.methodType((Class<?>) Object.class, Integer.TYPE));
        names[nameCursor] = new LambdaForm.Name(new LambdaForm.NamedFunction(invokeBasic), names[ARG_LIMIT], Integer.valueOf(parameterCount));
        int storeIndex = 0;
        int storeNameCursor = nameCursor2;
        int argCursor = 1;
        while (storeNameCursor < STORE_ELEMENT_LIMIT) {
            names[storeNameCursor] = new LambdaForm.Name(new LambdaForm.NamedFunction(makeIntrinsic(storeFunc, Intrinsic.ARRAY_STORE)), names[nameCursor], Integer.valueOf(storeIndex), names[argCursor]);
            storeIndex++;
            storeNameCursor++;
            argCursor++;
        }
        LambdaForm lform2 = LambdaForm.create(basicType.parameterCount() + 1, names, nameCursor, LambdaForm.Kind.COLLECTOR);
        if (isSharedLambdaForm) {
            lform2 = basicType.form().setCachedLambdaForm(25, lform2);
        }
        return lform2;
    }

    public static class CasesHolder {

        @Stable
        final MethodHandle[] cases;

        public CasesHolder(MethodHandle[] cases) {
            this.cases = cases;
        }
    }

    public static MethodHandle makeTableSwitch(MethodType type, MethodHandle defaultCase, MethodHandle[] caseActions) {
        MethodType varargsType = type.changeReturnType(Object[].class);
        MethodHandle collectArgs = varargsArray(type.parameterCount()).asType(varargsType);
        MethodHandle unboxResult = unboxResultHandle(type.returnType());
        BoundMethodHandle.SpeciesData data = BoundMethodHandle.speciesData_LLLL();
        LambdaForm form = makeTableSwitchForm(type.basicType(), data, caseActions.length);
        CasesHolder caseHolder = new CasesHolder(caseActions);
        try {
            BoundMethodHandle mh2 = data.factory().invokeBasic(type, form, defaultCase, collectArgs, unboxResult, caseHolder);
            if ($assertionsDisabled || mh2.type() == type) {
                return mh2;
            }
            throw new AssertionError();
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    public static class TableSwitchCacheKey {
        private static final Map<TableSwitchCacheKey, LambdaForm> CACHE = new ConcurrentHashMap();
        private final MethodType basicType;
        private final int numberOfCases;

        public TableSwitchCacheKey(MethodType basicType, int numberOfCases) {
            this.basicType = basicType;
            this.numberOfCases = numberOfCases;
        }

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (o10 == null || getClass() != o10.getClass()) {
                return false;
            }
            TableSwitchCacheKey that = (TableSwitchCacheKey) o10;
            return this.numberOfCases == that.numberOfCases && Objects.equals(this.basicType, that.basicType);
        }

        public int hashCode() {
            return Objects.hash(this.basicType, Integer.valueOf(this.numberOfCases));
        }
    }

    private static LambdaForm makeTableSwitchForm(MethodType basicType, BoundMethodHandle.SpeciesData data, int numCases) {
        TableSwitchCacheKey key = new TableSwitchCacheKey(basicType, numCases);
        LambdaForm lform = TableSwitchCacheKey.CACHE.get(key);
        if (lform != null) {
            return lform;
        }
        int ARG_LIMIT = 1 + basicType.parameterCount();
        if (!$assertionsDisabled && 1 >= ARG_LIMIT) {
            throw new AssertionError();
        }
        int nameCursor = ARG_LIMIT + 1;
        int nameCursor2 = nameCursor + 1;
        int nameCursor3 = nameCursor2 + 1;
        int nameCursor4 = nameCursor3 + 1;
        int nameCursor5 = nameCursor4 + 1;
        int nameCursor6 = nameCursor5 + 1;
        int fieldCursor = 0 + 1;
        int fieldCursor2 = fieldCursor + 1;
        int fieldCursor3 = fieldCursor2 + 1;
        int i10 = fieldCursor3 + 1;
        LambdaForm.Name[] names = LambdaForm.invokeArguments((nameCursor6 + 1) - ARG_LIMIT, basicType);
        names[0] = names[0].withConstraint(data);
        names[nameCursor] = new LambdaForm.Name(data.getterFunction(0), names[0]);
        names[ARG_LIMIT] = new LambdaForm.Name(data.getterFunction(fieldCursor), names[0]);
        names[nameCursor2] = new LambdaForm.Name(data.getterFunction(fieldCursor2), names[0]);
        names[nameCursor3] = new LambdaForm.Name(data.getterFunction(fieldCursor3), names[0]);
        MethodType collectArgsType = basicType.changeReturnType(Object.class);
        MethodHandle invokeBasic = MethodHandles.basicInvoker(collectArgsType);
        Object[] args = new Object[invokeBasic.type().parameterCount()];
        args[0] = names[ARG_LIMIT];
        System.arraycopy(names, 1, args, 1, ARG_LIMIT - 1);
        names[nameCursor4] = new LambdaForm.Name(new LambdaForm.NamedFunction(makeIntrinsic(invokeBasic, Intrinsic.TABLE_SWITCH, Integer.valueOf(numCases))), args);
        Object[] tfArgs = {names[1], names[nameCursor], names[nameCursor3], names[nameCursor4]};
        names[nameCursor5] = new LambdaForm.Name(getFunction((byte) 6), tfArgs);
        MethodHandle invokeBasic2 = MethodHandles.basicInvoker(MethodType.methodType(basicType.rtype(), (Class<?>) Object.class));
        Object[] unboxArgs = {names[nameCursor2], names[nameCursor5]};
        names[nameCursor6] = new LambdaForm.Name(invokeBasic2, unboxArgs);
        LambdaForm lform2 = LambdaForm.create(basicType.parameterCount() + 1, names, LambdaForm.Kind.TABLE_SWITCH);
        LambdaForm prev = TableSwitchCacheKey.CACHE.putIfAbsent(key, lform2);
        return prev != null ? prev : lform2;
    }

    @Hidden
    static Object tableSwitch(int input, MethodHandle defaultCase, CasesHolder holder, Object[] args) throws Throwable {
        MethodHandle selectedCase;
        MethodHandle[] caseActions = holder.cases;
        if (input < 0 || input >= caseActions.length) {
            selectedCase = defaultCase;
        } else {
            selectedCase = caseActions[input];
        }
        return selectedCase.invokeWithArguments(args);
    }

    public static MethodHandle makeConstantReturning(Class<?> type, Object value) {
        MethodType callType = MethodType.methodType(type);
        LambdaForm.BasicType basicType = LambdaForm.BasicType.basicType(type);
        LambdaForm form = LambdaForm.constantForm(basicType);
        if (type.isPrimitive()) {
            if (!$assertionsDisabled && type == Void.TYPE) {
                throw new AssertionError();
            }
            Wrapper wrapper = Wrapper.forPrimitiveType(type);
            Object v10 = wrapper.convert(value, type);
            switch (AnonymousClass2.$SwitchMap$sun$invoke$util$Wrapper[wrapper.ordinal()]) {
                case 1:
                    return BoundMethodHandle.bindSingleI(callType, form, ((Integer) v10).intValue());
                case 2:
                    return BoundMethodHandle.bindSingleJ(callType, form, ((Long) v10).longValue());
                case 3:
                    return BoundMethodHandle.bindSingleF(callType, form, ((Float) v10).floatValue());
                case 4:
                    return BoundMethodHandle.bindSingleD(callType, form, ((Double) v10).doubleValue());
                default:
                    return BoundMethodHandle.bindSingleI(callType, form, ValueConversions.widenSubword(v10));
            }
        }
        return BoundMethodHandle.bindSingleL(callType, form, type.cast(value));
    }

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$sun$invoke$util$Wrapper = new int[Wrapper.values().length];

        static {
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    public static MethodHandle getConstantHandle(int idx) {
        MethodHandle handle = HANDLES[idx];
        if (handle != null) {
            return handle;
        }
        return setCachedHandle(idx, makeConstantHandle(idx));
    }

    private static synchronized MethodHandle setCachedHandle(int idx, MethodHandle method) {
        MethodHandle prev = HANDLES[idx];
        if (prev != null) {
            return prev;
        }
        HANDLES[idx] = method;
        return method;
    }

    private static MethodHandle makeConstantHandle(int idx) {
        try {
            switch (idx) {
                case 0:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findVirtual(Class.class, "cast", MethodType.methodType((Class<?>) Object.class, (Class<?>) Object.class));
                case 1:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(MethodHandleImpl.class, "selectAlternative", MethodType.methodType((Class<?>) MethodHandle.class, Boolean.TYPE, (Class<?>[]) new Class[]{MethodHandle.class, MethodHandle.class}));
                case 2:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(MethodHandleImpl.class, "countedLoopPredicate", MethodType.methodType(Boolean.TYPE, Integer.TYPE, (Class<?>[]) new Class[]{Integer.TYPE}));
                case 3:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(MethodHandleImpl.class, "countedLoopStep", MethodType.methodType(Integer.TYPE, Integer.TYPE, (Class<?>[]) new Class[]{Integer.TYPE}));
                case 4:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(MethodHandleImpl.class, "initIterator", MethodType.methodType((Class<?>) Iterator.class, (Class<?>) Iterable.class));
                case 5:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(MethodHandleImpl.class, "iteratePredicate", MethodType.methodType(Boolean.TYPE, (Class<?>) Iterator.class));
                case 6:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(MethodHandleImpl.class, "iterateNext", MethodType.methodType((Class<?>) Object.class, (Class<?>) Iterator.class));
                case 7:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(Array.class, "newInstance", MethodType.methodType((Class<?>) Object.class, (Class<?>) Class.class, (Class<?>[]) new Class[]{Integer.TYPE}));
                case 8:
                    return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(VarHandles.class, "handleCheckedExceptions", MethodType.methodType(Void.TYPE, (Class<?>) Throwable.class));
                default:
                    throw MethodHandleStatics.newInternalError("Unknown function index: " + idx);
            }
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }
}
