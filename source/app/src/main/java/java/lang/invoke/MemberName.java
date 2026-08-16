package java.lang.invoke;

import b3.s;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Objects;
import sun.invoke.util.VerifyAccess;

public final class MemberName implements Member, Cloneable {
    private Class<?> clazz;
    private String name;
    private Object type;
    private int flags;
    private ResolvedMethodName method;
    Object resolution;
    private static final int MH_INVOKE_MODS = 273;
    static final int BRIDGE = 64;
    static final int VARARGS = 128;
    static final int SYNTHETIC = 4096;
    static final int ANNOTATION = 8192;
    static final int ENUM = 16384;
    static final String CONSTRUCTOR_NAME = "<init>";
    static final int RECOGNIZED_MODIFIERS = 65535;
    static final int IS_METHOD = 65536;
    static final int IS_CONSTRUCTOR = 131072;
    static final int IS_FIELD = 262144;
    static final int IS_TYPE = 524288;
    static final int CALLER_SENSITIVE = 1048576;
    static final int TRUSTED_FINAL = 2097152;
    static final int ALL_ACCESS = 7;
    static final int ALL_KINDS = 983040;
    static final int IS_INVOCABLE = 196608;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !MemberName.class.desiredAssertionStatus();
    }

    @Override
    public Class<?> getDeclaringClass() {
        return this.clazz;
    }

    public ClassLoader getClassLoader() {
        return this.clazz.getClassLoader();
    }

    @Override
    public String getName() {
        if (this.name == null) {
            expandFromVM();
            if (this.name == null) {
                return null;
            }
        }
        return this.name;
    }

    public MethodType getMethodOrFieldType() {
        if (isInvocable()) {
            return getMethodType();
        }
        if (isGetter()) {
            return MethodType.methodType(getFieldType());
        }
        if (isSetter()) {
            return MethodType.methodType(Void.TYPE, getFieldType());
        }
        throw new InternalError("not a method or field: " + ((Object) this));
    }

    public MethodType getMethodType() {
        if (this.type == null) {
            expandFromVM();
            if (this.type == null) {
                return null;
            }
        }
        if (!isInvocable()) {
            throw MethodHandleStatics.newIllegalArgumentException("not invocable, no method type");
        }
        Object type = this.type;
        if (type instanceof MethodType) {
            MethodType mt = (MethodType) type;
            return mt;
        }
        synchronized (this) {
            Object obj = this.type;
            if (obj instanceof String) {
                String sig = (String) obj;
                MethodType res = MethodType.fromDescriptor(sig, getClassLoader());
                this.type = res;
            } else {
                Object obj2 = this.type;
                if (obj2 instanceof Object[]) {
                    Object[] typeInfo = (Object[]) obj2;
                    Class<?>[] ptypes = (Class[]) typeInfo[1];
                    Class<?> rtype = (Class) typeInfo[0];
                    MethodType res2 = MethodType.methodType(rtype, ptypes, true);
                    this.type = res2;
                }
            }
            if (!$assertionsDisabled && !(this.type instanceof MethodType)) {
                throw new AssertionError((Object) ("bad method type " + this.type));
            }
        }
        return (MethodType) this.type;
    }

    String getMethodDescriptor() {
        if (this.type == null) {
            expandFromVM();
            if (this.type == null) {
                return null;
            }
        }
        if (!isInvocable()) {
            throw MethodHandleStatics.newIllegalArgumentException("not invocable, no method type");
        }
        Object type = this.type;
        if (type instanceof String) {
            String str = (String) type;
            return str;
        }
        return getMethodType().toMethodDescriptorString();
    }

    public MethodType getInvocationType() {
        MethodType itype = getMethodOrFieldType();
        if (isConstructor() && getReferenceKind() == 8) {
            return itype.changeReturnType(this.clazz);
        }
        if (!isStatic()) {
            return itype.insertParameterTypes(0, this.clazz);
        }
        return itype;
    }

    public Class<?> getFieldType() {
        if (this.type == null) {
            expandFromVM();
            if (this.type == null) {
                return null;
            }
        }
        if (isInvocable()) {
            throw MethodHandleStatics.newIllegalArgumentException("not a field or nested class, no simple type");
        }
        Object type = this.type;
        if (type instanceof Class) {
            Class<?> cl2 = (Class) type;
            return cl2;
        }
        synchronized (this) {
            Object obj = this.type;
            if (obj instanceof String) {
                String sig = (String) obj;
                MethodType mtype = MethodType.fromDescriptor("()" + sig, getClassLoader());
                Class<?> res = mtype.returnType();
                this.type = res;
            }
            if (!$assertionsDisabled && !(this.type instanceof Class)) {
                throw new AssertionError((Object) ("bad field type " + this.type));
            }
        }
        return (Class) this.type;
    }

    public Object getType() {
        return isInvocable() ? getMethodType() : getFieldType();
    }

    @Override
    public int getModifiers() {
        return this.flags & 65535;
    }

    public byte getReferenceKind() {
        return (byte) ((this.flags >>> 24) & 15);
    }

    private boolean referenceKindIsConsistent() {
        byte refKind = getReferenceKind();
        if (refKind == 0) {
            return isType();
        }
        if (isField()) {
            if (!$assertionsDisabled && !staticIsConsistent()) {
                throw new AssertionError();
            }
            if ($assertionsDisabled || MethodHandleNatives.refKindIsField(refKind)) {
                return true;
            }
            throw new AssertionError();
        }
        if (isConstructor()) {
            if ($assertionsDisabled || refKind == 8 || refKind == 7) {
                return true;
            }
            throw new AssertionError();
        }
        if (isMethod()) {
            if (!$assertionsDisabled && !staticIsConsistent()) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && !MethodHandleNatives.refKindIsMethod(refKind)) {
                throw new AssertionError();
            }
            if (this.clazz.isInterface() && !$assertionsDisabled && refKind != 9 && refKind != 6 && refKind != 7) {
                if (refKind != 5 || !isObjectPublicMethod()) {
                    throw new AssertionError();
                }
                return true;
            }
            return true;
        }
        if ($assertionsDisabled) {
            return true;
        }
        throw new AssertionError();
    }

    private boolean isObjectPublicMethod() {
        if (this.clazz == Object.class) {
            return true;
        }
        MethodType mtype = getMethodType();
        if (this.name.equals("toString") && mtype.returnType() == String.class && mtype.parameterCount() == 0) {
            return true;
        }
        if (this.name.equals("hashCode") && mtype.returnType() == Integer.TYPE && mtype.parameterCount() == 0) {
            return true;
        }
        if (this.name.equals("equals") && mtype.returnType() == Boolean.TYPE && mtype.parameterCount() == 1 && mtype.parameterType(0) == Object.class) {
            return true;
        }
        return false;
    }

    public boolean referenceKindIsConsistentWith(int originalRefKind) {
        int refKind = getReferenceKind();
        if (refKind != originalRefKind && getClass().desiredAssertionStatus()) {
            switch (originalRefKind) {
                case 5:
                case 8:
                    if ($assertionsDisabled || refKind == 7) {
                        return true;
                    }
                    throw new AssertionError(this);
                case 6:
                case 7:
                default:
                    if ($assertionsDisabled) {
                        return true;
                    }
                    throw new AssertionError((Object) (((Object) this) + " != " + MethodHandleNatives.refKindName((byte) originalRefKind)));
                case 9:
                    if ($assertionsDisabled || refKind == 5 || refKind == 7) {
                        return true;
                    }
                    throw new AssertionError(this);
            }
        }
        return true;
    }

    private boolean staticIsConsistent() {
        byte refKind = getReferenceKind();
        return MethodHandleNatives.refKindIsStatic(refKind) == isStatic() || getModifiers() == 0;
    }

    private boolean vminfoIsConsistent() {
        byte refKind = getReferenceKind();
        if (!$assertionsDisabled && !isResolved()) {
            throw new AssertionError();
        }
        Object vminfo = MethodHandleNatives.getMemberVMInfo(this);
        if (!$assertionsDisabled && !(vminfo instanceof Object[])) {
            throw new AssertionError();
        }
        long vmindex = ((Long) ((Object[]) vminfo)[0]).longValue();
        Object vmtarget = ((Object[]) vminfo)[1];
        if (MethodHandleNatives.refKindIsField(refKind)) {
            if (!$assertionsDisabled && vmindex < 0) {
                throw new AssertionError((Object) (vmindex + s.f32937c + ((Object) this)));
            }
            if ($assertionsDisabled || (vmtarget instanceof Class)) {
                return true;
            }
            throw new AssertionError();
        }
        if (MethodHandleNatives.refKindDoesDispatch(refKind)) {
            if (!$assertionsDisabled && vmindex < 0) {
                throw new AssertionError((Object) (vmindex + s.f32937c + ((Object) this)));
            }
        } else if (!$assertionsDisabled && vmindex >= 0) {
            throw new AssertionError(vmindex);
        }
        if ($assertionsDisabled || (vmtarget instanceof MemberName)) {
            return true;
        }
        throw new AssertionError((Object) (vmtarget + " in " + ((Object) this)));
    }

    private MemberName changeReferenceKind(byte refKind, byte oldKind) {
        if (!$assertionsDisabled && (getReferenceKind() != oldKind || !MethodHandleNatives.refKindIsValid(refKind))) {
            throw new AssertionError();
        }
        this.flags += (refKind - oldKind) << 24;
        return this;
    }

    private boolean matchingFlagsSet(int mask, int flags) {
        return (this.flags & mask) == flags;
    }

    private boolean allFlagsSet(int flags) {
        return (this.flags & flags) == flags;
    }

    private boolean anyFlagSet(int flags) {
        return (this.flags & flags) != 0;
    }

    public boolean isMethodHandleInvoke() {
        if (matchingFlagsSet(280, 272) && this.clazz == MethodHandle.class) {
            return isMethodHandleInvokeName(this.name);
        }
        return false;
    }

    public static boolean isMethodHandleInvokeName(String name) {
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
            case true:
                return true;
            default:
                return false;
        }
    }

    public boolean isVarHandleMethodInvoke() {
        if (matchingFlagsSet(280, 272) && this.clazz == VarHandle.class) {
            return isVarHandleMethodInvokeName(this.name);
        }
        return false;
    }

    public static boolean isVarHandleMethodInvokeName(String name) {
        try {
            VarHandle.AccessMode.valueFromMethodName(name);
            return true;
        } catch (IllegalArgumentException e10) {
            return false;
        }
    }

    public boolean isStatic() {
        return Modifier.isStatic(this.flags);
    }

    public boolean isPublic() {
        return Modifier.isPublic(this.flags);
    }

    public boolean isPrivate() {
        return Modifier.isPrivate(this.flags);
    }

    public boolean isProtected() {
        return Modifier.isProtected(this.flags);
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.flags);
    }

    public boolean canBeStaticallyBound() {
        return Modifier.isFinal(this.flags | this.clazz.getModifiers());
    }

    public boolean isVolatile() {
        return Modifier.isVolatile(this.flags);
    }

    public boolean isAbstract() {
        return Modifier.isAbstract(this.flags);
    }

    public boolean isNative() {
        return Modifier.isNative(this.flags);
    }

    public boolean isBridge() {
        return allFlagsSet(65600);
    }

    public boolean isVarargs() {
        return allFlagsSet(128) && isInvocable();
    }

    @Override
    public boolean isSynthetic() {
        return allFlagsSet(4096);
    }

    public boolean isInvocable() {
        return anyFlagSet(196608);
    }

    public boolean isMethod() {
        return allFlagsSet(65536);
    }

    public boolean isConstructor() {
        return allFlagsSet(131072);
    }

    public boolean isField() {
        return allFlagsSet(262144);
    }

    public boolean isType() {
        return allFlagsSet(524288);
    }

    public boolean isPackage() {
        return !anyFlagSet(7);
    }

    public boolean isCallerSensitive() {
        return allFlagsSet(1048576);
    }

    public boolean isTrustedFinalField() {
        return allFlagsSet(2359296);
    }

    public boolean refersTo(Class<?> declc, String n10) {
        return this.clazz == declc && getName().equals(n10);
    }

    private void init(Class<?> defClass, String name, Object type, int flags) {
        this.clazz = defClass;
        this.name = name;
        this.type = type;
        this.flags = flags;
        if ($assertionsDisabled) {
            return;
        }
        if (!anyFlagSet(ALL_KINDS) || this.resolution != null) {
            throw new AssertionError();
        }
    }

    private void expandFromVM() {
        if (this.type != null || !isResolved()) {
            return;
        }
        MethodHandleNatives.expand(this);
    }

    private static int flagsMods(int flags, int mods, byte refKind) {
        if ($assertionsDisabled || ((flags & 65535) == 0 && (mods & (-65536)) == 0 && (refKind & (-16)) == 0)) {
            return flags | mods | (refKind << 24);
        }
        throw new AssertionError();
    }

    public MemberName(Method m10) {
        this(m10, false);
    }

    public MemberName(Method m10, boolean wantSpecial) {
        Objects.requireNonNull(m10);
        MethodHandleNatives.init(this, m10);
        if (this.clazz == null) {
            if (m10.getDeclaringClass() == MethodHandle.class && isMethodHandleInvokeName(m10.getName())) {
                MethodType type = MethodType.methodType(m10.getReturnType(), m10.getParameterTypes());
                int flags = flagsMods(65536, m10.getModifiers(), (byte) 5);
                init(MethodHandle.class, m10.getName(), type, flags);
                if (isMethodHandleInvoke()) {
                    return;
                }
            }
            if (m10.getDeclaringClass() == VarHandle.class && isVarHandleMethodInvokeName(m10.getName())) {
                MethodType type2 = MethodType.methodType(m10.getReturnType(), m10.getParameterTypes());
                int flags2 = flagsMods(65536, m10.getModifiers(), (byte) 5);
                init(VarHandle.class, m10.getName(), type2, flags2);
                if (isVarHandleMethodInvoke()) {
                    return;
                }
            }
            throw new LinkageError(m10.toString());
        }
        if (!$assertionsDisabled && !isResolved()) {
            throw new AssertionError();
        }
        this.name = m10.getName();
        if (this.type == null) {
            this.type = new Object[]{m10.getReturnType(), m10.getParameterTypes()};
        }
        if (wantSpecial) {
            if (isAbstract()) {
                throw new AbstractMethodError(toString());
            }
            if (getReferenceKind() == 5) {
                changeReferenceKind((byte) 7, (byte) 5);
            } else if (getReferenceKind() == 9) {
                changeReferenceKind((byte) 7, (byte) 9);
            }
        }
    }

    public MemberName asSpecial() {
        switch (getReferenceKind()) {
            case 5:
                return m1527clone().changeReferenceKind((byte) 7, (byte) 5);
            case 6:
            default:
                throw new IllegalArgumentException(toString());
            case 7:
                return this;
            case 8:
                return m1527clone().changeReferenceKind((byte) 7, (byte) 8);
            case 9:
                return m1527clone().changeReferenceKind((byte) 7, (byte) 9);
        }
    }

    public MemberName asConstructor() {
        switch (getReferenceKind()) {
            case 7:
                return m1527clone().changeReferenceKind((byte) 8, (byte) 7);
            case 8:
                return this;
            default:
                throw new IllegalArgumentException(toString());
        }
    }

    public MemberName asNormalOriginal() {
        byte b10;
        byte refKind = getReferenceKind();
        switch (refKind) {
            case 5:
            case 7:
            case 9:
                if (!this.clazz.isInterface()) {
                    b10 = 5;
                    break;
                } else {
                    b10 = 9;
                    break;
                }
            case 6:
            case 8:
            default:
                b10 = refKind;
                break;
        }
        byte newRefKind = b10;
        if (newRefKind == refKind) {
            return this;
        }
        MemberName result = m1527clone().changeReferenceKind(newRefKind, refKind);
        if ($assertionsDisabled || referenceKindIsConsistentWith(result.getReferenceKind())) {
            return result;
        }
        throw new AssertionError();
    }

    public MemberName(Constructor<?> ctor) {
        Objects.requireNonNull(ctor);
        MethodHandleNatives.init(this, ctor);
        if (!$assertionsDisabled && (!isResolved() || this.clazz == null)) {
            throw new AssertionError();
        }
        this.name = "<init>";
        if (this.type == null) {
            this.type = new Object[]{Void.TYPE, ctor.getParameterTypes()};
        }
    }

    public MemberName(Field fld) {
        this(fld, false);
    }

    public MemberName(Field fld, boolean makeSetter) {
        Objects.requireNonNull(fld);
        MethodHandleNatives.init(this, fld);
        if (!$assertionsDisabled && (!isResolved() || this.clazz == null)) {
            throw new AssertionError();
        }
        this.name = fld.getName();
        this.type = fld.getType();
        byte refKind = getReferenceKind();
        if (!$assertionsDisabled) {
            if (refKind != (isStatic() ? (byte) 2 : (byte) 1)) {
                throw new AssertionError();
            }
        }
        if (makeSetter) {
            changeReferenceKind((byte) (refKind + 2), refKind);
        }
    }

    public boolean isGetter() {
        return MethodHandleNatives.refKindIsGetter(getReferenceKind());
    }

    public boolean isSetter() {
        return MethodHandleNatives.refKindIsSetter(getReferenceKind());
    }

    public MemberName(Class<?> type) {
        init(type.getDeclaringClass(), type.getSimpleName(), type, flagsMods(524288, type.getModifiers(), (byte) 0));
        initResolved(true);
    }

    public static MemberName makeMethodHandleInvoke(String name, MethodType type) {
        return makeMethodHandleInvoke(name, type, 4369);
    }

    static MemberName makeMethodHandleInvoke(String name, MethodType type, int mods) {
        MemberName mem = new MemberName((Class<?>) MethodHandle.class, name, type, (byte) 5);
        mem.flags |= mods;
        if ($assertionsDisabled || mem.isMethodHandleInvoke()) {
            return mem;
        }
        throw new AssertionError(mem);
    }

    public static MemberName makeVarHandleMethodInvoke(String name, MethodType type) {
        return makeVarHandleMethodInvoke(name, type, 4369);
    }

    static MemberName makeVarHandleMethodInvoke(String name, MethodType type, int mods) {
        MemberName mem = new MemberName((Class<?>) VarHandle.class, name, type, (byte) 5);
        mem.flags |= mods;
        if ($assertionsDisabled || mem.isVarHandleMethodInvoke()) {
            return mem;
        }
        throw new AssertionError(mem);
    }

    MemberName() {
    }

    public MemberName m1527clone() {
        try {
            return (MemberName) super.clone();
        } catch (CloneNotSupportedException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }

    public MemberName getDefinition() {
        if (!isResolved()) {
            throw new IllegalStateException("must be resolved: " + ((Object) this));
        }
        if (isType()) {
            return this;
        }
        MemberName res = m1527clone();
        res.clazz = null;
        res.type = null;
        res.name = null;
        res.resolution = res;
        res.expandFromVM();
        if ($assertionsDisabled || res.getName().equals(getName())) {
            return res;
        }
        throw new AssertionError();
    }

    public int hashCode() {
        return Objects.hash(this.clazz, new Byte(getReferenceKind()), this.name, getType());
    }

    public boolean equals(Object that) {
        if (that instanceof MemberName) {
            MemberName mn2 = (MemberName) that;
            if (equals(mn2)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(MemberName that) {
        if (this == that) {
            return true;
        }
        return that != null && this.clazz == that.clazz && getReferenceKind() == that.getReferenceKind() && Objects.equals(this.name, that.name) && Objects.equals(getType(), that.getType());
    }

    public MemberName(Class<?> defClass, String name, Class<?> type, byte refKind) {
        init(defClass, name, type, flagsMods(262144, 0, refKind));
        initResolved(false);
    }

    public MemberName(Class<?> defClass, String name, MethodType type, byte refKind) {
        int initFlags = (name == null || !name.equals("<init>")) ? 65536 : 131072;
        init(defClass, name, type, flagsMods(initFlags, 0, refKind));
        initResolved(false);
    }

    public MemberName(byte refKind, Class<?> defClass, String name, Object type) {
        int kindFlags;
        if (MethodHandleNatives.refKindIsField(refKind)) {
            kindFlags = 262144;
            if (!(type instanceof Class)) {
                throw MethodHandleStatics.newIllegalArgumentException("not a field type");
            }
        } else if (MethodHandleNatives.refKindIsMethod(refKind)) {
            kindFlags = 65536;
            if (!(type instanceof MethodType)) {
                throw MethodHandleStatics.newIllegalArgumentException("not a method type");
            }
        } else if (refKind == 8) {
            kindFlags = 131072;
            if (!(type instanceof MethodType) || !"<init>".equals(name)) {
                throw MethodHandleStatics.newIllegalArgumentException("not a constructor type or name");
            }
        } else {
            throw MethodHandleStatics.newIllegalArgumentException("bad reference kind " + ((int) refKind));
        }
        init(defClass, name, type, flagsMods(kindFlags, 0, refKind));
        initResolved(false);
    }

    public boolean isResolved() {
        return this.resolution == null;
    }

    void initResolved(boolean isResolved) {
        if (!$assertionsDisabled && this.resolution != null) {
            throw new AssertionError();
        }
        if (!isResolved) {
            this.resolution = this;
        }
        if (!$assertionsDisabled && isResolved() != isResolved) {
            throw new AssertionError();
        }
    }

    void ensureTypeVisible(Class<?> refc) {
        Class<?> type;
        MethodType type2;
        if (isInvocable()) {
            Object obj = this.type;
            if (obj instanceof MethodType) {
                MethodType mt = (MethodType) obj;
                type2 = mt;
            } else {
                MethodType methodType = getMethodType();
                type2 = methodType;
                this.type = methodType;
            }
            if (type2.erase() != type2 && !VerifyAccess.ensureTypeVisible(type2, refc)) {
                throw new LinkageError("bad method type alias: " + ((Object) type2) + " not visible from " + ((Object) refc));
            }
            return;
        }
        Object obj2 = this.type;
        if (obj2 instanceof Class) {
            Class<?> cl2 = (Class) obj2;
            type = cl2;
        } else {
            Class<?> fieldType = getFieldType();
            type = fieldType;
            this.type = fieldType;
        }
        if (!VerifyAccess.ensureTypeVisible(type, refc)) {
            throw new LinkageError("bad field type alias: " + ((Object) type) + " not visible from " + ((Object) refc));
        }
    }

    public String toString() {
        if (isType()) {
            return this.type.toString();
        }
        StringBuilder buf = new StringBuilder();
        if (getDeclaringClass() != null) {
            buf.append(getName(this.clazz));
            buf.append('.');
        }
        String name = this.name;
        buf.append(name == null ? "*" : name);
        Object type = this.type;
        if (!isInvocable()) {
            buf.append('/');
            buf.append(type == null ? "*" : getName(type));
        } else {
            buf.append(type == null ? "(*)*" : getName(type));
        }
        byte refKind = getReferenceKind();
        if (refKind != 0) {
            buf.append('/');
            buf.append(MethodHandleNatives.refKindName(refKind));
        }
        return buf.toString();
    }

    private static String getName(Object obj) {
        if (obj instanceof Class) {
            Class<?> cl2 = (Class) obj;
            return cl2.getName();
        }
        return String.valueOf(obj);
    }

    public IllegalAccessException makeAccessException(String message, Object from) {
        Module m10;
        Class<?> plc;
        String message2 = message + ": " + ((Object) this);
        if (from != null) {
            if (from == MethodHandles.publicLookup()) {
                message2 = message2 + ", from public Lookup";
            } else {
                if (from instanceof MethodHandles.Lookup) {
                    MethodHandles.Lookup lookup = (MethodHandles.Lookup) from;
                    from = lookup.lookupClass();
                    m10 = lookup.lookupClass().getModule();
                    plc = lookup.previousLookupClass();
                } else {
                    m10 = ((Class) from).getModule();
                    plc = null;
                }
                message2 = message2 + ", from " + from + " (" + ((Object) m10) + ")";
                if (plc != null) {
                    message2 = message2 + ", previous lookup " + plc.getName() + " (" + ((Object) plc.getModule()) + ")";
                }
            }
        }
        return new IllegalAccessException(message2);
    }

    private String message() {
        if (isResolved()) {
            return "no access";
        }
        if (isConstructor()) {
            return "no such constructor";
        }
        if (isMethod()) {
            return "no such method";
        }
        return "no such field";
    }

    public ReflectiveOperationException makeAccessException() {
        ReflectiveOperationException ex;
        String message = message() + ": " + ((Object) this);
        if (isResolved() || (!(this.resolution instanceof NoSuchMethodError) && !(this.resolution instanceof NoSuchFieldError))) {
            ex = new IllegalAccessException(message);
        } else if (isConstructor()) {
            ex = new NoSuchMethodException(message);
        } else if (isMethod()) {
            ex = new NoSuchMethodException(message);
        } else {
            ex = new NoSuchFieldException(message);
        }
        Object obj = this.resolution;
        if (obj instanceof Throwable) {
            Throwable res = (Throwable) obj;
            ex.initCause(res);
        }
        return ex;
    }

    public static Factory getFactory() {
        return Factory.INSTANCE;
    }

    public static class Factory {
        static final Factory INSTANCE;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !MemberName.class.desiredAssertionStatus();
            INSTANCE = new Factory();
        }

        private Factory() {
        }

        private MemberName resolve(byte refKind, MemberName ref, Class<?> lookupClass, int allowedModes, boolean speculativeResolve) {
            MemberName m10 = ref.m1527clone();
            if (!$assertionsDisabled && refKind != m10.getReferenceKind()) {
                throw new AssertionError();
            }
            try {
                m10 = MethodHandleNatives.resolve(m10, lookupClass, allowedModes, speculativeResolve);
                if (m10 == null && speculativeResolve) {
                    return null;
                }
                m10.ensureTypeVisible(m10.getDeclaringClass());
                m10.resolution = null;
                if (!$assertionsDisabled && !m10.referenceKindIsConsistent()) {
                    throw new AssertionError();
                }
                m10.initResolved(true);
                if ($assertionsDisabled || m10.vminfoIsConsistent()) {
                    return m10;
                }
                throw new AssertionError();
            } catch (ClassNotFoundException | LinkageError ex) {
                if (!$assertionsDisabled && m10.isResolved()) {
                    throw new AssertionError();
                }
                m10.resolution = ex;
                return m10;
            }
        }

        public <NoSuchMemberException extends ReflectiveOperationException> MemberName resolveOrFail(byte refKind, MemberName m10, Class<?> lookupClass, int allowedModes, Class<NoSuchMemberException> nsmClass) throws IllegalAccessException, ReflectiveOperationException {
            if (!$assertionsDisabled && lookupClass == null && allowedModes != -1) {
                throw new AssertionError();
            }
            MemberName result = resolve(refKind, m10, lookupClass, allowedModes, false);
            if (result.isResolved()) {
                return result;
            }
            ReflectiveOperationException ex = result.makeAccessException();
            if (!(ex instanceof IllegalAccessException)) {
                throw nsmClass.cast(ex);
            }
            IllegalAccessException iae = (IllegalAccessException) ex;
            throw iae;
        }

        public MemberName resolveOrNull(byte refKind, MemberName m10, Class<?> lookupClass, int allowedModes) {
            if (!$assertionsDisabled && lookupClass == null && allowedModes != -1) {
                throw new AssertionError();
            }
            MemberName result = resolve(refKind, m10, lookupClass, allowedModes, true);
            if (result != null && result.isResolved()) {
                return result;
            }
            return null;
        }
    }
}
