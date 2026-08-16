package java.lang.invoke;

import java.lang.classfile.Annotation;
import java.lang.classfile.AnnotationElement;
import java.lang.classfile.ClassBuilder;
import java.lang.classfile.ClassFile;
import java.lang.classfile.ClassFileBuilder;
import java.lang.classfile.CodeBuilder;
import java.lang.classfile.Label;
import java.lang.classfile.MethodBuilder;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import java.lang.classfile.attribute.RuntimeVisibleAnnotationsAttribute;
import java.lang.classfile.attribute.SourceFileAttribute;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.ConstantPoolBuilder;
import java.lang.classfile.constantpool.FieldRefEntry;
import java.lang.classfile.constantpool.InterfaceMethodRefEntry;
import java.lang.classfile.instruction.SwitchCase;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.DelegatingMethodHandle;
import java.lang.invoke.DirectMethodHandle;
import java.lang.invoke.Invokers;
import java.lang.invoke.LambdaForm;
import java.lang.invoke.MemberName;
import java.lang.invoke.MethodHandleImpl;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Modifier;
import java.lang.runtime.ObjectMethods;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.stream.Stream;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import jdk.internal.misc.Unsafe;
import sun.invoke.util.VerifyAccess;
import sun.invoke.util.VerifyType;
import sun.invoke.util.Wrapper;

