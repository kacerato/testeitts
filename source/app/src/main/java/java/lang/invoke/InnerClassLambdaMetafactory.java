package java.lang.invoke;

import com.jme3.audio.openal.AL;
import java.io.Serializable;
import java.lang.classfile.ClassBuilder;
import java.lang.classfile.ClassFile;
import java.lang.classfile.CodeBuilder;
import java.lang.classfile.MethodBuilder;
import java.lang.classfile.Opcode;
import java.lang.classfile.TypeKind;
import java.lang.classfile.attribute.ExceptionsAttribute;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.ConstantPoolBuilder;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Modifier;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import jdk.internal.misc.CDS;
import jdk.internal.util.ClassFileDumper;
import jdk.internal.vm.annotation.Stable;
import sun.invoke.util.VerifyAccess;
import sun.invoke.util.Wrapper;

public final class InnerClassLambdaMetafactory extends AbstractValidatingLambdaMetafactory {
    private static final String LAMBDA_INSTANCE_FIELD = "LAMBDA_INSTANCE$";

    @Stable
    private static final String[] ARG_NAME_CACHE = {"arg$1", "arg$2", "arg$3", "arg$4", "arg$5", "arg$6", "arg$7", "arg$8"};
    private static final ClassDesc[] EMPTY_CLASSDESC_ARRAY = ConstantUtils.EMPTY_CLASSDESC;
    private static final ClassFileDumper lambdaProxyClassFileDumper = ClassFileDumper.getInstance("jdk.invoke.LambdaMetafactory.dumpProxyClassFiles", "DUMP_LAMBDA_PROXY_CLASS_FILES");
    private static final boolean disableEagerInitialization = Boolean.getBoolean("jdk.internal.lambda.disableEagerInitialization");
    private final ClassDesc implMethodClassDesc;
    private final String implMethodName;
    private final MethodTypeDesc implMethodDesc;
    private final MethodType constructorType;
    private final MethodTypeDesc constructorTypeDesc;
    private final ClassDesc[] argDescs;
    private final String lambdaClassName;
    private final ConstantPoolBuilder pool;
    private final ClassEntry lambdaClassEntry;
    private final boolean useImplMethodHandle;

