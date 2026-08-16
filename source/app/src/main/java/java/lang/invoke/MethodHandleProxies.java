package java.lang.invoke;

import android.icu.text.DateFormat;
import java.lang.classfile.ClassFile;
import java.lang.classfile.ClassHierarchyResolver;
import java.lang.classfile.Label;
import java.lang.classfile.TypeKind;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.constant.MethodTypeDesc;
import java.lang.invoke.MethodHandles;
import java.lang.module.ModuleDescriptor;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.UndeclaredThrowableException;
import java.lang.runtime.ObjectMethods;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Stream;
import jdk.internal.access.JavaLangReflectAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.loader.ClassLoaders;
import jdk.internal.module.Modules;
import jdk.internal.util.ClassFileDumper;
import jdk.internal.util.ReferencedKeySet;

public final class MethodHandleProxies {
    private static final ClassFileDumper DUMPER;
    private static final Set<Class<?>> WRAPPER_TYPES;
    private static final ClassValue<WeakReferenceHolder<Class<?>>> PROXIES;
    private static final List<ClassDesc> DEFAULT_RETHROWS;
    private static final ClassDesc CD_UndeclaredThrowableException;
    private static final ClassDesc CD_IllegalAccessException;
    private static final MethodTypeDesc MTD_void_Throwable;
    private static final MethodType MT_void_Lookup_MethodHandle_MethodHandle;
    private static final MethodType MT_Object_Lookup_MethodHandle_MethodHandle;
    private static final MethodType MT_MethodHandle_Object;
    private static final MethodTypeDesc MTD_void_Lookup_MethodHandle_MethodHandle;
    private static final MethodTypeDesc MTD_void_Lookup;
    private static final MethodTypeDesc MTD_MethodHandle_MethodType;
    private static final MethodTypeDesc MTD_Class;
    private static final MethodTypeDesc MTD_int;
    private static final MethodTypeDesc MTD_String;
    private static final MethodTypeDesc MTD_void_String;
    private static final String TARGET_NAME = "target";
    private static final String TYPE_NAME = "interfaceType";
    private static final String ENSURE_ORIGINAL_LOOKUP = "ensureOriginalLookup";
    private static final JavaLangReflectAccess JLRA;
    private static final AtomicInteger counter;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !MethodHandleProxies.class.desiredAssertionStatus();
        DUMPER = ClassFileDumper.getInstance("jdk.invoke.MethodHandleProxies.dumpClassFiles", "DUMP_MH_PROXY_CLASSFILES");
        WRAPPER_TYPES = ReferencedKeySet.create(false, ReferencedKeySet.concurrentHashMapSupplier());
        PROXIES = new ClassValue<WeakReferenceHolder<Class<?>>>() {
            @Override
            protected WeakReferenceHolder<Class<?>> computeValue(Class cls) {
                return computeValue((Class<?>) cls);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            protected WeakReferenceHolder<Class<?>> computeValue(Class<?> intfc) {
                return new WeakReferenceHolder<>(MethodHandleProxies.newProxyClass(intfc));
            }
        };
        DEFAULT_RETHROWS = List.of(ConstantUtils.referenceClassDesc(RuntimeException.class), ConstantUtils.referenceClassDesc(Error.class));
        CD_UndeclaredThrowableException = ConstantUtils.referenceClassDesc(UndeclaredThrowableException.class);
        CD_IllegalAccessException = ConstantUtils.referenceClassDesc(IllegalAccessException.class);
        MTD_void_Throwable = MethodTypeDesc.of(ConstantDescs.CD_void, ConstantDescs.CD_Throwable);
        MT_void_Lookup_MethodHandle_MethodHandle = MethodType.methodType(Void.TYPE, (Class<?>) MethodHandles.Lookup.class, (Class<?>[]) new Class[]{MethodHandle.class, MethodHandle.class});
        MT_Object_Lookup_MethodHandle_MethodHandle = MT_void_Lookup_MethodHandle_MethodHandle.changeReturnType(Object.class);
        MT_MethodHandle_Object = MethodType.methodType((Class<?>) MethodHandle.class, (Class<?>) Object.class);
        MTD_void_Lookup_MethodHandle_MethodHandle = ConstantUtils.methodTypeDesc(MT_void_Lookup_MethodHandle_MethodHandle);
        MTD_void_Lookup = MethodTypeDesc.of(ConstantDescs.CD_void, ConstantDescs.CD_MethodHandles_Lookup);
        MTD_MethodHandle_MethodType = MethodTypeDesc.of(ConstantDescs.CD_MethodHandle, ConstantDescs.CD_MethodType);
        MTD_Class = MethodTypeDesc.of(ConstantDescs.CD_Class);
        MTD_int = MethodTypeDesc.of(ConstantDescs.CD_int);
        MTD_String = MethodTypeDesc.of(ConstantDescs.CD_String);
        MTD_void_String = MethodTypeDesc.of(ConstantDescs.CD_void, ConstantDescs.CD_String);
        JLRA = SharedSecrets.getJavaLangReflectAccess();
        counter = new AtomicInteger();
    }

