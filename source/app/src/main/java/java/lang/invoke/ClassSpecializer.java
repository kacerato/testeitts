package java.lang.invoke;

import java.lang.classfile.Annotation;
import java.lang.classfile.AnnotationElement;
import java.lang.classfile.ClassBuilder;
import java.lang.classfile.ClassFile;
import java.lang.classfile.CodeBuilder;
import java.lang.classfile.FieldBuilder;
import java.lang.classfile.MethodBuilder;
import java.lang.classfile.attribute.ExceptionsAttribute;
import java.lang.classfile.attribute.RuntimeVisibleAnnotationsAttribute;
import java.lang.classfile.attribute.SourceFileAttribute;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.ClassSpecializer.SpeciesData;
import java.lang.invoke.LambdaForm;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import jdk.internal.loader.BootLoader;
import jdk.internal.vm.annotation.Stable;
import sun.invoke.util.BytecodeName;
import sun.invoke.util.Wrapper;
import yd.C16181m;

public abstract class ClassSpecializer<T, K, S extends ClassSpecializer<T, K, S>.SpeciesData> {
    private static final ClassDesc CD_LambdaForm;
    private static final ClassDesc CD_BoundMethodHandle;
    private static final RuntimeVisibleAnnotationsAttribute STABLE_ANNOTATION;
    private final Class<T> topClass;
    private final Class<K> keyType;
    private final Class<S> metaType;
    private final MemberName sdAccessor;
    private final String sdFieldName;
    private final List<MemberName> transformMethods;
    private final MethodType baseConstructorType;
    private final S topSpecies;
    private final ConcurrentHashMap<K, Object> cache = new ConcurrentHashMap<>();
    private final ClassSpecializer<T, K, S>.Factory factory = makeFactory();

    @Stable
    private boolean topClassIsSuper;
    private static final Function<Object, Object> CREATE_RESERVATION;
    static final boolean $assertionsDisabled;

    protected abstract S newSpeciesData(K k10);

    static {
        $assertionsDisabled = !ClassSpecializer.class.desiredAssertionStatus();
        CD_LambdaForm = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/LambdaForm;");
        CD_BoundMethodHandle = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/BoundMethodHandle;");
        STABLE_ANNOTATION = RuntimeVisibleAnnotationsAttribute.of(Annotation.of(ConstantUtils.referenceClassDesc(Stable.class), new AnnotationElement[0]));
        CREATE_RESERVATION = new Function<Object, Object>() {
            @Override
            public Object apply(Object key) {
                return new Object();
            }
        };
    }

    public final Class<T> topClass() {
        return this.topClass;
    }

    public final Class<K> keyType() {
        return this.keyType;
    }

    public final Class<S> metaType() {
        return this.metaType;
    }

    protected MethodType baseConstructorType() {
        return this.baseConstructorType;
    }

    public final S topSpecies() {
        return this.topSpecies;
    }

    protected final List<MemberName> transformMethods() {
        return this.transformMethods;
    }

    public final ClassSpecializer<T, K, S>.Factory factory() {
        return this.factory;
    }

    public ClassSpecializer(Class<T> topClass, Class<K> keyType, Class<S> metaType, MethodType baseConstructorType, MemberName sdAccessor, String sdFieldName, List<MemberName> transformMethods) {
        this.topClass = topClass;
        this.keyType = keyType;
        this.metaType = metaType;
        this.sdAccessor = sdAccessor;
        this.transformMethods = List.copyOf(transformMethods);
        this.sdFieldName = sdFieldName;
        this.baseConstructorType = baseConstructorType.changeReturnType((Class<?>) Void.TYPE);
        K tsk = topSpeciesKey();
        S topSpecies = null;
        if (tsk != null && 0 == 0) {
            topSpecies = findSpecies(tsk);
        }
        this.topSpecies = topSpecies;
    }

    protected static <T> Constructor<T> reflectConstructor(Class<T> defc, Class<?>... ptypes) {
        try {
            return defc.getDeclaredConstructor(ptypes);
        } catch (NoSuchMethodException ex) {
            throw newIAE(defc.getName() + "(" + ((Object) MethodType.methodType(Void.TYPE, ptypes)) + ")", ex);
        }
    }

    protected static Field reflectField(Class<?> defc, String name) {
        try {
            return defc.getDeclaredField(name);
        } catch (NoSuchFieldException ex) {
            throw newIAE(defc.getName() + "." + name, ex);
        }
    }

