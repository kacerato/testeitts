package java.lang.invoke;

import java.lang.invoke.BoundMethodHandle;
import java.lang.invoke.LambdaForm;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.VarHandle;
import java.util.Arrays;
import java.util.Objects;
import jdk.internal.invoke.MhUtil;
import jdk.internal.vm.annotation.DontInline;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Hidden;
import jdk.internal.vm.annotation.Stable;

public class Invokers {
    private final MethodType targetType;

    @Stable
    private final MethodHandle[] invokers = new MethodHandle[INV_LIMIT];
    static final int INV_EXACT = 0;
    static final int INV_GENERIC = 1;
    static final int INV_BASIC = 2;
    static final int VH_INV_EXACT = 3;
    static final int VH_INV_GENERIC;
    static final int INV_LIMIT;
    private static final int MH_LINKER_ARG_APPENDED = 1;
    private static final byte NF_checkExactType = 0;
    private static final byte NF_checkGenericType = 1;
    private static final byte NF_getCallSiteTarget = 2;
    private static final byte NF_checkCustomized = 3;
    private static final byte NF_checkVarHandleGenericType = 4;
    private static final byte NF_checkVarHandleExactType = 5;
    private static final byte NF_directVarHandleTarget = 6;
    private static final byte NF_LIMIT = 7;

