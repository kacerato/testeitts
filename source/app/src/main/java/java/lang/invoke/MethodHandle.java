package java.lang.invoke;

import ei.C13155a;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.constant.ClassDesc;
import java.lang.constant.Constable;
import java.lang.constant.DirectMethodHandleDesc;
import java.lang.constant.MethodHandleDesc;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.MethodHandleImpl;
import java.lang.invoke.MethodHandles;
import java.lang.ref.SoftReference;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
import jdk.internal.loader.ClassLoaders;
import jdk.internal.vm.annotation.DontInline;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/invoke/MethodHandle.class
 */
public abstract class MethodHandle implements Constable {
    private final MethodType type;
    final LambdaForm form;
    private MethodHandle asTypeCache;
    private SoftReference<MethodHandle> asTypeSoftCache;
    private byte customizationCount;
    private volatile boolean updateInProgress;
    private static final long FORM_OFFSET;
    private static final long UPDATE_OFFSET;
    static final boolean $assertionsDisabled;

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    @interface PolymorphicSignature {
    }

    @PolymorphicSignature
    @IntrinsicCandidate
    public final native Object invokeExact(Object... objArr) throws Throwable;

    @PolymorphicSignature
    @IntrinsicCandidate
    public final native Object invoke(Object... objArr) throws Throwable;

    @PolymorphicSignature
    @IntrinsicCandidate
    final native Object invokeBasic(Object... objArr) throws Throwable;

    @PolymorphicSignature
    @IntrinsicCandidate
    static native Object linkToVirtual(Object... objArr) throws Throwable;

    @PolymorphicSignature
    @IntrinsicCandidate
    static native Object linkToStatic(Object... objArr) throws Throwable;

    @PolymorphicSignature
    @IntrinsicCandidate
    static native Object linkToSpecial(Object... objArr) throws Throwable;

    @PolymorphicSignature
    @IntrinsicCandidate
    static native Object linkToInterface(Object... objArr) throws Throwable;

    @PolymorphicSignature
    @IntrinsicCandidate
    static native Object linkToNative(Object... objArr) throws Throwable;

    abstract MethodHandle copyWith(MethodType methodType, LambdaForm lambdaForm);

    public abstract BoundMethodHandle rebind();

    static {
        $assertionsDisabled = !MethodHandle.class.desiredAssertionStatus();
        FORM_OFFSET = MethodHandleStatics.UNSAFE.objectFieldOffset(MethodHandle.class, "form");
        UPDATE_OFFSET = MethodHandleStatics.UNSAFE.objectFieldOffset(MethodHandle.class, "updateInProgress");
    }

    public MethodType type() {
        return this.type;
    }

    public MethodHandle(MethodType type, LambdaForm form) {
        this.type = (MethodType) Objects.requireNonNull(type);
        this.form = ((LambdaForm) Objects.requireNonNull(form)).uncustomize();
        this.form.prepare();
    }

    public Object invokeWithArguments(Object... arguments) throws Throwable {
        MethodType invocationType = MethodType.genericMethodType(arguments == null ? 0 : arguments.length);
        return (Object) invocationType.invokers().spreadInvoker(0).invokeExact(asType(invocationType), arguments);
    }

    public Object invokeWithArguments(List<?> arguments) throws Throwable {
        return invokeWithArguments(arguments.toArray());
    }

    @ForceInline
    public final MethodHandle asType(MethodType newType) {
        if (newType == this.type) {
            return this;
        }
        MethodHandle at = asTypeCached(newType);
        if (at != null) {
            return at;
        }
        return setAsTypeCache(newType);
    }

    private MethodHandle asTypeCached(MethodType newType) {
        MethodHandle atc;
        MethodHandle atc2 = this.asTypeCache;
        if (atc2 != null && newType == atc2.type) {
            return atc2;
        }
        SoftReference<MethodHandle> softCache = this.asTypeSoftCache;
        if (softCache != null && (atc = softCache.get()) != null && newType == atc.type) {
            return atc;
        }
        return null;
    }

    @DontInline
    private MethodHandle setAsTypeCache(MethodType newType) {
        MethodHandle at = asTypeUncached(newType);
        if (isSafeToCache(at.type)) {
            this.asTypeCache = at;
        } else {
            this.asTypeSoftCache = new SoftReference<>(at);
        }
        return at;
    }

    MethodHandle asTypeUncached(MethodType newType) {
        if (!this.type.isConvertibleTo(newType)) {
            throw new WrongMethodTypeException("cannot convert " + ((Object) this) + " to " + ((Object) newType));
        }
        return MethodHandleImpl.makePairwiseConvert(this, newType, true);
    }

