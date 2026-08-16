package java.lang;

import eg.C13099L;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Supplier;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import jdk.internal.loader.BootLoader;
import jdk.internal.loader.BuiltinClassLoader;
import jdk.internal.loader.ClassLoaders;
import jdk.internal.loader.NativeLibraries;
import jdk.internal.loader.NativeLibrary;
import jdk.internal.misc.Unsafe;
import jdk.internal.misc.VM;
import jdk.internal.perf.PerfCounter;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.CallerSensitiveAdapter;
import jdk.internal.reflect.Reflection;
import jdk.internal.util.StaticProperty;
import org.bouncycastle.jce.provider.Y;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ClassLoader.class
 */
public abstract class ClassLoader {
    private final ClassLoader parent;
    private final String name;
    private final Module unnamedModule;
    private final String nameAndId;
    private final ConcurrentHashMap<String, Object> parallelLockMap;
    private final ConcurrentHashMap<String, Certificate[]> package2certs;
    private static final Certificate[] nocerts;
    private final ArrayList<Class<?>> classes;
    private final ProtectionDomain defaultDomain;
    private final ConcurrentHashMap<String, NamedPackage> packages;
    private static volatile ClassLoader scl;
    private final NativeLibraries libraries;
    final Object assertionLock;
    private boolean defaultAssertionStatus;
    private Map<String, Boolean> packageAssertionStatus;
    Map<String, Boolean> classAssertionStatus;
    private volatile ConcurrentHashMap<?, ?> classLoaderValueMap;
    static final boolean $assertionsDisabled;

    private static native void registerNatives();

    public static native Class<?> defineClass1(ClassLoader classLoader, String str, byte[] bArr, int i10, int i11, ProtectionDomain protectionDomain, String str2);

    static native Class<?> defineClass2(ClassLoader classLoader, String str, ByteBuffer byteBuffer, int i10, int i11, ProtectionDomain protectionDomain, String str2);

    public static native Class<?> defineClass0(ClassLoader classLoader, Class<?> cls, String str, byte[] bArr, int i10, int i11, ProtectionDomain protectionDomain, boolean z10, int i12, Object obj);

    private static native Class<?> findBootstrapClass(String str);

    private final native Class<?> findLoadedClass0(String str);

    private static native AssertionStatusDirectives retrieveDirectives();

    static {
        $assertionsDisabled = !ClassLoader.class.desiredAssertionStatus();
        registerNatives();
        nocerts = new Certificate[0];
    }

    public static class ParallelLoaders {
        private static final Set<Class<? extends ClassLoader>> loaderTypes = Collections.newSetFromMap(new WeakHashMap());

        private ParallelLoaders() {
        }

        static {
            synchronized (loaderTypes) {
                loaderTypes.add(ClassLoader.class);
            }
        }

        static boolean register(Class<? extends ClassLoader> c10) {
            synchronized (loaderTypes) {
                if (loaderTypes.contains(c10.getSuperclass())) {
                    loaderTypes.add(c10);
                    return true;
                }
                return false;
            }
        }

        static boolean isRegistered(Class<? extends ClassLoader> c10) {
            boolean contains;
            synchronized (loaderTypes) {
                contains = loaderTypes.contains(c10);
            }
            return contains;
        }
    }

    void addClass(Class<?> c10) {
        synchronized (this.classes) {
            this.classes.add(c10);
        }
    }

    private NamedPackage getNamedPackage(String pn2, Module m10) {
        NamedPackage p10 = this.packages.get(pn2);
        if (p10 == null) {
            p10 = new NamedPackage(pn2, m10);
            NamedPackage value = this.packages.putIfAbsent(pn2, p10);
            if (value != null) {
                p10 = value;
                if (!$assertionsDisabled && value.module() != m10) {
                    throw new AssertionError();
                }
            }
        }
        return p10;
    }

    private static Void checkCreateClassLoader() {
        return checkCreateClassLoader(null);
    }

