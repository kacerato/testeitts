package java.lang.invoke;

import java.lang.constant.ClassDesc;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.DirectMethodHandleDesc;
import java.lang.constant.DynamicConstantDesc;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.vm.annotation.DontInline;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;

public abstract class VarHandle implements Constable {
    final VarForm vform;
    final boolean exact;

    @Stable
    MethodType[] methodTypeTable;

    @Stable
    MethodHandle[] methodHandleTable;
    private static final long VFORM_OFFSET;
    static final boolean $assertionsDisabled;

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object get(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native void set(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getVolatile(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native void setVolatile(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getOpaque(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native void setOpaque(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAcquire(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native void setRelease(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native boolean compareAndSet(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object compareAndExchange(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object compareAndExchangeAcquire(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object compareAndExchangeRelease(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native boolean weakCompareAndSetPlain(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native boolean weakCompareAndSet(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native boolean weakCompareAndSetAcquire(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native boolean weakCompareAndSetRelease(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndSet(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndSetAcquire(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndSetRelease(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndAdd(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndAddAcquire(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndAddRelease(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseOr(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseOrAcquire(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseOrRelease(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseAnd(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseAndAcquire(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseAndRelease(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseXor(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseXorAcquire(Object... objArr);

    @MethodHandle.PolymorphicSignature
    @IntrinsicCandidate
    public final native Object getAndBitwiseXorRelease(Object... objArr);

    public abstract VarHandle withInvokeExactBehavior();

    public abstract VarHandle withInvokeBehavior();

    abstract MethodType accessModeTypeUncached(AccessType accessType);

    static {
        $assertionsDisabled = !VarHandle.class.desiredAssertionStatus();
        VFORM_OFFSET = MethodHandleStatics.UNSAFE.objectFieldOffset(VarHandle.class, "vform");
        MethodHandleStatics.UNSAFE.ensureClassInitialized(VarHandleGuards.class);
    }

    VarHandle(VarForm vform) {
        this(vform, false);
    }

    public VarHandle(VarForm vform, boolean exact) {
        this.vform = vform;
        this.exact = exact;
    }

    @ForceInline
    public VarHandle target() {
        return asDirect();
    }

    @ForceInline
    public VarHandle asDirect() {
        return this;
    }

    public boolean hasInvokeExactBehavior() {
        return this.exact;
    }

    public enum AccessType {
        GET(Object.class),
        SET(Void.TYPE),
        COMPARE_AND_SET(Boolean.TYPE),
        COMPARE_AND_EXCHANGE(Object.class),
        GET_AND_UPDATE(Object.class);

        static final int COUNT;
        final Class<?> returnType;
        final boolean isMonomorphicInReturnType;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !VarHandle.class.desiredAssertionStatus();
            COUNT = GET_AND_UPDATE.ordinal() + 1;
            if (!$assertionsDisabled && COUNT != values().length) {
                throw new AssertionError();
            }
        }

        AccessType(Class cls) {
            this.returnType = cls;
            this.isMonomorphicInReturnType = cls != Object.class;
        }

        public MethodType accessModeType(Class<?> receiver, Class<?> value, Class<?>... intermediate) {
            switch (this) {
                case GET:
                    Class<?>[] ps = allocateParameters(0, receiver, intermediate);
                    fillParameters(ps, receiver, intermediate);
                    return MethodType.methodType(value, ps);
                case SET:
                    Class<?>[] ps2 = allocateParameters(1, receiver, intermediate);
                    ps2[fillParameters(ps2, receiver, intermediate)] = value;
                    return MethodType.methodType(Void.TYPE, ps2);
                case COMPARE_AND_SET:
                    Class<?>[] ps3 = allocateParameters(2, receiver, intermediate);
                    int i10 = fillParameters(ps3, receiver, intermediate);
                    ps3[i10] = value;
                    ps3[i10 + 1] = value;
                    return MethodType.methodType(Boolean.TYPE, ps3);
                case COMPARE_AND_EXCHANGE:
                    Class<?>[] ps4 = allocateParameters(2, receiver, intermediate);
                    int i11 = fillParameters(ps4, receiver, intermediate);
                    ps4[i11] = value;
                    ps4[i11 + 1] = value;
                    return MethodType.methodType(value, ps4);
                case GET_AND_UPDATE:
                    Class<?>[] ps5 = allocateParameters(1, receiver, intermediate);
                    ps5[fillParameters(ps5, receiver, intermediate)] = value;
                    return MethodType.methodType(value, ps5);
                default:
                    throw new InternalError("Unknown AccessType");
            }
        }

        private static Class<?>[] allocateParameters(int values, Class<?> receiver, Class<?>... intermediate) {
            int size = (receiver != null ? 1 : 0) + intermediate.length + values;
            return new Class[size];
        }

        private static int fillParameters(Class<?>[] ps, Class<?> receiver, Class<?>... intermediate) {
            int i10 = 0;
            if (receiver != null) {
                i10 = 0 + 1;
                ps[0] = receiver;
            }
            for (Class<?> cls : intermediate) {
                int i11 = i10;
                i10++;
                ps[i11] = cls;
            }
            return i10;
        }
    }

    public enum AccessMode {
        GET("get", AccessType.GET),
        SET("set", AccessType.SET),
        GET_VOLATILE("getVolatile", AccessType.GET),
        SET_VOLATILE("setVolatile", AccessType.SET),
        GET_ACQUIRE("getAcquire", AccessType.GET),
        SET_RELEASE("setRelease", AccessType.SET),
        GET_OPAQUE("getOpaque", AccessType.GET),
        SET_OPAQUE("setOpaque", AccessType.SET),
        COMPARE_AND_SET("compareAndSet", AccessType.COMPARE_AND_SET),
        COMPARE_AND_EXCHANGE("compareAndExchange", AccessType.COMPARE_AND_EXCHANGE),
        COMPARE_AND_EXCHANGE_ACQUIRE("compareAndExchangeAcquire", AccessType.COMPARE_AND_EXCHANGE),
        COMPARE_AND_EXCHANGE_RELEASE("compareAndExchangeRelease", AccessType.COMPARE_AND_EXCHANGE),
        WEAK_COMPARE_AND_SET_PLAIN("weakCompareAndSetPlain", AccessType.COMPARE_AND_SET),
        WEAK_COMPARE_AND_SET("weakCompareAndSet", AccessType.COMPARE_AND_SET),
        WEAK_COMPARE_AND_SET_ACQUIRE("weakCompareAndSetAcquire", AccessType.COMPARE_AND_SET),
        WEAK_COMPARE_AND_SET_RELEASE("weakCompareAndSetRelease", AccessType.COMPARE_AND_SET),
        GET_AND_SET("getAndSet", AccessType.GET_AND_UPDATE),
        GET_AND_SET_ACQUIRE("getAndSetAcquire", AccessType.GET_AND_UPDATE),
        GET_AND_SET_RELEASE("getAndSetRelease", AccessType.GET_AND_UPDATE),
        GET_AND_ADD("getAndAdd", AccessType.GET_AND_UPDATE),
        GET_AND_ADD_ACQUIRE("getAndAddAcquire", AccessType.GET_AND_UPDATE),
        GET_AND_ADD_RELEASE("getAndAddRelease", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_OR("getAndBitwiseOr", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_OR_RELEASE("getAndBitwiseOrRelease", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_OR_ACQUIRE("getAndBitwiseOrAcquire", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_AND("getAndBitwiseAnd", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_AND_RELEASE("getAndBitwiseAndRelease", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_AND_ACQUIRE("getAndBitwiseAndAcquire", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_XOR("getAndBitwiseXor", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_XOR_RELEASE("getAndBitwiseXorRelease", AccessType.GET_AND_UPDATE),
        GET_AND_BITWISE_XOR_ACQUIRE("getAndBitwiseXorAcquire", AccessType.GET_AND_UPDATE);

        static final int COUNT;
        final String methodName;
        final AccessType at;

        @Stable
        private static final AccessMode[] VALUES;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !VarHandle.class.desiredAssertionStatus();
            COUNT = GET_AND_BITWISE_XOR_ACQUIRE.ordinal() + 1;
            if (!$assertionsDisabled && COUNT != values().length) {
                throw new AssertionError();
            }
            VALUES = values();
        }

        AccessMode(String methodName, AccessType at) {
            this.methodName = methodName;
            this.at = at;
        }

        public String methodName() {
            return this.methodName;
        }

        public static AccessMode valueFromMethodName(String methodName) {
            boolean z10 = -1;
            switch (methodName.hashCode()) {
                case -1946504908:
                    if (methodName.equals("getAndBitwiseOrRelease")) {
                        z10 = 23;
                        break;
                    }
                    break;
                case -1686727776:
                    if (methodName.equals("getAndBitwiseAndRelease")) {
                        z10 = 26;
                        break;
                    }
                    break;
                case -1671098288:
                    if (methodName.equals("compareAndSet")) {
                        z10 = 8;
                        break;
                    }
                    break;
                case -1292078254:
                    if (methodName.equals("compareAndExchangeRelease")) {
                        z10 = 11;
                        break;
                    }
                    break;
                case -1117944904:
                    if (methodName.equals("weakCompareAndSet")) {
                        z10 = 12;
                        break;
                    }
                    break;
                case -1103072857:
                    if (methodName.equals("getAndAddRelease")) {
                        z10 = 21;
                        break;
                    }
                    break;
                case -1032914329:
                    if (methodName.equals("getAndBitwiseAnd")) {
                        z10 = 25;
                        break;
                    }
                    break;
                case -1032892181:
                    if (methodName.equals("getAndBitwiseXor")) {
                        z10 = 28;
                        break;
                    }
                    break;
                case -794517348:
                    if (methodName.equals("getAndBitwiseXorRelease")) {
                        z10 = 29;
                        break;
                    }
                    break;
                case -567150350:
                    if (methodName.equals("weakCompareAndSetPlain")) {
                        z10 = 13;
                        break;
                    }
                    break;
                case -240822786:
                    if (methodName.equals("weakCompareAndSetAcquire")) {
                        z10 = 14;
                        break;
                    }
                    break;
                case -230706875:
                    if (methodName.equals("setRelease")) {
                        z10 = 5;
                        break;
                    }
                    break;
                case -127361888:
                    if (methodName.equals("getAcquire")) {
                        z10 = 4;
                        break;
                    }
                    break;
                case -37641530:
                    if (methodName.equals("getAndSetRelease")) {
                        z10 = 18;
                        break;
                    }
                    break;
                case 102230:
                    if (methodName.equals("get")) {
                        z10 = false;
                        break;
                    }
                    break;
                case 113762:
                    if (methodName.equals("set")) {
                        z10 = true;
                        break;
                    }
                    break;
                case 93645315:
                    if (methodName.equals("getAndBitwiseOrAcquire")) {
                        z10 = 24;
                        break;
                    }
                    break;
                case 101293086:
                    if (methodName.equals("setVolatile")) {
                        z10 = 3;
                        break;
                    }
                    break;
                case 189872914:
                    if (methodName.equals("getVolatile")) {
                        z10 = 2;
                        break;
                    }
                    break;
                case 282707520:
                    if (methodName.equals("getAndAdd")) {
                        z10 = 19;
                        break;
                    }
                    break;
                case 282724865:
                    if (methodName.equals("getAndSet")) {
                        z10 = 16;
                        break;
                    }
                    break;
                case 353422447:
                    if (methodName.equals("getAndBitwiseAndAcquire")) {
                        z10 = 27;
                        break;
                    }
                    break;
                case 470702883:
                    if (methodName.equals("setOpaque")) {
                        z10 = 7;
                        break;
                    }
                    break;
                case 685319959:
                    if (methodName.equals("getOpaque")) {
                        z10 = 6;
                        break;
                    }
                    break;
                case 748071969:
                    if (methodName.equals("compareAndExchangeAcquire")) {
                        z10 = 10;
                        break;
                    }
                    break;
                case 937077366:
                    if (methodName.equals("getAndAddAcquire")) {
                        z10 = 20;
                        break;
                    }
                    break;
                case 1245632875:
                    if (methodName.equals("getAndBitwiseXorAcquire")) {
                        z10 = 30;
                        break;
                    }
                    break;
                case 1352153939:
                    if (methodName.equals("getAndBitwiseOr")) {
                        z10 = 22;
                        break;
                    }
                    break;
                case 1483964149:
                    if (methodName.equals("compareAndExchange")) {
                        z10 = 9;
                        break;
                    }
                    break;
                case 2002508693:
                    if (methodName.equals("getAndSetAcquire")) {
                        z10 = 17;
                        break;
                    }
                    break;
                case 2013994287:
                    if (methodName.equals("weakCompareAndSetRelease")) {
                        z10 = 15;
                        break;
                    }
                    break;
            }
            switch (z10) {
                case false:
                    return GET;
                case true:
                    return SET;
                case true:
                    return GET_VOLATILE;
                case true:
                    return SET_VOLATILE;
                case true:
                    return GET_ACQUIRE;
                case true:
                    return SET_RELEASE;
                case true:
                    return GET_OPAQUE;
                case true:
                    return SET_OPAQUE;
                case true:
                    return COMPARE_AND_SET;
                case true:
                    return COMPARE_AND_EXCHANGE;
                case true:
                    return COMPARE_AND_EXCHANGE_ACQUIRE;
                case true:
                    return COMPARE_AND_EXCHANGE_RELEASE;
                case true:
                    return WEAK_COMPARE_AND_SET;
                case true:
                    return WEAK_COMPARE_AND_SET_PLAIN;
                case true:
                    return WEAK_COMPARE_AND_SET_ACQUIRE;
                case true:
                    return WEAK_COMPARE_AND_SET_RELEASE;
                case true:
                    return GET_AND_SET;
                case true:
                    return GET_AND_SET_ACQUIRE;
                case true:
                    return GET_AND_SET_RELEASE;
                case true:
                    return GET_AND_ADD;
                case true:
                    return GET_AND_ADD_ACQUIRE;
                case true:
                    return GET_AND_ADD_RELEASE;
                case true:
                    return GET_AND_BITWISE_OR;
                case true:
                    return GET_AND_BITWISE_OR_RELEASE;
                case true:
                    return GET_AND_BITWISE_OR_ACQUIRE;
                case true:
                    return GET_AND_BITWISE_AND;
                case true:
                    return GET_AND_BITWISE_AND_RELEASE;
                case true:
                    return GET_AND_BITWISE_AND_ACQUIRE;
                case true:
                    return GET_AND_BITWISE_XOR;
                case true:
                    return GET_AND_BITWISE_XOR_RELEASE;
                case true:
                    return GET_AND_BITWISE_XOR_ACQUIRE;
                default:
                    throw new IllegalArgumentException("No AccessMode value for method name " + methodName);
            }
        }

        public static AccessMode valueFromOrdinal(int mode) {
            return VALUES[mode];
        }
    }

    public static final class AccessDescriptor {
        final MethodType symbolicMethodTypeExact;
        final MethodType symbolicMethodTypeErased;
        final MethodType symbolicMethodTypeInvoker;
        final Class<?> returnType;
        final int type;
        final int mode;

        public AccessDescriptor(MethodType symbolicMethodType, int type, int mode) {
            this.symbolicMethodTypeExact = symbolicMethodType;
            this.symbolicMethodTypeErased = symbolicMethodType.erase();
            this.symbolicMethodTypeInvoker = symbolicMethodType.insertParameterTypes(0, VarHandle.class);
            this.returnType = symbolicMethodType.returnType();
            this.type = type;
            this.mode = mode;
        }
    }

    public final String toString() {
        return String.format("VarHandle[varType=%s, coord=%s]", varType().getName(), coordinateTypes());
    }

    public Class<?> varType() {
        MethodType typeSet = accessModeType(AccessMode.SET);
        return typeSet.parameterType(typeSet.parameterCount() - 1);
    }

    public List<Class<?>> coordinateTypes() {
        MethodType typeGet = accessModeType(AccessMode.GET);
        return typeGet.parameterList();
    }

    public final MethodType accessModeType(AccessMode accessMode) {
        return accessModeType(accessMode.at.ordinal());
    }

    @ForceInline
    public boolean checkAccessModeThenIsDirect(AccessDescriptor ad2) {
        if (this.exact && accessModeType(ad2.type) != ad2.symbolicMethodTypeExact) {
            throwWrongMethodTypeException(ad2);
            return true;
        }
        return true;
    }

    @DontInline
    private final void throwWrongMethodTypeException(AccessDescriptor ad2) {
        throw new WrongMethodTypeException("handle's method type " + ((Object) accessModeType(ad2.type)) + " but found " + ((Object) ad2.symbolicMethodTypeExact));
    }

    @ForceInline
    public final MethodType accessModeType(int accessTypeOrdinal) {
        MethodType[] mtTable = this.methodTypeTable;
        if (mtTable == null) {
            MethodType[] methodTypeArr = new MethodType[AccessType.COUNT];
            this.methodTypeTable = methodTypeArr;
            mtTable = methodTypeArr;
        }
        MethodType mt = mtTable[accessTypeOrdinal];
        if (mt == null) {
            MethodType accessModeTypeUncached = accessModeTypeUncached(accessTypeOrdinal);
            mtTable[accessTypeOrdinal] = accessModeTypeUncached;
            mt = accessModeTypeUncached;
        }
        return mt;
    }

    final MethodType accessModeTypeUncached(int accessTypeOrdinal) {
        return accessModeTypeUncached(AccessType.values()[accessTypeOrdinal]);
    }

    public boolean isAccessModeSupported(AccessMode accessMode) {
        return this.vform.getMemberNameOrNull(accessMode.ordinal()) != null;
    }

    public MethodHandle toMethodHandle(AccessMode accessMode) {
        if (isAccessModeSupported(accessMode)) {
            MethodHandle mh2 = getMethodHandle(accessMode.ordinal());
            return mh2.bindTo(asDirect());
        }
        return MethodHandles.varHandleInvoker(accessMode, accessModeType(accessMode)).bindTo(this);
    }

    @Override
    public Optional<VarHandleDesc> describeConstable() {
        return Optional.empty();
    }

    @ForceInline
    public final MethodHandle getMethodHandle(int mode) {
        MethodHandle[] mhTable = this.methodHandleTable;
        if (mhTable == null) {
            MethodHandle[] methodHandleArr = new MethodHandle[AccessMode.COUNT];
            this.methodHandleTable = methodHandleArr;
            mhTable = methodHandleArr;
        }
        MethodHandle mh2 = mhTable[mode];
        if (mh2 == null) {
            MethodHandle methodHandleUncached = getMethodHandleUncached(mode);
            mhTable[mode] = methodHandleUncached;
            mh2 = methodHandleUncached;
        }
        return mh2;
    }

    MethodHandle getMethodHandleUncached(int mode) {
        MethodType mt = accessModeType(AccessMode.valueFromOrdinal(mode)).insertParameterTypes(0, VarHandle.class);
        MemberName mn2 = this.vform.getMemberName(mode);
        DirectMethodHandle dmh = DirectMethodHandle.make(mn2);
        MethodHandle mh2 = dmh.copyWith(mt, dmh.form);
        if ($assertionsDisabled || mh2.type().erase() == mn2.getMethodType().erase()) {
            return mh2;
        }
        throw new AssertionError();
    }

    final void updateVarForm(VarForm newVForm) {
        if (this.vform == newVForm) {
            return;
        }
        MethodHandleStatics.UNSAFE.putReference(this, VFORM_OFFSET, newVForm);
        MethodHandleStatics.UNSAFE.fullFence();
    }

    @ForceInline
    public static void fullFence() {
        MethodHandleStatics.UNSAFE.fullFence();
    }

    @ForceInline
    public static void acquireFence() {
        MethodHandleStatics.UNSAFE.loadFence();
    }

    @ForceInline
    public static void releaseFence() {
        MethodHandleStatics.UNSAFE.storeFence();
    }

    @ForceInline
    public static void loadLoadFence() {
        MethodHandleStatics.UNSAFE.loadLoadFence();
    }

    @ForceInline
    public static void storeStoreFence() {
        MethodHandleStatics.UNSAFE.storeStoreFence();
    }

    public static final class VarHandleDesc extends DynamicConstantDesc<VarHandle> {
        private final Kind kind;
        private final ClassDesc declaringClass;
        private final ClassDesc varType;

        public enum Kind {
            FIELD(ConstantDescs.BSM_VARHANDLE_FIELD),
            STATIC_FIELD(ConstantDescs.BSM_VARHANDLE_STATIC_FIELD),
            ARRAY(ConstantDescs.BSM_VARHANDLE_ARRAY);

            final DirectMethodHandleDesc bootstrapMethod;

            Kind(DirectMethodHandleDesc bootstrapMethod) {
                this.bootstrapMethod = bootstrapMethod;
            }

            ConstantDesc[] toBSMArgs(ClassDesc declaringClass, ClassDesc varType) {
                switch (this) {
                    case FIELD:
                    case STATIC_FIELD:
                        return new ConstantDesc[]{declaringClass, varType};
                    case ARRAY:
                        return new ConstantDesc[]{declaringClass};
                    default:
                        throw new InternalError("Cannot reach here");
                }
            }
        }

        private VarHandleDesc(Kind kind, String name, ClassDesc declaringClass, ClassDesc varType) {
            super(kind.bootstrapMethod, name, ConstantDescs.CD_VarHandle, kind.toBSMArgs(declaringClass, varType));
            this.kind = kind;
            this.declaringClass = declaringClass;
            this.varType = varType;
        }

        public static VarHandleDesc ofField(ClassDesc declaringClass, String name, ClassDesc fieldType) {
            Objects.requireNonNull(declaringClass);
            Objects.requireNonNull(name);
            Objects.requireNonNull(fieldType);
            return new VarHandleDesc(Kind.FIELD, name, declaringClass, fieldType);
        }

        public static VarHandleDesc ofStaticField(ClassDesc declaringClass, String name, ClassDesc fieldType) {
            Objects.requireNonNull(declaringClass);
            Objects.requireNonNull(name);
            Objects.requireNonNull(fieldType);
            return new VarHandleDesc(Kind.STATIC_FIELD, name, declaringClass, fieldType);
        }

        public static VarHandleDesc ofArray(ClassDesc arrayClass) {
            Objects.requireNonNull(arrayClass);
            if (!arrayClass.isArray()) {
                throw new IllegalArgumentException("Array class argument not an array: " + ((Object) arrayClass));
            }
            return new VarHandleDesc(Kind.ARRAY, ConstantDescs.DEFAULT_NAME, arrayClass, arrayClass.componentType());
        }

        public ClassDesc varType() {
            return this.varType;
        }

        @Override
        public VarHandle resolveConstantDesc(MethodHandles.Lookup lookup) throws ReflectiveOperationException {
            switch (this.kind) {
                case FIELD:
                    return lookup.findVarHandle(this.declaringClass.resolveConstantDesc(lookup), constantName(), this.varType.resolveConstantDesc(lookup));
                case STATIC_FIELD:
                    return lookup.findStaticVarHandle(this.declaringClass.resolveConstantDesc(lookup), constantName(), this.varType.resolveConstantDesc(lookup));
                case ARRAY:
                    return MethodHandles.arrayElementVarHandle(this.declaringClass.resolveConstantDesc(lookup));
                default:
                    throw new InternalError("Cannot reach here");
            }
        }

        @Override
        public String toString() {
            switch (this.kind) {
                case FIELD:
                case STATIC_FIELD:
                    Object[] objArr = new Object[4];
                    objArr[0] = this.kind == Kind.STATIC_FIELD ? "static " : "";
                    objArr[1] = this.declaringClass.displayName();
                    objArr[2] = constantName();
                    objArr[3] = this.varType.displayName();
                    return String.format("VarHandleDesc[%s%s.%s:%s]", objArr);
                case ARRAY:
                    return String.format("VarHandleDesc[%s[]]", this.declaringClass.displayName());
                default:
                    throw new InternalError("Cannot reach here");
            }
        }
    }
}