    private boolean isSafeToCache(MethodType newType) {
        ClassLoader loader = getApproximateCommonClassLoader(this.type);
        return keepsAlive(newType, loader);
    }

    private static ClassLoader getApproximateCommonClassLoader(MethodType mt) {
        ClassLoader loader = mt.rtype().getClassLoader();
        for (Class<?> ptype : mt.ptypes()) {
            ClassLoader ploader = ptype.getClassLoader();
            if (isAncestorLoaderOf(loader, ploader)) {
                loader = ploader;
            }
        }
        return loader;
    }

    private static boolean keepsAlive(MethodType mt, ClassLoader loader) {
        for (Class<?> ptype : mt.ptypes()) {
            if (!keepsAlive(ptype, loader)) {
                return false;
            }
        }
        return keepsAlive(mt.rtype(), loader);
    }

    private static boolean keepsAlive(Class<?> cls, ClassLoader loader) {
        ClassLoader defLoader = cls.getClassLoader();
        if (isBuiltinLoader(defLoader)) {
            return true;
        }
        return isAncestorLoaderOf(defLoader, loader);
    }

    private static boolean isAncestorLoaderOf(ClassLoader ancestor, ClassLoader descendant) {
        if (isBuiltinLoader(ancestor)) {
            return true;
        }
        ClassLoader classLoader = descendant;
        while (true) {
            ClassLoader loader = classLoader;
            if (!isBuiltinLoader(loader)) {
                if (loader != ancestor) {
                    classLoader = loader.getParent();
                } else {
                    return true;
                }
            } else {
                return false;
            }
        }
    }

    private static boolean isBuiltinLoader(ClassLoader loader) {
        return loader == null || loader == ClassLoaders.platformClassLoader() || loader == ClassLoaders.appClassLoader();
    }

    public MethodHandle asSpreader(Class<?> arrayType, int arrayLength) {
        return asSpreader(type().parameterCount() - arrayLength, arrayType, arrayLength);
    }

    public MethodHandle asSpreader(int spreadArgPos, Class<?> arrayType, int arrayLength) {
        MethodType postSpreadType = asSpreaderChecks(arrayType, spreadArgPos, arrayLength);
        MethodHandle afterSpread = asType(postSpreadType);
        BoundMethodHandle mh2 = afterSpread.rebind();
        LambdaForm lform = mh2.editor().spreadArgumentsForm(1 + spreadArgPos, arrayType, arrayLength);
        MethodType preSpreadType = postSpreadType.replaceParameterTypes(spreadArgPos, spreadArgPos + arrayLength, arrayType);
        return mh2.copyWith(preSpreadType, lform);
    }

    private MethodType asSpreaderChecks(Class<?> arrayType, int pos, int arrayLength) {
        spreadArrayChecks(arrayType, arrayLength);
        int nargs = type().parameterCount();
        if (nargs < arrayLength || arrayLength < 0) {
            throw MethodHandleStatics.newIllegalArgumentException("bad spread array length");
        }
        if (pos < 0 || pos + arrayLength > nargs) {
            throw MethodHandleStatics.newIllegalArgumentException("bad spread position");
        }
        Class<?> arrayElement = arrayType.getComponentType();
        MethodType mtype = type();
        boolean match = true;
        boolean fail = false;
        int i10 = pos;
        while (true) {
            if (i10 >= pos + arrayLength) {
                break;
            }
            Class<?> ptype = mtype.parameterType(i10);
            if (ptype != arrayElement) {
                match = false;
                if (!MethodType.canConvert(arrayElement, ptype)) {
                    fail = true;
                    break;
                }
            }
            i10++;
        }
        if (match) {
            return mtype;
        }
        MethodType needType = mtype.asSpreaderType(arrayType, pos, arrayLength);
        if (!fail) {
            return needType;
        }
        asType(needType);
        throw MethodHandleStatics.newInternalError("should not return");
    }

    private void spreadArrayChecks(Class<?> arrayType, int arrayLength) {
        Class<?> arrayElement = arrayType.getComponentType();
        if (arrayElement == null) {
            throw MethodHandleStatics.newIllegalArgumentException("not an array type", arrayType);
        }
        if ((arrayLength & 127) != arrayLength) {
            if ((arrayLength & 255) != arrayLength) {
                throw MethodHandleStatics.newIllegalArgumentException("array length is not legal", Integer.valueOf(arrayLength));
            }
            if (!$assertionsDisabled && arrayLength < 128) {
                throw new AssertionError();
            }
            if (arrayElement == Long.TYPE || arrayElement == Double.TYPE) {
                throw MethodHandleStatics.newIllegalArgumentException("array length is not legal for long[] or double[]", Integer.valueOf(arrayLength));
            }
        }
    }