    private static Void checkCreateClassLoader(String name) {
        if (name != null && name.isEmpty()) {
            throw new IllegalArgumentException("name must be non-empty or null");
        }
        return null;
    }

    private ClassLoader(Void unused, String name, ClassLoader parent) {
        this.classes = new ArrayList<>();
        this.defaultDomain = new ProtectionDomain(new CodeSource((URL) null, (Certificate[]) null), null, this, null);
        this.packages = new ConcurrentHashMap<>();
        this.libraries = NativeLibraries.newInstance(this);
        this.defaultAssertionStatus = false;
        this.packageAssertionStatus = null;
        this.classAssertionStatus = null;
        this.name = name;
        this.parent = parent;
        this.unnamedModule = new Module(this);
        if (ParallelLoaders.isRegistered(getClass())) {
            this.parallelLockMap = new ConcurrentHashMap<>();
            this.assertionLock = new Object();
        } else {
            this.parallelLockMap = null;
            this.assertionLock = this;
        }
        this.package2certs = new ConcurrentHashMap<>();
        this.nameAndId = nameAndId(this);
    }

    private static String nameAndId(ClassLoader ld2) {
        String nid = ld2.getName() != null ? "'" + ld2.getName() + "'" : ld2.getClass().getName();
        if (!(ld2 instanceof BuiltinClassLoader)) {
            String id2 = Integer.toHexString(System.identityHashCode(ld2));
            nid = nid + C13099L.f85621a + id2;
        }
        return nid;
    }

    public String nameAndId() {
        return this.nameAndId;
    }

    protected ClassLoader(String name, ClassLoader parent) {
        this(checkCreateClassLoader(name), name, parent);
    }

    public ClassLoader(ClassLoader parent) {
        this(checkCreateClassLoader(), null, parent);
    }

    public ClassLoader() {
        this(checkCreateClassLoader(), null, getSystemClassLoader());
    }

    public String getName() {
        return this.name;
    }

    final String name() {
        return this.name;
    }

    public Class<?> loadClass(String name) throws ClassNotFoundException {
        return loadClass(name, false);
    }

