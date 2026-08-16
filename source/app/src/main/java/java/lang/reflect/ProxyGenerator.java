package java.lang.reflect;

import android.icu.text.DateFormat;
import android.provider.ContactsContract;
import com.ardor3d.util.export.xml.XMLExporter;
import java.io.IOException;
import java.lang.classfile.ClassBuilder;
import java.lang.classfile.ClassFile;
import java.lang.classfile.CodeBuilder;
import java.lang.classfile.Label;
import java.lang.classfile.TypeKind;
import java.lang.classfile.attribute.ExceptionsAttribute;
import java.lang.classfile.attribute.StackMapFrameInfo;
import java.lang.classfile.attribute.StackMapTableAttribute;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.ConstantPoolBuilder;
import java.lang.classfile.constantpool.FieldRefEntry;
import java.lang.classfile.constantpool.InterfaceMethodRefEntry;
import java.lang.classfile.constantpool.MethodRefEntry;
import java.lang.classfile.constantpool.NameAndTypeEntry;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.MethodTypeDesc;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;

public final class ProxyGenerator {
    private static final ClassFile CF_CONTEXT;
    private static final ClassDesc CD_ClassLoader;
    private static final ClassDesc CD_Class_array;
    private static final ClassDesc CD_ClassNotFoundException;
    private static final ClassDesc CD_NoClassDefFoundError;
    private static final ClassDesc CD_IllegalAccessException;
    private static final ClassDesc CD_InvocationHandler;
    private static final ClassDesc CD_Method;
    private static final ClassDesc CD_NoSuchMethodError;
    private static final ClassDesc CD_NoSuchMethodException;
    private static final ClassDesc CD_Object_array;
    private static final ClassDesc CD_Proxy;
    private static final ClassDesc CD_UndeclaredThrowableException;
    private static final MethodTypeDesc MTD_boolean;
    private static final MethodTypeDesc MTD_void_InvocationHandler;
    private static final MethodTypeDesc MTD_void_String;
    private static final MethodTypeDesc MTD_void_Throwable;
    private static final MethodTypeDesc MTD_Class;
    private static final MethodTypeDesc MTD_Class_String_boolean_ClassLoader;
    private static final MethodTypeDesc MTD_ClassLoader;
    private static final MethodTypeDesc MTD_Method_String_Class_array;
    private static final MethodTypeDesc MTD_MethodHandles$Lookup;
    private static final MethodTypeDesc MTD_MethodHandles$Lookup_MethodHandles$Lookup;
    private static final MethodTypeDesc MTD_Object_Object_Method_ObjectArray;
    private static final MethodTypeDesc MTD_String;
    private static final String NAME_LOOKUP_ACCESSOR = "proxyClassLookup";
    private static final Class<?>[] EMPTY_CLASS_ARRAY;
    private static final String NAME_HANDLER_FIELD = "h";
    private static final boolean SAVE_GENERATED_FILES;
    private static final Method OBJECT_HASH_CODE_METHOD;
    private static final Method OBJECT_EQUALS_METHOD;
    private static final Method OBJECT_TO_STRING_METHOD;
    private static final String OBJECT_HASH_CODE_SIG;
    private static final String OBJECT_EQUALS_SIG;
    private static final String OBJECT_TO_STRING_SIG;
    private final List<StackMapFrameInfo.VerificationTypeInfo> classLoaderLocal;
    private final List<StackMapFrameInfo.VerificationTypeInfo> throwableStack;
    private final NameAndTypeEntry exInit;
    private final ClassEntry objectCE;
    private final ClassEntry proxyCE;
    private final ClassEntry uteCE;
    private final ClassEntry classCE;
    private final FieldRefEntry handlerField;
    private final InterfaceMethodRefEntry invocationHandlerInvoke;
    private final MethodRefEntry uteInit;
    private final MethodRefEntry classGetMethod;
    private final MethodRefEntry classForName;
    private final MethodRefEntry throwableGetMessage;
    private final ClassEntry thisClassCE;
    private final List<Class<?>> interfaces;
    private final int accessFlags;
    static final boolean $assertionsDisabled;
    private final Map<String, List<ProxyMethod>> proxyMethods = new LinkedHashMap();
    private int proxyMethodCount = 3;
    private final ConstantPoolBuilder cp = ConstantPoolBuilder.of();