public class InvokerBytecodeGenerator {
    private static final ClassDesc CD_CasesHolder;
    private static final ClassDesc CD_DirectMethodHandle;
    private static final ClassDesc CD_MemberName;
    private static final ClassDesc CD_MethodHandleImpl;
    private static final ClassDesc CD_LambdaForm;
    private static final ClassDesc CD_LambdaForm_Name;
    private static final ClassDesc CD_LoopClauses;
    private static final ClassDesc CD_Object_array;
    private static final ClassDesc CD_MethodHandle_array;
    private static final ClassDesc CD_MethodHandle_array2;
    private static final MethodTypeDesc MTD_boolean_Object;
    private static final MethodTypeDesc MTD_Object_int;
    private static final MethodTypeDesc MTD_Object_Class;
    private static final MethodTypeDesc MTD_Object_Object;
    private static final String CLASS_PREFIX = "java/lang/invoke/LambdaForm$";
    private static final String SOURCE_PREFIX = "LambdaForm$";
    static final ClassDesc INVOKER_SUPER_DESC;
    private final String name;
    private final String className;
    private final ConstantPoolBuilder pool;
    private final ClassEntry classEntry;
    private final LambdaForm lambdaForm;
    private final String invokerName;
    private final MethodType invokerType;
    private int[] localsMap;
    private Class<?>[] localClasses;
    private final List<ClassData> classData;
    private static final MemberName.Factory MEMBERNAME_FACTORY;
    private static final Class<?> HOST_CLASS;
    private static final MethodHandles.Lookup LOOKUP;
    private static final HashMap<String, Integer> DUMP_CLASS_FILES_COUNTERS;
    static final Annotation DONTINLINE;
    static final Annotation FORCEINLINE;
    static final Annotation HIDDEN;
    static final Annotation INJECTEDPROFILE;
    static final Annotation LF_COMPILED;
    public static final RuntimeVisibleAnnotationsAttribute LF_DONTINLINE_ANNOTATIONS;
    public static final RuntimeVisibleAnnotationsAttribute LF_DONTINLINE_PROFILE_ANNOTATIONS;
    public static final RuntimeVisibleAnnotationsAttribute LF_FORCEINLINE_ANNOTATIONS;
    public static final RuntimeVisibleAnnotationsAttribute LF_FORCEINLINE_PROFILE_ANNOTATIONS;
    private static final Class<?>[] STATICALLY_INVOCABLE_PACKAGES;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !InvokerBytecodeGenerator.class.desiredAssertionStatus();
        CD_CasesHolder = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/MethodHandleImpl$CasesHolder;");
        CD_DirectMethodHandle = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/DirectMethodHandle;");
        CD_MemberName = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/MemberName;");
        CD_MethodHandleImpl = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/MethodHandleImpl;");
        CD_LambdaForm = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/LambdaForm;");
        CD_LambdaForm_Name = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/LambdaForm$Name;");
        CD_LoopClauses = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/MethodHandleImpl$LoopClauses;");
        CD_Object_array = ConstantUtils.CD_Object_array;
        CD_MethodHandle_array = ConstantDescs.CD_MethodHandle.arrayType();
        CD_MethodHandle_array2 = CD_MethodHandle_array.arrayType();
        MTD_boolean_Object = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_boolean, new ClassDesc[]{ConstantDescs.CD_Object});
        MTD_Object_int = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{ConstantDescs.CD_int});
        MTD_Object_Class = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{ConstantDescs.CD_Class});
        MTD_Object_Object = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{ConstantDescs.CD_Object});
        INVOKER_SUPER_DESC = ConstantDescs.CD_Object;
        MEMBERNAME_FACTORY = MemberName.getFactory();
        HOST_CLASS = LambdaForm.class;
        LOOKUP = lookup();
        DUMP_CLASS_FILES_COUNTERS = MethodHandleStatics.dumper().isEnabled() ? new HashMap<>() : null;
        DONTINLINE = Annotation.of((ClassDesc) ClassOrInterfaceDescImpl.ofValidated("Ljdk/internal/vm/annotation/DontInline;"), new AnnotationElement[0]);
        FORCEINLINE = Annotation.of((ClassDesc) ClassOrInterfaceDescImpl.ofValidated("Ljdk/internal/vm/annotation/ForceInline;"), new AnnotationElement[0]);
        HIDDEN = Annotation.of((ClassDesc) ClassOrInterfaceDescImpl.ofValidated("Ljdk/internal/vm/annotation/Hidden;"), new AnnotationElement[0]);
        INJECTEDPROFILE = Annotation.of((ClassDesc) ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/InjectedProfile;"), new AnnotationElement[0]);
        LF_COMPILED = Annotation.of((ClassDesc) ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/LambdaForm$Compiled;"), new AnnotationElement[0]);
        LF_DONTINLINE_ANNOTATIONS = RuntimeVisibleAnnotationsAttribute.of(HIDDEN, LF_COMPILED, DONTINLINE);
        LF_DONTINLINE_PROFILE_ANNOTATIONS = RuntimeVisibleAnnotationsAttribute.of(HIDDEN, LF_COMPILED, DONTINLINE, INJECTEDPROFILE);
        LF_FORCEINLINE_ANNOTATIONS = RuntimeVisibleAnnotationsAttribute.of(HIDDEN, LF_COMPILED, FORCEINLINE);
        LF_FORCEINLINE_PROFILE_ANNOTATIONS = RuntimeVisibleAnnotationsAttribute.of(HIDDEN, LF_COMPILED, FORCEINLINE, INJECTEDPROFILE);
        STATICALLY_INVOCABLE_PACKAGES = new Class[]{Object.class, Arrays.class, Unsafe.class};
    }

    private static MethodHandles.Lookup lookup() {
        try {
            return MethodHandles.privateLookupIn(HOST_CLASS, MethodHandles.Lookup.IMPL_LOOKUP);
        } catch (IllegalAccessException e10) {
            throw MethodHandleStatics.newInternalError(e10);
        }
    }

    private InvokerBytecodeGenerator(LambdaForm lambdaForm, int localsMapSize, String name, String invokerName, MethodType invokerType) {
        this.pool = ConstantPoolBuilder.of();
        this.classData = new ArrayList();
        int p10 = invokerName.indexOf(46);
        if (p10 > -1) {
            name = invokerName.substring(0, p10);
            invokerName = invokerName.substring(p10 + 1);
        }
        name = MethodHandleStatics.dumper().isEnabled() ? makeDumpableClassName(name) : name;
        this.name = name;
        this.className = CLASS_PREFIX.concat(name);
        ConstantUtils.validateInternalClassName(name);
        this.classEntry = this.pool.classEntry(ConstantUtils.internalNameToDesc(this.className));
        this.lambdaForm = lambdaForm;
        this.invokerName = invokerName;
        this.invokerType = invokerType;
        this.localsMap = new int[localsMapSize + 1];
        this.localClasses = new Class[localsMapSize + 1];
    }

    private InvokerBytecodeGenerator(String name, String invokerName, MethodType invokerType) {
        this(null, invokerType.parameterCount(), name, invokerName, invokerType);
        MethodType mt = invokerType.erase();
        this.localsMap[0] = 0;
        int index = 0;
        for (int i10 = 1; i10 < this.localsMap.length; i10++) {
            Class<?> cl2 = mt.parameterType(i10 - 1);
            index += (cl2 == Long.TYPE || cl2 == Double.TYPE) ? 2 : 1;
            this.localsMap[i10] = index;
        }
    }

    private InvokerBytecodeGenerator(String name, LambdaForm form, MethodType invokerType) {
        this(name, form.lambdaName(), form, invokerType);
    }

    public InvokerBytecodeGenerator(String name, String invokerName, LambdaForm form, MethodType invokerType) {
        this(form, form.names.length, name, invokerName, invokerType);
        LambdaForm.Name[] names = form.names;
        int index = 0;
        for (int i10 = 0; i10 < this.localsMap.length; i10++) {
            this.localsMap[i10] = index;
            if (i10 < names.length) {
                LambdaForm.BasicType type = names[i10].type();
                index += type.basicTypeSlots();
            }
        }
    }

    private static String makeDumpableClassName(String className) {
        Integer ctr;
        synchronized (DUMP_CLASS_FILES_COUNTERS) {
            ctr = DUMP_CLASS_FILES_COUNTERS.get(className);
            if (ctr == null) {
                ctr = 0;
            }
            DUMP_CLASS_FILES_COUNTERS.put(className, Integer.valueOf(ctr.intValue() + 1));
        }
        StringBuilder buf = new StringBuilder(className.length() + 3).append(className);
        int ctrVal = ctr.intValue();
        if (ctrVal < 10) {
            buf.repeat(48, 2);
        } else if (ctrVal < 100) {
            buf.append('0');
        }
        buf.append(ctrVal);
        return buf.toString();
    }

    public static final class ClassData extends Record {
        private final FieldRefEntry field;
        private final Object value;

        ClassData(FieldRefEntry field, Object value) {
            this.field = field;
            this.value = value;
        }

        @Override
        public final String toString() {
            return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, ClassData.class), ClassData.class, "field;value", "FIELD:Ljava/lang/invoke/InvokerBytecodeGenerator$ClassData;->field:Ljava/lang/classfile/constantpool/FieldRefEntry;", "FIELD:Ljava/lang/invoke/InvokerBytecodeGenerator$ClassData;->value:Ljava/lang/Object;").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final int hashCode() {
            return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, ClassData.class), ClassData.class, "field;value", "FIELD:Ljava/lang/invoke/InvokerBytecodeGenerator$ClassData;->field:Ljava/lang/classfile/constantpool/FieldRefEntry;", "FIELD:Ljava/lang/invoke/InvokerBytecodeGenerator$ClassData;->value:Ljava/lang/Object;").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final boolean equals(Object o10) {
            return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, ClassData.class, Object.class), ClassData.class, "field;value", "FIELD:Ljava/lang/invoke/InvokerBytecodeGenerator$ClassData;->field:Ljava/lang/classfile/constantpool/FieldRefEntry;", "FIELD:Ljava/lang/invoke/InvokerBytecodeGenerator$ClassData;->value:Ljava/lang/Object;").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
        }

        public FieldRefEntry field() {
            return this.field;
        }

        public Object value() {
            return this.value;
        }
    }

    FieldRefEntry classData(ClassFileBuilder<?, ?> cfb, Object arg, ClassDesc desc) {
        String name;
        Class<?> c10;
        List<ClassData> classData = this.classData;
        if (MethodHandleStatics.dumper().isEnabled()) {
            Class<?> cls = arg.getClass();
            while (true) {
                c10 = cls;
                if (!c10.isArray()) {
                    break;
                }
                cls = c10.getComponentType();
            }
            name = "_DATA_" + c10.getSimpleName() + ConstantDescs.DEFAULT_NAME + classData.size();
        } else {
            name = "_D_" + classData.size();
        }
        FieldRefEntry field = this.pool.fieldRefEntry(this.classEntry, this.pool.nameAndTypeEntry(name, desc));
        classData.add(new ClassData(field, arg));
        return field;
    }

    private MemberName loadMethod(byte[] classFile) {
        Class<?> invokerClass = LOOKUP.makeHiddenClassDefiner(this.className, classFile, MethodHandleStatics.dumper()).defineClass(true, classDataValues());
        return resolveInvokerMember(invokerClass, this.invokerName, this.invokerType);
    }

    private static MemberName resolveInvokerMember(Class<?> invokerClass, String name, MethodType type) {
        MemberName member = new MemberName(invokerClass, name, type, (byte) 6);
        try {
            return MEMBERNAME_FACTORY.resolveOrFail((byte) 6, member, HOST_CLASS, -1, ReflectiveOperationException.class);
        } catch (ReflectiveOperationException e10) {
            throw MethodHandleStatics.newInternalError(e10);
        }
    }

    private byte[] classFileSetup(final Consumer<? super ClassBuilder> config) {
        try {
            return ClassFile.of().build(this.classEntry, this.pool, new Consumer<ClassBuilder>(this) {
                final InvokerBytecodeGenerator this$0;

                {
                    Objects.requireNonNull(this);
                    this.this$0 = this;
                }

                @Override
                public void accept(ClassBuilder clb) {
                    clb.withFlags(48).withSuperclass(InvokerBytecodeGenerator.INVOKER_SUPER_DESC).with(SourceFileAttribute.of(clb.constantPool().utf8Entry(InvokerBytecodeGenerator.SOURCE_PREFIX + this.this$0.name)));
                    config.accept(clb);
                }
            });
        } catch (RuntimeException e10) {
            throw new BytecodeGenerationException(e10);
        }
    }

    private void methodSetup(ClassBuilder clb, Consumer<? super MethodBuilder> config) {
        MethodTypeDesc invokerDesc = methodDesc(this.invokerType);
        clb.withMethod(this.invokerName, invokerDesc, 8, config);
    }

    private Object classDataValues() {
        List<ClassData> cd2 = this.classData;
        int size = cd2.size();
        switch (size) {
            case 0:
                return null;
            case 1:
                return cd2.get(0).value;
            case 2:
                return List.of(cd2.get(0).value, cd2.get(1).value);
            case 3:
                return List.of(cd2.get(0).value, cd2.get(1).value, cd2.get(2).value);
            case 4:
                return List.of(cd2.get(0).value, cd2.get(1).value, cd2.get(2).value, cd2.get(3).value);
            default:
                Object[] data = new Object[size];
                for (int i10 = 0; i10 < size; i10++) {
                    data[i10] = this.classData.get(i10).value;
                }
                return List.of(data);
        }
    }

    static void clinit(final ClassBuilder clb, final ClassEntry classEntry, final List<ClassData> classData) {
        if (classData.isEmpty()) {
            return;
        }
        clb.withMethodBody(ConstantDescs.CLASS_INIT_NAME, ConstantDescs.MTD_void, 8, new Consumer<CodeBuilder>() {
            @Override
            public void accept(CodeBuilder cob) {
                cob.ldc(ClassEntry.this).invokestatic(ConstantDescs.CD_MethodHandles, "classData", InvokerBytecodeGenerator.MTD_Object_Class);
                int size = classData.size();
                if (size == 1) {
                    FieldRefEntry field = ((ClassData) classData.getFirst()).field;
                    clb.withField(field.name(), field.type(), 24);
                    ClassDesc ft = field.typeSymbol();
                    if (ft != ConstantDescs.CD_Object) {
                        cob.checkcast(ft);
                    }
                    cob.putstatic(field);
                } else {
                    cob.checkcast(ConstantDescs.CD_List).astore(0);
                    int index = 0;
                    InterfaceMethodRefEntry listGet = cob.constantPool().interfaceMethodRefEntry(ConstantDescs.CD_List, "get", InvokerBytecodeGenerator.MTD_Object_int);
                    for (int i10 = 0; i10 < size; i10++) {
                        FieldRefEntry field2 = ((ClassData) classData.get(i10)).field;
                        clb.withField(field2.name(), field2.type(), 24);
                        int i11 = index;
                        index++;
                        cob.aload(0).loadConstant(i11).invokeinterface(listGet);
                        ClassDesc ft2 = field2.typeSymbol();
                        if (ft2 != ConstantDescs.CD_Object) {
                            cob.checkcast(ft2);
                        }
                        cob.putstatic(field2);
                    }
                }
                cob.return_();
            }
        });
    }

    private void emitLoadInsn(CodeBuilder cob, TypeKind type, int index) {
        cob.loadLocal(type, this.localsMap[index]);
    }

    private void emitStoreInsn(CodeBuilder cob, TypeKind type, int index) {
        cob.storeLocal(type, this.localsMap[index]);
    }

    private void emitBoxing(CodeBuilder cob, TypeKind tk2) {
        TypeConvertingMethodAdapter.box(cob, tk2);
    }

    private void emitUnboxing(CodeBuilder cob, TypeKind target) {
        switch (target) {
            case BOOLEAN:
                emitReferenceCast(cob, Boolean.class, null);
                break;
            case CHAR:
                emitReferenceCast(cob, Character.class, null);
                break;
            case BYTE:
            case DOUBLE:
            case FLOAT:
            case INT:
            case LONG:
            case SHORT:
                emitReferenceCast(cob, Number.class, null);
                break;
        }
        TypeConvertingMethodAdapter.unbox(cob, target);
    }

    private void emitImplicitConversion(CodeBuilder cob, LambdaForm.BasicType ptype, Class<?> pclass, Object arg) {
        if (!$assertionsDisabled && LambdaForm.BasicType.basicType(pclass) != ptype) {
            throw new AssertionError();
        }
        if (pclass == ptype.basicTypeClass() && ptype != LambdaForm.BasicType.L_TYPE) {
            return;
        }
        switch (ptype) {
            case L_TYPE:
                if (VerifyType.isNullConversion(Object.class, pclass, false)) {
                    if (MethodHandleStatics.PROFILE_LEVEL > 0) {
                        emitReferenceCast(cob, Object.class, arg);
                        return;
                    }
                    return;
                }
                emitReferenceCast(cob, pclass, arg);
                return;
            case I_TYPE:
                if (!VerifyType.isNullConversion(Integer.TYPE, pclass, false)) {
                    emitPrimCast(cob, ptype.basicTypeKind(), TypeKind.from(pclass));
                    return;
                }
                return;
            default:
                throw MethodHandleStatics.newInternalError("bad implicit conversion: tc=" + ((Object) ptype) + ": " + ((Object) pclass));
        }
    }

    private boolean assertStaticType(Class<?> cls, LambdaForm.Name n10) {
        int local = n10.index();
        Class<?> aclass = this.localClasses[local];
        if (aclass != null && (aclass == cls || cls.isAssignableFrom(aclass))) {
            return true;
        }
        if (aclass == null || aclass.isAssignableFrom(cls)) {
            this.localClasses[local] = cls;
            return false;
        }
        return false;
    }

    private void emitReferenceCast(CodeBuilder cob, Class<?> cls, Object arg) {
        LambdaForm.Name writeBack = null;
        if (arg instanceof LambdaForm.Name) {
            LambdaForm.Name n10 = (LambdaForm.Name) arg;
            if (this.lambdaForm.useCount(n10) > 1) {
                writeBack = n10;
                if (assertStaticType(cls, n10)) {
                    return;
                }
            }
        }
        if (isStaticallyNameable(cls)) {
            ClassDesc sig = classDesc(cls);
            cob.checkcast(sig);
        } else {
            cob.getstatic(classData(cob, cls, ConstantDescs.CD_Class)).swap().invokevirtual(ConstantDescs.CD_Class, "cast", MTD_Object_Object);
            if (Object[].class.isAssignableFrom(cls)) {
                cob.checkcast(CD_Object_array);
            } else if (MethodHandleStatics.PROFILE_LEVEL > 0) {
                cob.checkcast(ConstantDescs.CD_Object);
            }
        }
        if (writeBack != null) {
            cob.dup();
            emitStoreInsn(cob, TypeKind.REFERENCE, writeBack.index());
        }
    }

    private static MemberName resolveFrom(String name, MethodType type, Class<?> holder) {
        if (!$assertionsDisabled && MethodHandleStatics.UNSAFE.shouldBeInitialized(holder)) {
            throw new AssertionError((Object) (((Object) holder) + "not initialized"));
        }
        MemberName member = new MemberName(holder, name, type, (byte) 6);
        MemberName resolvedMember = MemberName.getFactory().resolveOrNull((byte) 6, member, holder, -1);
        MethodHandleStatics.traceLambdaForm(name, type, holder, resolvedMember);
        return resolvedMember;
    }

    private static MemberName lookupPregenerated(LambdaForm form, MethodType invokerType) {
        if (form.customized != null) {
            return null;
        }
        String name = form.kind.methodName;
        switch (form.kind) {
            case BOUND_REINVOKER:
                return resolveFrom(name + ConstantDescs.DEFAULT_NAME + ((String) BoundMethodHandle.speciesDataFor(form).key()), invokerType, DelegatingMethodHandle.Holder.class);
            case DELEGATE:
                return resolveFrom(name, invokerType, DelegatingMethodHandle.Holder.class);
            case IDENTITY:
            case CONSTANT:
                return resolveFrom(name + ConstantDescs.DEFAULT_NAME + form.returnType().basicTypeChar(), invokerType, LambdaForm.Holder.class);
            case EXACT_INVOKER:
            case EXACT_LINKER:
            case LINK_TO_CALL_SITE:
            case LINK_TO_TARGET_METHOD:
            case GENERIC_INVOKER:
            case GENERIC_LINKER:
                return resolveFrom(name, invokerType, Invokers.Holder.class);
            case FIELD_ACCESS:
            case FIELD_ACCESS_INIT:
            case VOLATILE_FIELD_ACCESS:
            case VOLATILE_FIELD_ACCESS_INIT:
            case FIELD_ACCESS_B:
            case FIELD_ACCESS_INIT_B:
            case VOLATILE_FIELD_ACCESS_B:
            case VOLATILE_FIELD_ACCESS_INIT_B:
            case FIELD_ACCESS_C:
            case FIELD_ACCESS_INIT_C:
            case VOLATILE_FIELD_ACCESS_C:
            case VOLATILE_FIELD_ACCESS_INIT_C:
            case FIELD_ACCESS_S:
            case FIELD_ACCESS_INIT_S:
            case VOLATILE_FIELD_ACCESS_S:
            case VOLATILE_FIELD_ACCESS_INIT_S:
            case FIELD_ACCESS_Z:
            case FIELD_ACCESS_INIT_Z:
            case VOLATILE_FIELD_ACCESS_Z:
            case VOLATILE_FIELD_ACCESS_INIT_Z:
            case FIELD_ACCESS_CAST:
            case FIELD_ACCESS_INIT_CAST:
            case VOLATILE_FIELD_ACCESS_CAST:
            case VOLATILE_FIELD_ACCESS_INIT_CAST:
            case DIRECT_NEW_INVOKE_SPECIAL:
            case DIRECT_INVOKE_INTERFACE:
            case DIRECT_INVOKE_SPECIAL:
            case DIRECT_INVOKE_SPECIAL_IFC:
            case DIRECT_INVOKE_STATIC:
            case DIRECT_INVOKE_STATIC_INIT:
            case DIRECT_INVOKE_VIRTUAL:
                return resolveFrom(name, invokerType, DirectMethodHandle.Holder.class);
            default:
                return null;
        }
    }

    public static MemberName generateCustomizedCode(LambdaForm form, MethodType invokerType) {
        MemberName pregenerated = lookupPregenerated(form, invokerType);
        if (pregenerated != null) {
            return pregenerated;
        }
        InvokerBytecodeGenerator g10 = new InvokerBytecodeGenerator("MH", form, invokerType);
        return g10.loadMethod(g10.generateCustomizedCodeBytes());
    }

    private boolean checkActualReceiver(CodeBuilder cob) {
        cob.dup().aload(0).invokestatic(CD_MethodHandleImpl, "assertSame", MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{ConstantDescs.CD_Object, ConstantDescs.CD_Object}));
        return true;
    }

    private byte[] generateCustomizedCodeBytes() {
        byte[] classFile = classFileSetup(new Consumer<ClassBuilder>(this) {
            final InvokerBytecodeGenerator this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            @Override
            public void accept(ClassBuilder clb) {
                this.this$0.addMethod(clb, true);
                InvokerBytecodeGenerator.clinit(clb, this.this$0.classEntry, this.this$0.classData);
                this.this$0.bogusMethod(clb, this.this$0.lambdaForm);
            }
        });
        return classFile;
    }

    public void addMethod(ClassBuilder clb, final boolean alive) {
        methodSetup(clb, new Consumer<MethodBuilder>(this) {
            final InvokerBytecodeGenerator this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            @Override
            public void accept(final MethodBuilder mb2) {
                if (this.this$0.lambdaForm.forceInline) {
                    mb2.accept((MethodBuilder) InvokerBytecodeGenerator.LF_FORCEINLINE_ANNOTATIONS);
                } else {
                    mb2.accept((MethodBuilder) InvokerBytecodeGenerator.LF_DONTINLINE_ANNOTATIONS);
                }
                if (alive) {
                    this.this$0.classData(mb2, this.this$0.lambdaForm, InvokerBytecodeGenerator.CD_LambdaForm);
                }
                mb2.withCode(new Consumer<CodeBuilder>(this) {
                    static final boolean $assertionsDisabled;
                    final AnonymousClass4 this$1;

                    {
                        Objects.requireNonNull(this);
                        this.this$1 = this;
                    }

                    static {
                        $assertionsDisabled = !InvokerBytecodeGenerator.class.desiredAssertionStatus();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:33:0x0137 A[SYNTHETIC] */
                    @Override
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void accept(CodeBuilder cob) {
                        boolean z10;
                        if (this.this$1.this$0.lambdaForm.customized != null) {
                            cob.getstatic(this.this$1.this$0.classData(cob, this.this$1.this$0.lambdaForm.customized, ConstantDescs.CD_MethodHandle));
                            if (!$assertionsDisabled && !this.this$1.this$0.checkActualReceiver(cob)) {
                                throw new AssertionError();
                            }
                            cob.astore(0);
                        }
                        LambdaForm.Name onStack = null;
                        int i10 = this.this$1.this$0.lambdaForm.arity;
                        while (i10 < this.this$1.this$0.lambdaForm.names.length) {
                            LambdaForm.Name name = this.this$1.this$0.lambdaForm.names[i10];
                            this.this$1.this$0.emitStoreResult(cob, onStack);
                            onStack = name;
                            MethodHandleImpl.Intrinsic intr = name.function.intrinsicName();
                            switch (AnonymousClass8.$SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[intr.ordinal()]) {
                                case 1:
                                    if (!$assertionsDisabled && !this.this$1.this$0.lambdaForm.isSelectAlternative(i10)) {
                                        throw new AssertionError();
                                    }
                                    if (MethodHandleStatics.PROFILE_GWT) {
                                        if (!$assertionsDisabled) {
                                            Object obj = name.arguments[0];
                                            if (obj instanceof LambdaForm.Name) {
                                                LambdaForm.Name n10 = (LambdaForm.Name) obj;
                                                if (n10.refersTo(MethodHandleImpl.class, "profileBoolean")) {
                                                    z10 = true;
                                                    if (!z10) {
                                                        throw new AssertionError();
                                                    }
                                                }
                                            }
                                            z10 = false;
                                            if (!z10) {
                                            }
                                        }
                                        if (this.this$1.this$0.lambdaForm.forceInline) {
                                            mb2.with(InvokerBytecodeGenerator.LF_FORCEINLINE_PROFILE_ANNOTATIONS);
                                        } else {
                                            mb2.with(InvokerBytecodeGenerator.LF_DONTINLINE_PROFILE_ANNOTATIONS);
                                        }
                                    }
                                    onStack = this.this$1.this$0.emitSelectAlternative(cob, name, this.this$1.this$0.lambdaForm.names[i10 + 1]);
                                    i10++;
                                    break;
                                case 2:
                                    if (!$assertionsDisabled && !this.this$1.this$0.lambdaForm.isGuardWithCatch(i10)) {
                                        throw new AssertionError();
                                    }
                                    onStack = this.this$1.this$0.emitGuardWithCatch(cob, i10);
                                    i10 += 2;
                                    break;
                                case 3:
                                    if (!$assertionsDisabled && !this.this$1.this$0.lambdaForm.isTryFinally(i10)) {
                                        throw new AssertionError();
                                    }
                                    onStack = this.this$1.this$0.emitTryFinally(cob, i10);
                                    i10 += 2;
                                    break;
                                case 4:
                                    if (!$assertionsDisabled && !this.this$1.this$0.lambdaForm.isTableSwitch(i10)) {
                                        throw new AssertionError();
                                    }
                                    int numCases = ((Integer) name.function.intrinsicData()).intValue();
                                    onStack = this.this$1.this$0.emitTableSwitch(cob, i10, numCases);
                                    i10 += 2;
                                    break;
                                case 5:
                                    if (!$assertionsDisabled && !this.this$1.this$0.lambdaForm.isLoop(i10)) {
                                        throw new AssertionError();
                                    }
                                    onStack = this.this$1.this$0.emitLoop(cob, i10);
                                    i10 += 2;
                                    break;
                                case 6:
                                    this.this$1.this$0.emitArrayLoad(cob, name);
                                    break;
                                case 7:
                                    this.this$1.this$0.emitArrayStore(cob, name);
                                    break;
                                case 8:
                                    this.this$1.this$0.emitArrayLength(cob, name);
                                    break;
                                case 9:
                                    if (!$assertionsDisabled && name.arguments.length != 1) {
                                        throw new AssertionError();
                                    }
                                    this.this$1.this$0.emitPushArguments(cob, name, 0);
                                    break;
                                case 10:
                                    MemberName member = name.function.member();
                                    if (InvokerBytecodeGenerator.isStaticallyInvocable(member)) {
                                        this.this$1.this$0.emitStaticInvoke(cob, member, name);
                                        break;
                                    } else {
                                        this.this$1.this$0.emitInvoke(cob, name);
                                        break;
                                    }
                                default:
                                    throw MethodHandleStatics.newInternalError("Unknown intrinsic: " + ((Object) intr));
                            }
                            i10++;
                        }
                        this.this$1.this$0.emitReturn(cob, onStack);
                    }
                });
            }
        });
    }

    public static class AnonymousClass8 {
        static final int[] $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic = new int[MethodHandleImpl.Intrinsic.values().length];

        static {
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.SELECT_ALTERNATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.GUARD_WITH_CATCH.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.TRY_FINALLY.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.TABLE_SWITCH.ordinal()] = 4;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.LOOP.ordinal()] = 5;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.ARRAY_LOAD.ordinal()] = 6;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.ARRAY_STORE.ordinal()] = 7;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.ARRAY_LENGTH.ordinal()] = 8;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.IDENTITY.ordinal()] = 9;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$java$lang$invoke$MethodHandleImpl$Intrinsic[MethodHandleImpl.Intrinsic.NONE.ordinal()] = 10;
            } catch (NoSuchFieldError e19) {
            }
            $SwitchMap$java$lang$invoke$LambdaForm$Kind = new int[LambdaForm.Kind.values().length];
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.BOUND_REINVOKER.ordinal()] = 1;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.DELEGATE.ordinal()] = 2;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.IDENTITY.ordinal()] = 3;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.CONSTANT.ordinal()] = 4;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.EXACT_INVOKER.ordinal()] = 5;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.EXACT_LINKER.ordinal()] = 6;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.LINK_TO_CALL_SITE.ordinal()] = 7;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.LINK_TO_TARGET_METHOD.ordinal()] = 8;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.GENERIC_INVOKER.ordinal()] = 9;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.GENERIC_LINKER.ordinal()] = 10;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS.ordinal()] = 11;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_INIT.ordinal()] = 12;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS.ordinal()] = 13;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT.ordinal()] = 14;
            } catch (NoSuchFieldError e33) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_B.ordinal()] = 15;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_INIT_B.ordinal()] = 16;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_B.ordinal()] = 17;
            } catch (NoSuchFieldError e36) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_B.ordinal()] = 18;
            } catch (NoSuchFieldError e37) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_C.ordinal()] = 19;
            } catch (NoSuchFieldError e38) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_INIT_C.ordinal()] = 20;
            } catch (NoSuchFieldError e39) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_C.ordinal()] = 21;
            } catch (NoSuchFieldError e40) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_C.ordinal()] = 22;
            } catch (NoSuchFieldError e41) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_S.ordinal()] = 23;
            } catch (NoSuchFieldError e42) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_INIT_S.ordinal()] = 24;
            } catch (NoSuchFieldError e43) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_S.ordinal()] = 25;
            } catch (NoSuchFieldError e44) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_S.ordinal()] = 26;
            } catch (NoSuchFieldError e45) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_Z.ordinal()] = 27;
            } catch (NoSuchFieldError e46) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_INIT_Z.ordinal()] = 28;
            } catch (NoSuchFieldError e47) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_Z.ordinal()] = 29;
            } catch (NoSuchFieldError e48) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_Z.ordinal()] = 30;
            } catch (NoSuchFieldError e49) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_CAST.ordinal()] = 31;
            } catch (NoSuchFieldError e50) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.FIELD_ACCESS_INIT_CAST.ordinal()] = 32;
            } catch (NoSuchFieldError e51) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_CAST.ordinal()] = 33;
            } catch (NoSuchFieldError e52) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.VOLATILE_FIELD_ACCESS_INIT_CAST.ordinal()] = 34;
            } catch (NoSuchFieldError e53) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.DIRECT_NEW_INVOKE_SPECIAL.ordinal()] = 35;
            } catch (NoSuchFieldError e54) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.DIRECT_INVOKE_INTERFACE.ordinal()] = 36;
            } catch (NoSuchFieldError e55) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.DIRECT_INVOKE_SPECIAL.ordinal()] = 37;
            } catch (NoSuchFieldError e56) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.DIRECT_INVOKE_SPECIAL_IFC.ordinal()] = 38;
            } catch (NoSuchFieldError e57) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.DIRECT_INVOKE_STATIC.ordinal()] = 39;
            } catch (NoSuchFieldError e58) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.DIRECT_INVOKE_STATIC_INIT.ordinal()] = 40;
            } catch (NoSuchFieldError e59) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$Kind[LambdaForm.Kind.DIRECT_INVOKE_VIRTUAL.ordinal()] = 41;
            } catch (NoSuchFieldError e60) {
            }
            $SwitchMap$java$lang$invoke$LambdaForm$BasicType = new int[LambdaForm.BasicType.values().length];
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$BasicType[LambdaForm.BasicType.L_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e61) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$BasicType[LambdaForm.BasicType.I_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e62) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$BasicType[LambdaForm.BasicType.F_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e63) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$BasicType[LambdaForm.BasicType.J_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e64) {
            }
            try {
                $SwitchMap$java$lang$invoke$LambdaForm$BasicType[LambdaForm.BasicType.D_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e65) {
            }
            $SwitchMap$java$lang$classfile$TypeKind = new int[TypeKind.values().length];
            try {
                $SwitchMap$java$lang$classfile$TypeKind[TypeKind.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e66) {
            }
            try {
                $SwitchMap$java$lang$classfile$TypeKind[TypeKind.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError e67) {
            }
            try {
                $SwitchMap$java$lang$classfile$TypeKind[TypeKind.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e68) {
            }
            try {
                $SwitchMap$java$lang$classfile$TypeKind[TypeKind.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e69) {
            }
            try {
                $SwitchMap$java$lang$classfile$TypeKind[TypeKind.FLOAT.ordinal()] = 5;
            } catch (NoSuchFieldError e70) {
            }
            try {
                $SwitchMap$java$lang$classfile$TypeKind[TypeKind.INT.ordinal()] = 6;
            } catch (NoSuchFieldError e71) {
            }
            try {
                $SwitchMap$java$lang$classfile$TypeKind[TypeKind.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError e72) {
            }
            try {
                $SwitchMap$java$lang$classfile$TypeKind[TypeKind.SHORT.ordinal()] = 8;
            } catch (NoSuchFieldError e73) {
            }
        }
    }

    public static final class BytecodeGenerationException extends RuntimeException {
        BytecodeGenerationException(Exception cause) {
            super(cause);
        }
    }

    void emitArrayLoad(CodeBuilder cob, LambdaForm.Name name) {
        Class<?> elementType = name.function.methodType().parameterType(0).getComponentType();
        if (!$assertionsDisabled && elementType == null) {
            throw new AssertionError();
        }
        emitPushArguments(cob, name, 0);
        if (elementType.isPrimitive()) {
            cob.arrayLoad(TypeKind.from(elementType));
        } else {
            cob.aaload();
        }
    }

    void emitArrayStore(CodeBuilder cob, LambdaForm.Name name) {
        Class<?> elementType = name.function.methodType().parameterType(0).getComponentType();
        if (!$assertionsDisabled && elementType == null) {
            throw new AssertionError();
        }
        emitPushArguments(cob, name, 0);
        if (elementType.isPrimitive()) {
            cob.arrayStore(TypeKind.from(elementType));
        } else {
            cob.aastore();
        }
    }

    void emitArrayLength(CodeBuilder cob, LambdaForm.Name name) {
        if (!$assertionsDisabled && !name.function.methodType().parameterType(0).isArray()) {
            throw new AssertionError();
        }
        emitPushArguments(cob, name, 0);
        cob.arraylength();
    }

    void emitInvoke(CodeBuilder cob, LambdaForm.Name name) {
        if (!$assertionsDisabled && name.isLinkerMethodInvoke()) {
            throw new AssertionError();
        }
        MethodHandle target = name.function.resolvedHandle();
        if (!$assertionsDisabled && target == null) {
            throw new AssertionError((Object) name.exprString());
        }
        cob.getstatic(classData(cob, target, ConstantDescs.CD_MethodHandle));
        emitReferenceCast(cob, MethodHandle.class, target);
        emitPushArguments(cob, name, 0);
        MethodType type = name.function.methodType();
        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", methodDesc(type.basicType()));
    }

    public static boolean isStaticallyInvocable(LambdaForm.NamedFunction... functions) {
        for (LambdaForm.NamedFunction nf2 : functions) {
            if (!isStaticallyInvocable(nf2.member())) {
                return false;
            }
        }
        return true;
    }

    static boolean isStaticallyInvocable(LambdaForm.Name name) {
        return isStaticallyInvocable(name.function.member());
    }

    public static boolean isStaticallyInvocable(MemberName member) {
        if (member == null || member.isConstructor()) {
            return false;
        }
        Class<?> cls = member.getDeclaringClass();
        if (MethodHandle.class.isAssignableFrom(cls) && !member.isPrivate()) {
            if ($assertionsDisabled || isStaticallyInvocableType(member.getMethodOrFieldType())) {
                return true;
            }
            throw new AssertionError();
        }
        if (cls.isArray() || cls.isPrimitive() || cls.isAnonymousClass() || cls.isLocalClass() || cls.getClassLoader() != MethodHandle.class.getClassLoader() || cls.isHidden() || !isStaticallyInvocableType(member.getMethodOrFieldType())) {
            return false;
        }
        if (!member.isPrivate() && VerifyAccess.isSamePackage(MethodHandle.class, cls)) {
            return true;
        }
        if (member.isPublic() && isStaticallyNameable(cls)) {
            return true;
        }
        return false;
    }

    private static boolean isStaticallyInvocableType(MethodType mtype) {
        if (!isStaticallyNameable(mtype.returnType())) {
            return false;
        }
        for (Class<?> ptype : mtype.ptypes()) {
            if (!isStaticallyNameable(ptype)) {
                return false;
            }
        }
        return true;
    }

    static boolean isStaticallyNameable(Class<?> cls) {
        if (cls == Object.class) {
            return true;
        }
        if (MethodHandle.class.isAssignableFrom(cls)) {
            if ($assertionsDisabled || !cls.isHidden()) {
                return true;
            }
            throw new AssertionError();
        }
        while (cls.isArray()) {
            cls = cls.getComponentType();
        }
        if (cls.isPrimitive()) {
            return true;
        }
        if (cls.isHidden() || cls.getClassLoader() != Object.class.getClassLoader()) {
            return false;
        }
        if (VerifyAccess.isSamePackage(MethodHandle.class, cls)) {
            return true;
        }
        if (!Modifier.isPublic(cls.getModifiers())) {
            return false;
        }
        for (Class<?> pkgcls : STATICALLY_INVOCABLE_PACKAGES) {
            if (VerifyAccess.isSamePackage(pkgcls, cls)) {
                return true;
            }
        }
        return false;
    }

    void emitStaticInvoke(CodeBuilder cob, LambdaForm.Name name) {
        emitStaticInvoke(cob, name.function.member(), name);
    }

    void emitStaticInvoke(CodeBuilder cob, MemberName member, LambdaForm.Name name) {
        if (!$assertionsDisabled && !member.equals(name.function.member())) {
            throw new AssertionError();
        }
        Class<?> defc = member.getDeclaringClass();
        ClassDesc cdesc = classDesc(defc);
        String mname = member.getName();
        byte refKind = member.getReferenceKind();
        if (refKind == 7) {
            if (!$assertionsDisabled && !member.canBeStaticallyBound()) {
                throw new AssertionError(member);
            }
            refKind = 5;
        }
        if (!$assertionsDisabled && member.getDeclaringClass().isInterface() && refKind == 5) {
            throw new AssertionError();
        }
        emitPushArguments(cob, name, 0);
        if (member.isMethod()) {
            MethodTypeDesc methodTypeDesc = methodDesc(member.getMethodType());
            cob.invoke(refKindOpcode(refKind), cdesc, mname, methodTypeDesc, member.getDeclaringClass().isInterface());
        } else {
            ClassDesc fieldTypeDesc = classDesc(member.getFieldType());
            cob.fieldAccess(refKindOpcode(refKind), cdesc, mname, fieldTypeDesc);
        }
        if (name.type == LambdaForm.BasicType.L_TYPE) {
            Class<?> rtype = member.getInvocationType().returnType();
            if (!$assertionsDisabled && rtype.isPrimitive()) {
                throw new AssertionError();
            }
            if (rtype != Object.class && !rtype.isInterface()) {
                assertStaticType(rtype, name);
            }
        }
    }

    Opcode refKindOpcode(byte refKind) {
        switch (refKind) {
            case 1:
                return Opcode.GETFIELD;
            case 2:
                return Opcode.GETSTATIC;
            case 3:
                return Opcode.PUTFIELD;
            case 4:
                return Opcode.PUTSTATIC;
            case 5:
                return Opcode.INVOKEVIRTUAL;
            case 6:
                return Opcode.INVOKESTATIC;
            case 7:
                return Opcode.INVOKESPECIAL;
            case 8:
            default:
                throw new InternalError("refKind=" + ((int) refKind));
            case 9:
                return Opcode.INVOKEINTERFACE;
        }
    }

    private LambdaForm.Name emitSelectAlternative(CodeBuilder cob, LambdaForm.Name selectAlternativeName, LambdaForm.Name invokeBasicName) {
        if (!$assertionsDisabled && !isStaticallyInvocable(invokeBasicName)) {
            throw new AssertionError();
        }
        LambdaForm.Name receiver = (LambdaForm.Name) invokeBasicName.arguments[0];
        Label L_fallback = cob.newLabel();
        Label L_done = cob.newLabel();
        emitPushArgument(cob, selectAlternativeName, 0);
        cob.ifeq(L_fallback);
        Class<?>[] preForkClasses = (Class[]) this.localClasses.clone();
        emitPushArgument(cob, selectAlternativeName, 1);
        emitStoreInsn(cob, TypeKind.REFERENCE, receiver.index());
        emitStaticInvoke(cob, invokeBasicName);
        cob.goto_w(L_done).labelBinding(L_fallback);
        System.arraycopy(preForkClasses, 0, this.localClasses, 0, preForkClasses.length);
        emitPushArgument(cob, selectAlternativeName, 2);
        emitStoreInsn(cob, TypeKind.REFERENCE, receiver.index());
        emitStaticInvoke(cob, invokeBasicName);
        cob.labelBinding(L_done);
        System.arraycopy(preForkClasses, 0, this.localClasses, 0, preForkClasses.length);
        return invokeBasicName;
    }

    private LambdaForm.Name emitGuardWithCatch(CodeBuilder cob, int pos) {
        LambdaForm.Name args = this.lambdaForm.names[pos];
        LambdaForm.Name invoker = this.lambdaForm.names[pos + 1];
        LambdaForm.Name result = this.lambdaForm.names[pos + 2];
        Label L_startBlock = cob.newLabel();
        Label L_endBlock = cob.newLabel();
        Label L_handler = cob.newLabel();
        Label L_done = cob.newLabel();
        Class<?> returnType = result.function.resolvedHandle().type().returnType();
        MethodType type = args.function.resolvedHandle().type().dropParameterTypes(0, 1).changeReturnType(returnType);
        cob.exceptionCatch(L_startBlock, L_endBlock, L_handler, ConstantDescs.CD_Throwable).labelBinding(L_startBlock);
        emitPushArgument(cob, invoker, 0);
        emitPushArguments(cob, args, 1);
        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", methodDesc(type.basicType())).labelBinding(L_endBlock).goto_w(L_done).labelBinding(L_handler).dup();
        emitPushArgument(cob, invoker, 1);
        cob.swap().invokevirtual(ConstantDescs.CD_Class, "isInstance", MTD_boolean_Object);
        Label L_rethrow = cob.newLabel();
        cob.ifeq(L_rethrow);
        emitPushArgument(cob, invoker, 2);
        cob.swap();
        emitPushArguments(cob, args, 1);
        MethodType catcherType = type.insertParameterTypes(0, Throwable.class);
        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", methodDesc(catcherType.basicType())).goto_w(L_done).labelBinding(L_rethrow).athrow().labelBinding(L_done);
        return result;
    }

    private LambdaForm.Name emitTryFinally(CodeBuilder cob, int pos) {
        LambdaForm.Name args = this.lambdaForm.names[pos];
        LambdaForm.Name invoker = this.lambdaForm.names[pos + 1];
        LambdaForm.Name result = this.lambdaForm.names[pos + 2];
        Label lFrom = cob.newLabel();
        Label lTo = cob.newLabel();
        Label lCatch = cob.newLabel();
        Label lDone = cob.newLabel();
        Class<?> returnType = result.function.resolvedHandle().type().returnType();
        LambdaForm.BasicType basicReturnType = LambdaForm.BasicType.basicType(returnType);
        boolean isNonVoid = returnType != Void.TYPE;
        MethodType type = args.function.resolvedHandle().type().dropParameterTypes(0, 1).changeReturnType(returnType);
        MethodType cleanupType = type.insertParameterTypes(0, Throwable.class);
        if (isNonVoid) {
            cleanupType = cleanupType.insertParameterTypes(1, returnType);
        }
        MethodTypeDesc cleanupDesc = methodDesc(cleanupType.basicType());
        cob.exceptionCatch(lFrom, lTo, lCatch, ConstantDescs.CD_Throwable);
        cob.labelBinding(lFrom);
        emitPushArgument(cob, invoker, 0);
        emitPushArguments(cob, args, 1);
        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", methodDesc(type.basicType())).labelBinding(lTo);
        int index = extendLocalsMap(new Class[]{returnType});
        if (isNonVoid) {
            emitStoreInsn(cob, basicReturnType.basicTypeKind(), index);
        }
        emitPushArgument(cob, invoker, 1);
        cob.aconst_null();
        if (isNonVoid) {
            emitLoadInsn(cob, basicReturnType.basicTypeKind(), index);
        }
        emitPushArguments(cob, args, 1);
        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", cleanupDesc).goto_w(lDone).labelBinding(lCatch).dup();
        emitPushArgument(cob, invoker, 1);
        cob.swap();
        if (isNonVoid) {
            emitZero(cob, LambdaForm.BasicType.basicType(returnType));
        }
        emitPushArguments(cob, args, 1);
        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", cleanupDesc);
        if (isNonVoid) {
            emitPopInsn(cob, basicReturnType);
        }
        cob.athrow().labelBinding(lDone);
        return result;
    }

    private void emitPopInsn(CodeBuilder cob, LambdaForm.BasicType type) {
        switch (type) {
            case L_TYPE:
            case I_TYPE:
            case F_TYPE:
                cob.pop();
                return;
            case J_TYPE:
            case D_TYPE:
                cob.pop2();
                return;
            default:
                throw new InternalError("unknown type: " + ((Object) type));
        }
    }

    private LambdaForm.Name emitTableSwitch(CodeBuilder cob, int pos, int numCases) {
        LambdaForm.Name args = this.lambdaForm.names[pos];
        LambdaForm.Name invoker = this.lambdaForm.names[pos + 1];
        LambdaForm.Name result = this.lambdaForm.names[pos + 2];
        Class<?> returnType = result.function.resolvedHandle().type().returnType();
        MethodType caseType = args.function.resolvedHandle().type().dropParameterTypes(0, 1).changeReturnType(returnType);
        MethodTypeDesc caseDescriptor = methodDesc(caseType.basicType());
        emitPushArgument(cob, invoker, 2);
        cob.getfield(CD_CasesHolder, "cases", CD_MethodHandle_array);
        int casesLocal = extendLocalsMap(new Class[]{MethodHandle[].class});
        emitStoreInsn(cob, TypeKind.REFERENCE, casesLocal);
        Label endLabel = cob.newLabel();
        Label defaultLabel = cob.newLabel();
        List<SwitchCase> cases = new ArrayList<>(numCases);
        for (int i10 = 0; i10 < numCases; i10++) {
            cases.add(SwitchCase.of(i10, cob.newLabel()));
        }
        emitPushArgument(cob, invoker, 0);
        cob.tableswitch(0, numCases - 1, defaultLabel, cases).labelBinding(defaultLabel);
        emitPushArgument(cob, invoker, 1);
        emitPushArguments(cob, args, 1);
        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", caseDescriptor).goto_(endLabel);
        for (int i11 = 0; i11 < numCases; i11++) {
            cob.labelBinding(cases.get(i11).target());
            emitLoadInsn(cob, TypeKind.REFERENCE, casesLocal);
            cob.loadConstant(i11).aaload();
            emitPushArguments(cob, args, 1);
            cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", caseDescriptor).goto_(endLabel);
        }
        cob.labelBinding(endLabel);
        return result;
    }

    private LambdaForm.Name emitLoop(CodeBuilder cob, int pos) {
        LambdaForm.Name args = this.lambdaForm.names[pos];
        LambdaForm.Name invoker = this.lambdaForm.names[pos + 1];
        LambdaForm.Name result = this.lambdaForm.names[pos + 2];
        LambdaForm.BasicType[] loopClauseTypes = (LambdaForm.BasicType[]) invoker.arguments[0];
        Class<?>[] loopLocalStateTypes = (Class[]) Stream.of((Object[]) loopClauseTypes).filter(bt -> {
            return bt != LambdaForm.BasicType.V_TYPE;
        }).map((v0) -> {
            return v0.basicTypeClass();
        }).toArray(x$0 -> {
            return new Class[x$0];
        });
        Class<?>[] localTypes = new Class[loopLocalStateTypes.length + 1];
        localTypes[0] = MethodHandleImpl.LoopClauses.class;
        System.arraycopy(loopLocalStateTypes, 0, localTypes, 1, loopLocalStateTypes.length);
        int clauseDataIndex = extendLocalsMap(localTypes);
        int firstLoopStateIndex = clauseDataIndex + 1;
        Class<?> returnType = result.function.resolvedHandle().type().returnType();
        MethodType loopType = args.function.resolvedHandle().type().dropParameterTypes(0, 1).changeReturnType(returnType);
        MethodType loopHandleType = loopType.insertParameterTypes(0, loopLocalStateTypes);
        MethodType predType = loopHandleType.changeReturnType((Class<?>) Boolean.TYPE);
        int nClauses = loopClauseTypes.length;
        Label lLoop = cob.newLabel();
        Label lDone = cob.newLabel();
        emitPushArgument(cob, MethodHandleImpl.LoopClauses.class, invoker.arguments[1]);
        cob.getfield(CD_LoopClauses, "clauses", CD_MethodHandle_array2);
        emitStoreInsn(cob, TypeKind.REFERENCE, clauseDataIndex);
        int state = 0;
        for (int c10 = 0; c10 < nClauses; c10++) {
            MethodType cInitType = loopType.changeReturnType(loopClauseTypes[c10].basicTypeClass());
            emitLoopHandleInvoke(cob, invoker, 1, c10, args, false, cInitType, loopLocalStateTypes, clauseDataIndex, firstLoopStateIndex);
            if (cInitType.returnType() != Void.TYPE) {
                emitStoreInsn(cob, LambdaForm.BasicType.basicType(cInitType.returnType()).basicTypeKind(), firstLoopStateIndex + state);
                state++;
            }
        }
        cob.labelBinding(lLoop);
        int state2 = 0;
        for (int c11 = 0; c11 < nClauses; c11++) {
            Label lNext = cob.newLabel();
            MethodType stepType = loopHandleType.changeReturnType(loopClauseTypes[c11].basicTypeClass());
            boolean isVoid = stepType.returnType() == Void.TYPE;
            emitLoopHandleInvoke(cob, invoker, 2, c11, args, true, stepType, loopLocalStateTypes, clauseDataIndex, firstLoopStateIndex);
            if (!isVoid) {
                emitStoreInsn(cob, LambdaForm.BasicType.basicType(stepType.returnType()).basicTypeKind(), firstLoopStateIndex + state2);
                state2++;
            }
            emitLoopHandleInvoke(cob, invoker, 3, c11, args, true, predType, loopLocalStateTypes, clauseDataIndex, firstLoopStateIndex);
            cob.ifne(lNext);
            emitLoopHandleInvoke(cob, invoker, 4, c11, args, true, loopHandleType, loopLocalStateTypes, clauseDataIndex, firstLoopStateIndex);
            cob.goto_w(lDone).labelBinding(lNext);
        }
        cob.goto_w(lLoop).labelBinding(lDone);
        return result;
    }

    private int extendLocalsMap(Class<?>[] types) {
        int firstSlot = this.localsMap.length - 1;
        this.localsMap = Arrays.copyOf(this.localsMap, this.localsMap.length + types.length);
        this.localClasses = (Class[]) Arrays.copyOf(this.localClasses, this.localClasses.length + types.length);
        System.arraycopy(types, 0, this.localClasses, firstSlot, types.length);
        int index = this.localsMap[firstSlot - 1] + 1;
        int lastSlots = 0;
        for (int i10 = 0; i10 < types.length; i10++) {
            this.localsMap[firstSlot + i10] = index;
            lastSlots = LambdaForm.BasicType.basicType(this.localClasses[firstSlot + i10]).basicTypeSlots();
            index += lastSlots;
        }
        this.localsMap[this.localsMap.length - 1] = index - lastSlots;
        return firstSlot;
    }

    private void emitLoopHandleInvoke(CodeBuilder cob, LambdaForm.Name holder, int handles, int clause, LambdaForm.Name args, boolean pushLocalState, MethodType type, Class<?>[] loopLocalStateTypes, int clauseDataSlot, int firstLoopStateSlot) {
        emitPushClauseArray(cob, clauseDataSlot, handles);
        cob.loadConstant(clause).aaload();
        if (pushLocalState) {
            for (int s10 = 0; s10 < loopLocalStateTypes.length; s10++) {
                emitLoadInsn(cob, LambdaForm.BasicType.basicType(loopLocalStateTypes[s10]).basicTypeKind(), firstLoopStateSlot + s10);
            }
        }
        emitPushArguments(cob, args, 1);
        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", methodDesc(type));
    }

    private void emitPushClauseArray(CodeBuilder cob, int clauseDataSlot, int which) {
        emitLoadInsn(cob, TypeKind.REFERENCE, clauseDataSlot);
        cob.loadConstant(which - 1).aaload();
    }

    private void emitZero(CodeBuilder cob, LambdaForm.BasicType type) {
        switch (type) {
            case L_TYPE:
                cob.aconst_null();
                return;
            case I_TYPE:
                cob.iconst_0();
                return;
            case F_TYPE:
                cob.fconst_0();
                return;
            case J_TYPE:
                cob.lconst_0();
                return;
            case D_TYPE:
                cob.dconst_0();
                return;
            default:
                throw new InternalError("unknown type: " + ((Object) type));
        }
    }

    private void emitPushArguments(CodeBuilder cob, LambdaForm.Name args, int start) {
        MethodType type = args.function.methodType();
        for (int i10 = start; i10 < args.arguments.length; i10++) {
            emitPushArgument(cob, type.parameterType(i10), args.arguments[i10]);
        }
    }

    private void emitPushArgument(CodeBuilder cob, LambdaForm.Name name, int paramIndex) {
        Object arg = name.arguments[paramIndex];
        Class<?> ptype = name.function.methodType().parameterType(paramIndex);
        emitPushArgument(cob, ptype, arg);
    }

    private void emitPushArgument(CodeBuilder cob, Class<?> ptype, Object arg) {
        LambdaForm.BasicType bptype = LambdaForm.BasicType.basicType(ptype);
        if (arg instanceof LambdaForm.Name) {
            LambdaForm.Name n10 = (LambdaForm.Name) arg;
            emitLoadInsn(cob, n10.type.basicTypeKind(), n10.index());
            emitImplicitConversion(cob, n10.type, ptype, n10);
        } else if ((arg == null || (arg instanceof String)) && bptype == LambdaForm.BasicType.L_TYPE) {
            cob.loadConstant((ConstantDesc) arg);
        } else if (Wrapper.isWrapperType(arg.getClass()) && bptype != LambdaForm.BasicType.L_TYPE) {
            cob.loadConstant((ConstantDesc) arg);
        } else {
            cob.getstatic(classData(cob, arg, ConstantDescs.CD_Object));
            emitImplicitConversion(cob, LambdaForm.BasicType.L_TYPE, ptype, arg);
        }
    }

    private void emitStoreResult(CodeBuilder cob, LambdaForm.Name name) {
        if (name != null && name.type != LambdaForm.BasicType.V_TYPE) {
            emitStoreInsn(cob, name.type.basicTypeKind(), name.index());
        }
    }

    private void emitReturn(CodeBuilder cob, LambdaForm.Name onStack) {
        Class<?> rclass = this.invokerType.returnType();
        LambdaForm.BasicType rtype = this.lambdaForm.returnType();
        if (!$assertionsDisabled && rtype != LambdaForm.BasicType.basicType(rclass)) {
            throw new AssertionError();
        }
        if (rtype == LambdaForm.BasicType.V_TYPE) {
            cob.return_();
            return;
        }
        LambdaForm.Name rn2 = this.lambdaForm.names[this.lambdaForm.result];
        if (rn2 != onStack) {
            emitLoadInsn(cob, rtype.basicTypeKind(), this.lambdaForm.result);
        }
        emitImplicitConversion(cob, rtype, rclass, rn2);
        cob.return_(rtype.basicTypeKind());
    }

    private void emitPrimCast(CodeBuilder cob, TypeKind from, TypeKind to) {
        if (from != to && from != TypeKind.BOOLEAN) {
            try {
                cob.conversion(from, to);
            } catch (IllegalArgumentException e10) {
                throw new IllegalStateException("unhandled prim cast: " + ((Object) from) + "2" + ((Object) to));
            }
        }
    }

    public static MemberName generateLambdaFormInterpreterEntryPoint(MethodType mt) {
        if (!$assertionsDisabled && !LambdaForm.isValidSignature(LambdaForm.basicTypeSignature(mt))) {
            throw new AssertionError();
        }
        String name = "interpret_" + LambdaForm.BasicType.basicTypeChar(mt.returnType());
        MethodType type = mt.changeParameterType(0, MethodHandle.class);
        InvokerBytecodeGenerator g10 = new InvokerBytecodeGenerator("LFI", name, type);
        return g10.loadMethod(g10.generateLambdaFormInterpreterEntryPointBytes());
    }

    public class AnonymousClass5 implements Consumer<ClassBuilder> {
        final InvokerBytecodeGenerator this$0;

        AnonymousClass5(InvokerBytecodeGenerator this$0) {
            Objects.requireNonNull(this$0);
            this.this$0 = this$0;
        }

        @Override
        public void accept(ClassBuilder clb) {
            this.this$0.methodSetup(clb, new Consumer<MethodBuilder>(this) {
                final AnonymousClass5 this$1;

                {
                    Objects.requireNonNull(this);
                    this.this$1 = this;
                }

                @Override
                public void accept(MethodBuilder mb2) {
                    mb2.with(RuntimeVisibleAnnotationsAttribute.of((List<Annotation>) List.of(InvokerBytecodeGenerator.HIDDEN, InvokerBytecodeGenerator.DONTINLINE)));
                    mb2.withCode(new Consumer<CodeBuilder>(this) {
                        final AnonymousClass1 this$2;

                        {
                            Objects.requireNonNull(this);
                            this.this$2 = this;
                        }

                        @Override
                        public void accept(CodeBuilder cob) {
                            cob.loadConstant(this.this$2.this$1.this$0.invokerType.parameterCount()).anewarray(ConstantDescs.CD_Object);
                            for (int i10 = 0; i10 < this.this$2.this$1.this$0.invokerType.parameterCount(); i10++) {
                                Class<?> ptype = this.this$2.this$1.this$0.invokerType.parameterType(i10);
                                cob.dup().loadConstant(i10);
                                this.this$2.this$1.this$0.emitLoadInsn(cob, LambdaForm.BasicType.basicType(ptype).basicTypeKind(), i10);
                                if (ptype.isPrimitive()) {
                                    this.this$2.this$1.this$0.emitBoxing(cob, TypeKind.from(ptype));
                                }
                                cob.aastore();
                            }
                            cob.aload(0).getfield(ConstantDescs.CD_MethodHandle, "form", InvokerBytecodeGenerator.CD_LambdaForm).swap().invokevirtual(InvokerBytecodeGenerator.CD_LambdaForm, "interpretWithArguments", MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{InvokerBytecodeGenerator.CD_Object_array}));
                            Class<?> rtype = this.this$2.this$1.this$0.invokerType.returnType();
                            TypeKind rtypeK = TypeKind.from(rtype);
                            if (rtype.isPrimitive() && rtype != Void.TYPE) {
                                this.this$2.this$1.this$0.emitUnboxing(cob, rtypeK);
                            }
                            cob.return_(rtypeK);
                        }
                    });
                }
            });
            InvokerBytecodeGenerator.clinit(clb, this.this$0.classEntry, this.this$0.classData);
            this.this$0.bogusMethod(clb, this.this$0.invokerType);
        }
    }

    private byte[] generateLambdaFormInterpreterEntryPointBytes() {
        byte[] classFile = classFileSetup(new AnonymousClass5(this));
        return classFile;
    }

    public static MemberName generateNamedFunctionInvoker(MethodTypeForm typeForm) {
        MethodType invokerType = LambdaForm.NamedFunction.INVOKER_METHOD_TYPE;
        String invokerName = "invoke_" + LambdaForm.shortenSignature(LambdaForm.basicTypeSignature(typeForm.erasedType()));
        InvokerBytecodeGenerator g10 = new InvokerBytecodeGenerator("NFI", invokerName, invokerType);
        return g10.loadMethod(g10.generateNamedFunctionInvokerImpl(typeForm));
    }

    public class AnonymousClass6 implements Consumer<ClassBuilder> {
        final MethodType val$dstType;
        final InvokerBytecodeGenerator this$0;

        AnonymousClass6(InvokerBytecodeGenerator this$0, MethodType methodType) {
            this.val$dstType = methodType;
            Objects.requireNonNull(this$0);
            this.this$0 = this$0;
        }

        @Override
        public void accept(ClassBuilder clb) {
            InvokerBytecodeGenerator invokerBytecodeGenerator = this.this$0;
            final MethodType methodType = this.val$dstType;
            invokerBytecodeGenerator.methodSetup(clb, new Consumer<MethodBuilder>(this) {
                final AnonymousClass6 this$1;

                {
                    Objects.requireNonNull(this);
                    this.this$1 = this;
                }

                @Override
                public void accept(MethodBuilder mb2) {
                    mb2.with(RuntimeVisibleAnnotationsAttribute.of((List<Annotation>) List.of(InvokerBytecodeGenerator.HIDDEN, InvokerBytecodeGenerator.FORCEINLINE)));
                    final MethodType methodType2 = methodType;
                    mb2.withCode(new Consumer<CodeBuilder>(this) {
                        final AnonymousClass1 this$2;

                        {
                            Objects.requireNonNull(this);
                            this.this$2 = this;
                        }

                        @Override
                        public void accept(CodeBuilder cob) {
                            cob.aload(0);
                            for (int i10 = 0; i10 < methodType2.parameterCount(); i10++) {
                                cob.aload(1).loadConstant(i10).aaload();
                                Class<?> dptype = methodType2.parameterType(i10);
                                if (dptype.isPrimitive()) {
                                    TypeKind dstTK = TypeKind.from(dptype);
                                    TypeKind srcTK = dstTK.asLoadable();
                                    this.this$2.this$1.this$0.emitUnboxing(cob, srcTK);
                                    this.this$2.this$1.this$0.emitPrimCast(cob, srcTK, dstTK);
                                }
                            }
                            MethodTypeDesc targetDesc = InvokerBytecodeGenerator.methodDesc(methodType2.basicType());
                            cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", targetDesc);
                            Class<?> rtype = methodType2.returnType();
                            if (rtype != Void.TYPE && rtype.isPrimitive()) {
                                TypeKind srcTK2 = TypeKind.from(rtype);
                                TypeKind dstTK2 = srcTK2.asLoadable();
                                this.this$2.this$1.this$0.emitPrimCast(cob, srcTK2, dstTK2);
                                this.this$2.this$1.this$0.emitBoxing(cob, dstTK2);
                            }
                            if (rtype == Void.TYPE) {
                                cob.aconst_null();
                            }
                            cob.areturn();
                        }
                    });
                }
            });
            InvokerBytecodeGenerator.clinit(clb, this.this$0.classEntry, this.this$0.classData);
            this.this$0.bogusMethod(clb, this.val$dstType);
        }
    }

    private byte[] generateNamedFunctionInvokerImpl(MethodTypeForm typeForm) {
        MethodType dstType = typeForm.erasedType();
        byte[] classFile = classFileSetup(new AnonymousClass6(this, dstType));
        return classFile;
    }

    private void bogusMethod(ClassBuilder clb, final Object os) {
        if (MethodHandleStatics.dumper().isEnabled()) {
            clb.withMethodBody("dummy", ConstantDescs.MTD_void, 8, new Consumer<CodeBuilder>(this) {
                {
                    Objects.requireNonNull(this);
                }

                @Override
                public void accept(CodeBuilder cob) {
                    cob.ldc(os.toString()).pop().return_();
                }
            });
        }
    }

    static ClassDesc classDesc(Class<?> cls) {
        return cls == MethodHandle.class ? ConstantDescs.CD_MethodHandle : cls == DirectMethodHandle.class ? CD_DirectMethodHandle : cls == Object.class ? ConstantDescs.CD_Object : cls == MemberName.class ? CD_MemberName : cls == MethodType.class ? ConstantDescs.CD_MethodType : cls.isPrimitive() ? Wrapper.forPrimitiveType(cls).basicClassDescriptor() : ConstantUtils.referenceClassDesc(cls.descriptorString());
    }

    static MethodTypeDesc methodDesc(MethodType mt) {
        ClassDesc[] params = new ClassDesc[mt.parameterCount()];
        for (int i10 = 0; i10 < params.length; i10++) {
            params[i10] = classDesc(mt.parameterType(i10));
        }
        return MethodTypeDescImpl.ofValidated(classDesc(mt.returnType()), params);
    }
}