    public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        Class<?> cls;
        synchronized (getClassLoadingLock(name)) {
            Class<?> c10 = findLoadedClass(name);
            if (c10 == null) {
                long t02 = System.nanoTime();
                try {
                    if (this.parent != null) {
                        c10 = this.parent.loadClass(name, false);
                    } else {
                        c10 = findBootstrapClassOrNull(name);
                    }
                } catch (ClassNotFoundException e10) {
                }
                if (c10 == null) {
                    long t12 = System.nanoTime();
                    c10 = findClass(name);
                    PerfCounter.getParentDelegationTime().addTime(t12 - t02);
                    PerfCounter.getFindClassTime().addElapsedTimeFrom(t12);
                    PerfCounter.getFindClasses().increment();
                }
            }
            if (resolve) {
                resolveClass(c10);
            }
            cls = c10;
        }
        return cls;
    }

    public final Class<?> loadClass(Module module, String name) {
        synchronized (getClassLoadingLock(name)) {
            Class<?> c10 = findLoadedClass(name);
            if (c10 == null) {
                c10 = findClass(module.getName(), name);
            }
            if (c10 != null && c10.getModule() == module) {
                return c10;
            }
            return null;
        }
    }

    public Object getClassLoadingLock(String className) {
        Object lock = this;
        if (this.parallelLockMap != null) {
            Object newLock = new Object();
            lock = this.parallelLockMap.putIfAbsent(className, newLock);
            if (lock == null) {
                lock = newLock;
            }
        }
        return lock;
    }

    public Class<?> findClass(String name) throws ClassNotFoundException {
        throw new ClassNotFoundException(name);
    }

    protected Class<?> findClass(String moduleName, String name) {
        if (moduleName == null) {
            try {
                return findClass(name);
            } catch (ClassNotFoundException e10) {
                return null;
            }
        }
        return null;
    }

    @Deprecated(since = "1.1")
    protected final Class<?> defineClass(byte[] b10, int off, int len) throws ClassFormatError {
        return defineClass(null, b10, off, len, null);
    }

    public final Class<?> defineClass(String name, byte[] b10, int off, int len) throws ClassFormatError {
        return defineClass(name, b10, off, len, null);
    }

    private ProtectionDomain preDefineClass(String name, ProtectionDomain pd2) {
        if (!checkName(name)) {
            throw new NoClassDefFoundError("IllegalName: " + name);
        }
        if (name != null && name.startsWith("java.") && this != getBuiltinPlatformClassLoader()) {
            throw new SecurityException("Prohibited package name: " + name.substring(0, name.lastIndexOf(46)));
        }
        if (pd2 == null) {
            pd2 = this.defaultDomain;
        }
        if (name != null) {
            checkCerts(name, pd2.getCodeSource());
        }
        return pd2;
    }

    private String defineClassSourceLocation(ProtectionDomain pd2) {
        CodeSource cs = pd2.getCodeSource();
        String source = null;
        if (cs != null && cs.getLocation() != null) {
            source = cs.getLocation().toString();
        }
        return source;
    }

    private void postDefineClass(Class<?> c10, ProtectionDomain pd2) {
        Certificate[] certs;
        getNamedPackage(c10.getPackageName(), c10.getModule());
        if (pd2.getCodeSource() != null && (certs = pd2.getCodeSource().getCertificates()) != null) {
            setSigners(c10, certs);
        }
    }

    protected final Class<?> defineClass(String name, byte[] b10, int off, int len, ProtectionDomain protectionDomain) throws ClassFormatError {
        ProtectionDomain protectionDomain2 = preDefineClass(name, protectionDomain);
        String source = defineClassSourceLocation(protectionDomain2);
        Class<?> c10 = defineClass1(this, name, b10, off, len, protectionDomain2, source);
        postDefineClass(c10, protectionDomain2);
        return c10;
    }

    protected final Class<?> defineClass(String name, ByteBuffer b10, ProtectionDomain protectionDomain) throws ClassFormatError {
        int len = b10.remaining();
        if (!b10.isDirect()) {
            if (b10.hasArray()) {
                return defineClass(name, b10.array(), b10.position() + b10.arrayOffset(), len, protectionDomain);
            }
            byte[] tb2 = new byte[len];
            b10.get(tb2);
            return defineClass(name, tb2, 0, len, protectionDomain);
        }
        ProtectionDomain protectionDomain2 = preDefineClass(name, protectionDomain);
        String source = defineClassSourceLocation(protectionDomain2);
        Class<?> c10 = defineClass2(this, name, b10, b10.position(), len, protectionDomain2, source);
        postDefineClass(c10, protectionDomain2);
        return c10;
    }

    private static boolean checkName(String name) {
        if (name == null || name.isEmpty()) {
            return true;
        }
        if (name.indexOf(47) != -1 || name.charAt(0) == '[') {
            return false;
        }
        return true;
    }

    private void checkCerts(String name, CodeSource cs) {
        int i10 = name.lastIndexOf(46);
        String pname = i10 == -1 ? "" : name.substring(0, i10);
        Certificate[] certs = null;
        if (cs != null) {
            certs = cs.getCertificates();
        }
        Certificate[] certs2 = certs == null ? nocerts : certs;
        Certificate[] pcerts = this.package2certs.putIfAbsent(pname, certs2);
        if (pcerts != null && !compareCerts(pcerts, certs2)) {
            throw new SecurityException("class \"" + name + "\"'s signer information does not match signer information of other classes in the same package");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean compareCerts(Certificate[] certificateArr, Certificate[] certificateArr2) {
        if (certificateArr2.length == 0) {
            return certificateArr.length == 0;
        }
        if (certificateArr2.length != certificateArr.length) {
            return false;
        }
        for (Y y10 : certificateArr2) {
            boolean match = false;
            int length = certificateArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (!y10.equals(certificateArr[i10])) {
                    i10++;
                } else {
                    match = true;
                    break;
                }
            }
            if (!match) {
                return false;
            }
        }
        for (Y y11 : certificateArr) {
            boolean match2 = false;
            int length2 = certificateArr2.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length2) {
                    break;
                }
                if (!y11.equals(certificateArr2[i11])) {
                    i11++;
                } else {
                    match2 = true;
                    break;
                }
            }
            if (!match2) {
                return false;
            }
        }
        return true;
    }

    public final void resolveClass(Class<?> c10) {
        if (c10 == null) {
            throw new NullPointerException();
        }
    }

    public final Class<?> findSystemClass(String name) throws ClassNotFoundException {
        return getSystemClassLoader().loadClass(name);
    }

    public static Class<?> findBootstrapClassOrNull(String name) {
        if (checkName(name)) {
            return findBootstrapClass(name);
        }
        return null;
    }

    public final Class<?> findLoadedClass(String name) {
        if (!checkName(name)) {
            return null;
        }
        return findLoadedClass0(name);
    }

    protected final void setSigners(Class<?> c10, Object[] signers) {
        c10.setSigners(signers);
    }

    public URL findResource(String moduleName, String name) throws IOException {
        if (moduleName == null) {
            return findResource(name);
        }
        return null;
    }

    public URL getResource(String name) {
        URL url;
        Objects.requireNonNull(name);
        if (this.parent != null) {
            url = this.parent.getResource(name);
        } else {
            url = BootLoader.findResource(name);
        }
        if (url == null) {
            url = findResource(name);
        }
        return url;
    }

    public Enumeration<URL> getResources(String name) throws IOException {
        Objects.requireNonNull(name);
        Enumeration<URL>[] tmp = new Enumeration[2];
        if (this.parent != null) {
            tmp[0] = this.parent.getResources(name);
        } else {
            tmp[0] = BootLoader.findResources(name);
        }
        tmp[1] = findResources(name);
        return new CompoundEnumeration(tmp);
    }

    public Stream<URL> resources(String name) {
        Objects.requireNonNull(name);
        int characteristics = 1280;
        Supplier<Spliterator<URL>> si2 = () -> {
            try {
                return Spliterators.spliteratorUnknownSize(getResources(name).asIterator(), characteristics);
            } catch (IOException e10) {
                throw new UncheckedIOException(e10);
            }
        };
        return StreamSupport.stream(si2, 1280, false);
    }

    protected URL findResource(String name) {
        return null;
    }

    protected Enumeration<URL> findResources(String name) throws IOException {
        return Collections.emptyEnumeration();
    }

    @CallerSensitive
    protected static boolean registerAsParallelCapable() {
        return registerAsParallelCapable(Reflection.getCallerClass());
    }

    @CallerSensitiveAdapter
    private static boolean registerAsParallelCapable(Class<?> caller) {
        if (caller == null || !ClassLoader.class.isAssignableFrom(caller)) {
            throw new IllegalCallerException(((Object) caller) + " not a subclass of ClassLoader");
        }
        return ParallelLoaders.register(caller.asSubclass(ClassLoader.class));
    }

    public final boolean isRegisteredAsParallelCapable() {
        return ParallelLoaders.isRegistered(getClass());
    }

    public static URL getSystemResource(String name) {
        return getSystemClassLoader().getResource(name);
    }

    public static Enumeration<URL> getSystemResources(String name) throws IOException {
        return getSystemClassLoader().getResources(name);
    }

    public InputStream getResourceAsStream(String name) {
        Objects.requireNonNull(name);
        URL url = getResource(name);
        if (url == null) {
            return null;
        }
        try {
            return url.openStream();
        } catch (IOException e10) {
            return null;
        }
    }

    private byte[] getResourceAsByteArray(String name) throws IOException {
        Objects.requireNonNull(name);
        InputStream is = getResourceAsStream(name);
        if (is != null) {
            return is.readAllBytes();
        }
        return null;
    }

    public static InputStream getSystemResourceAsStream(String name) {
        URL url = getSystemResource(name);
        if (url == null) {
            return null;
        }
        try {
            return url.openStream();
        } catch (IOException e10) {
            return null;
        }
    }

    public final ClassLoader getParent() {
        return this.parent;
    }

    public final Module getUnnamedModule() {
        return this.unnamedModule;
    }

    public static ClassLoader getPlatformClassLoader() {
        return getBuiltinPlatformClassLoader();
    }

    public static ClassLoader getSystemClassLoader() {
        switch (VM.initLevel()) {
            case 0:
            case 1:
            case 2:
                return getBuiltinAppClassLoader();
            case 3:
                throw new IllegalStateException("getSystemClassLoader cannot be called during the system class loader instantiation");
            default:
                if ($assertionsDisabled || (VM.isBooted() && scl != null)) {
                    return scl;
                }
                throw new AssertionError();
        }
    }

    static ClassLoader getBuiltinPlatformClassLoader() {
        return ClassLoaders.platformClassLoader();
    }

    static ClassLoader getBuiltinAppClassLoader() {
        return ClassLoaders.appClassLoader();
    }

    public static synchronized ClassLoader initSystemClassLoader() {
        if (VM.initLevel() != 3) {
            throw new InternalError("system class loader cannot be set at initLevel " + VM.initLevel());
        }
        if (scl != null) {
            throw new IllegalStateException("recursive invocation");
        }
        ClassLoader builtinLoader = getBuiltinAppClassLoader();
        String cn2 = System.getProperty("java.system.class.loader");
        if (cn2 != null) {
            try {
                Constructor<?> ctor = Class.forName(cn2, false, builtinLoader).getDeclaredConstructor(ClassLoader.class);
                scl = (ClassLoader) ctor.newInstance(builtinLoader);
            } catch (Exception e10) {
                Throwable cause = e10;
                if (e10 instanceof InvocationTargetException) {
                    cause = e10.getCause();
                    if (cause instanceof Error) {
                        throw ((Error) cause);
                    }
                }
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new Error(cause.getMessage(), cause);
            }
        } else {
            scl = builtinLoader;
        }
        return scl;
    }

    public static ClassLoader getClassLoader(Class<?> caller) {
        if (caller == null) {
            return null;
        }
        return caller.getClassLoader0();
    }

    public Package definePackage(Class<?> c10) {
        if (c10.isPrimitive() || c10.isArray()) {
            return null;
        }
        return definePackage(c10.getPackageName(), c10.getModule());
    }

    public Package definePackage(String name, Module m10) {
        if (name.isEmpty() && m10.isNamed()) {
            throw new InternalError("unnamed package in  " + ((Object) m10));
        }
        NamedPackage pkg = this.packages.get(name);
        if (pkg instanceof Package) {
            return (Package) pkg;
        }
        return (Package) this.packages.compute(name, (n10, p10) -> {
            return toPackage(n10, p10, m10);
        });
    }

    private Package toPackage(String name, NamedPackage p10, Module m10) {
        if (p10 == null) {
            return NamedPackage.toPackage(name, m10);
        }
        if (p10 instanceof Package) {
            return (Package) p10;
        }
        return NamedPackage.toPackage(p10.packageName(), p10.module());
    }

    protected Package definePackage(String name, String specTitle, String specVersion, String specVendor, String implTitle, String implVersion, String implVendor, URL sealBase) {
        Objects.requireNonNull(name);
        Package p10 = new Package(name, specTitle, specVersion, specVendor, implTitle, implVersion, implVendor, sealBase, this);
        if (this.packages.putIfAbsent(name, p10) != null) {
            throw new IllegalArgumentException(name);
        }
        return p10;
    }

    public final Package getDefinedPackage(String name) {
        Objects.requireNonNull(name, "name cannot be null");
        NamedPackage p10 = this.packages.get(name);
        if (p10 == null) {
            return null;
        }
        return definePackage(name, p10.module());
    }

    public final Package[] getDefinedPackages() {
        return (Package[]) packages().toArray(x$0 -> {
            return new Package[x$0];
        });
    }

    @Deprecated(since = "9")
    public Package getPackage(String name) {
        Package pkg = getDefinedPackage(name);
        if (pkg == null) {
            if (this.parent != null) {
                pkg = this.parent.getPackage(name);
            } else {
                pkg = BootLoader.getDefinedPackage(name);
            }
        }
        return pkg;
    }

    public Package[] getPackages() {
        Stream<Package> pkgs = packages();
        ClassLoader classLoader = this.parent;
        while (true) {
            ClassLoader ld2 = classLoader;
            if (ld2 != null) {
                pkgs = Stream.concat(ld2.packages(), pkgs);
                classLoader = ld2.parent;
            } else {
                return (Package[]) Stream.concat(BootLoader.packages(), pkgs).toArray(x$0 -> {
                    return new Package[x$0];
                });
            }
        }
    }

    public Stream<Package> packages() {
        return this.packages.values().stream().map(p10 -> {
            return definePackage(p10.packageName(), p10.module());
        });
    }

    protected String findLibrary(String libname) {
        return null;
    }

    public static NativeLibrary loadLibrary(Class<?> fromClass, File file) {
        ClassLoader loader = fromClass == null ? null : fromClass.getClassLoader();
        NativeLibraries libs = loader != null ? loader.libraries : BootLoader.getNativeLibraries();
        NativeLibrary nl2 = libs.loadLibrary(fromClass, file);
        if (nl2 != null) {
            return nl2;
        }
        throw new UnsatisfiedLinkError("Can't load library: " + ((Object) file));
    }

    public static NativeLibrary loadLibrary(Class<?> fromClass, String name) {
        ClassLoader loader = fromClass == null ? null : fromClass.getClassLoader();
        if (loader == null) {
            NativeLibrary nl2 = BootLoader.getNativeLibraries().loadLibrary(fromClass, name);
            if (nl2 != null) {
                return nl2;
            }
            throw new UnsatisfiedLinkError("no " + name + " in system library path: " + StaticProperty.sunBootLibraryPath());
        }
        NativeLibraries libs = loader.libraries;
        String libfilename = loader.findLibrary(name);
        if (libfilename != null) {
            File libfile = new File(libfilename);
            if (!libfile.isAbsolute()) {
                throw new UnsatisfiedLinkError("ClassLoader.findLibrary failed to return an absolute path: " + libfilename);
            }
            NativeLibrary nl3 = libs.loadLibrary(fromClass, libfile);
            if (nl3 != null) {
                return nl3;
            }
            throw new UnsatisfiedLinkError("Can't load " + libfilename);
        }
        NativeLibrary nl4 = libs.loadLibrary(fromClass, name);
        if (nl4 != null) {
            return nl4;
        }
        throw new UnsatisfiedLinkError("no " + name + " in java.library.path: " + StaticProperty.javaLibraryPath());
    }

    static long findNative(ClassLoader loader, Class<?> clazz, String entryName, String javaName) {
        NativeLibraries nativeLibraries = nativeLibrariesFor(loader);
        long addr = nativeLibraries.find(entryName);
        if (addr != 0 && loader != null) {
            Reflection.ensureNativeAccess(clazz, clazz, javaName, true);
        }
        return addr;
    }

    public static NativeLibraries nativeLibrariesFor(ClassLoader loader) {
        if (loader == null) {
            return BootLoader.getNativeLibraries();
        }
        return loader.libraries;
    }

    public void setDefaultAssertionStatus(boolean enabled) {
        synchronized (this.assertionLock) {
            if (this.classAssertionStatus == null) {
                initializeJavaAssertionMaps();
            }
            this.defaultAssertionStatus = enabled;
        }
    }

    public void setPackageAssertionStatus(String packageName, boolean enabled) {
        synchronized (this.assertionLock) {
            if (this.packageAssertionStatus == null) {
                initializeJavaAssertionMaps();
            }
            this.packageAssertionStatus.put(packageName, Boolean.valueOf(enabled));
        }
    }

    public void setClassAssertionStatus(String className, boolean enabled) {
        synchronized (this.assertionLock) {
            if (this.classAssertionStatus == null) {
                initializeJavaAssertionMaps();
            }
            this.classAssertionStatus.put(className, Boolean.valueOf(enabled));
        }
    }

    public void clearAssertionStatus() {
        synchronized (this.assertionLock) {
            this.classAssertionStatus = new HashMap();
            this.packageAssertionStatus = new HashMap();
            this.defaultAssertionStatus = false;
        }
    }

    public boolean desiredAssertionStatus(String className) {
        Boolean result;
        synchronized (this.assertionLock) {
            Boolean result2 = this.classAssertionStatus.get(className);
            if (result2 != null) {
                return result2.booleanValue();
            }
            int dotIndex = className.lastIndexOf(46);
            if (dotIndex < 0 && (result = this.packageAssertionStatus.get(null)) != null) {
                return result.booleanValue();
            }
            while (dotIndex > 0) {
                className = className.substring(0, dotIndex);
                Boolean result3 = this.packageAssertionStatus.get(className);
                if (result3 != null) {
                    return result3.booleanValue();
                }
                dotIndex = className.lastIndexOf(46, dotIndex - 1);
            }
            return this.defaultAssertionStatus;
        }
    }

    private void initializeJavaAssertionMaps() {
        this.classAssertionStatus = new HashMap();
        this.packageAssertionStatus = new HashMap();
        AssertionStatusDirectives directives = retrieveDirectives();
        for (int i10 = 0; i10 < directives.classes.length; i10++) {
            this.classAssertionStatus.put(directives.classes[i10], Boolean.valueOf(directives.classEnabled[i10]));
        }
        for (int i11 = 0; i11 < directives.packages.length; i11++) {
            this.packageAssertionStatus.put(directives.packages[i11], Boolean.valueOf(directives.packageEnabled[i11]));
        }
        this.defaultAssertionStatus = directives.deflt;
    }

    public ConcurrentHashMap<?, ?> createOrGetClassLoaderValueMap() {
        ConcurrentHashMap<?, ?> map = this.classLoaderValueMap;
        if (map == null) {
            map = new ConcurrentHashMap<>();
            boolean set = trySetObjectField("classLoaderValueMap", map);
            if (!set) {
                map = this.classLoaderValueMap;
            }
        }
        return map;
    }

    private boolean trySetObjectField(String name, Object obj) {
        Unsafe unsafe = Unsafe.getUnsafe();
        long offset = unsafe.objectFieldOffset(ClassLoader.class, name);
        return unsafe.compareAndSetReference(this, offset, (Object) null, obj);
    }

    private void reinitObjectField(String name, Object obj) {
        Unsafe unsafe = Unsafe.getUnsafe();
        long offset = unsafe.objectFieldOffset(ClassLoader.class, name);
        Object current = unsafe.getReference(this, offset);
        if (current.getClass() != obj.getClass()) {
            throw new IllegalStateException("Wrong field type");
        }
        unsafe.putReference(this, offset, obj);
    }

    private void resetArchivedStates() {
        if (this.parallelLockMap != null) {
            reinitObjectField("parallelLockMap", new ConcurrentHashMap());
        }
        reinitObjectField("packages", new ConcurrentHashMap());
        reinitObjectField("package2certs", new ConcurrentHashMap());
        this.classes.clear();
        this.classes.trimToSize();
        this.classLoaderValueMap = null;
    }
}
