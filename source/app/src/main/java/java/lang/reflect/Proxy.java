package java.lang.reflect;

import java.io.Serializable;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.invoke.WrongMethodTypeException;
import java.lang.module.ModuleDescriptor;
import java.lang.runtime.ObjectMethods;
import java.net.URI;
import java.security.ProtectionDomain;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BooleanSupplier;
import jdk.internal.access.JavaLangAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.loader.ClassLoaderValue;
import jdk.internal.misc.VM;
import jdk.internal.module.Modules;
import jdk.internal.vm.annotation.Stable;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavadocConstants;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Proxy.class
 */
public class Proxy implements Serializable {
    private static final long serialVersionUID = -2222568056686623797L;
    private static final Class<?>[] constructorParams;
    private static final ClassLoaderValue<Constructor<?>> proxyCache;

    protected InvocationHandler f92813h;
    private static final String PROXY_PACKAGE_PREFIX = "com.sun.proxy";
    private static final ClassValue<ConcurrentHashMap<Method, MethodHandle>> DEFAULT_METHODS_MAP;
    static final Object[] EMPTY_ARGS;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !Proxy.class.desiredAssertionStatus();
        constructorParams = new Class[]{InvocationHandler.class};
        proxyCache = new ClassLoaderValue<>();
        DEFAULT_METHODS_MAP = new ClassValue<ConcurrentHashMap<Method, MethodHandle>>() {
            @Override
            protected ConcurrentHashMap<Method, MethodHandle> computeValue(Class cls) {
                return computeValue((Class<?>) cls);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            protected ConcurrentHashMap<Method, MethodHandle> computeValue(Class<?> type) {
                return new ConcurrentHashMap<>(4);
            }
        };
        EMPTY_ARGS = new Object[0];
    }

    private Proxy() {
    }

    protected Proxy(InvocationHandler h10) {
        Objects.requireNonNull(h10);
        this.f92813h = h10;
    }

    @Deprecated
    public static Class<?> getProxyClass(ClassLoader loader, Class<?>... interfaces) throws IllegalArgumentException {
        return getProxyConstructor(loader, interfaces).getDeclaringClass();
    }

    private static Constructor<?> getProxyConstructor(ClassLoader loader, Class<?>... interfaces) {
        if (interfaces.length == 1) {
            Class<?> intf = interfaces[0];
            return (Constructor) proxyCache.sub(intf).computeIfAbsent(loader, (ld2, clv) -> {
                return new ProxyBuilder(ld2, (Class<?>) clv.key()).build();
            });
        }
        Class<?>[] intfsArray = (Class[]) interfaces.clone();
        List<Class<?>> intfs = Arrays.asList(intfsArray);
        return (Constructor) proxyCache.sub(intfs).computeIfAbsent(loader, (ld3, clv2) -> {
            return new ProxyBuilder(ld3, (List<Class<?>>) clv2.key()).build();
        });
    }

    public static final class ProxyBuilder {
        private static final JavaLangAccess JLA;
        private static final String proxyClassNamePrefix = "$Proxy";
        private static final AtomicLong nextUniqueNumber;
        private static final ClassLoaderValue<Boolean> reverseProxyCache;
        private static final String DEBUG;
        private final List<Class<?>> interfaces;
        private final ProxyClassContext context;
        private static final ClassLoaderValue<Module> dynProxyModules;
        private static final AtomicInteger counter;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !Proxy.class.desiredAssertionStatus();
            JLA = SharedSecrets.getJavaLangAccess();
            nextUniqueNumber = new AtomicLong();
            reverseProxyCache = new ClassLoaderValue<>();
            DEBUG = System.getProperty("jdk.proxy.debug", "");
            dynProxyModules = new ClassLoaderValue<>();
            counter = new AtomicInteger();
        }

        public static final class ProxyClassContext extends Record {
            private final Module module;
            private final String packageName;
            private final int accessFlags;