    private MethodHandleProxies() {
    }

    public static <T> T asInterfaceInstance(Class<T> intfc, MethodHandle target) {
        if (!intfc.isInterface() || !Modifier.isPublic(intfc.getModifiers())) {
            throw MethodHandleStatics.newIllegalArgumentException("not a public interface", intfc.getName());
        }
        if (intfc.isSealed()) {
            throw MethodHandleStatics.newIllegalArgumentException("a sealed interface", intfc.getName());
        }
        if (intfc.isHidden()) {
            throw MethodHandleStatics.newIllegalArgumentException("a hidden interface", intfc.getName());
        }
        Objects.requireNonNull(target);
        Class<?> proxyClass = getProxyClass(intfc);
        MethodHandles.Lookup lookup = new MethodHandles.Lookup(proxyClass);
        try {
            MethodHandle constructor = lookup.findConstructor(proxyClass, MT_void_Lookup_MethodHandle_MethodHandle).asType(MT_Object_Lookup_MethodHandle_MethodHandle);
            Object proxy = (Object) constructor.invokeExact(lookup, target, target);
            if ($assertionsDisabled || proxy.getClass().getModule().isNamed()) {
                return intfc.cast(proxy);
            }
            throw new AssertionError((Object) (((Object) proxy.getClass()) + " " + ((Object) proxy.getClass().getModule())));
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    public static final class MethodInfo extends Record {
        private final MethodTypeDesc desc;
        private final List<ClassDesc> thrown;
        private final String fieldName;

        private MethodInfo(MethodTypeDesc desc, List<ClassDesc> thrown, String fieldName) {
            this.desc = desc;
            this.thrown = thrown;
            this.fieldName = fieldName;
        }

        @Override
        public final String toString() {
            return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, MethodInfo.class), MethodInfo.class, "desc;thrown;fieldName", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->desc:Ljava/lang/constant/MethodTypeDesc;", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->thrown:Ljava/util/List;", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->fieldName:Ljava/lang/String;").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final int hashCode() {
            return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, MethodInfo.class), MethodInfo.class, "desc;thrown;fieldName", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->desc:Ljava/lang/constant/MethodTypeDesc;", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->thrown:Ljava/util/List;", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->fieldName:Ljava/lang/String;").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final boolean equals(Object o10) {
            return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, MethodInfo.class, Object.class), MethodInfo.class, "desc;thrown;fieldName", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->desc:Ljava/lang/constant/MethodTypeDesc;", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->thrown:Ljava/util/List;", "FIELD:Ljava/lang/invoke/MethodHandleProxies$MethodInfo;->fieldName:Ljava/lang/String;").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
        }

        public MethodTypeDesc desc() {
            return this.desc;
        }

        public List<ClassDesc> thrown() {
            return this.thrown;
        }

        public String fieldName() {
            return this.fieldName;
        }
    }

    private static Class<?> newProxyClass(Class<?> intfc) {
        List<MethodInfo> methods = new ArrayList<>();
        Set<Class<?>> referencedTypes = new HashSet<>();
        referencedTypes.add(intfc);
        String uniqueName = null;
        int count = 0;
        for (Method m10 : intfc.getMethods()) {
            if (Modifier.isAbstract(m10.getModifiers()) && !isObjectMethod(m10)) {
                String methodName = m10.getName();
                if (uniqueName == null) {
                    uniqueName = methodName;
                } else if (!uniqueName.equals(methodName)) {
                    throw MethodHandleStatics.newIllegalArgumentException("not a single-method interface", intfc.getName());
                }
                int i10 = count;
                count++;
                String fieldName = DateFormat.MINUTE + i10;
                MethodTypeDesc md2 = ConstantUtils.methodTypeDesc(m10.getReturnType(), JLRA.getExecutableSharedParameterTypes(m10));
                Class<?>[] thrown = JLRA.getExecutableSharedExceptionTypes(m10);
                List<ClassDesc> exceptionTypeDescs = thrown.length == 0 ? DEFAULT_RETHROWS : Stream.concat(DEFAULT_RETHROWS.stream(), Arrays.stream(thrown).map(ConstantUtils::referenceClassDesc)).distinct().toList();
                methods.add(new MethodInfo(md2, exceptionTypeDescs, fieldName));
                addElementType(referencedTypes, m10.getReturnType());
                addElementTypes(referencedTypes, JLRA.getExecutableSharedParameterTypes(m10));
                addElementTypes(referencedTypes, JLRA.getExecutableSharedExceptionTypes(m10));
            }
        }
        if (uniqueName == null) {
            throw MethodHandleStatics.newIllegalArgumentException("no method in ", intfc.getName());
        }
        ClassLoader loader = intfc.getClassLoader();
        Module targetModule = newDynamicModule(loader, referencedTypes);
        String packageName = targetModule.getName();
        String intfcName = intfc.getName();
        int i11 = intfcName.lastIndexOf(46);
        String className = packageName + "." + (i11 > 0 ? intfcName.substring(i11 + 1) : intfcName);
        byte[] template = createTemplate(loader, ConstantUtils.binaryNameToDesc(className), ConstantUtils.referenceClassDesc(intfc), uniqueName, methods);
        MethodHandles.Lookup.ClassDefiner definer = new MethodHandles.Lookup(intfc).makeHiddenClassDefiner(className, template, DUMPER);
        MethodHandles.Lookup lookup = definer.defineClassAsLookup(true);
        Class<?> ret = lookup.lookupClass();
        WRAPPER_TYPES.add(ret);
        return ret;
    }

    public static final class WeakReferenceHolder<T> {
        private volatile WeakReference<T> ref;

        WeakReferenceHolder(T value) {
            set(value);
        }

        void set(T value) {
            this.ref = new WeakReference<>(value);
        }

        T get() {
            return this.ref.get();
        }
    }

    private static Class<?> getProxyClass(Class<?> intfc) {
        WeakReferenceHolder<Class<?>> r10 = PROXIES.get(intfc);
        Class<?> cl2 = r10.get();
        if (cl2 != null) {
            return cl2;
        }
        synchronized (r10) {
            Class<?> cl3 = r10.get();
            if (cl3 != null) {
                return cl3;
            }
            Class<?> cl4 = newProxyClass(intfc);
            r10.set(cl4);
            return cl4;
        }
    }

    private static byte[] createTemplate(ClassLoader loader, ClassDesc proxyDesc, ClassDesc ifaceDesc, String methodName, List<MethodInfo> methods) {
        ClassFile.Option[] optionArr = new ClassFile.Option[1];
        optionArr[0] = ClassFile.ClassHierarchyResolverOption.of(ClassHierarchyResolver.ofClassLoading(loader == null ? ClassLoaders.platformClassLoader() : loader));
        return ClassFile.of(optionArr).build(proxyDesc, clb -> {
            clb.withSuperclass(ConstantDescs.CD_Object).withFlags(4112).withInterfaceSymbols(ifaceDesc).withField(TYPE_NAME, ConstantDescs.CD_Class, 26).withField("target", ConstantDescs.CD_MethodHandle, 18);
            Iterator i$ = methods.iterator();
            while (i$.hasNext()) {
                clb.withField(((MethodInfo) i$.next()).fieldName, ConstantDescs.CD_MethodHandle, 18);
            }
            clb.withMethodBody(ConstantDescs.CLASS_INIT_NAME, ConstantDescs.MTD_void, 8, cob -> {
                cob.loadConstant(ifaceDesc).putstatic(proxyDesc, TYPE_NAME, ConstantDescs.CD_Class).return_();
            });
            clb.withMethodBody(ConstantDescs.INIT_NAME, MTD_void_Lookup_MethodHandle_MethodHandle, 0, cob2 -> {
                cob2.aload(0).invokespecial(ConstantDescs.CD_Object, ConstantDescs.INIT_NAME, ConstantDescs.MTD_void).aload(1).invokestatic(proxyDesc, ENSURE_ORIGINAL_LOOKUP, MTD_void_Lookup).aload(0).aload(2).putfield(proxyDesc, "target", ConstantDescs.CD_MethodHandle);
                Iterator i$2 = methods.iterator();
                while (i$2.hasNext()) {
                    MethodInfo mi2 = (MethodInfo) i$2.next();
                    cob2.aload(0).aload(3).loadConstant(mi2.desc).invokevirtual(ConstantDescs.CD_MethodHandle, "asType", MTD_MethodHandle_MethodType).putfield(proxyDesc, mi2.fieldName, ConstantDescs.CD_MethodHandle);
                }
                cob2.return_();
            });
            clb.withMethodBody(ENSURE_ORIGINAL_LOOKUP, MTD_void_Lookup, 10, cob3 -> {
                Label failLabel = cob3.newLabel();
                cob3.aload(0).invokevirtual(ConstantDescs.CD_MethodHandles_Lookup, "lookupClass", MTD_Class).loadConstant(proxyDesc).if_acmpne(failLabel).aload(0).invokevirtual(ConstantDescs.CD_MethodHandles_Lookup, "lookupModes", MTD_int).loadConstant(64).iand().ifeq(failLabel).return_().labelBinding(failLabel).new_(CD_IllegalAccessException).dup().aload(0).invokevirtual(ConstantDescs.CD_Object, "toString", MTD_String).invokespecial(CD_IllegalAccessException, ConstantDescs.INIT_NAME, MTD_void_String).athrow();
            });
            Iterator i$2 = methods.iterator();
            while (i$2.hasNext()) {
                MethodInfo mi2 = (MethodInfo) i$2.next();
                clb.withMethodBody(methodName, mi2.desc, 1, cob4 -> {
                    cob4.trying(bcb -> {
                        bcb.aload(0).getfield(proxyDesc, mi2.fieldName, ConstantDescs.CD_MethodHandle);
                        for (int j10 = 0; j10 < mi2.desc.parameterCount(); j10++) {
                            bcb.loadLocal(TypeKind.from(mi2.desc.parameterType(j10)), bcb.parameterSlot(j10));
                        }
                        bcb.invokevirtual(ConstantDescs.CD_MethodHandle, "invokeExact", mi2.desc).return_(TypeKind.from(mi2.desc.returnType()));
                    }, ctb -> {
                        ctb.catchingMulti(mi2.thrown, (v0) -> {
                            v0.athrow();
                        }).catchingAll(cb2 -> {
                            cb2.new_(CD_UndeclaredThrowableException).dup_x1().swap().invokespecial(CD_UndeclaredThrowableException, ConstantDescs.INIT_NAME, MTD_void_Throwable).athrow();
                        });
                    });
                });
            }
        });
    }

    private static MethodHandle bindCaller(MethodHandle target, Class<?> hostClass) {
        return MethodHandleImpl.bindCaller(target, hostClass).withVarargs(target.isVarargsCollector());
    }

    public static boolean isWrapperInstance(Object x10) {
        return x10 != null && WRAPPER_TYPES.contains(x10.getClass());
    }

    public static MethodHandle wrapperInstanceTarget(Object x10) {
        if (!isWrapperInstance(x10)) {
            throw new IllegalArgumentException("not a wrapper instance: " + x10);
        }
        try {
            Class<?> type = x10.getClass();
            MethodHandle getter = new MethodHandles.Lookup(type).findGetter(type, "target", MethodHandle.class).asType(MT_MethodHandle_Object);
            return (MethodHandle) getter.invokeExact(x10);
        } catch (Throwable ex) {
            throw MethodHandleStatics.uncaughtException(ex);
        }
    }

    public static Class<?> wrapperInstanceType(Object x10) {
        if (!isWrapperInstance(x10)) {
            throw new IllegalArgumentException("not a wrapper instance: " + x10);
        }
        try {
            Class<?> type = x10.getClass();
            MethodHandle originalTypeField = new MethodHandles.Lookup(type).findStaticGetter(type, TYPE_NAME, Class.class);
            return (Class) originalTypeField.invokeExact();
        } catch (Throwable e10) {
            throw MethodHandleStatics.uncaughtException(e10);
        }
    }

    private static String nextModuleName() {
        return "jdk.MHProxy" + counter.incrementAndGet();
    }

    private static Module newDynamicModule(ClassLoader ld2, Set<Class<?>> types) {
        Objects.requireNonNull(types);
        String mn2 = nextModuleName();
        ModuleDescriptor descriptor = ModuleDescriptor.newModule(mn2, Set.of(ModuleDescriptor.Modifier.SYNTHETIC)).packages(Set.of(mn2)).build();
        Module dynModule = Modules.defineModule(ld2, descriptor, (URI) null);
        Module javaBase = Object.class.getModule();
        Modules.addReads(dynModule, javaBase);
        Modules.addOpens(dynModule, mn2, javaBase);
        for (Class<?> c10 : types) {
            ensureAccess(dynModule, c10);
        }
        return dynModule;
    }

    private static boolean isObjectMethod(Method m10) {
        String name = m10.getName();
        boolean z10 = -1;
        switch (name.hashCode()) {
            case -1776922004:
                if (name.equals("toString")) {
                    z10 = false;
                    break;
                }
                break;
            case -1295482945:
                if (name.equals("equals")) {
                    z10 = 2;
                    break;
                }
                break;
            case 147696667:
                if (name.equals("hashCode")) {
                    z10 = true;
                    break;
                }
                break;
        }
        switch (z10) {
            case false:
                return m10.getReturnType() == String.class && m10.getParameterCount() == 0;
            case true:
                return m10.getReturnType() == Integer.TYPE && m10.getParameterCount() == 0;
            case true:
                return m10.getReturnType() == Boolean.TYPE && m10.getParameterCount() == 1 && JLRA.getExecutableSharedParameterTypes(m10)[0] == Object.class;
            default:
                return false;
        }
    }

    private static void ensureAccess(Module target, Class<?> c10) {
        Module m10 = c10.getModule();
        if (!target.canRead(m10)) {
            Modules.addReads(target, m10);
        }
        String pn2 = c10.getPackageName();
        if (!m10.isExported(pn2, target)) {
            Modules.addExports(m10, pn2, target);
        }
    }

    private static void addElementTypes(Set<Class<?>> types, Class<?>... classes) {
        for (Class<?> cls : classes) {
            addElementType(types, cls);
        }
    }

    private static void addElementType(Set<Class<?>> types, Class<?> cls) {
        Class<?> e10;
        Class<?> cls2 = cls;
        while (true) {
            e10 = cls2;
            if (!e10.isArray()) {
                break;
            } else {
                cls2 = e10.getComponentType();
            }
        }
        if (!e10.isPrimitive()) {
            types.add(e10);
        }
    }
}