    static {
        $assertionsDisabled = !ProxyGenerator.class.desiredAssertionStatus();
        CF_CONTEXT = ClassFile.of(ClassFile.StackMapsOption.DROP_STACK_MAPS);
        CD_ClassLoader = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/ClassLoader;");
        CD_Class_array = ConstantDescs.CD_Class.arrayType();
        CD_ClassNotFoundException = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/ClassNotFoundException;");
        CD_NoClassDefFoundError = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/NoClassDefFoundError;");
        CD_IllegalAccessException = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/IllegalAccessException;");
        CD_InvocationHandler = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/reflect/InvocationHandler;");
        CD_Method = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/reflect/Method;");
        CD_NoSuchMethodError = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/NoSuchMethodError;");
        CD_NoSuchMethodException = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/NoSuchMethodException;");
        CD_Object_array = ConstantUtils.CD_Object_array;
        CD_Proxy = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/reflect/Proxy;");
        CD_UndeclaredThrowableException = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/reflect/UndeclaredThrowableException;");
        MTD_boolean = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_boolean, new ClassDesc[0]);
        MTD_void_InvocationHandler = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{CD_InvocationHandler});
        MTD_void_String = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{ConstantDescs.CD_String});
        MTD_void_Throwable = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_void, new ClassDesc[]{ConstantDescs.CD_Throwable});
        MTD_Class = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Class, new ClassDesc[0]);
        MTD_Class_String_boolean_ClassLoader = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Class, new ClassDesc[]{ConstantDescs.CD_String, ConstantDescs.CD_boolean, CD_ClassLoader});
        MTD_ClassLoader = MethodTypeDescImpl.ofValidated(CD_ClassLoader, new ClassDesc[0]);
        MTD_Method_String_Class_array = MethodTypeDescImpl.ofValidated(CD_Method, new ClassDesc[]{ConstantDescs.CD_String, CD_Class_array});
        MTD_MethodHandles$Lookup = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_MethodHandles_Lookup, new ClassDesc[0]);
        MTD_MethodHandles$Lookup_MethodHandles$Lookup = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_MethodHandles_Lookup, new ClassDesc[]{ConstantDescs.CD_MethodHandles_Lookup});
        MTD_Object_Object_Method_ObjectArray = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_Object, new ClassDesc[]{ConstantDescs.CD_Object, CD_Method, CD_Object_array});
        MTD_String = MethodTypeDescImpl.ofValidated(ConstantDescs.CD_String, new ClassDesc[0]);
        EMPTY_CLASS_ARRAY = new Class[0];
        SAVE_GENERATED_FILES = Boolean.getBoolean("jdk.proxy.ProxyGenerator.saveGeneratedFiles");
        try {
            OBJECT_HASH_CODE_METHOD = Object.class.getMethod("hashCode", new Class[0]);
            OBJECT_HASH_CODE_SIG = OBJECT_HASH_CODE_METHOD.toShortSignature();
            OBJECT_EQUALS_METHOD = Object.class.getMethod("equals", Object.class);
            OBJECT_EQUALS_SIG = OBJECT_EQUALS_METHOD.toShortSignature();
            OBJECT_TO_STRING_METHOD = Object.class.getMethod("toString", new Class[0]);
            OBJECT_TO_STRING_SIG = OBJECT_TO_STRING_METHOD.toShortSignature();
        } catch (NoSuchMethodException e10) {
            throw new NoSuchMethodError(e10.getMessage());
        }
    }

    private ProxyGenerator(String className, List<Class<?>> interfaces, int accessFlags) {
        this.thisClassCE = this.cp.classEntry(ConstantUtils.binaryNameToDesc(className));
        this.interfaces = interfaces;
        this.accessFlags = accessFlags;
        ClassEntry throwable = this.cp.classEntry(ConstantDescs.CD_Throwable);
        this.classLoaderLocal = List.of(StackMapFrameInfo.ObjectVerificationTypeInfo.of(this.cp.classEntry(CD_ClassLoader)));
        this.throwableStack = List.of(StackMapFrameInfo.ObjectVerificationTypeInfo.of(throwable));
        this.exInit = this.cp.nameAndTypeEntry(ConstantDescs.INIT_NAME, MTD_void_String);
        this.objectCE = this.cp.classEntry(ConstantDescs.CD_Object);
        this.proxyCE = this.cp.classEntry(CD_Proxy);
        this.classCE = this.cp.classEntry(ConstantDescs.CD_Class);
        this.handlerField = this.cp.fieldRefEntry(this.proxyCE, this.cp.nameAndTypeEntry(NAME_HANDLER_FIELD, CD_InvocationHandler));
        this.invocationHandlerInvoke = this.cp.interfaceMethodRefEntry(CD_InvocationHandler, "invoke", MTD_Object_Object_Method_ObjectArray);
        this.uteCE = this.cp.classEntry(CD_UndeclaredThrowableException);
        this.uteInit = this.cp.methodRefEntry(this.uteCE, this.cp.nameAndTypeEntry(ConstantDescs.INIT_NAME, MTD_void_Throwable));
        this.classGetMethod = this.cp.methodRefEntry(this.classCE, this.cp.nameAndTypeEntry("getMethod", MTD_Method_String_Class_array));
        this.classForName = this.cp.methodRefEntry(this.classCE, this.cp.nameAndTypeEntry("forName", MTD_Class_String_boolean_ClassLoader));
        this.throwableGetMessage = this.cp.methodRefEntry(throwable, this.cp.nameAndTypeEntry("getMessage", MTD_String));
    }

    public static byte[] generateProxyClass(ClassLoader loader, String name, List<Class<?>> interfaces, int accessFlags) {
        Path path;
        Objects.requireNonNull(interfaces);
        ProxyGenerator gen = new ProxyGenerator(name, interfaces, accessFlags);
        byte[] classFile = gen.generateClassFile();
        if (SAVE_GENERATED_FILES) {
            try {
                int i10 = name.lastIndexOf(46);
                if (i10 > 0) {
                    Path dir = Path.of(name.substring(0, i10).replace('.', '/'), new String[0]);
                    Files.createDirectories(dir, new FileAttribute[0]);
                    path = dir.resolve(name.substring(i10 + 1) + ".class");
                } else {
                    path = Path.of(name + ".class", new String[0]);
                }
                Files.write(path, classFile, new OpenOption[0]);
                return null;
            } catch (IOException e10) {
                throw new InternalError("I/O exception saving generated file: " + ((Object) e10));
            }
        }
        return classFile;
    }

    private static List<ClassEntry> toClassEntries(ConstantPoolBuilder cp, List<Class<?>> types) {
        ArrayList<ClassEntry> ces = new ArrayList<>(types.size());
        for (Class<?> t10 : types) {
            ces.add(cp.classEntry(ConstantUtils.binaryNameToDesc(t10.getName())));
        }
        return ces;
    }

    private static void checkReturnTypes(List<ProxyMethod> methods) {
        if (methods.size() < 2) {
            return;
        }
        List<Class<?>> uncoveredReturnTypes = new ArrayList<>(1);
        for (ProxyMethod pm2 : methods) {
            Class<?> newReturnType = pm2.returnType;
            if (newReturnType.isPrimitive()) {
                throw new IllegalArgumentException("methods with same signature " + pm2.shortSignature + " but incompatible return types: " + newReturnType.getName() + " and others");
            }
            boolean added = false;
            ListIterator<Class<?>> liter = uncoveredReturnTypes.listIterator();
            while (true) {
                if (liter.hasNext()) {
                    Class<?> uncoveredReturnType = liter.next();
                    if (newReturnType.isAssignableFrom(uncoveredReturnType)) {
                        if (!$assertionsDisabled && added) {
                            throw new AssertionError();
                        }
                    } else if (uncoveredReturnType.isAssignableFrom(newReturnType)) {
                        if (!added) {
                            liter.set(newReturnType);
                            added = true;
                        } else {
                            liter.remove();
                        }
                    }
                } else if (!added) {
                    uncoveredReturnTypes.add(newReturnType);
                }
            }
        }
        if (uncoveredReturnTypes.size() > 1) {
            throw new IllegalArgumentException("methods with same signature " + ((ProxyMethod) methods.getFirst()).shortSignature + " but incompatible return types: " + ((Object) uncoveredReturnTypes));
        }
    }

    private static List<Class<?>> computeUniqueCatchList(Class<?>[] exceptions) {
        List<Class<?>> uniqueList = new ArrayList<>();
        uniqueList.add(Error.class);
        uniqueList.add(RuntimeException.class);
        int length = exceptions.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            Class<?> ex = exceptions[i10];
            if (ex.isAssignableFrom(Throwable.class)) {
                uniqueList.clear();
                break;
            }
            if (Throwable.class.isAssignableFrom(ex)) {
                int j10 = 0;
                while (true) {
                    if (j10 < uniqueList.size()) {
                        Class<?> ex2 = uniqueList.get(j10);
                        if (ex2.isAssignableFrom(ex)) {
                            break;
                        }
                        if (ex.isAssignableFrom(ex2)) {
                            uniqueList.remove(j10);
                        } else {
                            j10++;
                        }
                    } else {
                        uniqueList.add(ex);
                        break;
                    }
                }
            }
            i10++;
        }
        return uniqueList;
    }

    private static void collectCompatibleTypes(Class<?>[] from, Class<?>[] with, List<Class<?>> list) {
        for (Class<?> fc2 : from) {
            if (!list.contains(fc2)) {
                int length = with.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        Class<?> wc2 = with[i10];
                        if (!wc2.isAssignableFrom(fc2)) {
                            i10++;
                        } else {
                            list.add(fc2);
                            break;
                        }
                    }
                }
            }
        }
    }

    private byte[] generateClassFile() {
        addProxyMethod(new ProxyMethod(this, OBJECT_HASH_CODE_METHOD, OBJECT_HASH_CODE_SIG, "m0"));
        addProxyMethod(new ProxyMethod(this, OBJECT_EQUALS_METHOD, OBJECT_EQUALS_SIG, "m1"));
        addProxyMethod(new ProxyMethod(this, OBJECT_TO_STRING_METHOD, OBJECT_TO_STRING_SIG, "m2"));
        for (Class<?> intf : this.interfaces) {
            for (Method m10 : intf.getMethods()) {
                if (!Modifier.isStatic(m10.getModifiers())) {
                    addProxyMethod(m10, intf);
                }
            }
        }
        for (List<ProxyMethod> sigmethods : this.proxyMethods.values()) {
            checkReturnTypes(sigmethods);
        }
        return CF_CONTEXT.build(this.thisClassCE, this.cp, clb -> {
            clb.withSuperclass(this.proxyCE);
            clb.withFlags(this.accessFlags);
            clb.withInterfaces(toClassEntries(this.cp, this.interfaces));
            generateConstructor(clb);
            for (List<ProxyMethod> sigmethods2 : this.proxyMethods.values()) {
                for (ProxyMethod pm2 : sigmethods2) {
                    clb.withField(pm2.methodFieldName, CD_Method, 26);
                    pm2.generateMethod(clb);
                }
            }
            generateStaticInitializer(clb);
            generateLookupAccessor(clb);
        });
    }

    private void addProxyMethod(Method m10, Class<?> fromClass) {
        Class<?> returnType = m10.getReturnType();
        Class<?>[] exceptionTypes = m10.getSharedExceptionTypes();
        String sig = m10.toShortSignature();
        List<ProxyMethod> sigmethods = proxyMethodsFor(sig);
        for (ProxyMethod pm2 : sigmethods) {
            if (returnType == pm2.returnType) {
                List<Class<?>> legalExceptions = new ArrayList<>();
                collectCompatibleTypes(exceptionTypes, pm2.exceptionTypes, legalExceptions);
                collectCompatibleTypes(pm2.exceptionTypes, exceptionTypes, legalExceptions);
                pm2.exceptionTypes = (Class[]) legalExceptions.toArray(EMPTY_CLASS_ARRAY);
                return;
            }
        }
        StringBuilder append = new StringBuilder().append(DateFormat.MINUTE);
        int i10 = this.proxyMethodCount;
        this.proxyMethodCount = i10 + 1;
        sigmethods.add(new ProxyMethod(this, m10, sig, returnType, exceptionTypes, fromClass, append.append(i10).toString()));
    }

    private List<ProxyMethod> proxyMethodsFor(String sig) {
        return this.proxyMethods.computeIfAbsent(sig, str -> {
            return new ArrayList(3);
        });
    }

    private void addProxyMethod(ProxyMethod pm2) {
        proxyMethodsFor(pm2.shortSignature).add(pm2);
    }

    private void generateConstructor(ClassBuilder clb) {
        clb.withMethodBody(ConstantDescs.INIT_NAME, MTD_void_InvocationHandler, 1, cob -> {
            cob.aload(0).aload(1).invokespecial(this.cp.methodRefEntry(this.proxyCE, this.cp.nameAndTypeEntry(ConstantDescs.INIT_NAME, MTD_void_InvocationHandler))).return_();
        });
    }

    private void generateStaticInitializer(ClassBuilder clb) {
        clb.withMethodBody(ConstantDescs.CLASS_INIT_NAME, ConstantDescs.MTD_void, 8, cob -> {
            cob.ldc(this.thisClassCE).invokevirtual(this.cp.methodRefEntry(this.classCE, this.cp.nameAndTypeEntry("getClassLoader", MTD_ClassLoader))).astore(0);
            Label ts = cob.newBoundLabel();
            for (List<ProxyMethod> sigmethods : this.proxyMethods.values()) {
                for (ProxyMethod pm2 : sigmethods) {
                    pm2.codeFieldInitialization(cob);
                }
            }
            cob.return_();
            Label c12 = cob.newBoundLabel();
            ClassEntry nsmError = this.cp.classEntry(CD_NoSuchMethodError);
            cob.exceptionCatch(ts, c12, c12, CD_NoSuchMethodException).new_(nsmError).dup_x1().swap().invokevirtual(this.throwableGetMessage).invokespecial(this.cp.methodRefEntry(nsmError, this.exInit)).athrow();
            Label c22 = cob.newBoundLabel();
            ClassEntry ncdfError = this.cp.classEntry(CD_NoClassDefFoundError);
            cob.exceptionCatch(ts, c12, c22, CD_ClassNotFoundException).new_(ncdfError).dup_x1().swap().invokevirtual(this.throwableGetMessage).invokespecial(this.cp.methodRefEntry(ncdfError, this.exInit)).athrow();
            cob.with(StackMapTableAttribute.of(List.of(StackMapFrameInfo.of(c12, this.classLoaderLocal, this.throwableStack), StackMapFrameInfo.of(c22, this.classLoaderLocal, this.throwableStack))));
        });
    }

    private void generateLookupAccessor(ClassBuilder clb) {
        clb.withMethod(NAME_LOOKUP_ACCESSOR, MTD_MethodHandles$Lookup_MethodHandles$Lookup, 10, mb2 -> {
            mb2.with(ExceptionsAttribute.of((List<ClassEntry>) List.of(mb2.constantPool().classEntry(CD_IllegalAccessException)))).withCode(cob -> {
                Label failLabel = cob.newLabel();
                ClassEntry mhl = this.cp.classEntry(ConstantDescs.CD_MethodHandles_Lookup);
                ClassEntry iae = this.cp.classEntry(CD_IllegalAccessException);
                cob.aload(0).invokevirtual(this.cp.methodRefEntry(mhl, this.cp.nameAndTypeEntry("lookupClass", MTD_Class))).ldc(this.proxyCE).if_acmpne(failLabel).aload(0).invokevirtual(this.cp.methodRefEntry(mhl, this.cp.nameAndTypeEntry("hasFullPrivilegeAccess", MTD_boolean))).ifeq(failLabel).invokestatic(ConstantDescs.CD_MethodHandles, ContactsContract.ContactsColumns.LOOKUP_KEY, MTD_MethodHandles$Lookup).areturn().labelBinding(failLabel).new_(iae).dup().aload(0).invokevirtual(this.cp.methodRefEntry(mhl, this.cp.nameAndTypeEntry("toString", MTD_String))).invokespecial(this.cp.methodRefEntry(iae, this.exInit)).athrow().with(StackMapTableAttribute.of(List.of(StackMapFrameInfo.of(failLabel, List.of(StackMapFrameInfo.ObjectVerificationTypeInfo.of(mhl)), List.of()))));
            });
        });
    }

    public class ProxyMethod {
        private final Method method;
        private final String shortSignature;
        private final Class<?> fromClass;
        private final Class<?> returnType;
        private final String methodFieldName;
        private Class<?>[] exceptionTypes;
        private final FieldRefEntry methodField;
        final ProxyGenerator this$0;

        private ProxyMethod(ProxyGenerator proxyGenerator, Method method, String sig, Class<?> returnType, Class<?>[] exceptionTypes, Class<?> fromClass, String methodFieldName) {
            Objects.requireNonNull(proxyGenerator);
            this.this$0 = proxyGenerator;
            this.method = method;
            this.shortSignature = sig;
            this.returnType = returnType;
            this.exceptionTypes = exceptionTypes;
            this.fromClass = fromClass;
            this.methodFieldName = methodFieldName;
            this.methodField = proxyGenerator.cp.fieldRefEntry(proxyGenerator.thisClassCE, proxyGenerator.cp.nameAndTypeEntry(methodFieldName, ProxyGenerator.CD_Method));
        }

        private Class<?>[] parameterTypes() {
            return this.method.getSharedParameterTypes();
        }

        private ProxyMethod(ProxyGenerator proxyGenerator, Method method, String sig, String methodFieldName) {
            this(proxyGenerator, method, sig, method.getReturnType(), method.getSharedExceptionTypes(), method.getDeclaringClass(), methodFieldName);
        }

        private void generateMethod(ClassBuilder clb) {
            MethodTypeDesc desc = ConstantUtils.methodTypeDesc(this.returnType, parameterTypes());
            int accessFlags = this.method.isVarArgs() ? 145 : 17;
            clb.withMethod(this.method.getName(), desc, accessFlags, mb2 -> {
                mb2.with(ExceptionsAttribute.of(ProxyGenerator.toClassEntries(this.this$0.cp, List.of(this.exceptionTypes)))).withCode(cob -> {
                    List<Class<?>> catchList = ProxyGenerator.computeUniqueCatchList(this.exceptionTypes);
                    cob.aload(cob.receiverSlot()).getfield(this.this$0.handlerField).aload(cob.receiverSlot()).getstatic(this.methodField);
                    Class<?>[] parameterTypes = parameterTypes();
                    if (parameterTypes.length > 0) {
                        cob.loadConstant(parameterTypes.length).anewarray(this.this$0.objectCE);
                        for (int i10 = 0; i10 < parameterTypes.length; i10++) {
                            cob.dup().loadConstant(i10);
                            codeWrapArgument(cob, parameterTypes[i10], cob.parameterSlot(i10));
                            cob.aastore();
                        }
                    } else {
                        cob.aconst_null();
                    }
                    cob.invokeinterface(this.this$0.invocationHandlerInvoke);
                    if (this.returnType == Void.TYPE) {
                        cob.pop().return_();
                    } else {
                        codeUnwrapReturnValue(cob, this.returnType);
                    }
                    if (!catchList.isEmpty()) {
                        Label c12 = cob.newBoundLabel();
                        for (Class<?> exc : catchList) {
                            cob.exceptionCatch(cob.startLabel(), c12, c12, ConstantUtils.referenceClassDesc(exc));
                        }
                        cob.athrow();
                        Label c22 = cob.newBoundLabel();
                        cob.exceptionCatchAll(cob.startLabel(), c12, c22).new_(this.this$0.uteCE).dup_x1().swap().invokespecial(this.this$0.uteInit).athrow().with(StackMapTableAttribute.of(List.of(StackMapFrameInfo.of(c12, List.of(), this.this$0.throwableStack), StackMapFrameInfo.of(c22, List.of(), this.this$0.throwableStack))));
                    }
                });
            });
        }

        private void codeWrapArgument(CodeBuilder cob, Class<?> type, int slot) {
            if (type.isPrimitive()) {
                cob.loadLocal(TypeKind.from(type).asLoadable(), slot);
                PrimitiveTypeInfo prim = PrimitiveTypeInfo.get(type);
                cob.invokestatic(prim.wrapperMethodRef(this.this$0.cp));
                return;
            }
            cob.aload(slot);
        }

        private void codeUnwrapReturnValue(CodeBuilder cob, Class<?> type) {
            if (type.isPrimitive()) {
                PrimitiveTypeInfo prim = PrimitiveTypeInfo.get(type);
                cob.checkcast(prim.wrapperClass).invokevirtual(prim.unwrapMethodRef(this.this$0.cp)).return_(TypeKind.from(type).asLoadable());
            } else {
                cob.checkcast(ConstantUtils.referenceClassDesc(type)).areturn();
            }
        }

        private void codeFieldInitialization(CodeBuilder cob) {
            ConstantPoolBuilder cp = cob.constantPool();
            codeClassForName(cob, this.fromClass);
            Class<?>[] parameterTypes = parameterTypes();
            cob.ldc(this.method.getName()).loadConstant(parameterTypes.length).anewarray(this.this$0.classCE);
            for (int i10 = 0; i10 < parameterTypes.length; i10++) {
                cob.dup().loadConstant(i10);
                if (parameterTypes[i10].isPrimitive()) {
                    PrimitiveTypeInfo prim = PrimitiveTypeInfo.get(parameterTypes[i10]);
                    cob.getstatic(prim.typeFieldRef(cp));
                } else {
                    codeClassForName(cob, parameterTypes[i10]);
                }
                cob.aastore();
            }
            cob.invokevirtual(this.this$0.classGetMethod).putstatic(this.methodField);
        }

        private void codeClassForName(CodeBuilder cob, Class<?> cl2) {
            if (cl2 == Object.class) {
                cob.ldc(this.this$0.objectCE);
            } else {
                cob.ldc(cl2.getName()).iconst_0().aload(0).invokestatic(this.this$0.classForName);
            }
        }

        public String toString() {
            return this.method.toShortString();
        }
    }

    public enum PrimitiveTypeInfo {
        BYTE(Byte.TYPE, ConstantDescs.CD_byte, ConstantDescs.CD_Byte),
        CHAR(Character.TYPE, ConstantDescs.CD_char, ConstantDescs.CD_Character),
        DOUBLE(Double.TYPE, ConstantDescs.CD_double, ConstantDescs.CD_Double),
        FLOAT(Float.TYPE, ConstantDescs.CD_float, ConstantDescs.CD_Float),
        INT(Integer.TYPE, ConstantDescs.CD_int, ConstantDescs.CD_Integer),
        LONG(Long.TYPE, ConstantDescs.CD_long, ConstantDescs.CD_Long),
        SHORT(Short.TYPE, ConstantDescs.CD_short, ConstantDescs.CD_Short),
        BOOLEAN(Boolean.TYPE, ConstantDescs.CD_boolean, ConstantDescs.CD_Boolean);

        private final ClassDesc wrapperClass;
        private final MethodTypeDesc wrapperMethodType;
        private final String unwrapMethodName;
        private final MethodTypeDesc unwrapMethodType;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !ProxyGenerator.class.desiredAssertionStatus();
        }

        PrimitiveTypeInfo(Class cls, ClassDesc baseType, ClassDesc wrapperClass) {
            if (!$assertionsDisabled && !baseType.isPrimitive()) {
                throw new AssertionError();
            }
            this.wrapperClass = wrapperClass;
            this.wrapperMethodType = MethodTypeDescImpl.ofValidated(wrapperClass, new ClassDesc[]{baseType});
            this.unwrapMethodName = cls.getName() + XMLExporter.ELEMENT_VALUE;
            this.unwrapMethodType = MethodTypeDescImpl.ofValidated(baseType, new ClassDesc[0]);
        }

        public static PrimitiveTypeInfo get(Class<?> cl2) {
            if (cl2 == Integer.TYPE) {
                return INT;
            }
            if (cl2 == Long.TYPE) {
                return LONG;
            }
            if (cl2 == Boolean.TYPE) {
                return BOOLEAN;
            }
            if (cl2 == Short.TYPE) {
                return SHORT;
            }
            if (cl2 == Byte.TYPE) {
                return BYTE;
            }
            if (cl2 == Character.TYPE) {
                return CHAR;
            }
            if (cl2 == Float.TYPE) {
                return FLOAT;
            }
            if (cl2 == Double.TYPE) {
                return DOUBLE;
            }
            throw new AssertionError(cl2);
        }

        public MethodRefEntry wrapperMethodRef(ConstantPoolBuilder cp) {
            return cp.methodRefEntry(this.wrapperClass, "valueOf", this.wrapperMethodType);
        }

        public MethodRefEntry unwrapMethodRef(ConstantPoolBuilder cp) {
            return cp.methodRefEntry(this.wrapperClass, this.unwrapMethodName, this.unwrapMethodType);
        }

        public FieldRefEntry typeFieldRef(ConstantPoolBuilder cp) {
            return cp.fieldRefEntry(this.wrapperClass, "TYPE", ConstantDescs.CD_Class);
        }
    }
}