            @Override
            public final String toString() {
                return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, ProxyClassContext.class), ProxyClassContext.class, "module;packageName;accessFlags", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->module:Ljava/lang/Module;", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->packageName:Ljava/lang/String;", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->accessFlags:I").dynamicInvoker().invoke(this) /* invoke-custom */;
            }

            @Override
            public final int hashCode() {
                return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, ProxyClassContext.class), ProxyClassContext.class, "module;packageName;accessFlags", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->module:Ljava/lang/Module;", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->packageName:Ljava/lang/String;", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->accessFlags:I").dynamicInvoker().invoke(this) /* invoke-custom */;
            }

            @Override
            public final boolean equals(Object o10) {
                return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, ProxyClassContext.class, Object.class), ProxyClassContext.class, "module;packageName;accessFlags", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->module:Ljava/lang/Module;", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->packageName:Ljava/lang/String;", "FIELD:Ljava/lang/reflect/Proxy$ProxyBuilder$ProxyClassContext;->accessFlags:I").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
            }

            public Module module() {
                return this.module;
            }

            public String packageName() {
                return this.packageName;
            }

            public int accessFlags() {
                return this.accessFlags;
            }

            private ProxyClassContext(Module module, String packageName, int accessFlags) {
                if (module.isNamed()) {
                    if (packageName.isEmpty()) {
                        throw new InternalError("Unnamed package cannot be added to " + ((Object) module));
                    }
                    if (!module.getDescriptor().packages().contains(packageName)) {
                        throw new InternalError(packageName + " not exist in " + module.getName());
                    }
                    if (!module.isOpen(packageName, Proxy.class.getModule())) {
                        throw new InternalError(packageName + " not open to " + ((Object) Proxy.class.getModule()));
                    }
                } else if (Modifier.isPublic(accessFlags)) {
                    throw new InternalError("public proxy in unnamed module: " + ((Object) module));
                }
                if ((accessFlags & (-2)) == 0) {
                    this.module = module;
                    this.packageName = packageName;
                    this.accessFlags = accessFlags;
                    return;
                }
                throw new InternalError("proxy access flags must be Modifier.PUBLIC or 0");
            }
        }

        private static Class<?> defineProxyClass(ProxyClassContext context, List<Class<?>> interfaces) {
            String str;
            long num = nextUniqueNumber.getAndIncrement();
            if (context.packageName().isEmpty()) {
                str = proxyClassNamePrefix + num;
            } else {
                str = context.packageName() + "." + proxyClassNamePrefix + num;
            }
            String proxyName = str;
            ClassLoader loader = context.module().getClassLoader();
            trace(proxyName, context.module(), loader, interfaces);
            byte[] proxyClassFile = ProxyGenerator.generateProxyClass(loader, proxyName, interfaces, context.accessFlags() | 16);
            try {
                Class<?> pc2 = JLA.defineClass(loader, proxyName, proxyClassFile, (ProtectionDomain) null, "__dynamic_proxy__");
                reverseProxyCache.sub(pc2).putIfAbsent(loader, Boolean.TRUE);
                return pc2;
            } catch (ClassFormatError e10) {
                throw new IllegalArgumentException(e10.toString());
            }
        }

        static boolean isProxyClass(Class<?> c10) {
            return Objects.equals(reverseProxyCache.sub(c10).get(c10.getClassLoader()), Boolean.TRUE);
        }

        private static boolean isExportedType(Class<?> c10) {
            String pn2 = c10.getPackageName();
            return Modifier.isPublic(c10.getModifiers()) && c10.getModule().isExported(pn2);
        }

        private static boolean isPackagePrivateType(Class<?> c10) {
            return !Modifier.isPublic(c10.getModifiers());
        }

        private static String toDetails(Class<?> c10) {
            String access;
            if (isExportedType(c10)) {
                access = ClasspathEntry.TAG_EXPORTED;
            } else if (isPackagePrivateType(c10)) {
                access = "package-private";
            } else {
                access = "module-private";
            }
            ClassLoader ld2 = c10.getClassLoader();
            return String.format("   %s/%s %s loader %s", c10.getModule().getName(), c10.getName(), access, ld2);
        }

        static void trace(String cn2, Module module, ClassLoader loader, List<Class<?>> interfaces) {
            if (isDebug()) {
                System.err.format("PROXY: %s/%s defined by %s%n", module.getName(), cn2, loader);
            }
            if (isDebug("debug")) {
                interfaces.forEach(c10 -> {
                    System.out.println(toDetails(c10));
                });
            }
        }

        private static boolean isDebug() {
            return !DEBUG.isEmpty();
        }

        private static boolean isDebug(String flag) {
            return DEBUG.equals(flag);
        }

        ProxyBuilder(ClassLoader loader, List<Class<?>> interfaces) {
            Objects.requireNonNull(interfaces);
            if (!VM.isModuleSystemInited()) {
                throw new InternalError("Proxy is not supported until module system is fully initialized");
            }
            if (interfaces.size() > 65535) {
                throw new IllegalArgumentException("interface limit exceeded: " + interfaces.size());
            }
            Set<Class<?>> refTypes = referencedTypes(loader, interfaces);
            validateProxyInterfaces(loader, interfaces, refTypes);
            this.interfaces = interfaces;
            this.context = proxyClassContext(loader, interfaces, refTypes);
            if (!$assertionsDisabled && this.context.module().getClassLoader() != loader) {
                throw new AssertionError();
            }
        }

        ProxyBuilder(ClassLoader loader, Class<?> intf) {
            this(loader, (List<Class<?>>) Collections.singletonList(intf));
        }

        public Constructor<?> build() {
            Class<?> proxyClass = defineProxyClass(this.context, this.interfaces);
            try {
                Constructor<?> cons = proxyClass.getConstructor(Proxy.constructorParams);
                cons.setAccessible(true);
                return cons;
            } catch (NoSuchMethodException e10) {
                throw new InternalError(e10.toString(), e10);
            }
        }

        private static void validateProxyInterfaces(ClassLoader loader, List<Class<?>> interfaces, Set<Class<?>> refTypes) {
            Map<Class<?>, Boolean> interfaceSet = new IdentityHashMap<>(interfaces.size());
            for (Class<?> intf : interfaces) {
                if (!intf.isInterface()) {
                    throw new IllegalArgumentException(intf.getName() + " is not an interface");
                }
                if (intf.isHidden()) {
                    throw new IllegalArgumentException(intf.getName() + " is a hidden interface");
                }
                if (intf.isSealed()) {
                    throw new IllegalArgumentException(intf.getName() + " is a sealed interface");
                }
                ensureVisible(loader, intf);
                if (interfaceSet.put(intf, Boolean.TRUE) != null) {
                    throw new IllegalArgumentException("repeated interface: " + intf.getName());
                }
            }
            for (Class<?> type : refTypes) {
                ensureVisible(loader, type);
            }
        }

        private static Set<Class<?>> referencedTypes(ClassLoader loader, List<Class<?>> interfaces) {
            HashSet<Class<?>> types = new HashSet<>();
            for (Class<?> intf : interfaces) {
                for (Method m10 : intf.getMethods()) {
                    if (!Modifier.isStatic(m10.getModifiers())) {
                        addElementType(types, m10.getReturnType());
                        addElementTypes(types, m10.getSharedParameterTypes());
                        addElementTypes(types, m10.getSharedExceptionTypes());
                    }
                }
            }
            return types;
        }

        private static void addElementTypes(HashSet<Class<?>> types, Class<?>... classes) {
            for (Class<?> cls : classes) {
                addElementType(types, cls);
            }
        }

        private static void addElementType(HashSet<Class<?>> types, Class<?> cls) {
            Class<?> type = getElementType(cls);
            if (!type.isPrimitive()) {
                types.add(type);
            }
        }

        private static ProxyClassContext proxyClassContext(ClassLoader loader, List<Class<?>> interfaces, Set<Class<?>> refTypes) {
            Map<Class<?>, Module> packagePrivateTypes = new HashMap<>();
            boolean nonExported = false;
            for (Class<?> intf : interfaces) {
                Module m10 = intf.getModule();
                if (!Modifier.isPublic(intf.getModifiers())) {
                    packagePrivateTypes.put(intf, m10);
                } else if (!intf.getModule().isExported(intf.getPackageName())) {
                    nonExported = true;
                }
            }
            if (packagePrivateTypes.size() > 0) {
                Module targetModule = null;
                String targetPackageName = null;
                for (Map.Entry<Class<?>, Module> e10 : packagePrivateTypes.entrySet()) {
                    Class<?> intf2 = e10.getKey();
                    Module m11 = e10.getValue();
                    if ((targetModule != null && targetModule != m11) || (targetPackageName != null && targetPackageName != intf2.getPackageName())) {
                        throw new IllegalArgumentException("cannot have non-public interfaces in different packages");
                    }
                    if (m11.getClassLoader() != loader) {
                        throw new IllegalArgumentException("non-public interface is not defined by the given loader");
                    }
                    targetModule = m11;
                    targetPackageName = e10.getKey().getPackageName();
                }
                for (Class<?> intf3 : interfaces) {
                    Module m12 = intf3.getModule();
                    if (m12 != targetModule && (!targetModule.canRead(m12) || !m12.isExported(intf3.getPackageName(), targetModule))) {
                        throw new IllegalArgumentException(((Object) targetModule) + " can't access " + intf3.getName());
                    }
                }
                if (targetModule.isNamed()) {
                    Modules.addOpens(targetModule, targetPackageName, Proxy.class.getModule());
                }
                return new ProxyClassContext(targetModule, targetPackageName, 0);
            }
            Module targetModule2 = getDynamicModule(loader);
            Set<Class<?>> types = new HashSet<>(interfaces);
            types.addAll(refTypes);
            for (Class<?> c10 : types) {
                ensureAccess(targetModule2, c10);
            }
            String pkgName = nonExported ? "com.sun.proxy." + targetModule2.getName() : targetModule2.getName();
            return new ProxyClassContext(targetModule2, pkgName, 1);
        }

        private static void ensureAccess(Module target, Class<?> c10) {
            Module m10 = c10.getModule();
            if (target == m10) {
                return;
            }
            if (!target.canRead(m10)) {
                Modules.addReads(target, m10);
            }
            String pn2 = c10.getPackageName();
            if (!m10.isExported(pn2, target)) {
                Modules.addExports(m10, pn2, target);
            }
        }

        private static void ensureVisible(ClassLoader ld2, Class<?> c10) {
            Class<?> type = null;
            try {
                type = Class.forName(c10.getName(), false, ld2);
            } catch (ClassNotFoundException e10) {
            }
            if (type != c10) {
                throw new IllegalArgumentException(c10.getName() + " referenced from a method is not visible from class loader: " + JLA.getLoaderNameID(ld2));
            }
        }

        private static Class<?> getElementType(Class<?> type) {
            Class<?> cls = type;
            while (true) {
                Class<?> e10 = cls;
                if (e10.isArray()) {
                    cls = e10.getComponentType();
                } else {
                    return e10;
                }
            }
        }

        private static Module getDynamicModule(ClassLoader loader) {
            return (Module) dynProxyModules.computeIfAbsent(loader, (ld2, clv) -> {
                String mn2 = "jdk.proxy" + counter.incrementAndGet();
                String pn2 = "com.sun.proxy." + mn2;
                ModuleDescriptor descriptor = ModuleDescriptor.newModule(mn2, Set.of(ModuleDescriptor.Modifier.SYNTHETIC)).packages(Set.of(pn2, mn2)).exports(mn2).build();
                Module m10 = Modules.defineModule(ld2, descriptor, (URI) null);
                Modules.addReads(m10, Proxy.class.getModule());
                Modules.addExports(m10, mn2);
                Modules.addOpens(m10, pn2, Proxy.class.getModule());
                Modules.addOpens(m10, mn2, Proxy.class.getModule());
                return m10;
            });
        }
    }

    public static Object newProxyInstance(ClassLoader loader, Class<?>[] interfaces, InvocationHandler h10) {
        Objects.requireNonNull(h10);
        Constructor<?> cons = getProxyConstructor(loader, interfaces);
        return newProxyInstance(cons, h10);
    }

    private static Object newProxyInstance(Constructor<?> cons, InvocationHandler h10) {
        try {
            return cons.newInstance(h10);
        } catch (IllegalAccessException | InstantiationException e10) {
            throw new InternalError(e10.toString(), e10);
        } catch (InvocationTargetException e11) {
            Throwable t10 = e11.getCause();
            if (t10 instanceof RuntimeException) {
                RuntimeException re2 = (RuntimeException) t10;
                throw re2;
            }
            throw new InternalError(t10.toString(), t10);
        }
    }

    public static boolean isProxyClass(Class<?> cl2) {
        return Proxy.class.isAssignableFrom(cl2) && ProxyBuilder.isProxyClass(cl2);
    }

    public static InvocationHandler getInvocationHandler(Object proxy) throws IllegalArgumentException {
        if (!isProxyClass(proxy.getClass())) {
            throw new IllegalArgumentException("not a proxy instance");
        }
        Proxy p10 = (Proxy) proxy;
        InvocationHandler ih2 = p10.f92813h;
        return ih2;
    }

    private static ConcurrentHashMap<Method, MethodHandle> defaultMethodMap(Class<?> proxyClass) {
        if ($assertionsDisabled || isProxyClass(proxyClass)) {
            return DEFAULT_METHODS_MAP.get(proxyClass);
        }
        throw new AssertionError();
    }

    static MethodHandle defaultMethodHandle(Class<? extends Proxy> proxyClass, Method method) {
        ConcurrentHashMap<Method, MethodHandle> methods = defaultMethodMap(proxyClass);
        MethodHandle superMH = methods.get(method);
        if (superMH == null) {
            MethodType type = MethodType.methodType(method.getReturnType(), method.getParameterTypes());
            MethodHandles.Lookup lookup = MethodHandles.lookup();
            Class<?> proxyInterface = findProxyInterfaceOrElseThrow(proxyClass, method);
            try {
                MethodHandle dmh = proxyClassLookup(lookup, proxyClass).findSpecial(proxyInterface, method.getName(), type, proxyClass).withVarargs(false);
                if (!$assertionsDisabled) {
                    BooleanSupplier booleanSupplier = () -> {
                        try {
                            dmh.asType(type.insertParameterTypes(0, (Class<?>[]) new Class[]{proxyClass}));
                            return true;
                        } catch (WrongMethodTypeException e10) {
                            return false;
                        }
                    };
                    if (!booleanSupplier.getAsBoolean()) {
                        throw new AssertionError((Object) "Wrong method type");
                    }
                }
                MethodHandle mh2 = MethodHandles.catchException(dmh.asType(dmh.type().changeReturnType(Object.class)), Throwable.class, InvocationException.wrapMH()).asSpreader(1, Object[].class, type.parameterCount()).asType(MethodType.methodType((Class<?>) Object.class, (Class<?>) Object.class, (Class<?>[]) new Class[]{Object[].class}));
                MethodHandle cached = methods.putIfAbsent(method, mh2);
                if (cached != null) {
                    superMH = cached;
                } else {
                    superMH = mh2;
                }
            } catch (IllegalAccessException | NoSuchMethodException e10) {
                throw new InternalError(e10);
            }
        }
        return superMH;
    }

    private static Class<?> findProxyInterfaceOrElseThrow(Class<?> proxyClass, Method method) {
        String str;
        Class<?> declaringClass = method.getDeclaringClass();
        if (!declaringClass.isInterface()) {
            throw new IllegalArgumentException(JavadocConstants.ANCHOR_PREFIX_END + ((Object) method) + "\" is not a method declared in the proxy class");
        }
        List<Class<?>> proxyInterfaces = Arrays.asList(proxyClass.getInterfaces());
        if (proxyInterfaces.contains(declaringClass)) {
            return declaringClass;
        }
        Deque<Class<?>> deque = new ArrayDeque<>();
        Set<Class<?>> visited = new HashSet<>();
        boolean indirectMethodRef = false;
        for (Class<?> proxyIntf : proxyInterfaces) {
            if (!$assertionsDisabled && proxyIntf == declaringClass) {
                throw new AssertionError();
            }
            visited.add(proxyIntf);
            deque.add(proxyIntf);
            while (true) {
                Class<?> c10 = deque.poll();
                if (c10 != null) {
                    if (c10 == declaringClass) {
                        try {
                            Method m10 = proxyIntf.getMethod(method.getName(), method.getSharedParameterTypes());
                            if (m10.getDeclaringClass() == declaringClass) {
                                return proxyIntf;
                            }
                            indirectMethodRef = true;
                        } catch (NoSuchMethodException e10) {
                        }
                    } else {
                        visited.add(c10);
                        for (Class<?> superIntf : c10.getInterfaces()) {
                            if (!visited.contains(superIntf) && !deque.contains(superIntf)) {
                                if (superIntf == declaringClass) {
                                    deque.addFirst(superIntf);
                                } else {
                                    deque.add(superIntf);
                                }
                            }
                        }
                    }
                }
            }
        }
        StringBuilder append = new StringBuilder().append(JavadocConstants.ANCHOR_PREFIX_END).append((Object) method);
        if (indirectMethodRef) {
            str = "\" is overridden directly or indirectly by the proxy interfaces";
        } else {
            str = "\" is not a method declared in the proxy class";
        }
        throw new IllegalArgumentException(append.append(str).toString());
    }

    private static MethodHandles.Lookup proxyClassLookup(MethodHandles.Lookup caller, Class<?> proxyClass) {
        try {
            Method m10 = proxyClass.getDeclaredMethod("proxyClassLookup", MethodHandles.Lookup.class);
            m10.setAccessible(true);
            return (MethodHandles.Lookup) m10.invoke(null, caller);
        } catch (ReflectiveOperationException e10) {
            throw new InternalError(e10);
        }
    }

    public static Object invokeDefault(Object proxy, Method method, Object[] args, Class<?> caller) throws Throwable {
        Object[] objArr;
        if (!isProxyClass(proxy.getClass())) {
            throw new IllegalArgumentException("'proxy' is not a proxy instance");
        }
        if (!method.isDefault()) {
            throw new IllegalArgumentException(JavadocConstants.ANCHOR_PREFIX_END + ((Object) method) + "\" is not a default method");
        }
        Class<?> cls = proxy.getClass();
        if (caller != null) {
            Class<?> intf = method.getDeclaringClass();
            method.checkAccess(caller, intf, cls, method.getModifiers());
        }
        MethodHandle mh2 = defaultMethodHandle(cls, method);
        if (args != null) {
            objArr = args;
        } else {
            try {
                objArr = EMPTY_ARGS;
            } catch (ClassCastException | NullPointerException e10) {
                throw new IllegalArgumentException(e10.getMessage(), e10);
            } catch (InvocationException e11) {
                throw e11.getCause();
            }
        }
        Object[] params = objArr;
        return (Object) mh2.invokeExact(proxy, params);
    }

    public static class InvocationException extends ReflectiveOperationException {
        private static final long serialVersionUID = 0;

        @Stable
        static MethodHandle wrapMethodHandle;

        InvocationException(Throwable cause) {
            super(cause);
        }

        static Object wrap(Throwable cause) throws InvocationException {
            throw new InvocationException(cause);
        }

        static MethodHandle wrapMH() {
            MethodHandle mh2 = wrapMethodHandle;
            if (mh2 == null) {
                try {
                    MethodHandle findStatic = MethodHandles.lookup().findStatic(InvocationException.class, "wrap", MethodType.methodType((Class<?>) Object.class, (Class<?>) Throwable.class));
                    mh2 = findStatic;
                    wrapMethodHandle = findStatic;
                } catch (IllegalAccessException | NoSuchMethodException e10) {
                    throw new InternalError(e10);
                }
            }
            return mh2;
        }
    }
}