    public MethodHandle withVarargs(boolean makeVarargs) {
        if (!$assertionsDisabled && isVarargsCollector()) {
            throw new AssertionError();
        }
        if (makeVarargs) {
            return asVarargsCollector(type().lastParameterType());
        }
        return this;
    }

    public MethodHandle asCollector(Class<?> arrayType, int arrayLength) {
        return asCollector(type().parameterCount() - 1, arrayType, arrayLength);
    }

    public MethodHandle asCollector(int collectArgPos, Class<?> arrayType, int arrayLength) {
        asCollectorChecks(arrayType, collectArgPos, arrayLength);
        BoundMethodHandle mh2 = rebind();
        MethodType resultType = type().asCollectorType(arrayType, collectArgPos, arrayLength);
        MethodHandle collector = MethodHandleImpl.varargsArray(arrayType, arrayLength);
        LambdaForm lform = mh2.editor().collectArgumentsForm(1 + collectArgPos, collector.type().basicType());
        return mh2.copyWithExtendL(resultType, lform, collector);
    }

    boolean asCollectorChecks(Class<?> arrayType, int pos, int arrayLength) {
        spreadArrayChecks(arrayType, arrayLength);
        int nargs = type().parameterCount();
        if (pos < 0 || pos >= nargs) {
            throw MethodHandleStatics.newIllegalArgumentException("bad collect position");
        }
        if (nargs != 0) {
            Class<?> param = type().parameterType(pos);
            if (param == arrayType) {
                return true;
            }
            if (param.isAssignableFrom(arrayType)) {
                return false;
            }
        }
        throw MethodHandleStatics.newIllegalArgumentException("array type not assignable to argument", this, arrayType);
    }

    public MethodHandle asVarargsCollector(Class<?> arrayType) {
        Objects.requireNonNull(arrayType);
        boolean lastMatch = asCollectorChecks(arrayType, type().parameterCount() - 1, 0);
        if (isVarargsCollector() && lastMatch) {
            return this;
        }
        return MethodHandleImpl.makeVarargsCollector(this, arrayType);
    }

    public boolean isVarargsCollector() {
        return false;
    }

    public MethodHandle asFixedArity() {
        if ($assertionsDisabled || !isVarargsCollector()) {
            return this;
        }
        throw new AssertionError();
    }

    public MethodHandle bindTo(Object x10) {
        return bindArgumentL(0, this.type.leadingReferenceParameter().cast(x10));
    }

