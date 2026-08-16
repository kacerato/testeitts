package java.lang.invoke;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.lang.constant.ConstantDescs;
import java.lang.invoke.LambdaForm;
import java.lang.invoke.MemberName;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.Function;
import jdk.internal.misc.CDS;
import jdk.internal.misc.Unsafe;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Stable;
import sun.invoke.util.ValueConversions;
import sun.invoke.util.VerifyAccess;
import sun.invoke.util.Wrapper;

public class DirectMethodHandle extends MethodHandle {
    final MemberName member;
    final boolean crackable;
    private static final MemberName.Factory IMPL_NAMES;
    static final byte AF_GETFIELD = 0;
    static final byte AF_PUTFIELD = 1;
    static final byte AF_GETSTATIC = 2;
    static final byte AF_PUTSTATIC = 3;
    static final byte AF_GETSTATIC_INIT = 4;
    static final byte AF_PUTSTATIC_INIT = 5;
    static final byte AF_LIMIT = 6;
    static final int FT_UNCHECKED_REF;
    static final int FT_CHECKED_REF;
    static final int FT_LIMIT = 10;

    @Stable
    private static final LambdaForm[] ACCESSOR_FORMS;

    @Stable
    private static final Wrapper[] ALL_WRAPPERS;
    static final byte NF_internalMemberName = 0;
    static final byte NF_internalMemberNameEnsureInit = 1;
    static final byte NF_ensureInitialized = 2;
    static final byte NF_fieldOffset = 3;
    static final byte NF_checkBase = 4;
    static final byte NF_staticBase = 5;
    static final byte NF_staticOffset = 6;
    static final byte NF_checkCast = 7;
    static final byte NF_allocateInstance = 8;
    static final byte NF_constructorMethod = 9;
    static final byte NF_UNSAFE = 10;
    static final byte NF_checkReceiver = 11;
    static final byte NF_LIMIT = 12;