    @Stable
    private static final LambdaForm.NamedFunction[] NFS;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !Invokers.class.desiredAssertionStatus();
        VH_INV_GENERIC = 3 + VarHandle.AccessMode.COUNT;
        INV_LIMIT = VH_INV_GENERIC + VarHandle.AccessMode.COUNT;
        NFS = new LambdaForm.NamedFunction[7];
        MethodHandleStatics.UNSAFE.ensureClassInitialized(Holder.class);
    }

    public Invokers(MethodType targetType) {
        this.targetType = targetType;
    }

    public MethodHandle exactInvoker() {
        MethodHandle invoker = cachedInvoker(0);
        return invoker != null ? invoker : setCachedInvoker(0, makeExactOrGeneralInvoker(true));
    }

    public MethodHandle genericInvoker() {
        MethodHandle invoker = cachedInvoker(1);
        return invoker != null ? invoker : setCachedInvoker(1, makeExactOrGeneralInvoker(false));
    }

    public MethodHandle basicInvoker() {
        MethodHandle invoker = cachedInvoker(2);
        if (invoker != null) {
            return invoker;
        }
        MethodType basicType = this.targetType.basicType();
        if (basicType != this.targetType) {
            return setCachedInvoker(2, basicType.invokers().basicInvoker());
        }
        MethodHandle invoker2 = basicType.form().cachedMethodHandle(0);
        if (invoker2 == null) {
            MemberName method = invokeBasicMethod(basicType);
            MethodHandle invoker3 = DirectMethodHandle.make(method);
            if (!$assertionsDisabled && !checkInvoker(invoker3)) {
                throw new AssertionError();
            }
            invoker2 = basicType.form().setCachedMethodHandle(0, invoker3);
        }
        return setCachedInvoker(2, invoker2);
    }

    public MethodHandle varHandleMethodInvoker(VarHandle.AccessMode ak2) {
        MethodHandle invoker = cachedVHInvoker(false, ak2);
        return invoker != null ? invoker : setCachedVHInvoker(false, ak2, makeVarHandleMethodInvoker(ak2, false));
    }

    public MethodHandle varHandleMethodExactInvoker(VarHandle.AccessMode ak2) {
        MethodHandle invoker = cachedVHInvoker(true, ak2);
        return invoker != null ? invoker : setCachedVHInvoker(true, ak2, makeVarHandleMethodInvoker(ak2, true));
    }

    private MethodHandle cachedInvoker(int idx) {
        return this.invokers[idx];
    }

    private synchronized MethodHandle setCachedInvoker(int idx, MethodHandle invoker) {
        MethodHandle prev = this.invokers[idx];
        if (prev != null) {
            return prev;
        }
        this.invokers[idx] = invoker;
        return invoker;
    }

    private MethodHandle cachedVHInvoker(boolean isExact, VarHandle.AccessMode ak2) {
        int baseIndex = isExact ? 3 : VH_INV_GENERIC;
        return cachedInvoker(baseIndex + ak2.ordinal());
    }

    private MethodHandle setCachedVHInvoker(boolean isExact, VarHandle.AccessMode ak2, MethodHandle invoker) {
        int baseIndex = isExact ? 3 : VH_INV_GENERIC;
        return setCachedInvoker(baseIndex + ak2.ordinal(), invoker);
    }

    private MethodHandle makeExactOrGeneralInvoker(boolean isExact) {
        MethodType mtype = this.targetType;
        MethodType invokerType = mtype.invokerType();
        int which = isExact ? 11 : 13;
        LambdaForm lform = invokeHandleForm(mtype, false, which);
        MethodHandle invoker = BoundMethodHandle.bindSingleL(invokerType, lform, mtype);
        String whichName = isExact ? "invokeExact" : "invoke";
        MethodHandle invoker2 = invoker.withInternalMemberName(MemberName.makeMethodHandleInvoke(whichName, mtype), false);
        if (!$assertionsDisabled && !checkInvoker(invoker2)) {
            throw new AssertionError();
        }
        maybeCompileToBytecode(invoker2);
        return invoker2;
    }

    private MethodHandle makeVarHandleMethodInvoker(VarHandle.AccessMode ak2, boolean isExact) {
        MethodType mtype = this.targetType;
        MethodType invokerType = mtype.insertParameterTypes(0, VarHandle.class);
        LambdaForm lform = varHandleMethodInvokerHandleForm(mtype, isExact);
        VarHandle.AccessDescriptor ad2 = new VarHandle.AccessDescriptor(mtype, ak2.at.ordinal(), ak2.ordinal());
        MethodHandle invoker = BoundMethodHandle.bindSingleL(invokerType, lform, ad2).withInternalMemberName(MemberName.makeVarHandleMethodInvoke(ak2.methodName(), mtype), false);
        if (!$assertionsDisabled && !checkVarHandleInvoker(invoker)) {
            throw new AssertionError();
        }
        maybeCompileToBytecode(invoker);
        return invoker;
    }

    private void maybeCompileToBytecode(MethodHandle invoker) {
        if (this.targetType == this.targetType.erase() && this.targetType.parameterCount() < 10) {
            invoker.form.compileToBytecode();
        }
    }

    public static MemberName invokeBasicMethod(MethodType basicType) {
        if (!$assertionsDisabled && basicType != basicType.basicType()) {
            throw new AssertionError();
        }
        try {
            return MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 5, MethodHandle.class, "invokeBasic", basicType);
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError("JVM cannot find invoker for " + ((Object) basicType), ex);
        }
    }

    private boolean checkInvoker(MethodHandle invoker) {
        if (!$assertionsDisabled && !this.targetType.invokerType().equals((Object) invoker.type())) {
            throw new AssertionError(Arrays.asList(this.targetType, this.targetType.invokerType(), invoker));
        }
        if (!$assertionsDisabled && invoker.internalMemberName() != null && !invoker.internalMemberName().getMethodType().equals((Object) this.targetType)) {
            throw new AssertionError();
        }
        if ($assertionsDisabled || !invoker.isVarargsCollector()) {
            return true;
        }
        throw new AssertionError();
    }

    private boolean checkVarHandleInvoker(MethodHandle invoker) {
        MethodType invokerType = this.targetType.insertParameterTypes(0, VarHandle.class);
        if (!$assertionsDisabled && !invokerType.equals((Object) invoker.type())) {
            throw new AssertionError(Arrays.asList(this.targetType, invokerType, invoker));
        }
        if (!$assertionsDisabled && invoker.internalMemberName() != null && !invoker.internalMemberName().getMethodType().equals((Object) this.targetType)) {
            throw new AssertionError();
        }
        if ($assertionsDisabled || !invoker.isVarargsCollector()) {
            return true;
        }
        throw new AssertionError();
    }

    public MethodHandle spreadInvoker(int leadingArgCount) {
        int spreadArgCount = this.targetType.parameterCount() - leadingArgCount;
        MethodType postSpreadType = this.targetType;
        Class<?> argArrayType = impliedRestargType(postSpreadType, leadingArgCount);
        if (postSpreadType.parameterSlotCount() <= 253) {
            return genericInvoker().asSpreader(argArrayType, spreadArgCount);
        }
        MethodType preSpreadType = postSpreadType.replaceParameterTypes(leadingArgCount, postSpreadType.parameterCount(), argArrayType);
        MethodHandle arrayInvoker = MethodHandles.invoker(preSpreadType);
        MethodHandle makeSpreader = MethodHandles.insertArguments(Lazy.MH_asSpreader, 1, argArrayType, Integer.valueOf(spreadArgCount));
        return MethodHandles.filterArgument(arrayInvoker, 0, makeSpreader);
    }

    private static Class<?> impliedRestargType(MethodType restargType, int fromPos) {
        int maxPos;
        if (restargType.isGeneric() || fromPos >= (maxPos = restargType.parameterCount())) {
            return Object[].class;
        }
        Class<?> argType = restargType.parameterType(fromPos);
        for (int i10 = fromPos + 1; i10 < maxPos; i10++) {
            if (argType != restargType.parameterType(i10)) {
                throw MethodHandleStatics.newIllegalArgumentException("need homogeneous rest arguments", restargType);
            }
        }
        return argType == Object.class ? Object[].class : argType.arrayType();
    }

    public String toString() {
        return "Invokers" + ((Object) this.targetType);
    }

    public static MemberName methodHandleInvokeLinkerMethod(String name, MethodType mtype, Object[] appendixResult) {
        int i10;
        LambdaForm lform;
        boolean z10 = -1;
        switch (name.hashCode()) {
            case -1183693704:
                if (name.equals("invoke")) {
                    z10 = true;
                    break;
                }
                break;
            case 941760871:
                if (name.equals("invokeExact")) {
                    z10 = false;
                    break;
                }
                break;
        }
        switch (z10) {
            case false:
                i10 = 10;
                break;
            case true:
                i10 = 12;
                break;
            default:
                throw new InternalError("not invoker: " + name);
        }
        int which = i10;
        if (mtype.parameterSlotCount() <= 253) {
            lform = invokeHandleForm(mtype, false, which);
            appendixResult[0] = mtype;
        } else {
            lform = invokeHandleForm(mtype, true, which);
        }
        return lform.vmentry;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.lang.invoke.LambdaForm$Name[], java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.invoke.LambdaForm$Name] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.lang.Object] */
    public static LambdaForm invokeHandleForm(MethodType methodType, boolean z10, int i10) {
        boolean z11;
        boolean z12;
        boolean z13;
        LambdaForm.Kind kind;
        int i11;
        int i12;
        LambdaForm create;
        LambdaForm cachedLambdaForm;
        if (!z10) {
            methodType = methodType.basicType();
            z11 = true;
        } else {
            z11 = false;
        }
        switch (i10) {
            case 10:
                z12 = true;
                z13 = false;
                kind = LambdaForm.Kind.EXACT_LINKER;
                break;
            case 11:
                z12 = false;
                z13 = false;
                kind = LambdaForm.Kind.EXACT_INVOKER;
                break;
            case 12:
                z12 = true;
                z13 = true;
                kind = LambdaForm.Kind.GENERIC_LINKER;
                break;
            case 13:
                z12 = false;
                z13 = true;
                kind = LambdaForm.Kind.GENERIC_INVOKER;
                break;
            default:
                throw new InternalError();
        }
        if (z11 && (cachedLambdaForm = methodType.form().cachedLambdaForm(i10)) != null) {
            return cachedLambdaForm;
        }
        int i13 = 0 + (z12 ? 0 : 1);
        int parameterCount = i13 + 1 + methodType.parameterCount();
        int i14 = parameterCount + ((!z12 || z10) ? 0 : 1);
        int i15 = parameterCount;
        if (z10) {
            i11 = -1;
        } else {
            i11 = i15;
            i15++;
        }
        int i16 = i11;
        int i17 = i15;
        int i18 = i15 + 1;
        if (MethodHandleStatics.CUSTOMIZE_THRESHOLD >= 0) {
            i12 = i18;
            i18++;
        } else {
            i12 = -1;
        }
        int i19 = i12;
        int i20 = i18;
        int i21 = i18 + 1;
        MethodType methodType2 = methodType;
        if (z12) {
            if (!z10) {
                methodType2 = methodType2.appendParameterTypes(MemberName.class);
            }
        } else {
            methodType2 = methodType2.invokerType();
        }
        ?? invokeArguments = LambdaForm.invokeArguments(i21 - i14, methodType2);
        if (!$assertionsDisabled && invokeArguments.length != i21) {
            throw new AssertionError(Arrays.asList(methodType, Boolean.valueOf(z10), Integer.valueOf(i10), Integer.valueOf(i21), Integer.valueOf(invokeArguments.length)));
        }
        if (i16 >= i14) {
            if (!$assertionsDisabled && invokeArguments[i16] != 0) {
                throw new AssertionError();
            }
            BoundMethodHandle.SpeciesData speciesData_L = BoundMethodHandle.speciesData_L();
            invokeArguments[0] = invokeArguments[0].withConstraint(speciesData_L);
            invokeArguments[i16] = new LambdaForm.Name(speciesData_L.getterFunction(0), (Object) invokeArguments[0]);
        }
        MethodType basicType = methodType.basicType();
        ?? copyOfRange = Arrays.copyOfRange(invokeArguments, i13, parameterCount, Object[].class);
        MethodType methodType3 = z10 ? methodType : invokeArguments[i16];
        if (!z13) {
            invokeArguments[i17] = new LambdaForm.Name(getFunction((byte) 0), invokeArguments[i13], methodType3);
        } else {
            invokeArguments[i17] = new LambdaForm.Name(getFunction((byte) 1), invokeArguments[i13], methodType3);
            copyOfRange[0] = invokeArguments[i17];
        }
        if (i19 != -1) {
            invokeArguments[i19] = new LambdaForm.Name(getFunction((byte) 3), (Object) copyOfRange[0]);
        }
        invokeArguments[i20] = new LambdaForm.Name(basicType, (Object[]) copyOfRange);
        if (z10) {
            create = LambdaForm.create(i14, invokeArguments);
        } else {
            create = LambdaForm.create(i14, (LambdaForm.Name[]) invokeArguments, kind);
        }
        if (z12) {
            create.compileToBytecode();
        }
        if (z11) {
            create = methodType.form().setCachedLambdaForm(i10, create);
        }
        return create;
    }

    public static MemberName varHandleInvokeLinkerMethod(MethodType mtype) {
        if (mtype.parameterSlotCount() > 253) {
            throw MethodHandleStatics.newInternalError("Unsupported parameter slot count " + mtype.parameterSlotCount());
        }
        LambdaForm lform = varHandleMethodGenericLinkerHandleForm(mtype);
        return lform.vmentry;
    }

    private static LambdaForm varHandleMethodGenericLinkerHandleForm(MethodType mtype) {
        int i10;
        MethodType mtype2 = mtype.basicType();
        LambdaForm lform = mtype2.form().cachedLambdaForm(24);
        if (lform != null) {
            return lform;
        }
        int ARG_LIMIT = 1 + mtype2.parameterCount();
        int nameCursor = ARG_LIMIT + 1;
        int nameCursor2 = nameCursor + 1;
        int nameCursor3 = nameCursor2 + 1;
        if (MethodHandleStatics.CUSTOMIZE_THRESHOLD >= 0) {
            i10 = nameCursor3;
            nameCursor3++;
        } else {
            i10 = -1;
        }
        int CHECK_CUSTOM = i10;
        int LINKER_CALL = nameCursor3;
        int i11 = nameCursor3 + 1;
        LambdaForm.Name[] names = new LambdaForm.Name[LINKER_CALL + 1];
        names[0] = LambdaForm.argument(0, LambdaForm.BasicType.L_TYPE);
        for (int i12 = 0; i12 < mtype2.parameterCount(); i12++) {
            names[1 + i12] = LambdaForm.argument(1 + i12, LambdaForm.BasicType.basicType(mtype2.parameterType(i12)));
        }
        names[ARG_LIMIT] = new LambdaForm.Name(ARG_LIMIT, LambdaForm.BasicType.L_TYPE);
        names[nameCursor] = new LambdaForm.Name(getFunction((byte) 6), names[0]);
        names[nameCursor2] = new LambdaForm.Name(getFunction((byte) 4), names[0], names[ARG_LIMIT]);
        Object[] outArgs = new Object[ARG_LIMIT + 1];
        outArgs[0] = names[nameCursor2];
        outArgs[1] = names[nameCursor];
        for (int i13 = 1; i13 < ARG_LIMIT; i13++) {
            outArgs[i13 + 1] = names[i13];
        }
        if (CHECK_CUSTOM != -1) {
            names[CHECK_CUSTOM] = new LambdaForm.Name(getFunction((byte) 3), outArgs[0]);
        }
        MethodType outCallType = mtype2.insertParameterTypes(0, VarHandle.class).basicType();
        names[LINKER_CALL] = new LambdaForm.Name(outCallType, outArgs);
        LambdaForm lform2 = LambdaForm.create(ARG_LIMIT + 1, names, LambdaForm.Kind.VARHANDLE_LINKER);
        if (LambdaForm.debugNames()) {
            String name = "VarHandle_invoke_MT_" + LambdaForm.shortenSignature(LambdaForm.basicTypeSignature(mtype2));
            LambdaForm.associateWithDebugName(lform2, name);
        }
        lform2.compileToBytecode();
        return mtype2.form().setCachedLambdaForm(24, lform2);
    }

    private static LambdaForm varHandleMethodInvokerHandleForm(MethodType mtype, boolean isExact) {
        MethodType mtype2 = mtype.basicType();
        int which = isExact ? 22 : 23;
        LambdaForm lform = mtype2.form().cachedLambdaForm(which);
        if (lform != null) {
            return lform;
        }
        int ARG_LIMIT = 2 + mtype2.parameterCount();
        int nameCursor = ARG_LIMIT + 1;
        int nameCursor2 = nameCursor + 1;
        int nameCursor3 = nameCursor2 + 1;
        int i10 = nameCursor3 + 1;
        LambdaForm.Name[] names = new LambdaForm.Name[nameCursor3 + 1];
        names[0] = LambdaForm.argument(0, LambdaForm.BasicType.L_TYPE);
        names[1] = LambdaForm.argument(1, LambdaForm.BasicType.L_TYPE);
        for (int i11 = 0; i11 < mtype2.parameterCount(); i11++) {
            names[2 + i11] = LambdaForm.argument(2 + i11, LambdaForm.BasicType.basicType(mtype2.parameterType(i11)));
        }
        BoundMethodHandle.SpeciesData speciesData = BoundMethodHandle.speciesData_L();
        names[0] = names[0].withConstraint(speciesData);
        LambdaForm.NamedFunction getter = speciesData.getterFunction(0);
        names[ARG_LIMIT] = new LambdaForm.Name(getter, names[0]);
        names[nameCursor] = new LambdaForm.Name(getFunction((byte) 6), names[1]);
        if (isExact) {
            names[nameCursor2] = new LambdaForm.Name(getFunction((byte) 5), names[1], names[ARG_LIMIT]);
        } else {
            names[nameCursor2] = new LambdaForm.Name(getFunction((byte) 4), names[1], names[ARG_LIMIT]);
        }
        Object[] outArgs = new Object[ARG_LIMIT];
        outArgs[0] = names[nameCursor2];
        outArgs[1] = names[nameCursor];
        for (int i12 = 2; i12 < ARG_LIMIT; i12++) {
            outArgs[i12] = names[i12];
        }
        MethodType outCallType = mtype2.insertParameterTypes(0, VarHandle.class).basicType();
        names[nameCursor3] = new LambdaForm.Name(outCallType, outArgs);
        LambdaForm.Kind kind = isExact ? LambdaForm.Kind.VARHANDLE_EXACT_INVOKER : LambdaForm.Kind.VARHANDLE_INVOKER;
        LambdaForm lform2 = LambdaForm.create(ARG_LIMIT, names, kind);
        if (LambdaForm.debugNames()) {
            String name = (isExact ? "VarHandle_exactInvoker_" : "VarHandle_invoker_") + LambdaForm.shortenSignature(LambdaForm.basicTypeSignature(mtype2));
            LambdaForm.associateWithDebugName(lform2, name);
        }
        lform2.prepare();
        return mtype2.form().setCachedLambdaForm(which, lform2);
    }

    @ForceInline
    @Hidden
    static MethodHandle checkVarHandleGenericType(VarHandle handle, VarHandle.AccessDescriptor ad2) {
        if (handle.hasInvokeExactBehavior() && handle.accessModeType(ad2.type) != ad2.symbolicMethodTypeExact) {
            throw newWrongMethodTypeException(handle.accessModeType(ad2.type), ad2.symbolicMethodTypeExact);
        }
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        if (mh2.type() != ad2.symbolicMethodTypeInvoker) {
            return mh2.asType(ad2.symbolicMethodTypeInvoker);
        }
        return mh2;
    }

    @ForceInline
    static MethodHandle checkVarHandleExactType(VarHandle handle, VarHandle.AccessDescriptor ad2) {
        MethodHandle mh2 = handle.getMethodHandle(ad2.mode);
        MethodType mt = mh2.type();
        if (mt != ad2.symbolicMethodTypeInvoker) {
            throw newWrongMethodTypeException(mt, ad2.symbolicMethodTypeInvoker);
        }
        return mh2;
    }

    static WrongMethodTypeException newWrongMethodTypeException(MethodType targetType, MethodType callSiteType) {
        return new WrongMethodTypeException("handle's method type " + ((Object) targetType) + " but found " + ((Object) callSiteType));
    }

    @ForceInline
    static void checkExactType(MethodHandle mh2, MethodType expected) {
        MethodType targetType = mh2.type();
        if (targetType != expected) {
            throw newWrongMethodTypeException(targetType, expected);
        }
    }

    @ForceInline
    static MethodHandle checkGenericType(MethodHandle mh2, MethodType expected) {
        return mh2.asType(expected);
    }

    @ForceInline
    static VarHandle directVarHandleTarget(VarHandle handle) {
        return handle.asDirect();
    }

    public static MemberName linkToCallSiteMethod(MethodType mtype) {
        LambdaForm lform = callSiteForm(mtype, false);
        return lform.vmentry;
    }

    public static MemberName linkToTargetMethod(MethodType mtype) {
        LambdaForm lform = callSiteForm(mtype, true);
        return lform.vmentry;
    }

    public static LambdaForm callSiteForm(MethodType mtype, boolean skipCallSite) {
        int i10;
        MethodType mtype2 = mtype.basicType();
        int which = skipCallSite ? 15 : 14;
        LambdaForm lform = mtype2.form().cachedLambdaForm(which);
        if (lform != null) {
            return lform;
        }
        int OUTARG_LIMIT = 0 + mtype2.parameterCount();
        int INARG_LIMIT = OUTARG_LIMIT + 1;
        int nameCursor = OUTARG_LIMIT + 1;
        int CSITE_ARG = skipCallSite ? -1 : OUTARG_LIMIT;
        if (skipCallSite) {
            i10 = OUTARG_LIMIT;
        } else {
            i10 = nameCursor;
            nameCursor++;
        }
        int CALL_MH = i10;
        int LINKER_CALL = nameCursor;
        int nameCursor2 = nameCursor + 1;
        LambdaForm.Name[] names = LambdaForm.arguments((nameCursor2 - INARG_LIMIT) + 1, mtype2);
        if (!$assertionsDisabled && (names.length != nameCursor2 || names[OUTARG_LIMIT] != null)) {
            throw new AssertionError();
        }
        names[OUTARG_LIMIT] = LambdaForm.argument(OUTARG_LIMIT, LambdaForm.BasicType.L_TYPE);
        if (!skipCallSite) {
            names[CALL_MH] = new LambdaForm.Name(getFunction((byte) 2), names[CSITE_ARG]);
        }
        Object[] outArgs = new Object[OUTARG_LIMIT + 1];
        System.arraycopy(names, 0, outArgs, 1, outArgs.length - 1);
        outArgs[0] = names[CALL_MH];
        names[LINKER_CALL] = new LambdaForm.Name(mtype2, outArgs);
        LambdaForm lform2 = LambdaForm.create(INARG_LIMIT, names, skipCallSite ? LambdaForm.Kind.LINK_TO_TARGET_METHOD : LambdaForm.Kind.LINK_TO_CALL_SITE);
        lform2.compileToBytecode();
        return mtype2.form().setCachedLambdaForm(which, lform2);
    }

    @ForceInline
    static MethodHandle getCallSiteTarget(CallSite site) {
        return site.getTarget();
    }

    @ForceInline
    static void checkCustomized(MethodHandle mh2) {
        if (!MethodHandleImpl.isCompileConstant(mh2) && mh2.form.customized == null) {
            maybeCustomize(mh2);
        }
    }

    @DontInline
    static void maybeCustomize(MethodHandle mh2) {
        mh2.maybeCustomize();
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
                    return getNamedFunction("checkExactType", MethodType.methodType(Void.TYPE, (Class<?>) MethodHandle.class, (Class<?>[]) new Class[]{MethodType.class}));
                case 1:
                    return getNamedFunction("checkGenericType", MethodType.methodType((Class<?>) MethodHandle.class, (Class<?>) MethodHandle.class, (Class<?>[]) new Class[]{MethodType.class}));
                case 2:
                    return getNamedFunction("getCallSiteTarget", MethodType.methodType((Class<?>) MethodHandle.class, (Class<?>) CallSite.class));
                case 3:
                    return getNamedFunction("checkCustomized", MethodType.methodType(Void.TYPE, (Class<?>) MethodHandle.class));
                case 4:
                    return getNamedFunction("checkVarHandleGenericType", MethodType.methodType((Class<?>) MethodHandle.class, (Class<?>) VarHandle.class, (Class<?>[]) new Class[]{VarHandle.AccessDescriptor.class}));
                case 5:
                    return getNamedFunction("checkVarHandleExactType", MethodType.methodType((Class<?>) MethodHandle.class, (Class<?>) VarHandle.class, (Class<?>[]) new Class[]{VarHandle.AccessDescriptor.class}));
                case 6:
                    return getNamedFunction("directVarHandleTarget", MethodType.methodType((Class<?>) VarHandle.class, (Class<?>) VarHandle.class));
                default:
                    throw MethodHandleStatics.newInternalError("Unknown function: " + ((int) func));
            }
        } catch (ReflectiveOperationException ex) {
            throw MethodHandleStatics.newInternalError(ex);
        }
    }

    private static LambdaForm.NamedFunction getNamedFunction(String name, MethodType type) throws ReflectiveOperationException {
        MemberName member = new MemberName((Class<?>) Invokers.class, name, type, (byte) 6);
        return new LambdaForm.NamedFunction(MemberName.getFactory().resolveOrFail((byte) 6, member, Invokers.class, -1, NoSuchMethodException.class));
    }

    public static class Lazy {
        private static final MethodHandle MH_asSpreader = MhUtil.findVirtual(MethodHandles.Lookup.IMPL_LOOKUP, MethodHandle.class, "asSpreader", MethodType.methodType((Class<?>) MethodHandle.class, (Class<?>) Class.class, (Class<?>[]) new Class[]{Integer.TYPE}));

        private Lazy() {
        }
    }

    final class Holder {
        Holder(Invokers this$0) {
            Objects.requireNonNull(this$0);
        }
    }
}