    @Override
    public Optional<MethodHandleDesc> describeConstable() {
        try {
            MethodHandleInfo info = MethodHandles.Lookup.IMPL_LOOKUP.revealDirect(this);
            boolean isInterface = info.getDeclaringClass().isInterface();
            ClassDesc owner = (ClassDesc) info.getDeclaringClass().describeConstable().orElseThrow();
            MethodTypeDesc type = (MethodTypeDesc) info.getMethodType().describeConstable().orElseThrow();
            String name = info.getName();
            switch (info.getReferenceKind()) {
                case 1:
                    return Optional.of(MethodHandleDesc.ofField(DirectMethodHandleDesc.Kind.GETTER, owner, name, type.returnType()));
                case 2:
                    return Optional.of(MethodHandleDesc.ofField(DirectMethodHandleDesc.Kind.STATIC_GETTER, owner, name, type.returnType()));
                case 3:
                    return Optional.of(MethodHandleDesc.ofField(DirectMethodHandleDesc.Kind.SETTER, owner, name, type.parameterType(0)));
                case 4:
                    return Optional.of(MethodHandleDesc.ofField(DirectMethodHandleDesc.Kind.STATIC_SETTER, owner, name, type.parameterType(0)));
                case 5:
                    return Optional.of(MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.VIRTUAL, owner, name, type));
                case 6:
                    if (isInterface) {
                        return Optional.of(MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.INTERFACE_STATIC, owner, name, type));
                    }
                    return Optional.of(MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.STATIC, owner, name, type));
                case 7:
                    if (isInterface) {
                        return Optional.of(MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.INTERFACE_SPECIAL, owner, name, type));
                    }
                    return Optional.of(MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.SPECIAL, owner, name, type));
                case 8:
                    return Optional.of(MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.CONSTRUCTOR, owner, name, type));
                case 9:
                    return Optional.of(MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.INTERFACE_VIRTUAL, owner, name, type));
                default:
                    return Optional.empty();
            }
        } catch (Exception e10) {
            return Optional.empty();
        }
    }

    public String toString() {
        return MethodHandleStatics.DEBUG_METHOD_HANDLE_NAMES ? "MethodHandle" + debugString() : standardString();
    }

    String standardString() {
        return "MethodHandle" + ((Object) this.type);
    }

    public String debugString(int indentLevel) {
        return ((Object) this.type) + " : " + internalForm().debugString(indentLevel) + internalProperties(indentLevel);
    }

    public String debugString() {
        return debugString(-1);
    }

    public BoundMethodHandle bindArgumentL(int pos, Object value) {
        return rebind().bindArgumentL(pos, value);
    }

    public MethodHandle setVarargs(MemberName member) throws IllegalAccessException {
        if (!member.isVarargs()) {
            return this;
        }
        try {
            return withVarargs(true);
        } catch (IllegalArgumentException e10) {
            throw new IllegalAccessException("cannot make variable arity: " + ((Object) member) + " does not have a trailing array parameter");
        }
    }

    public MethodHandle viewAsType(MethodType newType, boolean strict) {
        if ($assertionsDisabled || viewAsTypeChecks(newType, strict)) {
            return copyWith(newType, this.form);
        }
        throw new AssertionError();
    }

    public boolean viewAsTypeChecks(MethodType newType, boolean strict) {
        if (strict) {
            if (!$assertionsDisabled && !type().isViewableAs(newType, true)) {
                throw new AssertionError(Arrays.asList(this, newType));
            }
            return true;
        }
        if (!$assertionsDisabled && !type().basicType().isViewableAs(newType.basicType(), true)) {
            throw new AssertionError(Arrays.asList(this, newType));
        }
        return true;
    }

    public LambdaForm internalForm() {
        return this.form;
    }

    public MemberName internalMemberName() {
        return null;
    }

    public Class<?> internalCallerClass() {
        return null;
    }

    public MethodHandleImpl.Intrinsic intrinsicName() {
        return MethodHandleImpl.Intrinsic.NONE;
    }

    public Object intrinsicData() {
        return null;
    }

    public MethodHandle withInternalMemberName(MemberName member, boolean isInvokeSpecial) {
        if (member != null) {
            return MethodHandleImpl.makeWrappedMember(this, member, isInvokeSpecial);
        }
        if (internalMemberName() == null) {
            return this;
        }
        MethodHandle result = rebind();
        if ($assertionsDisabled || result.internalMemberName() == null) {
            return result;
        }
        throw new AssertionError();
    }

    public boolean isInvokeSpecial() {
        return false;
    }

    public boolean isCrackable() {
        return false;
    }

    Object internalValues(int indentLevel) {
        return null;
    }

    public static String debugPrefix(int indentLevel) {
        if (indentLevel <= 0) {
            return "";
        }
        return C13155a.f85806a.repeat(indentLevel);
    }

    Object internalProperties() {
        return internalProperties(-1);
    }

    Object internalProperties(int indentLevel) {
        return "";
    }

    public void maybeCustomize() {
        if (this.form.customized == null) {
            byte count = this.customizationCount;
            if (count >= MethodHandleStatics.CUSTOMIZE_THRESHOLD) {
                customize();
            } else {
                this.customizationCount = (byte) (count + 1);
            }
        }
    }

    void customize() {
        updateForm(new Function<LambdaForm, LambdaForm>(this) {
            final MethodHandle this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            @Override
            public LambdaForm apply(LambdaForm oldForm) {
                return oldForm.customize(this.this$0);
            }
        });
    }

    public void updateForm(Function<LambdaForm, LambdaForm> updater) {
        if (MethodHandleStatics.UNSAFE.compareAndSetBoolean(this, UPDATE_OFFSET, false, true)) {
            try {
                LambdaForm oldForm = this.form;
                LambdaForm newForm = updater.apply(oldForm);
                if (oldForm != newForm) {
                    if (!$assertionsDisabled && newForm.customized != null && newForm.customized != this) {
                        throw new AssertionError();
                    }
                    newForm.prepare();
                    MethodHandleStatics.UNSAFE.putReferenceRelease(this, FORM_OFFSET, newForm);
                }
            } finally {
                this.updateInProgress = false;
            }
        }
    }
}