    @Stable
    private static final LambdaForm.NamedFunction[] NFS;
    private static final MethodType OBJ_OBJ_TYPE;
    private static final MethodType LONG_OBJ_TYPE;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !DirectMethodHandle.class.desiredAssertionStatus();
        IMPL_NAMES = MemberName.getFactory();
        FT_UNCHECKED_REF = Wrapper.OBJECT.ordinal();
        FT_CHECKED_REF = Wrapper.VOID.ordinal();
        ACCESSOR_FORMS = new LambdaForm[afIndex((byte) 6, false, 0)];
        ALL_WRAPPERS = Wrapper.values();
        NFS = new LambdaForm.NamedFunction[12];
        OBJ_OBJ_TYPE = MethodType.methodType((Class<?>) Object.class, (Class<?>) Object.class);
        LONG_OBJ_TYPE = MethodType.methodType(Long.TYPE, (Class<?>) Object.class);
        MethodHandleStatics.UNSAFE.ensureClassInitialized(Holder.class);
    }

    private DirectMethodHandle(MethodType mtype, LambdaForm form, MemberName member, boolean crackable) {
        super(mtype, form);
        if (!member.isResolved()) {
            throw new InternalError();
        }
        if (member.getDeclaringClass().isInterface() && member.getReferenceKind() == 9 && member.isMethod() && !member.isAbstract()) {
            MemberName m10 = new MemberName((Class<?>) Object.class, member.getName(), member.getMethodType(), member.getReferenceKind());
            MemberName m11 = MemberName.getFactory().resolveOrNull(m10.getReferenceKind(), m10, null, -1);
            if (m11 != null && m11.isPublic()) {
                if (!$assertionsDisabled && member.getReferenceKind() != m11.getReferenceKind()) {
                    throw new AssertionError();
                }
                member = m11;
            }
        }
        this.member = member;
        this.crackable = crackable;
    }

    public static DirectMethodHandle make(byte refKind, Class<?> refc, MemberName member, Class<?> callerClass) {
        MethodType mtype = member.getMethodOrFieldType();
        if (!member.isStatic()) {
            if (!member.getDeclaringClass().isAssignableFrom(refc) || member.isConstructor()) {
                throw new InternalError(member.toString());
            }
            mtype = mtype.insertParameterTypes(0, refc);
        }
        if (!member.isField()) {
            switch (refKind) {
                case 7:
                    MemberName member2 = member.asSpecial();
                    if (callerClass == null) {
                        throw new InternalError("callerClass must not be null for REF_invokeSpecial");
                    }
                    return new Special(mtype, preparedLambdaForm(member2, callerClass.isInterface()), member2, true, callerClass);
                case 9:
                    return new Interface(mtype, preparedLambdaForm(member, true), member, true, refc);
                default:
                    return new DirectMethodHandle(mtype, preparedLambdaForm(member), member, true);
            }
        }
        LambdaForm lform = preparedFieldLambdaForm(member);
        if (member.isStatic()) {
            long offset = MethodHandleNatives.staticFieldOffset(member);
            Object base = MethodHandleNatives.staticFieldBase(member);
            return new StaticAccessor(mtype, lform, member, true, base, offset);
        }
        long offset2 = MethodHandleNatives.objectFieldOffset(member);
        if ($assertionsDisabled || offset2 == ((int) offset2)) {
            return new Accessor(mtype, lform, member, true, (int) offset2);
        }
        throw new AssertionError();
    }

    public static DirectMethodHandle make(Class<?> refc, MemberName member) {
        byte refKind = member.getReferenceKind();
        if (refKind == 7) {
            refKind = 5;
        }
        return make(refKind, refc, member, null);
    }

    public static DirectMethodHandle make(MemberName member) {
        if (member.isConstructor()) {
            return makeAllocator(member.getDeclaringClass(), member);
        }
        return make(member.getDeclaringClass(), member);
    }

    public static DirectMethodHandle makeAllocator(Class<?> instanceClass, MemberName ctor) {
        if (!$assertionsDisabled && (!ctor.isConstructor() || !ctor.getName().equals(ConstantDescs.INIT_NAME))) {
            throw new AssertionError();
        }
        MemberName ctor2 = ctor.asConstructor();
        if (!$assertionsDisabled && (!ctor2.isConstructor() || ctor2.getReferenceKind() != 8)) {
            throw new AssertionError(ctor2);
        }
        MethodType mtype = ctor2.getMethodType().changeReturnType(instanceClass);
        LambdaForm lform = preparedLambdaForm(ctor2);
        MemberName init = ctor2.asSpecial();
        if ($assertionsDisabled || init.getMethodType().returnType() == Void.TYPE) {
            return new Constructor(mtype, lform, ctor2, true, init, instanceClass);
        }
        throw new AssertionError();
    }

    @Override
    public BoundMethodHandle rebind() {
        return BoundMethodHandle.makeReinvoker(this);
    }

    @Override
    public MethodHandle copyWith(MethodType mt, LambdaForm lf2) {
        if ($assertionsDisabled || getClass() == DirectMethodHandle.class) {
            return new DirectMethodHandle(mt, lf2, this.member, this.crackable);
        }
        throw new AssertionError();
    }

    @Override
    public MethodHandle viewAsType(MethodType newType, boolean strict) {
        if (!$assertionsDisabled && !viewAsTypeChecks(newType, strict)) {
            throw new AssertionError();
        }
        if ($assertionsDisabled || getClass() == DirectMethodHandle.class) {
            return new DirectMethodHandle(newType, this.form, this.member, false);
        }
        throw new AssertionError();
    }

    @Override
    public boolean isCrackable() {
        return this.crackable;
    }

    @Override
    public String internalProperties(int indentLevel) {
        return "\n" + debugPrefix(indentLevel) + "& DMH.MN=" + ((Object) internalMemberName());
    }

    @Override
    @ForceInline
    public MemberName internalMemberName() {
        return this.member;
    }

    private static LambdaForm preparedLambdaForm(MemberName m10, boolean adaptToSpecialIfc) {
        int i10;
        if (!$assertionsDisabled && !m10.isInvocable()) {
            throw new AssertionError(m10);
        }
        MethodType mtype = m10.getInvocationType().basicType();
        if (!$assertionsDisabled && m10.isMethodHandleInvoke()) {
            throw new AssertionError(m10);
        }
        switch (m10.getReferenceKind()) {
            case 5:
                i10 = 0;
                break;
            case 6:
                i10 = 1;
                break;
            case 7:
                i10 = 2;
                break;
            case 8:
                i10 = 3;
                break;
            case 9:
                i10 = 4;
                break;
            default:
                throw new InternalError(m10.toString());
        }
        int which = i10;
        if (which == 1 && shouldBeInitialized(m10)) {
            preparedLambdaForm(mtype, which);
            which = 5;
        }
        if (which == 2 && adaptToSpecialIfc) {
            which = 20;
        }
        LambdaForm lform = preparedLambdaForm(mtype, which);
        if (!$assertionsDisabled && !lform.methodType().dropParameterTypes(0, 1).equals((Object) m10.getInvocationType().basicType())) {
            throw new AssertionError(Arrays.asList(m10, m10.getInvocationType().basicType(), lform, lform.methodType()));
        }
        return lform;
    }

    private static LambdaForm preparedLambdaForm(MemberName m10) {
        return preparedLambdaForm(m10, false);
    }

    private static LambdaForm preparedLambdaForm(MethodType mtype, int which) {
        LambdaForm lform = mtype.form().cachedLambdaForm(which);
        if (lform != null) {
            return lform;
        }
        return mtype.form().setCachedLambdaForm(which, makePreparedLambdaForm(mtype, which));
    }

    public static LambdaForm makePreparedLambdaForm(MethodType mtype, int which) {
        String linkerName;
        LambdaForm.Kind kind;
        MethodType mtypeWithArg;
        int i10;
        int i11;
        boolean needsInit = which == 5;
        boolean doesAlloc = which == 3;
        boolean needsReceiverCheck = which == 4 || which == 20;
        switch (which) {
            case 0:
                linkerName = "linkToVirtual";
                kind = LambdaForm.Kind.DIRECT_INVOKE_VIRTUAL;
                break;
            case 1:
                linkerName = "linkToStatic";
                kind = LambdaForm.Kind.DIRECT_INVOKE_STATIC;
                break;
            case 2:
                linkerName = "linkToSpecial";
                kind = LambdaForm.Kind.DIRECT_INVOKE_SPECIAL;
                break;
            case 3:
                linkerName = "linkToSpecial";
                kind = LambdaForm.Kind.DIRECT_NEW_INVOKE_SPECIAL;
                break;
            case 4:
                linkerName = "linkToInterface";
                kind = LambdaForm.Kind.DIRECT_INVOKE_INTERFACE;
                break;
            case 5:
                linkerName = "linkToStatic";
                kind = LambdaForm.Kind.DIRECT_INVOKE_STATIC_INIT;
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            default:
                throw new InternalError("which=" + which);
            case 20:
                linkerName = "linkToSpecial";
                kind = LambdaForm.Kind.DIRECT_INVOKE_SPECIAL_IFC;
                break;
        }
        if (doesAlloc) {
            Class<?>[] ptypes = mtype.ptypes();
            Class<?>[] newPtypes = new Class[ptypes.length + 2];
            newPtypes[0] = Object.class;
            System.arraycopy(ptypes, 0, newPtypes, 1, ptypes.length);
            newPtypes[newPtypes.length - 1] = MemberName.class;
            mtypeWithArg = MethodType.methodType((Class<?>) Void.TYPE, newPtypes, true);
        } else {
            mtypeWithArg = mtype.appendParameterTypes(MemberName.class);
        }
        MemberName linker = new MemberName((Class<?>) MethodHandle.class, linkerName, mtypeWithArg, (byte) 6);
        try {
            MemberName linker2 = IMPL_NAMES.resolveOrFail((byte) 6, linker, null, -1, NoSuchMethodException.class);
            int ARG_LIMIT = 1 + mtype.parameterCount();
            int nameCursor = ARG_LIMIT;
            if (doesAlloc) {
                i10 = nameCursor;
                nameCursor++;
            } else {
                i10 = -1;
            }
            int NEW_OBJ = i10;
            int GET_MEMBER = nameCursor;
            int nameCursor2 = nameCursor + 1;
            if (needsReceiverCheck) {
                i11 = nameCursor2;
                nameCursor2++;
            } else {
                i11 = -1;
            }
            int CHECK_RECEIVER = i11;
            int LINKER_CALL = nameCursor2;
            int nameCursor3 = nameCursor2 + 1;
            LambdaForm.Name[] names = LambdaForm.invokeArguments(nameCursor3 - ARG_LIMIT, mtype);
            if (!$assertionsDisabled && names.length != nameCursor3) {
                throw new AssertionError();
            }
            if (doesAlloc) {
                names[NEW_OBJ] = new LambdaForm.Name(getFunction((byte) 8), names[0]);
                names[GET_MEMBER] = new LambdaForm.Name(getFunction((byte) 9), names[0]);
            } else if (needsInit) {
                names[GET_MEMBER] = new LambdaForm.Name(getFunction((byte) 1), names[0]);
            } else {
                names[GET_MEMBER] = new LambdaForm.Name(getFunction((byte) 0), names[0]);
            }
            if (!$assertionsDisabled && findDirectMethodHandle(names[GET_MEMBER]) != names[0]) {
                throw new AssertionError();
            }
            Object[] outArgs = Arrays.copyOfRange(names, 1, GET_MEMBER + 1, Object[].class);
            if (needsReceiverCheck) {
                names[CHECK_RECEIVER] = new LambdaForm.Name(getFunction((byte) 11), names[0], names[1]);
                outArgs[0] = names[CHECK_RECEIVER];
            }
            if (!$assertionsDisabled && outArgs[outArgs.length - 1] != names[GET_MEMBER]) {
                throw new AssertionError();
            }
            int result = -2;
            if (doesAlloc) {
                if (!$assertionsDisabled && outArgs[outArgs.length - 2] != names[NEW_OBJ]) {
                    throw new AssertionError();
                }
                System.arraycopy(outArgs, 0, outArgs, 1, outArgs.length - 2);
                outArgs[0] = names[NEW_OBJ];
                result = NEW_OBJ;
            }
            names[LINKER_CALL] = new LambdaForm.Name(linker2, outArgs);
            LambdaForm lform = LambdaForm.create(ARG_LIMIT, names, result, kind);
            lform.compileToBytecode();
            return lform;
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }

    static Object findDirectMethodHandle(LambdaForm.Name name) {
        if (name.function.equals(getFunction((byte) 0)) || name.function.equals(getFunction((byte) 1)) || name.function.equals(getFunction((byte) 9))) {
            if ($assertionsDisabled || name.arguments.length == 1) {
                return name.arguments[0];
            }
            throw new AssertionError();
        }
        return null;
    }

    @ForceInline
    static Object internalMemberName(Object mh2) {
        return ((DirectMethodHandle) mh2).member;
    }

    static Object internalMemberNameEnsureInit(Object mh2) {
        DirectMethodHandle dmh = (DirectMethodHandle) mh2;
        dmh.ensureInitialized();
        return dmh.member;
    }

    static boolean shouldBeInitialized(MemberName member) {
        switch (member.getReferenceKind()) {
            case 2:
            case 4:
            case 6:
            case 8:
                Class<?> cls = member.getDeclaringClass();
                if (cls == ValueConversions.class || cls == MethodHandleImpl.class || cls == Invokers.class) {
                    return false;
                }
                if (!VerifyAccess.isSamePackage(MethodHandle.class, cls) && !VerifyAccess.isSamePackage(ValueConversions.class, cls)) {
                    return MethodHandleStatics.UNSAFE.shouldBeInitialized(cls) || CDS.needsClassInitBarrier(cls);
                }
                MethodHandleStatics.UNSAFE.ensureClassInitialized(cls);
                return CDS.needsClassInitBarrier(cls);
            case 3:
            case 5:
            case 7:
            default:
                return false;
        }
    }

    private void ensureInitialized() {
        if (checkInitialized(this.member)) {
            updateForm(new Function<LambdaForm, LambdaForm>(this) {
                final DirectMethodHandle this$0;

                {
                    Objects.requireNonNull(this);
                    this.this$0 = this;
                }

                @Override
                public LambdaForm apply(LambdaForm oldForm) {
                    return this.this$0.member.isField() ? DirectMethodHandle.preparedFieldLambdaForm(this.this$0.member) : DirectMethodHandle.preparedLambdaForm(this.this$0.member);
                }
            });
        }
    }

    private static boolean checkInitialized(MemberName member) {
        Class<?> defc = member.getDeclaringClass();
        MethodHandleStatics.UNSAFE.ensureClassInitialized(defc);
        return !MethodHandleStatics.UNSAFE.shouldBeInitialized(defc);
    }

    static void ensureInitialized(Object mh2) {
        ((DirectMethodHandle) mh2).ensureInitialized();
    }

    public static final class Special extends DirectMethodHandle {
        private final Class<?> caller;
        static final boolean $assertionsDisabled;

        @Override
        Object internalProperties(int i10) {
            return super.internalProperties(i10);
        }

        static {
            $assertionsDisabled = !DirectMethodHandle.class.desiredAssertionStatus();
        }

        private Special(MethodType mtype, LambdaForm form, MemberName member, boolean crackable, Class<?> caller) {
            super(mtype, form, member, crackable);
            this.caller = caller;
        }

        @Override
        public boolean isInvokeSpecial() {
            return true;
        }

        @Override
        MethodHandle copyWith(MethodType mt, LambdaForm lf2) {
            return new Special(mt, lf2, this.member, this.crackable, this.caller);
        }

        @Override
        MethodHandle viewAsType(MethodType newType, boolean strict) {
            if ($assertionsDisabled || viewAsTypeChecks(newType, strict)) {
                return new Special(newType, this.form, this.member, false, this.caller);
            }
            throw new AssertionError();
        }

        @Override
        Object checkReceiver(Object recv) {
            if (!this.caller.isInstance(recv)) {
                if (recv != null) {
                    String msg = String.format("Receiver class %s is not a subclass of caller class %s", recv.getClass().getName(), this.caller.getName());
                    throw new IncompatibleClassChangeError(msg);
                }
                String msg2 = String.format("Cannot invoke %s with null receiver", this.member);
                throw new NullPointerException(msg2);
            }
            return recv;
        }
    }

    public static final class Interface extends DirectMethodHandle {
        private final Class<?> refc;
        static final boolean $assertionsDisabled;

        @Override
        Object internalProperties(int i10) {
            return super.internalProperties(i10);
        }

        static {
            $assertionsDisabled = !DirectMethodHandle.class.desiredAssertionStatus();
        }

        private Interface(MethodType mtype, LambdaForm form, MemberName member, boolean crackable, Class<?> refc) {
            super(mtype, form, member, crackable);
            if (!$assertionsDisabled && !refc.isInterface()) {
                throw new AssertionError(refc);
            }
            this.refc = refc;
        }

        @Override
        MethodHandle copyWith(MethodType mt, LambdaForm lf2) {
            return new Interface(mt, lf2, this.member, this.crackable, this.refc);
        }

        @Override
        MethodHandle viewAsType(MethodType newType, boolean strict) {
            if ($assertionsDisabled || viewAsTypeChecks(newType, strict)) {
                return new Interface(newType, this.form, this.member, false, this.refc);
            }
            throw new AssertionError();
        }

        @Override
        Object checkReceiver(Object recv) {
            if (!this.refc.isInstance(recv)) {
                if (recv != null) {
                    String msg = String.format("Receiver class %s does not implement the requested interface %s", recv.getClass().getName(), this.refc.getName());
                    throw new IncompatibleClassChangeError(msg);
                }
                String msg2 = String.format("Cannot invoke %s with null receiver", this.member);
                throw new NullPointerException(msg2);
            }
            return recv;
        }
    }

    Object checkReceiver(Object recv) {
        throw new InternalError("Should only be invoked on a subclass");
    }

    public static final class Constructor extends DirectMethodHandle {
        final MemberName initMethod;
        final Class<?> instanceClass;
        static final boolean $assertionsDisabled;

        @Override
        Object internalProperties(int i10) {
            return super.internalProperties(i10);
        }

        static {
            $assertionsDisabled = !DirectMethodHandle.class.desiredAssertionStatus();
        }

        private Constructor(MethodType mtype, LambdaForm form, MemberName constructor, boolean crackable, MemberName initMethod, Class<?> instanceClass) {
            super(mtype, form, constructor, crackable);
            this.initMethod = initMethod;
            this.instanceClass = instanceClass;
            if (!$assertionsDisabled && !initMethod.isResolved()) {
                throw new AssertionError();
            }
        }

        @Override
        MethodHandle copyWith(MethodType mt, LambdaForm lf2) {
            return new Constructor(mt, lf2, this.member, this.crackable, this.initMethod, this.instanceClass);
        }

        @Override
        MethodHandle viewAsType(MethodType newType, boolean strict) {
            if ($assertionsDisabled || viewAsTypeChecks(newType, strict)) {
                return new Constructor(newType, this.form, this.member, false, this.initMethod, this.instanceClass);
            }
            throw new AssertionError();
        }
    }

    static Object constructorMethod(Object mh2) {
        Constructor dmh = (Constructor) mh2;
        return dmh.initMethod;
    }

    static Object allocateInstance(Object mh2) throws InstantiationException {
        Constructor dmh = (Constructor) mh2;
        return MethodHandleStatics.UNSAFE.allocateInstance(dmh.instanceClass);
    }

    public static final class Accessor extends DirectMethodHandle {
        final Class<?> fieldType;
        final int fieldOffset;
        static final boolean $assertionsDisabled;

        @Override
        Object internalProperties(int i10) {
            return super.internalProperties(i10);
        }

        static {
            $assertionsDisabled = !DirectMethodHandle.class.desiredAssertionStatus();
        }

        private Accessor(MethodType mtype, LambdaForm form, MemberName member, boolean crackable, int fieldOffset) {
            super(mtype, form, member, crackable);
            this.fieldType = member.getFieldType();
            this.fieldOffset = fieldOffset;
        }

        @Override
        Object checkCast(Object obj) {
            return this.fieldType.cast(obj);
        }

        @Override
        MethodHandle copyWith(MethodType mt, LambdaForm lf2) {
            return new Accessor(mt, lf2, this.member, this.crackable, this.fieldOffset);
        }

        @Override
        MethodHandle viewAsType(MethodType newType, boolean strict) {
            if ($assertionsDisabled || viewAsTypeChecks(newType, strict)) {
                return new Accessor(newType, this.form, this.member, false, this.fieldOffset);
            }
            throw new AssertionError();
        }
    }

    @ForceInline
    static long fieldOffset(Object accessorObj) {
        return ((Accessor) accessorObj).fieldOffset;
    }

    @ForceInline
    static Object checkBase(Object obj) {
        return Objects.requireNonNull(obj);
    }

    public static final class StaticAccessor extends DirectMethodHandle {
        private final Class<?> fieldType;
        private final Object staticBase;
        private final long staticOffset;
        static final boolean $assertionsDisabled;

        @Override
        Object internalProperties(int i10) {
            return super.internalProperties(i10);
        }

        static {
            $assertionsDisabled = !DirectMethodHandle.class.desiredAssertionStatus();
        }

        private StaticAccessor(MethodType mtype, LambdaForm form, MemberName member, boolean crackable, Object staticBase, long staticOffset) {
            super(mtype, form, member, crackable);
            this.fieldType = member.getFieldType();
            this.staticBase = staticBase;
            this.staticOffset = staticOffset;
        }

        @Override
        Object checkCast(Object obj) {
            return this.fieldType.cast(obj);
        }

        @Override
        MethodHandle copyWith(MethodType mt, LambdaForm lf2) {
            return new StaticAccessor(mt, lf2, this.member, this.crackable, this.staticBase, this.staticOffset);
        }

        @Override
        MethodHandle viewAsType(MethodType newType, boolean strict) {
            if ($assertionsDisabled || viewAsTypeChecks(newType, strict)) {
                return new StaticAccessor(newType, this.form, this.member, false, this.staticBase, this.staticOffset);
            }
            throw new AssertionError();
        }
    }

    @ForceInline
    static Object nullCheck(Object obj) {
        return Objects.requireNonNull(obj);
    }

    @ForceInline
    static Object staticBase(Object accessorObj) {
        return ((StaticAccessor) accessorObj).staticBase;
    }

    @ForceInline
    static long staticOffset(Object accessorObj) {
        return ((StaticAccessor) accessorObj).staticOffset;
    }

    @ForceInline
    static Object checkCast(Object mh2, Object obj) {
        return ((DirectMethodHandle) mh2).checkCast(obj);
    }

    Object checkCast(Object obj) {
        return this.member.getMethodType().returnType().cast(obj);
    }

    private static int afIndex(byte formOp, boolean isVolatile, int ftypeKind) {
        return (formOp * 10 * 2) + (isVolatile ? 10 : 0) + ftypeKind;
    }

    public static int ftypeKind(Class<?> ftype) {
        if (ftype.isPrimitive()) {
            return Wrapper.forPrimitiveType(ftype).ordinal();
        }
        if (ftype.isInterface() || ftype.isAssignableFrom(Object.class)) {
            return FT_UNCHECKED_REF;
        }
        return FT_CHECKED_REF;
    }

    private static LambdaForm preparedFieldLambdaForm(MemberName m10) {
        byte b10;
        Class<?> ftype = m10.getFieldType();
        boolean isVolatile = m10.isVolatile();
        switch (m10.getReferenceKind()) {
            case 1:
                b10 = 0;
                break;
            case 2:
                b10 = 2;
                break;
            case 3:
                b10 = 1;
                break;
            case 4:
                b10 = 3;
                break;
            default:
                throw new InternalError(m10.toString());
        }
        byte formOp = b10;
        if (shouldBeInitialized(m10)) {
            preparedFieldLambdaForm(formOp, isVolatile, ftype);
            formOp = (byte) (formOp + 2);
        }
        LambdaForm lform = preparedFieldLambdaForm(formOp, isVolatile, ftype);
        if (!$assertionsDisabled && !lform.methodType().dropParameterTypes(0, 1).equals((Object) m10.getInvocationType().basicType())) {
            throw new AssertionError(Arrays.asList(m10, m10.getInvocationType().basicType(), lform, lform.methodType()));
        }
        return lform;
    }

    private static LambdaForm preparedFieldLambdaForm(byte formOp, boolean isVolatile, Class<?> ftype) {
        int ftypeKind = ftypeKind(ftype);
        int afIndex = afIndex(formOp, isVolatile, ftypeKind);
        LambdaForm lform = ACCESSOR_FORMS[afIndex];
        if (lform != null) {
            return lform;
        }
        LambdaForm lform2 = makePreparedFieldLambdaForm(formOp, isVolatile, ftypeKind);
        ACCESSOR_FORMS[afIndex] = lform2;
        return lform2;
    }

    private static LambdaForm.Kind getFieldKind(boolean isVolatile, boolean needsInit, boolean needsCast, Wrapper wrapper) {
        if (isVolatile) {
            if (needsInit) {
                switch (AnonymousClass2.$SwitchMap$sun$invoke$util$Wrapper[wrapper.ordinal()]) {
                    case 1:
                        return LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_B;
                    case 2:
                        return LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_C;
                    case 3:
                        return LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_S;
                    case 4:
                        return LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_Z;
                    default:
                        return needsCast ? LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_CAST : LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT;
                }
            }
            switch (AnonymousClass2.$SwitchMap$sun$invoke$util$Wrapper[wrapper.ordinal()]) {
                case 1:
                    return LambdaForm.Kind.VOLATILE_FIELD_ACCESS_B;
                case 2:
                    return LambdaForm.Kind.VOLATILE_FIELD_ACCESS_C;
                case 3:
                    return LambdaForm.Kind.VOLATILE_FIELD_ACCESS_S;
                case 4:
                    return LambdaForm.Kind.VOLATILE_FIELD_ACCESS_Z;
                default:
                    return needsCast ? LambdaForm.Kind.VOLATILE_FIELD_ACCESS_CAST : LambdaForm.Kind.VOLATILE_FIELD_ACCESS;
            }
        }
        if (needsInit) {
            switch (AnonymousClass2.$SwitchMap$sun$invoke$util$Wrapper[wrapper.ordinal()]) {
                case 1:
                    return LambdaForm.Kind.FIELD_ACCESS_INIT_B;
                case 2:
                    return LambdaForm.Kind.FIELD_ACCESS_INIT_C;
                case 3:
                    return LambdaForm.Kind.FIELD_ACCESS_INIT_S;
                case 4:
                    return LambdaForm.Kind.FIELD_ACCESS_INIT_Z;
                default:
                    return needsCast ? LambdaForm.Kind.FIELD_ACCESS_INIT_CAST : LambdaForm.Kind.FIELD_ACCESS_INIT;
            }
        }
        switch (AnonymousClass2.$SwitchMap$sun$invoke$util$Wrapper[wrapper.ordinal()]) {
            case 1:
                return LambdaForm.Kind.FIELD_ACCESS_B;
            case 2:
                return LambdaForm.Kind.FIELD_ACCESS_C;
            case 3:
                return LambdaForm.Kind.FIELD_ACCESS_S;
            case 4:
                return LambdaForm.Kind.FIELD_ACCESS_Z;
            default:
                return needsCast ? LambdaForm.Kind.FIELD_ACCESS_CAST : LambdaForm.Kind.FIELD_ACCESS;
        }
    }

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$sun$invoke$util$Wrapper = new int[Wrapper.values().length];

        static {
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.INT.ordinal()] = 5;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.VOID.ordinal()] = 10;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    private static String unsafeMethodName(boolean isGetter, boolean isVolatile, Wrapper wrapper) {
        String str;
        switch (AnonymousClass2.$SwitchMap$sun$invoke$util$Wrapper[wrapper.ordinal()]) {
            case 1:
                str = "Byte";
                break;
            case 2:
                str = "Char";
                break;
            case 3:
                str = "Short";
                break;
            case 4:
                str = "Boolean";
                break;
            case 5:
                str = SerializableShaderEntry.f81155i;
                break;
            case 6:
                str = SerializableShaderEntry.f81148b;
                break;
            case 7:
                str = "Long";
                break;
            case 8:
                str = "Double";
                break;
            case 9:
                str = "Reference";
                break;
            case 10:
                throw new InternalError();
            default:
                throw new MatchException(null, null);
        }
        String name = str;
        StringBuilder sb2 = new StringBuilder(3 + name.length() + (isVolatile ? 8 : 0)).append(isGetter ? "get" : "put").append(name);
        if (isVolatile) {
            sb2.append("Volatile");
        }
        return sb2.toString();
    }

    public static LambdaForm makePreparedFieldLambdaForm(byte formOp, boolean isVolatile, int ftypeKind) {
        MethodType linkerType;
        MethodType mtype;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean isGetter = (formOp & 1) == 0;
        boolean isStatic = formOp >= 2;
        boolean needsInit = formOp >= 4;
        boolean needsCast = ftypeKind == FT_CHECKED_REF;
        Wrapper fw = needsCast ? Wrapper.OBJECT : ALL_WRAPPERS[ftypeKind];
        Class<?> ft = fw.primitiveType();
        if (!$assertionsDisabled) {
            if (ftypeKind(needsCast ? String.class : ft) != ftypeKind) {
                throw new AssertionError();
            }
        }
        String unsafeMethodName = unsafeMethodName(isGetter, isVolatile, fw);
        LambdaForm.Kind kind = getFieldKind(isVolatile, needsInit, needsCast, fw);
        if (isGetter) {
            linkerType = MethodType.methodType(ft, (Class<?>) Object.class, (Class<?>[]) new Class[]{Long.TYPE});
        } else {
            linkerType = MethodType.methodType(Void.TYPE, (Class<?>) Object.class, (Class<?>[]) new Class[]{Long.TYPE, ft});
        }
        MemberName linker = new MemberName((Class<?>) Unsafe.class, unsafeMethodName, linkerType, (byte) 5);
        try {
            MemberName linker2 = IMPL_NAMES.resolveOrFail((byte) 5, linker, null, -1, NoSuchMethodException.class);
            if (isGetter) {
                mtype = MethodType.methodType(ft);
            } else {
                mtype = MethodType.methodType(Void.TYPE, ft);
            }
            MethodType mtype2 = mtype.basicType();
            if (!isStatic) {
                mtype2 = mtype2.insertParameterTypes(0, Object.class);
            }
            int ARG_LIMIT = 1 + mtype2.parameterCount();
            int OBJ_BASE = isStatic ? -1 : 1;
            int SET_VALUE = isGetter ? -1 : ARG_LIMIT - 1;
            int nameCursor = ARG_LIMIT;
            if (isStatic) {
                i10 = nameCursor;
                nameCursor++;
            } else {
                i10 = -1;
            }
            int F_HOLDER = i10;
            int F_OFFSET = nameCursor;
            int nameCursor2 = nameCursor + 1;
            if (OBJ_BASE >= 0) {
                i11 = nameCursor2;
                nameCursor2++;
            } else {
                i11 = -1;
            }
            int OBJ_CHECK = i11;
            int U_HOLDER = nameCursor2;
            int nameCursor3 = nameCursor2 + 1;
            if (needsInit) {
                i12 = nameCursor3;
                nameCursor3++;
            } else {
                i12 = -1;
            }
            int INIT_BAR = i12;
            if (!needsCast || isGetter) {
                i13 = -1;
            } else {
                i13 = nameCursor3;
                nameCursor3++;
            }
            int PRE_CAST = i13;
            int LINKER_CALL = nameCursor3;
            int nameCursor4 = nameCursor3 + 1;
            if (needsCast && isGetter) {
                i14 = nameCursor4;
                nameCursor4++;
            } else {
                i14 = -1;
            }
            int POST_CAST = i14;
            int RESULT = nameCursor4 - 1;
            LambdaForm.Name[] names = LambdaForm.invokeArguments(nameCursor4 - ARG_LIMIT, mtype2);
            if (needsInit) {
                names[INIT_BAR] = new LambdaForm.Name(getFunction((byte) 2), names[0]);
            }
            if (needsCast && !isGetter) {
                names[PRE_CAST] = new LambdaForm.Name(getFunction((byte) 7), names[0], names[SET_VALUE]);
            }
            Object[] outArgs = new Object[1 + linkerType.parameterCount()];
            if (!$assertionsDisabled) {
                if (outArgs.length != (isGetter ? 3 : 4)) {
                    throw new AssertionError();
                }
            }
            LambdaForm.Name name = new LambdaForm.Name(getFunction((byte) 10));
            names[U_HOLDER] = name;
            outArgs[0] = name;
            if (isStatic) {
                LambdaForm.Name name2 = new LambdaForm.Name(getFunction((byte) 5), names[0]);
                names[F_HOLDER] = name2;
                outArgs[1] = name2;
                LambdaForm.Name name3 = new LambdaForm.Name(getFunction((byte) 6), names[0]);
                names[F_OFFSET] = name3;
                outArgs[2] = name3;
            } else {
                LambdaForm.Name name4 = new LambdaForm.Name(getFunction((byte) 4), names[OBJ_BASE]);
                names[OBJ_CHECK] = name4;
                outArgs[1] = name4;
                LambdaForm.Name name5 = new LambdaForm.Name(getFunction((byte) 3), names[0]);
                names[F_OFFSET] = name5;
                outArgs[2] = name5;
            }
            if (!isGetter) {
                outArgs[3] = needsCast ? names[PRE_CAST] : names[SET_VALUE];
            }
            for (Object a10 : outArgs) {
                if (!$assertionsDisabled && a10 == null) {
                    throw new AssertionError();
                }
            }
            names[LINKER_CALL] = new LambdaForm.Name(linker2, outArgs);
            if (needsCast && isGetter) {
                names[POST_CAST] = new LambdaForm.Name(getFunction((byte) 7), names[0], names[LINKER_CALL]);
            }
            for (LambdaForm.Name n10 : names) {
                if (!$assertionsDisabled && n10 == null) {
                    throw new AssertionError();
                }
            }
            LambdaForm form = LambdaForm.create(ARG_LIMIT, names, RESULT, kind);
            if (LambdaForm.debugNames()) {
                StringBuilder nameBuilder = new StringBuilder(unsafeMethodName);
                if (isStatic) {
                    nameBuilder.append("Static");
                } else {
                    nameBuilder.append("Field");
                }
                if (needsCast) {
                    nameBuilder.append("Cast");
                }
                if (needsInit) {
                    nameBuilder.append("Init");
                }
                LambdaForm.associateWithDebugName(form, nameBuilder.toString());
            }
            form.compileToBytecode();
            return form;
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }

    private static LambdaForm.NamedFunction getFunction(byte func) {
        LambdaForm.NamedFunction nf2 = NFS[func];
        if (nf2 != null) {
            return nf2;
        }
        LambdaForm.NamedFunction[] namedFunctionArr = NFS;
        LambdaForm.NamedFunction nf3 = createFunction(func);
        namedFunctionArr[func] = nf3;
        if ($assertionsDisabled || InvokerBytecodeGenerator.isStaticallyInvocable(nf3)) {
            return nf3;
        }
        throw new AssertionError();
    }

    private static LambdaForm.NamedFunction createFunction(byte func) {
        try {
            switch (func) {
                case 0:
                    return getNamedFunction("internalMemberName", OBJ_OBJ_TYPE);
                case 1:
                    return getNamedFunction("internalMemberNameEnsureInit", OBJ_OBJ_TYPE);
                case 2:
                    return getNamedFunction("ensureInitialized", MethodType.methodType(Void.TYPE, (Class<?>) Object.class));
                case 3:
                    return getNamedFunction("fieldOffset", LONG_OBJ_TYPE);
                case 4:
                    return getNamedFunction("checkBase", OBJ_OBJ_TYPE);
                case 5:
                    return getNamedFunction("staticBase", OBJ_OBJ_TYPE);
                case 6:
                    return getNamedFunction("staticOffset", LONG_OBJ_TYPE);
                case 7:
                    return getNamedFunction("checkCast", MethodType.methodType((Class<?>) Object.class, (Class<?>) Object.class, (Class<?>[]) new Class[]{Object.class}));
                case 8:
                    return getNamedFunction("allocateInstance", OBJ_OBJ_TYPE);
                case 9:
                    return getNamedFunction("constructorMethod", OBJ_OBJ_TYPE);
                case 10:
                    MemberName member = new MemberName((Class<?>) MethodHandleStatics.class, "UNSAFE", (Class<?>) Unsafe.class, (byte) 2);
                    return new LambdaForm.NamedFunction(MemberName.getFactory().resolveOrFail((byte) 2, member, DirectMethodHandle.class, -1, NoSuchFieldException.class));
                case 11:
                    MemberName member2 = new MemberName((Class<?>) DirectMethodHandle.class, "checkReceiver", OBJ_OBJ_TYPE, (byte) 5);
                    return new LambdaForm.NamedFunction(MemberName.getFactory().resolveOrFail((byte) 5, member2, DirectMethodHandle.class, -1, NoSuchMethodException.class));
                default:
                    throw MethodHandleStatics.newInternalError("Unknown function: " + ((int) func));
            }
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }

    private static LambdaForm.NamedFunction getNamedFunction(String name, MethodType type) throws ReflectiveOperationException {
        MemberName member = new MemberName((Class<?>) DirectMethodHandle.class, name, type, (byte) 6);
        return new LambdaForm.NamedFunction(MemberName.getFactory().resolveOrFail((byte) 6, member, DirectMethodHandle.class, -1, NoSuchMethodException.class));
    }

    final class Holder {
        Holder(DirectMethodHandle this$0) {
            Objects.requireNonNull(this$0);
        }
    }
}