    public InnerClassLambdaMetafactory(MethodHandles.Lookup caller, MethodType factoryType, String interfaceMethodName, MethodType interfaceMethodType, MethodHandle implementation, MethodType dynamicMethodType, boolean isSerializable, Class<?>[] altInterfaces, MethodType[] altMethods) throws LambdaConversionException {
        super(caller, factoryType, interfaceMethodName, interfaceMethodType, implementation, dynamicMethodType, isSerializable, altInterfaces, altMethods);
        ClassDesc[] argDescs;
        MethodTypeDescImpl methodTypeDescImpl;
        this.pool = ConstantPoolBuilder.of();
        this.implMethodClassDesc = implClassDesc(this.implClass);
        this.implMethodName = this.implInfo.getName();
        this.implMethodDesc = methodDesc(this.implInfo.getMethodType());
        this.constructorType = factoryType.changeReturnType((Class<?>) Void.TYPE);
        this.lambdaClassName = lambdaClassName(this.targetClass);
        this.lambdaClassEntry = this.pool.classEntry(ConstantUtils.internalNameToDesc(this.lambdaClassName));
        this.useImplMethodHandle = (Modifier.isProtected(this.implInfo.getModifiers()) && !VerifyAccess.isSamePackage(this.targetClass, this.implInfo.getDeclaringClass())) || this.implKind == 7 || (this.implKind == 6 && this.implClass.isHidden());
        int parameterCount = factoryType.parameterCount();
        if (parameterCount > 0) {
            argDescs = new ClassDesc[parameterCount];
            for (int i10 = 0; i10 < parameterCount; i10++) {
                argDescs[i10] = classDesc(factoryType.parameterType(i10));
            }
            methodTypeDescImpl = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, argDescs);
        } else {
            argDescs = EMPTY_CLASSDESC_ARRAY;
            methodTypeDescImpl = ConstantDescs.MTD_void;
        }
        this.argDescs = argDescs;
        this.constructorTypeDesc = methodTypeDescImpl;
    }

    private static String argName(int i10) {
        return i10 < ARG_NAME_CACHE.length ? ARG_NAME_CACHE[i10] : "arg$" + (i10 + 1);
    }

    private static String sanitizedTargetClassName(Class<?> targetClass) {
        String name = targetClass.getName();
        if (targetClass.isHidden()) {
            name = name.replace('/', '_');
        }
        return name.replace('.', '/');
    }

    private static String lambdaClassName(Class<?> targetClass) {
        return sanitizedTargetClassName(targetClass).concat("$$Lambda");
    }

    @Override
    public CallSite buildCallSite() throws LambdaConversionException {
        Class<?> innerClass = spinInnerClass();
        if (this.factoryType.parameterCount() == 0 && disableEagerInitialization) {
            try {
                return new ConstantCallSite(this.caller.findStaticGetter(innerClass, LAMBDA_INSTANCE_FIELD, this.factoryType.returnType()));
            } catch (ReflectiveOperationException e10) {
                throw new LambdaConversionException("Exception finding LAMBDA_INSTANCE$ static field", e10);
            }
        }
        try {
            MethodHandle mh2 = this.caller.findConstructor(innerClass, this.constructorType);
            if (this.factoryType.parameterCount() == 0) {
                Object inst = mh2.invokeBasic();
                return new ConstantCallSite(MethodHandles.constant(this.interfaceClass, inst));
            }
            return new ConstantCallSite(mh2.asType(this.factoryType));
        } catch (ReflectiveOperationException e11) {
            throw new LambdaConversionException("Exception finding constructor", e11);
        } catch (Throwable e12) {
            throw new LambdaConversionException("Exception instantiating lambda object", e12);
        }
    }

    private Class<?> spinInnerClass() throws LambdaConversionException {
        Class<?> innerClass;
        if (!disableEagerInitialization && !this.useImplMethodHandle) {
            if (CDS.isUsingArchive() && (innerClass = LambdaProxyClassArchive.find(this.targetClass, this.interfaceMethodName, this.factoryType, this.interfaceMethodType, this.implementation, this.dynamicMethodType, this.isSerializable, this.altInterfaces, this.altMethods)) != null) {
                return innerClass;
            }
            if (CDS.isDumpingArchive()) {
                Class<?> innerClass2 = generateInnerClass();
                LambdaProxyClassArchive.register(this.targetClass, this.interfaceMethodName, this.factoryType, this.interfaceMethodType, this.implementation, this.dynamicMethodType, this.isSerializable, this.altInterfaces, this.altMethods, innerClass2);
                return innerClass2;
            }
        }
        return generateInnerClass();
    }

    private Class<?> generateInnerClass() throws LambdaConversionException {
        List<ClassDesc> interfaces;
        ClassDesc interfaceDesc = classDesc(this.interfaceClass);
        boolean accidentallySerializable = !this.isSerializable && Serializable.class.isAssignableFrom(this.interfaceClass);
        if (this.altInterfaces.length == 0) {
            interfaces = List.of(interfaceDesc);
        } else {
            Set<ClassDesc> itfs = LinkedHashSet.newLinkedHashSet(this.altInterfaces.length + 1);
            itfs.add(interfaceDesc);
            for (Class<?> i10 : this.altInterfaces) {
                itfs.add(classDesc(i10));
                accidentallySerializable |= !this.isSerializable && Serializable.class.isAssignableFrom(i10);
            }
            interfaces = List.copyOf(itfs);
        }
        final boolean finalAccidentallySerializable = accidentallySerializable;
        final List<ClassDesc> list = interfaces;
        byte[] classBytes = ClassFile.of().build(this.lambdaClassEntry, this.pool, new Consumer<ClassBuilder>(this) {
            final InnerClassLambdaMetafactory this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            @Override
            public void accept(ClassBuilder clb) {
                clb.withFlags(AL.AL_UNDETERMINED).withInterfaceSymbols(list);
                for (int i11 = 0; i11 < this.this$0.argDescs.length; i11++) {
                    clb.withField(InnerClassLambdaMetafactory.argName(i11), this.this$0.argDescs[i11], 18);
                }
                this.this$0.generateConstructor(clb);
                if (this.this$0.factoryType.parameterCount() == 0 && InnerClassLambdaMetafactory.disableEagerInitialization) {
                    this.this$0.generateClassInitializer(clb);
                }
                clb.withMethodBody(this.this$0.interfaceMethodName, InnerClassLambdaMetafactory.methodDesc(this.this$0.interfaceMethodType), 1, this.this$0.forwardingMethod(this.this$0.interfaceMethodType));
                if (this.this$0.altMethods != null) {
                    for (MethodType mt : this.this$0.altMethods) {
                        clb.withMethodBody(this.this$0.interfaceMethodName, InnerClassLambdaMetafactory.methodDesc(mt), 65, this.this$0.forwardingMethod(mt));
                    }
                }
                if (this.this$0.isSerializable) {
                    this.this$0.generateSerializationFriendlyMethods(clb);
                } else if (finalAccidentallySerializable) {
                    this.this$0.generateSerializationHostileMethods(clb);
                }
            }
        });
        try {
            MethodHandle classdata = this.useImplMethodHandle ? this.implementation : null;
            return this.caller.makeHiddenClassDefiner(this.lambdaClassName, classBytes, lambdaProxyClassFileDumper, 5).defineClass(!disableEagerInitialization, classdata);
        } catch (Throwable t10) {
            throw new InternalError(t10);
        }
    }

    private void generateClassInitializer(ClassBuilder clb) {
        final ClassDesc lambdaTypeDescriptor = classDesc(this.factoryType.returnType());
        clb.withField(LAMBDA_INSTANCE_FIELD, lambdaTypeDescriptor, 26);
        clb.withMethodBody(ConstantDescs.CLASS_INIT_NAME, ConstantDescs.MTD_void, 8, new Consumer<CodeBuilder>(this) {
            static final boolean $assertionsDisabled;
            final InnerClassLambdaMetafactory this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            static {
                $assertionsDisabled = !InnerClassLambdaMetafactory.class.desiredAssertionStatus();
            }

            @Override
            public void accept(CodeBuilder cob) {
                if (!$assertionsDisabled && this.this$0.factoryType.parameterCount() != 0) {
                    throw new AssertionError();
                }
                cob.new_(this.this$0.lambdaClassEntry).dup().invokespecial(this.this$0.pool.methodRefEntry(this.this$0.lambdaClassEntry, this.this$0.pool.nameAndTypeEntry(ConstantDescs.INIT_NAME, this.this$0.constructorTypeDesc))).putstatic(this.this$0.pool.fieldRefEntry(this.this$0.lambdaClassEntry, this.this$0.pool.nameAndTypeEntry(InnerClassLambdaMetafactory.LAMBDA_INSTANCE_FIELD, lambdaTypeDescriptor))).return_();
            }
        });
    }

    private void generateConstructor(ClassBuilder clb) {
        clb.withMethodBody(ConstantDescs.INIT_NAME, this.constructorTypeDesc, 2, new Consumer<CodeBuilder>(this) {
            final InnerClassLambdaMetafactory this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            @Override
            public void accept(CodeBuilder cob) {
                cob.aload(0).invokespecial(ConstantDescs.CD_Object, ConstantDescs.INIT_NAME, ConstantDescs.MTD_void);
                int parameterCount = this.this$0.factoryType.parameterCount();
                for (int i10 = 0; i10 < parameterCount; i10++) {
                    cob.aload(0).loadLocal(TypeKind.from(this.this$0.factoryType.parameterType(i10)), cob.parameterSlot(i10)).putfield(this.this$0.pool.fieldRefEntry(this.this$0.lambdaClassEntry, this.this$0.pool.nameAndTypeEntry(InnerClassLambdaMetafactory.argName(i10), this.this$0.argDescs[i10])));
                }
                cob.return_();
            }
        });
    }

    public static class SerializationSupport {
        private static final String NAME_METHOD_WRITE_REPLACE = "writeReplace";
        private static final String NAME_METHOD_READ_OBJECT = "readObject";
        private static final String NAME_METHOD_WRITE_OBJECT = "writeObject";
        private static final ClassDesc CD_SerializedLambda = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/SerializedLambda;");
        private static final ClassDesc CD_ObjectOutputStream = ClassOrInterfaceDescImpl.ofValidated("Ljava/io/ObjectOutputStream;");
        private static final ClassDesc CD_ObjectInputStream = ClassOrInterfaceDescImpl.ofValidated("Ljava/io/ObjectInputStream;");
        private static final MethodTypeDesc MTD_Object = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[0]);
        private static final MethodTypeDesc MTD_void_ObjectOutputStream = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{CD_ObjectOutputStream});
        private static final MethodTypeDesc MTD_void_ObjectInputStream = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{CD_ObjectInputStream});
        static final ClassDesc CD_NotSerializableException = ClassOrInterfaceDescImpl.ofValidated("Ljava/io/NotSerializableException;");
        static final MethodTypeDesc MTD_CTOR_NOT_SERIALIZABLE_EXCEPTION = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{ConstantDescs.CD_String});
        static final MethodTypeDesc MTD_CTOR_SERIALIZED_LAMBDA = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{ConstantDescs.CD_Class, ConstantDescs.CD_String, ConstantDescs.CD_String, ConstantDescs.CD_String, ConstantDescs.CD_int, ConstantDescs.CD_String, ConstantDescs.CD_String, ConstantDescs.CD_String, ConstantDescs.CD_String, ConstantUtils.CD_Object_array});

        private SerializationSupport() {
        }
    }

    private void generateSerializationFriendlyMethods(ClassBuilder clb) {
        clb.withMethodBody("writeReplace", SerializationSupport.MTD_Object, 18, new Consumer<CodeBuilder>(this) {
            final InnerClassLambdaMetafactory this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            @Override
            public void accept(CodeBuilder cob) {
                cob.new_(SerializationSupport.CD_SerializedLambda).dup().ldc(ClassDesc.ofInternalName(InnerClassLambdaMetafactory.sanitizedTargetClassName(this.this$0.targetClass))).ldc(this.this$0.factoryType.returnType().getName().replace('.', '/')).ldc(this.this$0.interfaceMethodName).ldc(this.this$0.interfaceMethodType.toMethodDescriptorString()).ldc(Integer.valueOf(this.this$0.implInfo.getReferenceKind())).ldc(this.this$0.implInfo.getDeclaringClass().getName().replace('.', '/')).ldc(this.this$0.implInfo.getName()).ldc(this.this$0.implInfo.getMethodType().toMethodDescriptorString()).ldc(this.this$0.dynamicMethodType.toMethodDescriptorString()).loadConstant(this.this$0.argDescs.length).anewarray(ConstantDescs.CD_Object);
                for (int i10 = 0; i10 < this.this$0.argDescs.length; i10++) {
                    cob.dup().loadConstant(i10).aload(0).getfield(this.this$0.pool.fieldRefEntry(this.this$0.lambdaClassEntry, this.this$0.pool.nameAndTypeEntry(InnerClassLambdaMetafactory.argName(i10), this.this$0.argDescs[i10])));
                    TypeConvertingMethodAdapter.boxIfTypePrimitive(cob, TypeKind.from(this.this$0.argDescs[i10]));
                    cob.aastore();
                }
                cob.invokespecial(SerializationSupport.CD_SerializedLambda, ConstantDescs.INIT_NAME, SerializationSupport.MTD_CTOR_SERIALIZED_LAMBDA).areturn();
            }
        });
    }

    private void generateSerializationHostileMethods(ClassBuilder clb) {
        Consumer<MethodBuilder> consumer = new Consumer<MethodBuilder>(this) {
            {
                Objects.requireNonNull(this);
            }

            @Override
            public void accept(MethodBuilder mb2) {
                final ConstantPoolBuilder cp = mb2.constantPool();
                final ClassEntry nseCE = cp.classEntry(SerializationSupport.CD_NotSerializableException);
                mb2.with(ExceptionsAttribute.of(nseCE)).withCode(new Consumer<CodeBuilder>(this) {
                    {
                        Objects.requireNonNull(this);
                    }

                    @Override
                    public void accept(CodeBuilder cob) {
                        cob.new_(nseCE).dup().ldc("Non-serializable lambda").invokespecial(cp.methodRefEntry(nseCE, cp.nameAndTypeEntry(ConstantDescs.INIT_NAME, SerializationSupport.MTD_CTOR_NOT_SERIALIZABLE_EXCEPTION))).athrow();
                    }
                });
            }
        };
        clb.withMethod("writeObject", SerializationSupport.MTD_void_ObjectOutputStream, 18, consumer);
        clb.withMethod("readObject", SerializationSupport.MTD_void_ObjectInputStream, 18, consumer);
    }

    Consumer<CodeBuilder> forwardingMethod(final MethodType methodType) {
        return new Consumer<CodeBuilder>(this) {
            final InnerClassLambdaMetafactory this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            @Override
            public void accept(CodeBuilder cob) {
                if (this.this$0.implKind == 8) {
                    cob.new_(this.this$0.implMethodClassDesc).dup();
                }
                if (this.this$0.useImplMethodHandle) {
                    ConstantPoolBuilder cp = cob.constantPool();
                    cob.ldc(cp.constantDynamicEntry(cp.bsmEntry(cp.methodHandleEntry(ConstantDescs.BSM_CLASS_DATA), List.of()), cp.nameAndTypeEntry(ConstantDescs.DEFAULT_NAME, ConstantDescs.CD_MethodHandle)));
                }
                for (int i10 = 0; i10 < this.this$0.argDescs.length; i10++) {
                    cob.aload(0).getfield(this.this$0.pool.fieldRefEntry(this.this$0.lambdaClassEntry, this.this$0.pool.nameAndTypeEntry(InnerClassLambdaMetafactory.argName(i10), this.this$0.argDescs[i10])));
                }
                this.this$0.convertArgumentTypes(cob, methodType);
                if (this.this$0.useImplMethodHandle) {
                    MethodType mtype = this.this$0.implInfo.getMethodType();
                    if (this.this$0.implKind != 6) {
                        mtype = mtype.insertParameterTypes(0, this.this$0.implClass);
                    }
                    cob.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeExact", InnerClassLambdaMetafactory.methodDesc(mtype));
                } else {
                    cob.invoke(this.this$0.invocationOpcode(), this.this$0.implMethodClassDesc, this.this$0.implMethodName, this.this$0.implMethodDesc, this.this$0.implClass.isInterface());
                }
                Class<?> implReturnClass = this.this$0.implMethodType.returnType();
                Class<?> samReturnClass = methodType.returnType();
                TypeConvertingMethodAdapter.convertType(cob, implReturnClass, samReturnClass, samReturnClass);
                cob.return_(TypeKind.from(samReturnClass));
            }
        };
    }

    private void convertArgumentTypes(CodeBuilder cob, MethodType samType) {
        int samParametersLength = samType.parameterCount();
        int captureArity = this.factoryType.parameterCount();
        for (int i10 = 0; i10 < samParametersLength; i10++) {
            Class<?> argType = samType.parameterType(i10);
            cob.loadLocal(TypeKind.from(argType), cob.parameterSlot(i10));
            TypeConvertingMethodAdapter.convertType(cob, argType, this.implMethodType.parameterType(captureArity + i10), this.dynamicMethodType.parameterType(i10));
        }
    }

    private Opcode invocationOpcode() throws InternalError {
        switch (this.implKind) {
            case 5:
                return Opcode.INVOKEVIRTUAL;
            case 6:
                return Opcode.INVOKESTATIC;
            case 7:
                return Opcode.INVOKESPECIAL;
            case 8:
                return Opcode.INVOKESPECIAL;
            case 9:
                return Opcode.INVOKEINTERFACE;
            default:
                throw new InternalError("Unexpected invocation kind: " + this.implKind);
        }
    }

    static ClassDesc implClassDesc(Class<?> cls) {
        if (cls.isHidden()) {
            return null;
        }
        return ConstantUtils.referenceClassDesc(cls.descriptorString());
    }

    static ClassDesc classDesc(Class<?> cls) {
        return cls.isPrimitive() ? Wrapper.forPrimitiveType(cls).basicClassDescriptor() : ConstantUtils.referenceClassDesc(cls.descriptorString());
    }

    static MethodTypeDesc methodDesc(MethodType mt) {
        ClassDesc[] params = new ClassDesc[mt.parameterCount()];
        for (int i10 = 0; i10 < params.length; i10++) {
            params[i10] = classDesc(mt.parameterType(i10));
        }
        return MethodTypeDescImpl.ofValidated(classDesc(mt.returnType()), params);
    }
}