    private static RuntimeException newIAE(String message, Throwable cause) {
        return new IllegalArgumentException(message, cause);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.lang.invoke.ClassSpecializer$SpeciesData] */
    public final S findSpecies(K key) {
        S speciesData;
        Object speciesDataOrReservation = this.cache.computeIfAbsent(key, CREATE_RESERVATION);
        if (speciesDataOrReservation.getClass() == Object.class) {
            synchronized (speciesDataOrReservation) {
                Object existingSpeciesData = this.cache.get(key);
                if (existingSpeciesData == speciesDataOrReservation) {
                    S speciesData2 = newSpeciesData(key);
                    speciesData = this.factory.loadSpecies(speciesData2);
                    if (!this.cache.replace(key, existingSpeciesData, speciesData)) {
                        throw MethodHandleStatics.newInternalError("Concurrent loadSpecies");
                    }
                } else {
                    speciesData = this.metaType.cast(existingSpeciesData);
                }
            }
        } else {
            speciesData = this.metaType.cast(speciesDataOrReservation);
        }
        if ($assertionsDisabled || (speciesData != null && speciesData.isResolved())) {
            return speciesData;
        }
        throw new AssertionError();
    }

    public abstract class SpeciesData {
        private final K key;
        private final List<Class<?>> fieldTypes;

        @Stable
        private Class<? extends T> speciesCode;

        @Stable
        private List<MethodHandle> factories;

        @Stable
        private List<MethodHandle> getters;

        @Stable
        private List<LambdaForm.NamedFunction> nominalGetters;

        @Stable
        private final MethodHandle[] transformHelpers;
        static final boolean $assertionsDisabled;
        final ClassSpecializer this$0;

        protected abstract List<Class<?>> deriveFieldTypes(K k10);

        protected abstract MethodHandle deriveTransformHelper(MemberName memberName, int i10);

        protected abstract <X> List<X> deriveTransformHelperArguments(MemberName memberName, int i10, List<X> list, List<X> list2);

        static {
            $assertionsDisabled = !ClassSpecializer.class.desiredAssertionStatus();
        }

        public SpeciesData(ClassSpecializer this$0, K key) {
            Objects.requireNonNull(this$0);
            this.this$0 = this$0;
            this.transformHelpers = new MethodHandle[this.this$0.transformMethods.size()];
            this.key = this$0.keyType.cast(Objects.requireNonNull(key));
            List<Class<?>> types = deriveFieldTypes(key);
            this.fieldTypes = List.copyOf(types);
        }

        public final K key() {
            return this.key;
        }

        public final List<Class<?>> fieldTypes() {
            return this.fieldTypes;
        }

        public final int fieldCount() {
            return this.fieldTypes.size();
        }

        protected ClassSpecializer<T, K, S> outer() {
            return this.this$0;
        }

        protected final boolean isResolved() {
            return (this.speciesCode == null || this.factories == null || this.factories.isEmpty()) ? false : true;
        }

        public String toString() {
            return this.this$0.metaType.getSimpleName() + "[" + this.key.toString() + " => " + (isResolved() ? this.speciesCode.getSimpleName() : "UNRESOLVED") + "]";
        }

