package java.lang.invoke;

import b3.s;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.classfile.TypeKind;
import java.lang.invoke.BoundMethodHandle;
import java.lang.invoke.ClassSpecializer;
import java.lang.invoke.InvokerBytecodeGenerator;
import java.lang.invoke.MemberName;
import java.lang.invoke.MethodHandleImpl;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Objects;
import jdk.internal.perf.PerfCounter;
import jdk.internal.vm.annotation.DontInline;
import jdk.internal.vm.annotation.Hidden;
import jdk.internal.vm.annotation.Stable;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;
import sun.invoke.util.Wrapper;

public class LambdaForm {
    final int arity;
    final int result;
    final boolean forceInline;
    final MethodHandle customized;

    @Stable
    final Name[] names;
    final Kind kind;
    volatile Object transformCache;
    public static final int VOID_RESULT = -1;
    public static final int LAST_RESULT = -2;
    private static final int DEFAULT_RESULT = -2;
    private static final boolean DEFAULT_FORCE_INLINE = true;
    private static final MethodHandle DEFAULT_CUSTOMIZED;
    private static final Kind DEFAULT_KIND;

    @Stable
    private static PerfCounter LF_FAILED;
    private static final int COMPILE_THRESHOLD;
    static final int INTERNED_ARGUMENT_LIMIT = 10;
    private static final Name[][] INTERNED_ARGUMENTS;
    private static final MemberName.Factory IMPL_NAMES;

    @Stable
    private static final LambdaForm[] LF_identity;

    @Stable
    private static final NamedFunction[] NF_identity;

    @Stable
    private static final LambdaForm[] LF_constant;
    private static final Object createIdentityFormLock;
    private static final HashMap<String, Integer> DEBUG_NAME_COUNTERS;
    private static final HashMap<LambdaForm, String> DEBUG_NAMES;
    private static final boolean TRACE_INTERPRETER;
    static final boolean $assertionsDisabled;
    private int invocationCounter = 0;
    MemberName vmentry = null;
    private boolean isCompiled = false;

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    @interface Compiled {
    }

    static {
        $assertionsDisabled = !LambdaForm.class.desiredAssertionStatus();
        DEFAULT_CUSTOMIZED = null;
        DEFAULT_KIND = Kind.GENERIC;
        COMPILE_THRESHOLD = Math.max(-1, MethodHandleStatics.COMPILE_THRESHOLD);
        INTERNED_ARGUMENTS = new Name[BasicType.ARG_TYPE_LIMIT][10];
        for (BasicType type : BasicType.ARG_TYPES) {
            int ord = type.ordinal();
            for (int i10 = 0; i10 < INTERNED_ARGUMENTS[ord].length; i10++) {
                INTERNED_ARGUMENTS[ord][i10] = new Name(i10, type);
            }
        }
        IMPL_NAMES = MemberName.getFactory();
        LF_identity = new LambdaForm[BasicType.TYPE_LIMIT];
        NF_identity = new NamedFunction[BasicType.TYPE_LIMIT];
        LF_constant = new LambdaForm[BasicType.ARG_TYPE_LIMIT];
        createIdentityFormLock = new Object();
        if (MethodHandleStatics.debugEnabled()) {
            DEBUG_NAME_COUNTERS = new HashMap<>();
            DEBUG_NAMES = new HashMap<>();
        } else {
            DEBUG_NAME_COUNTERS = null;
            DEBUG_NAMES = null;
        }
        MethodHandleStatics.UNSAFE.ensureClassInitialized(Holder.class);
        TRACE_INTERPRETER = MethodHandleStatics.TRACE_INTERPRETER;
    }

    public enum BasicType {
        L_TYPE('L', Object.class, Wrapper.OBJECT, TypeKind.REFERENCE),
        I_TYPE('I', Integer.TYPE, Wrapper.INT, TypeKind.INT),
        J_TYPE('J', Long.TYPE, Wrapper.LONG, TypeKind.LONG),
        F_TYPE('F', Float.TYPE, Wrapper.FLOAT, TypeKind.FLOAT),
        D_TYPE('D', Double.TYPE, Wrapper.DOUBLE, TypeKind.DOUBLE),
        V_TYPE('V', Void.TYPE, Wrapper.VOID, TypeKind.VOID);


        @Stable
        static final BasicType[] ALL_TYPES;

        @Stable
        static final BasicType[] ARG_TYPES;
        static final int ARG_TYPE_LIMIT;
        static final int TYPE_LIMIT;
        final char btChar;
        final Class<?> btClass;
        final Wrapper btWrapper;
        final TypeKind btKind;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !LambdaForm.class.desiredAssertionStatus();
            ALL_TYPES = values();
            ARG_TYPES = (BasicType[]) Arrays.copyOf(ALL_TYPES, ALL_TYPES.length - 1);
            ARG_TYPE_LIMIT = ARG_TYPES.length;
            TYPE_LIMIT = ALL_TYPES.length;
            if (!$assertionsDisabled && !checkBasicType()) {
                throw new AssertionError();
            }
        }

        BasicType(char btChar, Class cls, Wrapper wrapper, TypeKind typeKind) {
            this.btChar = btChar;
            this.btClass = cls;
            this.btWrapper = wrapper;
            this.btKind = typeKind;
        }

        public char basicTypeChar() {
            return this.btChar;
        }

        public Class<?> basicTypeClass() {
            return this.btClass;
        }

        public Wrapper basicTypeWrapper() {
            return this.btWrapper;
        }

        public TypeKind basicTypeKind() {
            return this.btKind;
        }

        public int basicTypeSlots() {
            return this.btWrapper.stackSlots();
        }

        public static BasicType basicType(byte type) {
            return ALL_TYPES[type];
        }

        public static BasicType basicType(char type) {
            switch (type) {
                case 'B':
                case 'C':
                case 'S':
                case 'Z':
                    return I_TYPE;
                case 'D':
                    return D_TYPE;
                case 'E':
                case 'G':
                case 'H':
                case 'K':
                case 'M':
                case 'N':
                case 'O':
                case 'P':
                case 'Q':
                case 'R':
                case 'T':
                case 'U':
                case 'W':
                case 'X':
                case 'Y':
                default:
                    throw MethodHandleStatics.newInternalError("Unknown type char: '" + type + "'");
                case 'F':
                    return F_TYPE;
                case 'I':
                    return I_TYPE;
                case 'J':
                    return J_TYPE;
                case 'L':
                    return L_TYPE;
                case 'V':
                    return V_TYPE;
            }
        }

        public static BasicType basicType(Class<?> type) {
            return basicType(Wrapper.basicTypeChar(type));
        }

        public static int[] basicTypeOrds(BasicType[] types) {
            if (types == null) {
                return null;
            }
            int[] a10 = new int[types.length];
            for (int i10 = 0; i10 < types.length; i10++) {
                a10[i10] = types[i10].ordinal();
            }
            return a10;
        }

        public static char basicTypeChar(Class<?> type) {
            return basicType(type).btChar;
        }

        public static int[] basicTypesOrd(Class<?>[] types) {
            int[] ords = new int[types.length];
            for (int i10 = 0; i10 < ords.length; i10++) {
                ords[i10] = basicType(types[i10]).ordinal();
            }
            return ords;
        }

        public static boolean isBasicTypeChar(char c10) {
            return "LIJFDV".indexOf(c10) >= 0;
        }

        public static boolean isArgBasicTypeChar(char c10) {
            return "LIJFD".indexOf(c10) >= 0;
        }