        public int hashCode() {
            return this.key.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof SpeciesData)) {
                return false;
            }
            ClassSpecializer<?, ?, ?>.SpeciesData that = (SpeciesData) obj;
            return outer() == that.outer() && this.key.equals(that.key);
        }

        public final Class<? extends T> speciesCode() {
            return (Class) Objects.requireNonNull(this.speciesCode);
        }

        public MethodHandle getter(int i10) {
            return this.getters.get(i10);
        }

        public LambdaForm.NamedFunction getterFunction(int i10) {
            LambdaForm.NamedFunction nf2 = this.nominalGetters.get(i10);
            if (!$assertionsDisabled && nf2.memberDeclaringClassOrNull() != speciesCode()) {
                throw new AssertionError();
            }
            if ($assertionsDisabled || nf2.returnType() == LambdaForm.BasicType.basicType(this.fieldTypes.get(i10))) {
                return nf2;
            }
            throw new AssertionError();
        }

        public List<LambdaForm.NamedFunction> getterFunctions() {
            return this.nominalGetters;
        }

        protected List<MethodHandle> getters() {
            return this.getters;
        }

        public MethodHandle factory() {
            return this.factories.get(0);
        }

        protected MethodHandle transformHelper(int whichtm) {
            MethodHandle mh2 = this.transformHelpers[whichtm];
            if (mh2 != null) {
                return mh2;
            }
            MethodHandle mh3 = deriveTransformHelper(this.this$0.transformMethods().get(whichtm), whichtm);
            MethodType mt = transformHelperType(whichtm);
            MethodHandle mh4 = mh3.asType(mt);
            this.transformHelpers[whichtm] = mh4;
            return mh4;
        }

        private final MethodType transformHelperType(int whichtm) {
            MemberName tm2 = this.this$0.transformMethods().get(whichtm);
            MethodType tmt = tm2.getMethodType();
            ArrayList<Class<?>> args = new ArrayList<>();
            ArrayList<Class<?>> fields = new ArrayList<>();
            Collections.addAll(args, tmt.ptypes());
            fields.addAll(fieldTypes());
            List<Class<?>> helperArgs = deriveTransformHelperArguments(tm2, whichtm, args, fields);
            return MethodType.methodType(tmt.returnType(), helperArgs);
        }

        protected String deriveClassName() {
            return outer().topClass().getName() + "$Species_" + deriveTypeString();
        }

        protected String deriveTypeString() {
            String typeString;
            List<Class<?>> types = fieldTypes();
            StringBuilder buf = new StringBuilder();
            StringBuilder end = new StringBuilder();
            for (Class<?> type : types) {
                LambdaForm.BasicType basicType = LambdaForm.BasicType.basicType(type);
                if (basicType.basicTypeClass() == type) {
                    buf.append(basicType.basicTypeChar());
                } else {
                    buf.append('V');
                    end.append(type.descriptorString());
                }
            }
            if (end.length() > 0) {
                typeString = BytecodeName.toBytecodeName(buf.append(ConstantDescs.DEFAULT_NAME).append((CharSequence) end).toString());
            } else {
                typeString = buf.toString();
            }
            return LambdaForm.shortenSignature(typeString);
        }

        protected Class<? extends T> deriveSuperClass() {
            Class<? extends T> cls = this.this$0.topClass();
            if (!this.this$0.topClassIsSuper) {
                try {
                    Constructor<T> con = ClassSpecializer.reflectConstructor(cls, this.this$0.baseConstructorType().ptypes());
                    if (!cls.isInterface() && !Modifier.isPrivate(con.getModifiers())) {
                        this.this$0.topClassIsSuper = true;
                    }
                } catch (Exception | InternalError e10) {
                }
                if (!this.this$0.topClassIsSuper) {
                    throw MethodHandleStatics.newInternalError("must override if the top class cannot serve as a super class");
                }
            }
            return cls;
        }
    }

    protected K topSpeciesKey() {
        return null;
    }

    public class Factory {
        private final ClassDesc CD_SPECIES_DATA;
        private final MethodTypeDesc MTD_SPECIES_DATA;
        private final String SPECIES_DATA_NAME;
        private final int SPECIES_DATA_MODS;
        private final List<String> TRANSFORM_NAMES;
        private final List<MethodType> TRANSFORM_TYPES;
        private final List<Integer> TRANSFORM_MODS;
        private static final MethodTypeDesc MTD_TRANFORM_HELPER;
        private static final int ACC_PPP = 7;
        static final boolean $assertionsDisabled;
        final ClassSpecializer this$0;

        static {
            $assertionsDisabled = !ClassSpecializer.class.desiredAssertionStatus();
            MTD_TRANFORM_HELPER = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_MethodHandle, new ClassDesc[]{ConstantDescs.CD_int});
        }

        public Factory(ClassSpecializer this$0) {
            Objects.requireNonNull(this$0);
            this.this$0 = this$0;
            this.CD_SPECIES_DATA = ClassSpecializer.classDesc(this.this$0.metaType);
            this.MTD_SPECIES_DATA = MethodTypeDescImpl.ofValidated(this.CD_SPECIES_DATA, new ClassDesc[0]);
            this.SPECIES_DATA_NAME = this.this$0.sdAccessor.getName();
            this.SPECIES_DATA_MODS = this.this$0.sdAccessor.getModifiers();
            List<String> tns = new ArrayList<>();
            List<MethodType> tts = new ArrayList<>();
            List<Integer> tms = new ArrayList<>();
            for (int i10 = 0; i10 < this.this$0.transformMethods.size(); i10++) {
                MemberName tm2 = this.this$0.transformMethods.get(i10);
                tns.add(tm2.getName());
                MethodType tt = tm2.getMethodType();
                tts.add(tt);
                tms.add(Integer.valueOf(tm2.getModifiers()));
            }
            this.TRANSFORM_NAMES = List.of((String[]) tns.toArray(new String[0]));
            this.TRANSFORM_TYPES = List.of((MethodType[]) tts.toArray(new MethodType[0]));
            this.TRANSFORM_MODS = List.of((Integer[]) tms.toArray(new Integer[0]));
        }

        S loadSpecies(S speciesData) {
            Class<? extends T> speciesCode;
            String className = speciesData.deriveClassName();
            if (!$assertionsDisabled && className.indexOf(47) >= 0) {
                throw new AssertionError((Object) className);
            }
            Class<?> salvage = null;
            try {
                salvage = BootLoader.loadClassOrNull(className);
                MethodHandleStatics.traceSpeciesType(className, salvage);
            } catch (Error e10) {
                MethodHandleStatics.traceSpeciesType(className, salvage);
            } catch (Throwable th2) {
                MethodHandleStatics.traceSpeciesType(className, salvage);
                throw th2;
            }
            if (salvage != null) {
                speciesCode = salvage.asSubclass(this.this$0.topClass());
                linkSpeciesDataToCode(speciesData, speciesCode);
                linkCodeToSpeciesData(speciesCode, speciesData, true);
            } else {
                try {
                    speciesCode = generateConcreteSpeciesCode(className, speciesData);
                    linkSpeciesDataToCode(speciesData, speciesCode);
                    linkCodeToSpeciesData(speciesCode, speciesData, false);
                } catch (Error ex) {
                    throw ex;
                }
            }
            if (!speciesData.isResolved()) {
                throw MethodHandleStatics.newInternalError("bad species class linkage for " + className + ": " + ((Object) speciesData));
            }
            if ($assertionsDisabled || speciesData == loadSpeciesDataFromCode(speciesCode)) {
                return speciesData;
            }
            throw new AssertionError();
        }

        Class<? extends T> generateConcreteSpeciesCode(String str, ClassSpecializer<T, K, S>.SpeciesData speciesData) {
            return (Class<? extends T>) new MethodHandles.Lookup(this.this$0.topClass).makeClassDefiner(ClassSpecializer.classBCName(str), generateConcreteSpeciesCodeFile(str, speciesData), MethodHandleStatics.dumper()).defineClass(false).asSubclass(this.this$0.topClass());
        }

        public byte[] generateConcreteSpeciesCodeFile(String className0, ClassSpecializer<T, K, S>.SpeciesData speciesData) {
            ClassDesc classDesc = ClassDesc.of(className0);
            ClassDesc superClassDesc = ClassSpecializer.classDesc(speciesData.deriveSuperClass());
            return ClassFile.of().build(classDesc, new AnonymousClass1(this, superClassDesc, classDesc, speciesData));
        }

        public class AnonymousClass1 implements Consumer<ClassBuilder> {
            final ClassDesc val$superClassDesc;
            final ClassDesc val$classDesc;
            final SpeciesData val$speciesData;
            final Factory this$1;

            AnonymousClass1(Factory this$1, ClassDesc classDesc, ClassDesc classDesc2, SpeciesData speciesData) {
                this.val$superClassDesc = classDesc;
                this.val$classDesc = classDesc2;
                this.val$speciesData = speciesData;
                Objects.requireNonNull(this$1);
                this.this$1 = this$1;
            }

            @Override
            public void accept(ClassBuilder clb) {
                clb.withFlags(48).withSuperclass(this.val$superClassDesc).with(SourceFileAttribute.of(this.val$classDesc.displayName())).withField(this.this$1.this$0.sdFieldName, this.this$1.CD_SPECIES_DATA, new Consumer<FieldBuilder>(this) {
                    {
                        Objects.requireNonNull(this);
                    }

                    @Override
                    public void accept(FieldBuilder fb2) {
                        fb2.withFlags(8).with(ClassSpecializer.STABLE_ANNOTATION);
                    }
                });
                final C1Var NO_THIS = new C1Var(this, 0, 0);
                final C1Var AFTER_THIS = new C1Var(this, 0, 1);
                C1Var IN_HEAP = new C1Var(this, 0, -1);
                List<Class<?>> fieldTypes = this.val$speciesData.fieldTypes();
                final List<C1Var> fields = new ArrayList<>(fieldTypes.size());
                C1Var nextF = IN_HEAP;
                for (Class<?> ft : fieldTypes) {
                    String fn2 = this.this$1.chooseFieldName(ft, nextF.nextIndex());
                    nextF = new C1Var(this, fn2, ft, nextF);
                    fields.add(nextF);
                }
                for (C1Var field : fields) {
                    clb.withField(field.name, field.desc, 16);
                }
                String str = this.this$1.SPECIES_DATA_NAME;
                MethodTypeDesc methodTypeDesc = this.this$1.MTD_SPECIES_DATA;
                int i10 = (this.this$1.SPECIES_DATA_MODS & 7) | 16;
                final ClassDesc classDesc = this.val$classDesc;
                clb.withMethodBody(str, methodTypeDesc, i10, new Consumer<CodeBuilder>(this) {
                    final AnonymousClass1 this$2;

                    {
                        Objects.requireNonNull(this);
                        this.this$2 = this;
                    }

                    @Override
                    public void accept(CodeBuilder cob) {
                        cob.getstatic(classDesc, this.this$2.this$1.this$0.sdFieldName, this.this$2.this$1.CD_SPECIES_DATA).areturn();
                    }
                });
                final MethodType superCtorType = this.this$1.this$0.baseConstructorType();
                final MethodType thisCtorType = superCtorType.appendParameterTypes(fieldTypes);
                MethodTypeDesc methodDesc = ClassSpecializer.methodDesc(thisCtorType);
                final ClassDesc classDesc2 = this.val$superClassDesc;
                final ClassDesc classDesc3 = this.val$classDesc;
                clb.withMethodBody(ConstantDescs.INIT_NAME, methodDesc, 2, new Consumer<CodeBuilder>(this) {
                    final AnonymousClass1 this$2;

                    {
                        Objects.requireNonNull(this);
                        this.this$2 = this;
                    }

                    @Override
                    public void accept(CodeBuilder cob) {
                        cob.aload(0);
                        List<C1Var> ctorArgs = AFTER_THIS.fromTypes(superCtorType.parameterList());
                        for (C1Var ca2 : ctorArgs) {
                            ca2.emitLoadInstruction(cob);
                        }
                        cob.invokespecial(classDesc2, ConstantDescs.INIT_NAME, ClassSpecializer.methodDesc(superCtorType));
                        C1Var lastFV = AFTER_THIS.lastOf(ctorArgs);
                        for (C1Var f10 : fields) {
                            cob.aload(0);
                            lastFV = new C1Var(this.this$2, f10.name, f10.type, lastFV);
                            lastFV.emitLoadInstruction(cob);
                            cob.putfield(classDesc3, f10.name, f10.desc);
                        }
                        cob.return_();
                    }
                });
                final MethodType ftryType = thisCtorType.changeReturnType(this.this$1.this$0.topClass());
                MethodTypeDesc methodDesc2 = ClassSpecializer.methodDesc(ftryType);
                final ClassDesc classDesc4 = this.val$classDesc;
                clb.withMethodBody("make", methodDesc2, 8, new Consumer<CodeBuilder>(this) {
                    {
                        Objects.requireNonNull(this);
                    }

                    @Override
                    public void accept(CodeBuilder cob) {
                        cob.new_(classDesc4).dup();
                        for (C1Var v10 : NO_THIS.fromTypes(ftryType.parameterList())) {
                            v10.emitLoadInstruction(cob);
                        }
                        cob.invokespecial(classDesc4, ConstantDescs.INIT_NAME, ClassSpecializer.methodDesc(thisCtorType)).areturn();
                    }
                });
                for (int i11 = 0; i11 < this.this$1.TRANSFORM_NAMES.size(); i11++) {
                    final int whichtm = i11;
                    String TNAME = this.this$1.TRANSFORM_NAMES.get(whichtm);
                    final MethodType TTYPE = this.this$1.TRANSFORM_TYPES.get(whichtm);
                    int TMODS = this.this$1.TRANSFORM_MODS.get(whichtm).intValue();
                    final ClassDesc classDesc5 = this.val$classDesc;
                    final SpeciesData speciesData = this.val$speciesData;
                    clb.withMethod(TNAME, ClassSpecializer.methodDesc(TTYPE), (TMODS & 7) | 16, new Consumer<MethodBuilder>(this) {
                        final AnonymousClass1 this$2;

                        {
                            Objects.requireNonNull(this);
                            this.this$2 = this;
                        }

                        @Override
                        public void accept(MethodBuilder mb2) {
                            MethodBuilder with = mb2.with(ExceptionsAttribute.ofSymbols(ConstantDescs.CD_Throwable));
                            final ClassDesc classDesc6 = classDesc5;
                            final int i12 = whichtm;
                            final C1Var c1Var = AFTER_THIS;
                            final MethodType methodType = TTYPE;
                            final List list = fields;
                            final SpeciesData speciesData2 = speciesData;
                            with.withCode(new Consumer<CodeBuilder>(this) {
                                static final boolean $assertionsDisabled;
                                final AnonymousClass5 this$3;

                                {
                                    Objects.requireNonNull(this);
                                    this.this$3 = this;
                                }

                                static {
                                    $assertionsDisabled = !ClassSpecializer.class.desiredAssertionStatus();
                                }

                                @Override
                                public void accept(CodeBuilder cob) {
                                    cob.getstatic(classDesc6, this.this$3.this$2.this$1.this$0.sdFieldName, this.this$3.this$2.this$1.CD_SPECIES_DATA).loadConstant(i12).invokevirtual(this.this$3.this$2.this$1.CD_SPECIES_DATA, "transformHelper", Factory.MTD_TRANFORM_HELPER);
                                    List<C1Var> targs = c1Var.fromTypes(methodType.parameterList());
                                    List<C1Var> tfields = new ArrayList<>(list);
                                    List<C1Var> helperArgs = speciesData2.deriveTransformHelperArguments(this.this$3.this$2.this$1.this$0.transformMethods.get(i12), i12, targs, tfields);
                                    ClassDesc[] helperTypes = new ClassDesc[helperArgs.size()];
                                    for (int hi2 = 0; hi2 < helperTypes.length; hi2++) {
                                        C1Var ha2 = helperArgs.get(hi2);
                                        helperTypes[hi2] = ha2.basicType.basicTypeWrapper().basicClassDescriptor();
                                        if (ha2.isInHeap()) {
                                            if (!$assertionsDisabled && !tfields.contains(ha2)) {
                                                throw new AssertionError();
                                            }
                                            cob.aload(0);
                                            cob.getfield(classDesc6, ha2.name, ha2.desc);
                                        } else {
                                            if (!$assertionsDisabled && !targs.contains(ha2)) {
                                                throw new AssertionError();
                                            }
                                            ha2.emitLoadInstruction(cob);
                                        }
                                    }
                                    Class<?> rtype = methodType.returnType();
                                    if (!rtype.isPrimitive()) {
                                        cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeBasic", MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, helperTypes)).checkcast(ClassSpecializer.classDesc(rtype)).areturn();
                                        return;
                                    }
                                    throw MethodHandleStatics.newInternalError("NYI: transform of type " + ((Object) rtype));
                                }
                            });
                        }
                    });
                }
            }

            public class C1Var {
                final int index;
                final String name;
                final Class<?> type;
                final ClassDesc desc;
                final LambdaForm.BasicType basicType;
                final int slotIndex;
                static final boolean $assertionsDisabled;
                final AnonymousClass1 this$2;

                static {
                    $assertionsDisabled = !ClassSpecializer.class.desiredAssertionStatus();
                }

                C1Var(AnonymousClass1 this$2, int index, int slotIndex) {
                    Objects.requireNonNull(this$2);
                    this.this$2 = this$2;
                    this.index = index;
                    this.slotIndex = slotIndex;
                    this.name = null;
                    this.type = null;
                    this.desc = null;
                    this.basicType = LambdaForm.BasicType.V_TYPE;
                }

                C1Var(AnonymousClass1 this$2, String name, Class<?> type, C1Var prev) {
                    Objects.requireNonNull(this$2);
                    this.this$2 = this$2;
                    int slotIndex = prev.nextSlotIndex();
                    int index = prev.nextIndex();
                    name = name == null ? "x" : name;
                    name = name.endsWith(C16181m.f130230g) ? name.substring(0, name.length() - 1) + index : name;
                    if (!$assertionsDisabled && type.equals(Void.TYPE)) {
                        throw new AssertionError();
                    }
                    this.index = index;
                    this.name = name;
                    this.type = type;
                    this.desc = ClassSpecializer.classDesc(type);
                    this.basicType = LambdaForm.BasicType.basicType(type);
                    this.slotIndex = slotIndex;
                }

                C1Var lastOf(List<C1Var> vars) {
                    int n10 = vars.size();
                    return n10 == 0 ? this : vars.get(n10 - 1);
                }

                <X> List<C1Var> fromTypes(List<X> list) {
                    Class<?> cls;
                    C1Var c1Var = this;
                    ArrayList arrayList = new ArrayList(list.size());
                    int i10 = 0;
                    for (X x10 : list) {
                        String str = this.name;
                        if (x10 instanceof Class) {
                            cls = (Class) x10;
                            if ($assertionsDisabled) {
                                continue;
                            } else {
                                int i11 = i10;
                                i10++;
                                String str2 = str + ConstantDescs.DEFAULT_NAME + i11;
                                str = str2;
                                if (str2 == null) {
                                    throw new AssertionError();
                                }
                            }
                        } else {
                            C1Var c1Var2 = (C1Var) x10;
                            str = c1Var2.name;
                            cls = c1Var2.type;
                        }
                        c1Var = new C1Var(this.this$2, str, cls, c1Var);
                        arrayList.add(c1Var);
                    }
                    return arrayList;
                }

                int slotSize() {
                    return this.basicType.basicTypeSlots();
                }

                int nextIndex() {
                    return this.index + (slotSize() == 0 ? 0 : 1);
                }

                int nextSlotIndex() {
                    return this.slotIndex >= 0 ? this.slotIndex + slotSize() : this.slotIndex;
                }

                boolean isInHeap() {
                    return this.slotIndex < 0;
                }

                void emitLoadInstruction(CodeBuilder cob) {
                    cob.loadLocal(this.basicType.btKind, this.slotIndex);
                }
            }
        }

        private MethodHandle findGetter(Class<?> speciesCode, List<Class<?>> types, int index) {
            Class<?> fieldType = types.get(index);
            String fieldName = chooseFieldName(fieldType, index);
            try {
                return MethodHandles.Lookup.IMPL_LOOKUP.findGetter(speciesCode, fieldName, fieldType);
            } catch (IllegalAccessException | NoSuchFieldException e10) {
                throw MethodHandleStatics.newInternalError(e10);
            }
        }

        private List<MethodHandle> findGetters(Class<?> speciesCode, List<Class<?>> types) {
            MethodHandle[] mhs = new MethodHandle[types.size()];
            for (int i10 = 0; i10 < mhs.length; i10++) {
                mhs[i10] = findGetter(speciesCode, types, i10);
                if (!$assertionsDisabled && mhs[i10].internalMemberName().getDeclaringClass() != speciesCode) {
                    throw new AssertionError();
                }
            }
            return List.of(mhs);
        }

        private List<MethodHandle> findFactories(Class<? extends T> speciesCode, List<Class<?>> types) {
            MethodHandle[] mhs = {findFactory(speciesCode, types)};
            return List.of(mhs);
        }

        List<LambdaForm.NamedFunction> makeNominalGetters(List<Class<?>> types, List<MethodHandle> getters) {
            LambdaForm.NamedFunction[] nfs = new LambdaForm.NamedFunction[types.size()];
            for (int i10 = 0; i10 < nfs.length; i10++) {
                nfs[i10] = new LambdaForm.NamedFunction(getters.get(i10));
            }
            return List.of(nfs);
        }

        protected void linkSpeciesDataToCode(ClassSpecializer<T, K, S>.SpeciesData speciesData, Class<? extends T> cls) {
            ((SpeciesData) speciesData).speciesCode = (Class<? extends T>) cls.asSubclass(this.this$0.topClass);
            List<Class<?>> list = ((SpeciesData) speciesData).fieldTypes;
            ((SpeciesData) speciesData).factories = findFactories(cls, list);
            ((SpeciesData) speciesData).getters = findGetters(cls, list);
            ((SpeciesData) speciesData).nominalGetters = makeNominalGetters(list, ((SpeciesData) speciesData).getters);
        }

        private Field reflectSDField(Class<? extends T> speciesCode) {
            Field field = ClassSpecializer.reflectField(speciesCode, this.this$0.sdFieldName);
            if (!$assertionsDisabled && field.getType() != this.this$0.metaType) {
                throw new AssertionError();
            }
            if ($assertionsDisabled || Modifier.isStatic(field.getModifiers())) {
                return field;
            }
            throw new AssertionError();
        }

        private S readSpeciesDataFromCode(Class<? extends T> speciesCode) {
            try {
                MemberName sdField = MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 2, (Class<?>) speciesCode, this.this$0.sdFieldName, (Class<?>) this.this$0.metaType);
                Object base = MethodHandleNatives.staticFieldBase(sdField);
                long offset = MethodHandleNatives.staticFieldOffset(sdField);
                MethodHandleStatics.UNSAFE.loadFence();
                return this.this$0.metaType.cast(MethodHandleStatics.UNSAFE.getReference(base, offset));
            } catch (Error err) {
                throw err;
            } catch (Exception ex) {
                throw MethodHandleStatics.newInternalError("Failed to load speciesData from speciesCode: " + speciesCode.getName(), ex);
            } catch (Throwable t10) {
                throw MethodHandleStatics.uncaughtException(t10);
            }
        }

        protected S loadSpeciesDataFromCode(Class<? extends T> cls) {
            if (cls == this.this$0.topClass()) {
                return this.this$0.topSpecies;
            }
            S s10 = (S) readSpeciesDataFromCode(cls);
            if (s10.outer() != this.this$0) {
                throw MethodHandleStatics.newInternalError("wrong class");
            }
            return s10;
        }

        protected void linkCodeToSpeciesData(Class<? extends T> speciesCode, ClassSpecializer<T, K, S>.SpeciesData speciesData, boolean salvage) {
            try {
                if (!$assertionsDisabled && readSpeciesDataFromCode(speciesCode) != null && (!salvage || !readSpeciesDataFromCode(speciesCode).equals(speciesData))) {
                    throw new AssertionError();
                }
                MemberName sdField = MethodHandles.Lookup.IMPL_LOOKUP.resolveOrFail((byte) 4, (Class<?>) speciesCode, this.this$0.sdFieldName, (Class<?>) this.this$0.metaType);
                Object base = MethodHandleNatives.staticFieldBase(sdField);
                long offset = MethodHandleNatives.staticFieldOffset(sdField);
                MethodHandleStatics.UNSAFE.storeFence();
                MethodHandleStatics.UNSAFE.putReference(base, offset, speciesData);
                MethodHandleStatics.UNSAFE.storeFence();
            } catch (Error err) {
                throw err;
            } catch (Exception ex) {
                throw MethodHandleStatics.newInternalError("Failed to link speciesData to speciesCode: " + speciesCode.getName(), ex);
            } catch (Throwable t10) {
                throw MethodHandleStatics.uncaughtException(t10);
            }
        }

        public String chooseFieldName(Class<?> type, int index) {
            LambdaForm.BasicType bt = LambdaForm.BasicType.basicType(type);
            return "" + bt.basicTypeChar() + index;
        }

        MethodHandle findFactory(Class<? extends T> speciesCode, List<Class<?>> types) {
            MethodType type = this.this$0.baseConstructorType().changeReturnType(this.this$0.topClass()).appendParameterTypes(types);
            try {
                return MethodHandles.Lookup.IMPL_LOOKUP.findStatic(speciesCode, "make", type);
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | TypeNotPresentException e10) {
                throw MethodHandleStatics.newInternalError(e10);
            }
        }
    }

    protected ClassSpecializer<T, K, S>.Factory makeFactory() {
        return new Factory(this);
    }

    static String classBCName(String str) {
        if ($assertionsDisabled || str.indexOf(47) < 0) {
            return str.replace('.', '/');
        }
        throw new AssertionError((Object) str);
    }

    static ClassDesc classDesc(Class<?> cls) {
        return cls.isPrimitive() ? Wrapper.forPrimitiveType(cls).basicClassDescriptor() : cls == Object.class ? ConstantDescs.CD_Object : cls == MethodType.class ? ConstantDescs.CD_MethodType : cls == LambdaForm.class ? CD_LambdaForm : cls == BoundMethodHandle.class ? CD_BoundMethodHandle : ConstantUtils.referenceClassDesc(cls.descriptorString());
    }

    static MethodTypeDesc methodDesc(MethodType mt) {
        ClassDesc[] params = new ClassDesc[mt.parameterCount()];
        for (int i10 = 0; i10 < params.length; i10++) {
            params[i10] = classDesc(mt.parameterType(i10));
        }
        return MethodTypeDescImpl.ofValidated(classDesc(mt.returnType()), params);
    }
}