        private static boolean checkBasicType() {
            for (int i10 = 0; i10 < ARG_TYPE_LIMIT; i10++) {
                if (!$assertionsDisabled && ARG_TYPES[i10].ordinal() != i10) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && ARG_TYPES[i10] != ALL_TYPES[i10]) {
                    throw new AssertionError();
                }
            }
            for (int i11 = 0; i11 < TYPE_LIMIT; i11++) {
                if (!$assertionsDisabled && ALL_TYPES[i11].ordinal() != i11) {
                    throw new AssertionError();
                }
            }
            if (!$assertionsDisabled && ALL_TYPES[TYPE_LIMIT - 1] != V_TYPE) {
                throw new AssertionError();
            }
            if ($assertionsDisabled || !Arrays.asList(ARG_TYPES).contains(V_TYPE)) {
                return true;
            }
            throw new AssertionError();
        }
    }

    public enum Kind {
        GENERIC("invoke"),
        IDENTITY("identity"),
        CONSTANT("constant"),
        BOUND_REINVOKER("BMH.reinvoke", "reinvoke"),
        REINVOKER("MH.reinvoke", "reinvoke"),
        DELEGATE("MH.delegate", "delegate"),
        EXACT_LINKER("MH.invokeExact_MT", "invokeExact_MT"),
        EXACT_INVOKER("MH.exactInvoker", "exactInvoker"),
        GENERIC_LINKER("MH.invoke_MT", "invoke_MT"),
        GENERIC_INVOKER("MH.invoker", "invoker"),
        LINK_TO_TARGET_METHOD("linkToTargetMethod"),
        LINK_TO_CALL_SITE("linkToCallSite"),
        DIRECT_INVOKE_VIRTUAL("DMH.invokeVirtual", "invokeVirtual"),
        DIRECT_INVOKE_SPECIAL("DMH.invokeSpecial", "invokeSpecial"),
        DIRECT_INVOKE_SPECIAL_IFC("DMH.invokeSpecialIFC", "invokeSpecialIFC"),
        DIRECT_INVOKE_STATIC("DMH.invokeStatic", "invokeStatic"),
        DIRECT_NEW_INVOKE_SPECIAL("DMH.newInvokeSpecial", "newInvokeSpecial"),
        DIRECT_INVOKE_INTERFACE("DMH.invokeInterface", "invokeInterface"),
        DIRECT_INVOKE_STATIC_INIT("DMH.invokeStaticInit", "invokeStaticInit"),
        FIELD_ACCESS("fieldAccess"),
        FIELD_ACCESS_INIT("fieldAccessInit"),
        VOLATILE_FIELD_ACCESS("volatileFieldAccess"),
        VOLATILE_FIELD_ACCESS_INIT("volatileFieldAccessInit"),
        FIELD_ACCESS_B("fieldAccessB"),
        FIELD_ACCESS_INIT_B("fieldAccessInitB"),
        VOLATILE_FIELD_ACCESS_B("volatileFieldAccessB"),
        VOLATILE_FIELD_ACCESS_INIT_B("volatileFieldAccessInitB"),
        FIELD_ACCESS_C("fieldAccessC"),
        FIELD_ACCESS_INIT_C("fieldAccessInitC"),
        VOLATILE_FIELD_ACCESS_C("volatileFieldAccessC"),
        VOLATILE_FIELD_ACCESS_INIT_C("volatileFieldAccessInitC"),
        FIELD_ACCESS_S("fieldAccessS"),
        FIELD_ACCESS_INIT_S("fieldAccessInitS"),
        VOLATILE_FIELD_ACCESS_S("volatileFieldAccessS"),
        VOLATILE_FIELD_ACCESS_INIT_S("volatileFieldAccessInitS"),
        FIELD_ACCESS_Z("fieldAccessZ"),
        FIELD_ACCESS_INIT_Z("fieldAccessInitZ"),
        VOLATILE_FIELD_ACCESS_Z("volatileFieldAccessZ"),
        VOLATILE_FIELD_ACCESS_INIT_Z("volatileFieldAccessInitZ"),
        FIELD_ACCESS_CAST("fieldAccessCast"),
        FIELD_ACCESS_INIT_CAST("fieldAccessInitCast"),
        VOLATILE_FIELD_ACCESS_CAST("volatileFieldAccessCast"),
        VOLATILE_FIELD_ACCESS_INIT_CAST("volatileFieldAccessInitCast"),
        TRY_FINALLY("tryFinally"),
        TABLE_SWITCH("tableSwitch"),
        COLLECTOR("collector"),
        LOOP("loop"),
        GUARD("guard"),
        GUARD_WITH_CATCH("guardWithCatch"),
        VARHANDLE_EXACT_INVOKER("VH.exactInvoker"),
        VARHANDLE_INVOKER("VH.invoker", "invoker"),
        VARHANDLE_LINKER("VH.invoke_MT", "invoke_MT");

        final String defaultLambdaName;
        final String methodName;

        Kind(String defaultLambdaName) {
            this(defaultLambdaName, defaultLambdaName);
        }

        Kind(String defaultLambdaName, String methodName) {
            this.defaultLambdaName = defaultLambdaName;
            this.methodName = methodName;
        }
    }

    private LambdaForm(int arity, int result, boolean forceInline, MethodHandle customized, Name[] names, Kind kind) {
        this.arity = arity;
        this.result = result;
        this.forceInline = forceInline;
        this.customized = customized;
        this.names = names;
        this.kind = kind;
    }

    private static LambdaForm create(int arity, Name[] names, int result, boolean forceInline, MethodHandle customized, Kind kind) {
        Name[] names2 = (Name[]) names.clone();
        if (!$assertionsDisabled && !namesOK(arity, names2)) {
            throw new AssertionError();
        }
        int result2 = fixResult(result, names2);
        boolean canInterpret = normalizeNames(arity, names2);
        LambdaForm form = new LambdaForm(arity, result2, forceInline, customized, names2, kind);
        if (!$assertionsDisabled && !form.nameRefsAreLegal()) {
            throw new AssertionError();
        }
        if (!canInterpret) {
            form.compileToBytecode();
        }
        return form;
    }

    public static LambdaForm create(int arity, Name[] names, int result) {
        return create(arity, names, result, true, DEFAULT_CUSTOMIZED, DEFAULT_KIND);
    }

    public static LambdaForm create(int arity, Name[] names, int result, Kind kind) {
        return create(arity, names, result, true, DEFAULT_CUSTOMIZED, kind);
    }

    public static LambdaForm create(int arity, Name[] names) {
        return create(arity, names, -2, true, DEFAULT_CUSTOMIZED, DEFAULT_KIND);
    }

    public static LambdaForm create(int arity, Name[] names, Kind kind) {
        return create(arity, names, -2, true, DEFAULT_CUSTOMIZED, kind);
    }

    public static LambdaForm create(int arity, Name[] names, boolean forceInline, Kind kind) {
        return create(arity, names, -2, forceInline, DEFAULT_CUSTOMIZED, kind);
    }

    private static int fixResult(int result, Name[] names) {
        if (result == -2) {
            result = names.length - 1;
        }
        if (result >= 0 && names[result].type == BasicType.V_TYPE) {
            result = -1;
        }
        return result;
    }

    public static boolean debugNames() {
        return DEBUG_NAME_COUNTERS != null;
    }

    public static void associateWithDebugName(LambdaForm form, String name) {
        if (!$assertionsDisabled && !debugNames()) {
            throw new AssertionError();
        }
        synchronized (DEBUG_NAMES) {
            DEBUG_NAMES.put(form, name);
        }
    }

    public String lambdaName() {
        String str;
        if (DEBUG_NAMES != null) {
            synchronized (DEBUG_NAMES) {
                String name = DEBUG_NAMES.get(this);
                if (name == null) {
                    name = generateDebugName();
                }
                str = name;
            }
            return str;
        }
        return this.kind.defaultLambdaName;
    }

    private String generateDebugName() {
        if (!$assertionsDisabled && !debugNames()) {
            throw new AssertionError();
        }
        String debugNameStem = this.kind.defaultLambdaName;
        Integer ctr = DEBUG_NAME_COUNTERS.getOrDefault(debugNameStem, 0);
        DEBUG_NAME_COUNTERS.put(debugNameStem, Integer.valueOf(ctr.intValue() + 1));
        StringBuilder buf = new StringBuilder(debugNameStem);
        int leadingZero = buf.length();
        buf.append(ctr.intValue());
        for (int i10 = buf.length() - leadingZero; i10 < 3; i10++) {
            buf.insert(leadingZero, '0');
        }
        buf.append('_');
        buf.append(basicTypeSignature());
        String name = buf.toString();
        associateWithDebugName(this, name);
        return name;
    }

    private static boolean namesOK(int arity, Name[] names) {
        for (int i10 = 0; i10 < names.length; i10++) {
            Name n10 = names[i10];
            if (!$assertionsDisabled && n10 == null) {
                throw new AssertionError((Object) "n is null");
            }
            if (i10 < arity) {
                if (!$assertionsDisabled && !n10.isParam()) {
                    throw new AssertionError((Object) (((Object) n10) + " is not param at " + i10));
                }
            } else if (!$assertionsDisabled && n10.isParam()) {
                throw new AssertionError((Object) (((Object) n10) + " is param at " + i10));
            }
        }
        return true;
    }

    public LambdaForm customize(MethodHandle mh2) {
        if (this.customized == mh2) {
            return this;
        }
        LambdaForm customForm = create(this.arity, this.names, this.result, this.forceInline, mh2, this.kind);
        if (COMPILE_THRESHOLD >= 0 && this.isCompiled) {
            customForm.compileToBytecode();
        }
        customForm.transformCache = this;
        return customForm;
    }

    public LambdaForm uncustomize() {
        if (this.customized == null) {
            return this;
        }
        if (!$assertionsDisabled && this.transformCache == null) {
            throw new AssertionError();
        }
        LambdaForm uncustomizedForm = (LambdaForm) this.transformCache;
        if (COMPILE_THRESHOLD >= 0 && this.isCompiled) {
            uncustomizedForm.compileToBytecode();
        }
        return uncustomizedForm;
    }

    private static boolean normalizeNames(int arity, Name[] names) {
        Name[] oldNames = (Name[]) names.clone();
        int maxOutArity = 0;
        for (int i10 = 0; i10 < names.length; i10++) {
            Name n10 = names[i10];
            names[i10] = n10.withIndex(i10);
            if (n10.arguments != null && maxOutArity < n10.arguments.length) {
                maxOutArity = n10.arguments.length;
            }
        }
        if (oldNames != null) {
            for (int i11 = Math.max(1, arity); i11 < names.length; i11++) {
                Name fixed = names[i11].replaceNames(oldNames, names, 0, i11);
                names[i11] = fixed.withIndex(i11);
            }
        }
        int maxInterned = Math.min(arity, 10);
        boolean needIntern = false;
        for (int i12 = 0; i12 < maxInterned; i12++) {
            Name n11 = names[i12];
            Name n22 = internArgument(n11);
            if (n11 != n22) {
                names[i12] = n22;
                needIntern = true;
            }
        }
        if (needIntern) {
            for (int i13 = arity; i13 < names.length; i13++) {
                names[i13].internArguments();
            }
        }
        if (maxOutArity > 253) {
            if ($assertionsDisabled || maxOutArity <= 255) {
                return false;
            }
            throw new AssertionError();
        }
        return true;
    }

    public boolean nameRefsAreLegal() {
        if (!$assertionsDisabled && (this.arity < 0 || this.arity > this.names.length)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (this.result < -1 || this.result >= this.names.length)) {
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < this.arity; i10++) {
            Name n10 = this.names[i10];
            if (!$assertionsDisabled && n10.index() != i10) {
                throw new AssertionError(Arrays.asList(Integer.valueOf(n10.index()), Integer.valueOf(i10)));
            }
            if (!$assertionsDisabled && !n10.isParam()) {
                throw new AssertionError();
            }
        }
        for (int i11 = this.arity; i11 < this.names.length; i11++) {
            Name n11 = this.names[i11];
            if (!$assertionsDisabled && n11.index() != i11) {
                throw new AssertionError();
            }
            for (Object arg : n11.arguments) {
                if (arg instanceof Name) {
                    Name n22 = (Name) arg;
                    int i22 = n22.index;
                    if (!$assertionsDisabled && (0 > i22 || i22 >= this.names.length)) {
                        throw new AssertionError((Object) (n11.debugString() + ": 0 <= i2 && i2 < names.length: 0 <= " + i22 + " < " + this.names.length));
                    }
                    if (!$assertionsDisabled && this.names[i22] != n22) {
                        throw new AssertionError(Arrays.asList("-1-", Integer.valueOf(i11), "-2-", n11.debugString(), "-3-", Integer.valueOf(i22), "-4-", n22.debugString(), "-5-", this.names[i22].debugString(), "-6-", this));
                    }
                    if (!$assertionsDisabled && i22 >= i11) {
                        throw new AssertionError();
                    }
                }
            }
        }
        return true;
    }

    public BasicType returnType() {
        if (this.result < 0) {
            return BasicType.V_TYPE;
        }
        Name n10 = this.names[this.result];
        return n10.type;
    }

    public BasicType parameterType(int n10) {
        return parameter(n10).type;
    }

    public Name parameter(int n10) {
        Name param = this.names[n10];
        if ($assertionsDisabled || (n10 < this.arity && param.isParam())) {
            return param;
        }
        throw new AssertionError();
    }

    public Object parameterConstraint(int n10) {
        return parameter(n10).constraint;
    }

    public int arity() {
        return this.arity;
    }

    public int expressionCount() {
        return this.names.length - this.arity;
    }

    public MethodType methodType() {
        Class<?>[] ptypes = new Class[this.arity];
        for (int i10 = 0; i10 < this.arity; i10++) {
            ptypes[i10] = parameterType(i10).btClass;
        }
        return MethodType.methodType(returnType().btClass, ptypes, true);
    }

    final String basicTypeSignature() {
        StringBuilder buf = new StringBuilder(arity() + 3);
        int a10 = arity();
        for (int i10 = 0; i10 < a10; i10++) {
            buf.append(parameterType(i10).basicTypeChar());
        }
        return buf.append('_').append(returnType().basicTypeChar()).toString();
    }

    static int signatureArity(String sig) {
        if ($assertionsDisabled || isValidSignature(sig)) {
            return sig.indexOf(95);
        }
        throw new AssertionError();
    }

    public static boolean isValidSignature(String sig) {
        int siglen;
        int arity = sig.indexOf(95);
        if (arity < 0 || (siglen = sig.length()) != arity + 2) {
            return false;
        }
        int i10 = 0;
        while (i10 < siglen) {
            if (i10 != arity) {
                char c10 = sig.charAt(i10);
                if (c10 == 'V') {
                    return i10 == siglen - 1 && arity == siglen - 2;
                }
                if (!BasicType.isArgBasicTypeChar(c10)) {
                    return false;
                }
            }
            i10++;
        }
        return true;
    }

    public boolean isSelectAlternative(int pos) {
        if (pos + 1 >= this.names.length) {
            return false;
        }
        Name name0 = this.names[pos];
        Name name1 = this.names[pos + 1];
        return name0.refersTo(MethodHandleImpl.class, "selectAlternative") && name1.isInvokeBasic() && name1.lastUseIndex(name0) == 0 && lastUseIndex(name0) == pos + 1;
    }

    private boolean isMatchingIdiom(int pos, String idiomName, int nArgs) {
        if (pos + 2 >= this.names.length) {
            return false;
        }
        Name name0 = this.names[pos];
        Name name1 = this.names[pos + 1];
        Name name2 = this.names[pos + 2];
        return name1.refersTo(MethodHandleImpl.class, idiomName) && name0.isInvokeBasic() && name2.isInvokeBasic() && name1.lastUseIndex(name0) == nArgs && lastUseIndex(name0) == pos + 1 && name2.lastUseIndex(name1) == 1 && lastUseIndex(name1) == pos + 2;
    }

    public boolean isGuardWithCatch(int pos) {
        return isMatchingIdiom(pos, "guardWithCatch", 3);
    }

    public boolean isTryFinally(int pos) {
        return isMatchingIdiom(pos, "tryFinally", 2);
    }

    public boolean isTableSwitch(int pos) {
        if (pos + 2 >= this.names.length) {
            return false;
        }
        int POS_TABLE_SWITCH = pos + 1;
        int POS_UNBOX_RESULT = pos + 2;
        Name collectArgs = this.names[pos];
        Name tableSwitch = this.names[POS_TABLE_SWITCH];
        Name unboxResult = this.names[POS_UNBOX_RESULT];
        return tableSwitch.refersTo(MethodHandleImpl.class, "tableSwitch") && collectArgs.isInvokeBasic() && unboxResult.isInvokeBasic() && tableSwitch.lastUseIndex(collectArgs) == 3 && lastUseIndex(collectArgs) == POS_TABLE_SWITCH && unboxResult.lastUseIndex(tableSwitch) == 1 && lastUseIndex(tableSwitch) == POS_UNBOX_RESULT;
    }

    public boolean isLoop(int pos) {
        return isMatchingIdiom(pos, "loop", 2);
    }

    public void prepare() {
        if (COMPILE_THRESHOLD == 0 && !forceInterpretation() && !this.isCompiled) {
            compileToBytecode();
        }
        if (this.vmentry != null) {
            return;
        }
        MethodType mtype = methodType();
        MethodTypeForm form = mtype.form();
        MemberName entry = form.cachedInterpretEntry();
        if (entry == null) {
            if (!$assertionsDisabled && !isValidSignature(basicTypeSignature())) {
                throw new AssertionError();
            }
            entry = form.setCachedInterpretEntry(InvokerBytecodeGenerator.generateLambdaFormInterpreterEntryPoint(mtype));
        }
        this.vmentry = entry;
    }

    private static PerfCounter failedCompilationCounter() {
        if (LF_FAILED == null) {
            LF_FAILED = PerfCounter.newPerfCounter("java.lang.invoke.failedLambdaFormCompilations");
        }
        return LF_FAILED;
    }

    public void compileToBytecode() {
        if (forceInterpretation()) {
            return;
        }
        if (this.vmentry != null && this.isCompiled) {
            return;
        }
        MethodType invokerType = methodType();
        if (!$assertionsDisabled && this.vmentry != null && !this.vmentry.getMethodType().basicType().equals((Object) invokerType)) {
            throw new AssertionError();
        }
        try {
            this.vmentry = InvokerBytecodeGenerator.generateCustomizedCode(this, invokerType);
            if (TRACE_INTERPRETER) {
                traceInterpreter("compileToBytecode", this);
            }
            this.isCompiled = true;
        } catch (Error e10) {
            throw e10;
        } catch (InvokerBytecodeGenerator.BytecodeGenerationException bge) {
            this.invocationCounter = -1;
            failedCompilationCounter().increment();
            if (MethodHandleStatics.LOG_LF_COMPILATION_FAILURE) {
                System.out.println("LambdaForm compilation failed: " + ((Object) this));
                bge.printStackTrace(System.out);
            }
        } catch (Exception e11) {
            throw MethodHandleStatics.newInternalError(toString(), e11);
        }
    }

    private static boolean argumentTypesMatch(String sig, Object[] av) {
        int arity = signatureArity(sig);
        if (!$assertionsDisabled && av.length != arity) {
            throw new AssertionError((Object) ("av.length == arity: av.length=" + av.length + ", arity=" + arity));
        }
        if (!$assertionsDisabled && !(av[0] instanceof MethodHandle)) {
            throw new AssertionError((Object) ("av[0] not instance of MethodHandle: " + av[0]));
        }
        MethodHandle mh2 = (MethodHandle) av[0];
        MethodType mt = mh2.type();
        if (!$assertionsDisabled && mt.parameterCount() != arity - 1) {
            throw new AssertionError();
        }
        int i10 = 0;
        while (i10 < av.length) {
            Class<?> pt = i10 == 0 ? MethodHandle.class : mt.parameterType(i10 - 1);
            if (!$assertionsDisabled && !valueMatches(BasicType.basicType(sig.charAt(i10)), pt, av[i10])) {
                throw new AssertionError();
            }
            i10++;
        }
        return true;
    }

    private static boolean valueMatches(BasicType tc2, Class<?> type, Object x10) {
        if (type == Void.TYPE) {
            tc2 = BasicType.V_TYPE;
        }
        if (!$assertionsDisabled && tc2 != BasicType.basicType(type)) {
            throw new AssertionError((Object) (((Object) tc2) + " == basicType(" + ((Object) type) + ")=" + ((Object) BasicType.basicType(type))));
        }
        switch (tc2) {
            case L_TYPE:
                if ($assertionsDisabled || checkRef(type, x10)) {
                    return true;
                }
                throw new AssertionError((Object) ("checkRef(" + ((Object) type) + DocLint.SEPARATOR + x10 + ")"));
            case I_TYPE:
                if ($assertionsDisabled || checkInt(type, x10)) {
                    return true;
                }
                throw new AssertionError((Object) ("checkInt(" + ((Object) type) + DocLint.SEPARATOR + x10 + ")"));
            case J_TYPE:
                if ($assertionsDisabled || (x10 instanceof Long)) {
                    return true;
                }
                throw new AssertionError((Object) ("instanceof Long: " + x10));
            case F_TYPE:
                if ($assertionsDisabled || (x10 instanceof Float)) {
                    return true;
                }
                throw new AssertionError((Object) ("instanceof Float: " + x10));
            case D_TYPE:
                if ($assertionsDisabled || (x10 instanceof Double)) {
                    return true;
                }
                throw new AssertionError((Object) ("instanceof Double: " + x10));
            case V_TYPE:
                return true;
            default:
                if ($assertionsDisabled) {
                    return true;
                }
                throw new AssertionError();
        }
    }

    private static boolean checkInt(Class<?> type, Object x10) {
        if (!$assertionsDisabled && !(x10 instanceof Integer)) {
            throw new AssertionError();
        }
        if (type == Integer.TYPE) {
            return true;
        }
        Wrapper w10 = Wrapper.forBasicType(type);
        if (!$assertionsDisabled && !w10.isSubwordOrInt()) {
            throw new AssertionError();
        }
        Object x12 = Wrapper.INT.wrap(w10.wrap(x10));
        return x10.equals(x12);
    }

    private static boolean checkRef(Class<?> type, Object x10) {
        if (!$assertionsDisabled && type.isPrimitive()) {
            throw new AssertionError();
        }
        if (x10 == null || type.isInterface()) {
            return true;
        }
        return type.isInstance(x10);
    }

    private boolean forceInterpretation() {
        return this.invocationCounter == -1;
    }

    @Hidden
    @DontInline
    Object interpretWithArguments(Object... argumentValues) throws Throwable {
        if (TRACE_INTERPRETER) {
            return interpretWithArgumentsTracing(argumentValues);
        }
        checkInvocationCounter();
        if (!$assertionsDisabled && !arityCheck(argumentValues)) {
            throw new AssertionError();
        }
        Object[] values = Arrays.copyOf(argumentValues, this.names.length);
        for (int i10 = argumentValues.length; i10 < values.length; i10++) {
            values[i10] = interpretName(this.names[i10], values);
        }
        Object rv = this.result < 0 ? null : values[this.result];
        if ($assertionsDisabled || resultCheck(argumentValues, rv)) {
            return rv;
        }
        throw new AssertionError();
    }

    @Hidden
    @DontInline
    Object interpretName(Name name, Object[] values) throws Throwable {
        if (TRACE_INTERPRETER) {
            traceInterpreter("| interpretName", name.debugString(), (Object[]) null);
        }
        Object[] arguments = Arrays.copyOf(name.arguments, name.arguments.length, Object[].class);
        for (int i10 = 0; i10 < arguments.length; i10++) {
            Object a10 = arguments[i10];
            if (a10 instanceof Name) {
                Name n10 = (Name) a10;
                int i22 = n10.index();
                if (!$assertionsDisabled && this.names[i22] != a10) {
                    throw new AssertionError();
                }
                arguments[i10] = values[i22];
            }
        }
        return name.function.invokeWithArguments(arguments);
    }

    private void checkInvocationCounter() {
        if (COMPILE_THRESHOLD != 0 && !forceInterpretation() && this.invocationCounter < COMPILE_THRESHOLD) {
            this.invocationCounter++;
            if (this.invocationCounter >= COMPILE_THRESHOLD) {
                compileToBytecode();
            }
        }
    }

    Object interpretWithArgumentsTracing(Object... argumentValues) throws Throwable {
        traceInterpreter("[ interpretWithArguments", this, argumentValues);
        if (!forceInterpretation() && this.invocationCounter < COMPILE_THRESHOLD) {
            int ctr = this.invocationCounter;
            this.invocationCounter = ctr + 1;
            traceInterpreter("| invocationCounter", Integer.valueOf(ctr));
            if (this.invocationCounter >= COMPILE_THRESHOLD) {
                compileToBytecode();
            }
        }
        try {
            if (!$assertionsDisabled && !arityCheck(argumentValues)) {
                throw new AssertionError();
            }
            Object[] values = Arrays.copyOf(argumentValues, this.names.length);
            for (int i10 = argumentValues.length; i10 < values.length; i10++) {
                values[i10] = interpretName(this.names[i10], values);
            }
            Object rval = this.result < 0 ? null : values[this.result];
            traceInterpreter("] return =>", rval);
            return rval;
        } catch (Throwable ex) {
            traceInterpreter("] throw =>", ex);
            throw ex;
        }
    }

    static void traceInterpreter(String event, Object obj, Object... args) {
        if (TRACE_INTERPRETER) {
            System.out.println("LFI: " + event + " " + (obj != null ? obj : "") + ((args == null || args.length == 0) ? "" : Arrays.asList(args)));
        }
    }

    static void traceInterpreter(String event, Object obj) {
        traceInterpreter(event, obj, (Object[]) null);
    }

    private boolean arityCheck(Object[] argumentValues) {
        if (!$assertionsDisabled && argumentValues.length != this.arity) {
            throw new AssertionError((Object) (this.arity + "!=" + ((Object) Arrays.asList(argumentValues)) + ".length"));
        }
        if (!$assertionsDisabled && !(argumentValues[0] instanceof MethodHandle)) {
            throw new AssertionError((Object) ("not MH: " + argumentValues[0]));
        }
        MethodHandle mh2 = (MethodHandle) argumentValues[0];
        if (!$assertionsDisabled && mh2.internalForm() != this) {
            throw new AssertionError();
        }
        argumentTypesMatch(basicTypeSignature(), argumentValues);
        return true;
    }

    private boolean resultCheck(Object[] argumentValues, Object result) {
        MethodHandle mh2 = (MethodHandle) argumentValues[0];
        MethodType mt = mh2.type();
        if ($assertionsDisabled || valueMatches(returnType(), mt.returnType(), result)) {
            return true;
        }
        throw new AssertionError();
    }

    public String toString() {
        return debugString(-1);
    }

    public String debugString(int indentLevel) {
        String prefix = MethodHandle.debugPrefix(indentLevel);
        String lambdaName = lambdaName();
        StringBuilder buf = new StringBuilder(lambdaName);
        buf.append("=Lambda(");
        for (int i10 = 0; i10 < this.names.length; i10++) {
            if (i10 == this.arity) {
                buf.append(")=>{");
            }
            Name n10 = this.names[i10];
            if (i10 >= this.arity) {
                buf.append("\n    ").append(prefix);
            }
            buf.append(n10.paramString());
            if (i10 < this.arity) {
                if (i10 + 1 < this.arity) {
                    buf.append(DocLint.SEPARATOR);
                }
            } else {
                buf.append("=").append(n10.exprString());
                buf.append(";");
            }
        }
        if (this.arity == this.names.length) {
            buf.append(")=>{");
        }
        buf.append(this.result < 0 ? "void" : this.names[this.result]).append(VectorFormat.DEFAULT_SUFFIX);
        if (TRACE_INTERPRETER) {
            buf.append(s.f32937c).append(basicTypeSignature());
            buf.append("/").append((Object) this.vmentry);
        }
        return buf.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof LambdaForm) {
            LambdaForm lf2 = (LambdaForm) obj;
            if (equals(lf2)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(LambdaForm that) {
        if (this.result != that.result) {
            return false;
        }
        return Arrays.equals(this.names, that.names);
    }

    public int hashCode() {
        return this.result + (31 * Arrays.hashCode(this.names));
    }

    public LambdaFormEditor editor() {
        return LambdaFormEditor.lambdaFormEditor(this);
    }

    boolean contains(Name name) {
        int pos = name.index();
        if (pos >= 0) {
            return pos < this.names.length && name.equals(this.names[pos]);
        }
        for (int i10 = this.arity; i10 < this.names.length; i10++) {
            if (name.equals(this.names[i10])) {
                return true;
            }
        }
        return false;
    }

    public static class NamedFunction {
        final MemberName member;

        @Stable
        private MethodHandle resolvedHandle;

        @Stable
        private MethodType type;
        static final MethodType INVOKER_METHOD_TYPE;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !LambdaForm.class.desiredAssertionStatus();
            INVOKER_METHOD_TYPE = MethodType.methodType((Class<?>) Object.class, (Class<?>) MethodHandle.class, (Class<?>[]) new Class[]{Object[].class});
        }

        public NamedFunction(MethodHandle resolvedHandle) {
            this(resolvedHandle.internalMemberName(), resolvedHandle);
        }

        NamedFunction(MemberName member, MethodHandle resolvedHandle) {
            this.member = member;
            this.resolvedHandle = resolvedHandle;
        }

        NamedFunction(MethodType basicInvokerType) {
            if (!$assertionsDisabled && basicInvokerType != basicInvokerType.basicType()) {
                throw new AssertionError(basicInvokerType);
            }
            if (basicInvokerType.parameterSlotCount() < 253) {
                this.resolvedHandle = basicInvokerType.invokers().basicInvoker();
                this.member = this.resolvedHandle.internalMemberName();
            } else {
                this.member = Invokers.invokeBasicMethod(basicInvokerType);
            }
            if (!$assertionsDisabled && !isInvokeBasic(this.member)) {
                throw new AssertionError();
            }
        }

        private static boolean isInvokeBasic(MemberName member) {
            return member != null && member.getDeclaringClass() == MethodHandle.class && "invokeBasic".equals(member.getName());
        }

        public NamedFunction(Method method) {
            this(new MemberName(method));
        }

        public NamedFunction(MemberName member) {
            this(member, null);
        }

        public MethodHandle resolvedHandle() {
            if (this.resolvedHandle == null) {
                resolve();
            }
            return this.resolvedHandle;
        }

        public synchronized void resolve() {
            if (this.resolvedHandle == null) {
                this.resolvedHandle = DirectMethodHandle.make(this.member);
            }
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other != null && (other instanceof NamedFunction)) {
                NamedFunction that = (NamedFunction) other;
                if (this.member != null && this.member.equals(that.member)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            if (this.member != null) {
                return this.member.hashCode();
            }
            return super.hashCode();
        }

        private static MethodHandle computeInvoker(MethodTypeForm typeForm) {
            MethodTypeForm typeForm2 = typeForm.basicType().form();
            MethodHandle mh2 = typeForm2.cachedMethodHandle(1);
            if (mh2 != null) {
                return mh2;
            }
            MemberName invoker = InvokerBytecodeGenerator.generateNamedFunctionInvoker(typeForm2);
            MethodHandle mh3 = DirectMethodHandle.make(invoker);
            MethodHandle mh22 = typeForm2.cachedMethodHandle(1);
            if (mh22 != null) {
                return mh22;
            }
            if (!mh3.type().equals((Object) INVOKER_METHOD_TYPE)) {
                throw MethodHandleStatics.newInternalError(mh3.debugString());
            }
            return typeForm2.setCachedMethodHandle(1, mh3);
        }

        @Hidden
        Object invokeWithArguments(Object... arguments) throws Throwable {
            return LambdaForm.TRACE_INTERPRETER ? invokeWithArgumentsTracing(arguments) : invoker().invokeBasic(resolvedHandle(), arguments);
        }

        @Hidden
        Object invokeWithArgumentsTracing(Object[] arguments) throws Throwable {
            try {
                LambdaForm.traceInterpreter("[ call", this, arguments);
                if (this.resolvedHandle == null) {
                    LambdaForm.traceInterpreter("| resolve", this);
                    resolvedHandle();
                }
                Object rval = invoker().invokeBasic(resolvedHandle(), arguments);
                LambdaForm.traceInterpreter("] return =>", rval);
                return rval;
            } catch (Throwable ex) {
                LambdaForm.traceInterpreter("] throw =>", ex);
                throw ex;
            }
        }

        private MethodHandle invoker() {
            return computeInvoker(methodType().form());
        }

        public MethodType methodType() {
            MethodType type = this.type;
            if (type == null) {
                MethodType calculateMethodType = calculateMethodType(this.member, this.resolvedHandle);
                type = calculateMethodType;
                this.type = calculateMethodType;
            }
            return type;
        }

        private static MethodType calculateMethodType(MemberName member, MethodHandle resolvedHandle) {
            if (resolvedHandle != null) {
                return resolvedHandle.type();
            }
            return member.getInvocationType();
        }

        public MemberName member() {
            if ($assertionsDisabled || assertMemberIsConsistent()) {
                return this.member;
            }
            throw new AssertionError();
        }

        private boolean assertMemberIsConsistent() {
            if (this.resolvedHandle instanceof DirectMethodHandle) {
                MemberName m10 = this.resolvedHandle.internalMemberName();
                if ($assertionsDisabled || m10.equals(this.member)) {
                    return true;
                }
                throw new AssertionError();
            }
            return true;
        }

        public Class<?> memberDeclaringClassOrNull() {
            if (this.member == null) {
                return null;
            }
            return this.member.getDeclaringClass();
        }

        public BasicType returnType() {
            return BasicType.basicType(methodType().returnType());
        }

        BasicType parameterType(int n10) {
            return BasicType.basicType(methodType().parameterType(n10));
        }

        int arity() {
            return methodType().parameterCount();
        }

        public String toString() {
            return this.member == null ? String.valueOf(this.resolvedHandle) : this.member.getDeclaringClass().getSimpleName() + "." + this.member.getName();
        }

        public boolean isIdentity() {
            return equals(LambdaForm.identity(returnType()));
        }

        public MethodHandleImpl.Intrinsic intrinsicName() {
            if (this.resolvedHandle != null) {
                return this.resolvedHandle.intrinsicName();
            }
            return MethodHandleImpl.Intrinsic.NONE;
        }

        public Object intrinsicData() {
            if (this.resolvedHandle != null) {
                return this.resolvedHandle.intrinsicData();
            }
            return null;
        }
    }

    public static String basicTypeSignature(MethodType type) {
        int params = type.parameterCount();
        char[] sig = new char[params + 2];
        int sigp = 0;
        while (sigp < params) {
            int i10 = sigp;
            int i11 = sigp;
            sigp++;
            sig[i10] = BasicType.basicTypeChar(type.parameterType(i11));
        }
        int i12 = sigp;
        int sigp2 = sigp + 1;
        sig[i12] = '_';
        int sigp3 = sigp2 + 1;
        sig[sigp2] = BasicType.basicTypeChar(type.returnType());
        if ($assertionsDisabled || sigp3 == sig.length) {
            return String.valueOf(sig);
        }
        throw new AssertionError();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String shortenSignature(String signature) {
        int c12 = -1;
        int c1reps = 0;
        StringBuilder buf = null;
        int len = signature.length();
        if (len < 3) {
            return signature;
        }
        int i10 = 0;
        while (i10 <= len) {
            if (c12 != -1 && (65 > c12 || c12 > 90)) {
                if (buf != null) {
                    buf.append((CharSequence) signature, i10 - c1reps, len);
                }
                return buf != null ? signature : buf.toString();
            }
            int c02 = c12;
            c12 = i10 == len ? -1 : signature.charAt(i10);
            if (c12 == c02) {
                c1reps++;
            } else {
                int c0reps = c1reps;
                c1reps = 1;
                if (c0reps < 3) {
                    if (buf != null) {
                        while (true) {
                            c0reps--;
                            if (c0reps >= 0) {
                                buf.append((char) c02);
                            }
                        }
                    }
                } else {
                    if (buf == null) {
                        buf = new StringBuilder().append((CharSequence) signature, 0, i10 - c0reps);
                    }
                    buf.append((char) c02).append(c0reps);
                }
            }
            i10++;
        }
        if (buf != null) {
        }
    }

    public static final class Name {
        final BasicType type;
        final short index;
        final NamedFunction function;
        final Object constraint;

        @Stable
        final Object[] arguments;
        private static final Object[] EMPTY_ARGS;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !LambdaForm.class.desiredAssertionStatus();
            EMPTY_ARGS = new Object[0];
        }

        private Name(int index, BasicType type, NamedFunction function, Object[] arguments, Object constraint) {
            this.index = (short) index;
            this.type = type;
            this.function = function;
            this.arguments = arguments;
            this.constraint = constraint;
            if (!$assertionsDisabled && (this.index != index || !typesMatch(function, arguments))) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && constraint != null && !isParam()) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && constraint != null && !(constraint instanceof ClassSpecializer.SpeciesData) && !(constraint instanceof Class)) {
                throw new AssertionError();
            }
        }

        public Name(MethodHandle function, Object... arguments) {
            this(new NamedFunction(function), arguments);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0038  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Name(MethodType functionType, Object... arguments) {
            this(new NamedFunction(functionType), arguments);
            boolean z10;
            if ($assertionsDisabled) {
                return;
            }
            Object obj = arguments[0];
            if (obj instanceof Name) {
                Name name = (Name) obj;
                if (name.type == BasicType.L_TYPE) {
                    z10 = true;
                    if (z10) {
                        throw new AssertionError();
                    }
                    return;
                }
            }
            z10 = false;
            if (z10) {
            }
        }

        public Name(MemberName function, Object... arguments) {
            this(new NamedFunction(function), arguments);
        }

        public Name(NamedFunction function) {
            this(-1, function.returnType(), function, EMPTY_ARGS, null);
        }

        public Name(NamedFunction function, Object arg) {
            this(-1, function.returnType(), function, new Object[]{arg}, null);
        }

        public Name(NamedFunction function, Object arg0, Object arg1) {
            this(-1, function.returnType(), function, new Object[]{arg0, arg1}, null);
        }

        public Name(NamedFunction function, Object... arguments) {
            this(-1, function.returnType(), function, Arrays.copyOf(arguments, arguments.length, Object[].class), null);
        }

        public Name(int index, BasicType type) {
            this(index, type, null, null, null);
        }

        public Name(BasicType type) {
            this(-1, type);
        }

        public BasicType type() {
            return this.type;
        }

        public int index() {
            return this.index;
        }

        char typeChar() {
            return this.type.btChar;
        }

        Name withIndex(int i10) {
            return i10 == this.index ? this : new Name(i10, this.type, this.function, this.arguments, this.constraint);
        }

        public Name withConstraint(Object constraint) {
            return constraint == this.constraint ? this : new Name(this.index, this.type, this.function, this.arguments, constraint);
        }

        public Name replaceName(Name oldName, Name newName) {
            if (oldName == newName) {
                return this;
            }
            Object[] arguments = this.arguments;
            if (arguments == null) {
                return this;
            }
            boolean replaced = false;
            for (int j10 = 0; j10 < arguments.length; j10++) {
                if (arguments[j10] == oldName) {
                    if (!replaced) {
                        replaced = true;
                        arguments = (Object[]) arguments.clone();
                    }
                    arguments[j10] = newName;
                }
            }
            return !replaced ? this : new Name(this.function, arguments);
        }

        public Name replaceNames(Name[] oldNames, Name[] newNames, int start, int end) {
            Name n10;
            int check;
            if (start >= end) {
                return this;
            }
            Object[] arguments = this.arguments;
            boolean replaced = false;
            for (int j10 = 0; j10 < arguments.length; j10++) {
                Object obj = arguments[j10];
                if ((obj instanceof Name) && ((check = (n10 = (Name) obj).index) < 0 || check >= newNames.length || n10 != newNames[check])) {
                    int i10 = start;
                    while (true) {
                        if (i10 >= end) {
                            break;
                        }
                        if (n10 != oldNames[i10]) {
                            i10++;
                        } else if (n10 != newNames[i10]) {
                            if (!replaced) {
                                replaced = true;
                                arguments = (Object[]) arguments.clone();
                            }
                            arguments[j10] = newNames[i10];
                        }
                    }
                }
            }
            return !replaced ? this : new Name(this.function, arguments);
        }

        void internArguments() {
            Object[] arguments = this.arguments;
            for (int j10 = 0; j10 < arguments.length; j10++) {
                Object obj = arguments[j10];
                if (obj instanceof Name) {
                    Name n10 = (Name) obj;
                    if (n10.isParam() && n10.index < 10) {
                        arguments[j10] = LambdaForm.internArgument(n10);
                    }
                }
            }
        }

        public boolean isParam() {
            return this.function == null;
        }

        public boolean refersTo(Class<?> declaringClass, String methodName) {
            return (this.function == null || this.function.member() == null || !this.function.member().refersTo(declaringClass, methodName)) ? false : true;
        }

        boolean isInvokeBasic() {
            MemberName member;
            return (this.function == null || this.arguments.length < 1 || (member = this.function.member()) == null || !member.refersTo(MethodHandle.class, "invokeBasic") || member.isPublic() || member.isStatic()) ? false : true;
        }

        public boolean isLinkerMethodInvoke() {
            MemberName member;
            return this.function != null && this.arguments.length >= 1 && (member = this.function.member()) != null && member.getDeclaringClass() == MethodHandle.class && !member.isPublic() && member.isStatic() && member.getName().startsWith("linkTo");
        }

        public String toString() {
            return (isParam() ? "a" : "t") + (this.index >= 0 ? this.index : System.identityHashCode(this)) + s.f32937c + typeChar();
        }

        public String debugString() {
            String s10 = paramString();
            return this.function == null ? s10 : s10 + "=" + exprString();
        }

        public String paramString() {
            String s10 = toString();
            Object c10 = this.constraint;
            if (c10 == null) {
                return s10;
            }
            if (c10 instanceof Class) {
                Class<?> cl2 = (Class) c10;
                c10 = cl2.getSimpleName();
            }
            return s10 + "/" + c10;
        }

        public String exprString() {
            if (this.function == null) {
                return toString();
            }
            StringBuilder buf = new StringBuilder(this.function.toString());
            buf.append("(");
            String cma = "";
            for (Object a10 : this.arguments) {
                buf.append(cma);
                cma = DocLint.SEPARATOR;
                if ((a10 instanceof Name) || (a10 instanceof Integer)) {
                    buf.append(a10);
                } else {
                    buf.append("(").append(a10).append(")");
                }
            }
            buf.append(")");
            return buf.toString();
        }

        private boolean typesMatch(NamedFunction function, Object... arguments) {
            if (arguments == null) {
                if ($assertionsDisabled || function == null) {
                    return true;
                }
                throw new AssertionError();
            }
            if (!$assertionsDisabled && arguments.length != function.arity()) {
                throw new AssertionError((Object) ("arity mismatch: arguments.length=" + arguments.length + " == function.arity()=" + function.arity() + " in " + debugString()));
            }
            for (int i10 = 0; i10 < arguments.length; i10++) {
                if (!$assertionsDisabled && !typesMatch(function.parameterType(i10), arguments[i10])) {
                    throw new AssertionError((Object) ("types don't match: function.parameterType(" + i10 + ")=" + ((Object) function.parameterType(i10)) + ", arguments[" + i10 + "]=" + arguments[i10] + " in " + debugString()));
                }
            }
            return true;
        }

        private static boolean typesMatch(BasicType parameterType, Object object) {
            if (object instanceof Name) {
                Name name = (Name) object;
                return name.type == parameterType;
            }
            switch (parameterType.ordinal()) {
                case 1:
                    return object instanceof Integer;
                case 2:
                    return object instanceof Long;
                case 3:
                    return object instanceof Float;
                case 4:
                    return object instanceof Double;
                default:
                    if ($assertionsDisabled || parameterType == BasicType.L_TYPE) {
                        return true;
                    }
                    throw new AssertionError();
            }
        }

        int lastUseIndex(Name n10) {
            Object[] arguments = this.arguments;
            if (arguments == null) {
                return -1;
            }
            int i10 = arguments.length;
            do {
                i10--;
                if (i10 < 0) {
                    return -1;
                }
            } while (arguments[i10] != n10);
            return i10;
        }

        public boolean equals(Name that) {
            if (this == that) {
                return true;
            }
            return !isParam() && this.type == that.type && this.function.equals(that.function) && Arrays.equals(this.arguments, that.arguments);
        }

        public boolean equals(Object x10) {
            if (x10 instanceof Name) {
                Name n10 = (Name) x10;
                if (equals(n10)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            if (isParam()) {
                return this.index | (this.type.ordinal() << 8);
            }
            return this.function.hashCode() ^ Arrays.hashCode(this.arguments);
        }
    }

    int lastUseIndex(Name n10) {
        int ni2 = n10.index;
        int nmax = this.names.length;
        if (!$assertionsDisabled && this.names[ni2] != n10) {
            throw new AssertionError();
        }
        if (this.result == ni2) {
            return nmax;
        }
        int i10 = nmax;
        do {
            i10--;
            if (i10 <= ni2) {
                return -1;
            }
        } while (this.names[i10].lastUseIndex(n10) < 0);
        return i10;
    }

    public int useCount(Name n10) {
        int count = this.result == n10.index ? 1 : 0;
        int i10 = Math.max(n10.index + 1, this.arity);
        Name[] names = this.names;
        while (i10 < names.length) {
            int i11 = i10;
            i10++;
            Object[] arguments = names[i11].arguments;
            if (arguments != null) {
                for (Object argument : arguments) {
                    if (argument == n10) {
                        count++;
                    }
                }
            }
        }
        return count;
    }

    public static Name argument(int which, BasicType type) {
        if (which >= 10) {
            return new Name(which, type);
        }
        return INTERNED_ARGUMENTS[type.ordinal()][which];
    }

    static Name internArgument(Name n10) {
        if (!$assertionsDisabled && !n10.isParam()) {
            throw new AssertionError((Object) ("not param: " + ((Object) n10)));
        }
        if ($assertionsDisabled || n10.index < 10) {
            return n10.constraint != null ? n10 : argument(n10.index, n10.type);
        }
        throw new AssertionError();
    }

    public static Name[] arguments(int extra, MethodType types) {
        int length = types.parameterCount();
        Name[] names = new Name[length + extra];
        for (int i10 = 0; i10 < length; i10++) {
            names[i10] = argument(i10, BasicType.basicType(types.parameterType(i10)));
        }
        return names;
    }

    public static Name[] invokeArguments(int extra, MethodType types) {
        int length = types.parameterCount();
        Name[] names = new Name[length + extra + 1];
        names[0] = argument(0, BasicType.L_TYPE);
        for (int i10 = 0; i10 < length; i10++) {
            names[i10 + 1] = argument(i10 + 1, BasicType.basicType(types.parameterType(i10)));
        }
        return names;
    }

    public static LambdaForm identityForm(BasicType type) {
        int ord = type.ordinal();
        LambdaForm form = LF_identity[ord];
        if (form != null) {
            return form;
        }
        createIdentityForm(type);
        return LF_identity[ord];
    }

    public static NamedFunction identity(BasicType type) {
        int ord = type.ordinal();
        NamedFunction function = NF_identity[ord];
        if (function != null) {
            return function;
        }
        createIdentityForm(type);
        return NF_identity[ord];
    }

    public static LambdaForm constantForm(BasicType type) {
        if (!$assertionsDisabled && (type == null || type == BasicType.V_TYPE)) {
            throw new AssertionError(type);
        }
        LambdaForm cached = LF_constant[type.ordinal()];
        if (cached != null) {
            return cached;
        }
        return createConstantForm(type);
    }

    private static LambdaForm createConstantForm(BasicType type) {
        MethodHandleStatics.UNSAFE.ensureClassInitialized(BoundMethodHandle.class);
        BoundMethodHandle.SpeciesData species = SimpleMethodHandle.BMH_SPECIES.extendWith(type);
        Name carrier = argument(0, BasicType.L_TYPE).withConstraint(species);
        Name[] constNames = {carrier, new Name(species.getterFunction(0), carrier)};
        LambdaForm[] lambdaFormArr = LF_constant;
        int ordinal = type.ordinal();
        LambdaForm create = create(1, constNames, Kind.CONSTANT);
        lambdaFormArr[ordinal] = create;
        return create;
    }

    private static void createIdentityForm(BasicType type) {
        LambdaForm idForm;
        NamedFunction idFun;
        MethodHandleStatics.UNSAFE.ensureClassInitialized(BoundMethodHandle.class);
        synchronized (createIdentityFormLock) {
            int ord = type.ordinal();
            if (LF_identity[ord] != null) {
                return;
            }
            char btChar = type.basicTypeChar();
            boolean isVoid = type == BasicType.V_TYPE;
            Class<?> btClass = type.btClass;
            MethodType idType = isVoid ? MethodType.methodType(btClass) : MethodType.methodType(btClass, btClass);
            try {
                MemberName idMem = IMPL_NAMES.resolveOrFail((byte) 6, new MemberName((Class<?>) LambdaForm.class, "identity_" + btChar, idType, (byte) 6), null, -1, NoSuchMethodException.class);
                if (isVoid) {
                    Name[] idNames = {argument(0, BasicType.L_TYPE)};
                    idForm = create(1, idNames, -1, Kind.IDENTITY);
                    idForm.compileToBytecode();
                    idFun = new NamedFunction(idMem, SimpleMethodHandle.make(idMem.getInvocationType(), idForm));
                } else {
                    Name[] idNames2 = {argument(0, BasicType.L_TYPE), argument(1, type)};
                    idForm = create(2, idNames2, 1, Kind.IDENTITY);
                    idForm.compileToBytecode();
                    idFun = new NamedFunction(idMem, MethodHandleImpl.makeIntrinsic(idMem.getInvocationType(), idForm, MethodHandleImpl.Intrinsic.IDENTITY));
                }
                LF_identity[ord] = idForm;
                NF_identity[ord] = idFun;
                if (!$assertionsDisabled && !idFun.isIdentity()) {
                    throw new AssertionError();
                }
            } catch (IllegalAccessException | NoSuchMethodException ex) {
                throw MethodHandleStatics.newInternalError(ex);
            }
        }
    }

    private static int identity_I(int x10) {
        return x10;
    }

    private static long identity_J(long x10) {
        return x10;
    }

    private static float identity_F(float x10) {
        return x10;
    }

    private static double identity_D(double x10) {
        return x10;
    }

    private static Object identity_L(Object x10) {
        return x10;
    }

    private static void identity_V() {
    }

    final class Holder {
        Holder(LambdaForm this$0) {
            Objects.requireNonNull(this$0);
        }
    }
}
