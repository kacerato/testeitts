package java.lang;

import com.jetbrains.exported.JBRApi;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Console;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.lang.StackWalker;
import java.lang.StringConcatHelper;
import java.lang.annotation.Annotation;
import java.lang.foreign.MemorySegment;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodType;
import java.lang.module.ModuleDescriptor;
import java.lang.reflect.Executable;
import java.lang.reflect.Method;
import java.net.URI;
import java.nio.channels.Channel;
import java.nio.channels.spi.SelectorProvider;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.file.FileSystems;
import java.security.ProtectionDomain;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.function.Supplier;
import java.util.stream.Stream;
import jdk.internal.access.JavaLangAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.javac.Restricted;
import jdk.internal.loader.NativeLibraries;
import jdk.internal.logger.LazyLoggers;
import jdk.internal.logger.LocalizedLoggerWrapper;
import jdk.internal.logger.LoggerFinderLoader;
import jdk.internal.misc.Blocker;
import jdk.internal.misc.CarrierThreadLocal;
import jdk.internal.misc.VM;
import jdk.internal.module.ModuleBootstrap;
import jdk.internal.module.ServicesCatalog;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.ConstantPool;
import jdk.internal.reflect.Reflection;
import jdk.internal.util.StaticProperty;
import jdk.internal.util.SystemProps;
import jdk.internal.vm.Continuation;
import jdk.internal.vm.ContinuationScope;
import jdk.internal.vm.StackableScope;
import jdk.internal.vm.ThreadContainer;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import sun.nio.ch.Interruptible;
import sun.nio.cs.UTF_8;
import sun.reflect.annotation.AnnotationType;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/System.class
 */
public final class System {

    public static final InputStream f92798in;
    public static final PrintStream out;
    public static final PrintStream err;

    @Stable
    private static InputStream initialIn;

    @Stable
    private static PrintStream initialErr;
    private static String notSupportedJnuEncoding;
    private static volatile Console cons;
    private static Properties props;
    private static String lineSeparator;
    static ModuleLayer bootLayer;

    private static native void registerNatives();

    private static native void setIn0(InputStream inputStream);

    private static native void setOut0(PrintStream printStream);

    private static native void setErr0(PrintStream printStream);

    @IntrinsicCandidate
    public static native long currentTimeMillis();

    @IntrinsicCandidate
    public static native long nanoTime();

    @IntrinsicCandidate
    public static native void arraycopy(Object obj, int i10, Object obj2, int i11, int i12);

    @IntrinsicCandidate
    public static native int identityHashCode(Object obj);

    public static native String mapLibraryName(String str);

    @JBRApi.Provides("SystemUtils#fullGC")
    private static native void $$jb$FullGC();

    @JBRApi.Provides("SystemUtils#shrinkingGC")
    private static native void $$jb$ShrinkingGC();

    static {
        registerNatives();
        f92798in = null;
        out = null;
        err = null;
    }

    private System() {
    }

    public static void setIn(InputStream in2) {
        setIn0(in2);
    }

    public static void setOut(PrintStream out2) {
        setOut0(out2);
    }

    public static void setErr(PrintStream err2) {
        setErr0(err2);
    }

    public static Console console() {
        Console console = cons;
        Console c10 = console;
        if (console == null) {
            synchronized (System.class) {
                Console console2 = cons;
                c10 = console2;
                if (console2 == null) {
                    Console console3 = SharedSecrets.getJavaIOAccess().console();
                    c10 = console3;
                    cons = console3;
                }
            }
        }
        return c10;
    }

    public static Channel inheritedChannel() throws IOException {
        return SelectorProvider.provider().inheritedChannel();
    }

    @Deprecated(since = "17", forRemoval = true)
    public static void setSecurityManager(SecurityManager sm2) {
        throw new UnsupportedOperationException("Setting a Security Manager is not supported");
    }

    @Deprecated(since = "17", forRemoval = true)
    public static SecurityManager getSecurityManager() {
        return null;
    }

    public static Properties getProperties() {
        return props;
    }

    public static String lineSeparator() {
        return lineSeparator;
    }

    public static void setProperties(Properties props2) {
        if (props2 == null) {
            Map<String, String> tempProps = SystemProps.initProperties();
            VersionProps.init(tempProps);
            props2 = createProperties(tempProps);
        }
        props = props2;
    }

    public static String getProperty(String key) {
        checkKey(key);
        return props.getProperty(key);
    }

    public static String getProperty(String key, String def) {
        checkKey(key);
        return props.getProperty(key, def);
    }

    public static String setProperty(String key, String value) {
        checkKey(key);
        return (String) props.setProperty(key, value);
    }

    public static String clearProperty(String key) {
        checkKey(key);
        return (String) props.remove(key);
    }

    private static void checkKey(String key) {
        if (key == null) {
            throw new NullPointerException("key can't be null");
        }
        if (key.isEmpty()) {
            throw new IllegalArgumentException("key can't be empty");
        }
    }

    public static String getenv(String name) {
        return ProcessEnvironment.getenv(name);
    }

    public static Map<String, String> getenv() {
        return ProcessEnvironment.getenv();
    }

    public interface Logger {
        String getName();

        boolean isLoggable(Level level);

        void log(Level level, ResourceBundle resourceBundle, String str, Throwable th2);

        void log(Level level, ResourceBundle resourceBundle, String str, Object... objArr);

        public enum Level {
            ALL(Integer.MIN_VALUE),
            TRACE(400),
            DEBUG(500),
            INFO(800),
            WARNING(900),
            ERROR(1000),
            OFF(Integer.MAX_VALUE);

            private final int severity;

            Level(int severity) {
                this.severity = severity;
            }

            public final String getName() {
                return name();
            }

            public final int getSeverity() {
                return this.severity;
            }
        }

        default void log(Level level, String msg) {
            log(level, (ResourceBundle) null, msg, (Object[]) null);
        }

        default void log(Level level, Supplier<String> msgSupplier) {
            Objects.requireNonNull(msgSupplier);
            if (isLoggable((Level) Objects.requireNonNull(level))) {
                log(level, (ResourceBundle) null, msgSupplier.get(), (Object[]) null);
            }
        }

        default void log(Level level, Object obj) {
            Objects.requireNonNull(obj);
            if (isLoggable((Level) Objects.requireNonNull(level))) {
                log(level, (ResourceBundle) null, obj.toString(), (Object[]) null);
            }
        }

        default void log(Level level, String msg, Throwable thrown) {
            log(level, (ResourceBundle) null, msg, thrown);
        }

        default void log(Level level, Supplier<String> msgSupplier, Throwable thrown) {
            Objects.requireNonNull(msgSupplier);
            if (isLoggable((Level) Objects.requireNonNull(level))) {
                log(level, (ResourceBundle) null, msgSupplier.get(), thrown);
            }
        }

        default void log(Level level, String format, Object... params) {
            log(level, (ResourceBundle) null, format, params);
        }
    }

    public static abstract class LoggerFinder {
        private static volatile LoggerFinder service;

        public abstract Logger getLogger(String str, Module module);

        protected LoggerFinder() {
        }

        public Logger getLocalizedLogger(String name, ResourceBundle bundle, Module module) {
            return new LocalizedLoggerWrapper(getLogger(name, module), bundle);
        }

        public static LoggerFinder getLoggerFinder() {
            return accessProvider();
        }

        static LoggerFinder accessProvider() {
            LoggerFinder finder = service;
            if (finder == null) {
                finder = LoggerFinderLoader.getLoggerFinder();
                if (finder instanceof LoggerFinderLoader.TemporaryLoggerFinder) {
                    return finder;
                }
                service = finder;
            }
            return finder;
        }
    }

    @CallerSensitive
    public static Logger getLogger(String name) {
        Objects.requireNonNull(name);
        Class<?> caller = Reflection.getCallerClass();
        if (caller == null) {
            throw new IllegalCallerException("no caller frame");
        }
        return LazyLoggers.getLogger(name, caller.getModule());
    }

    @CallerSensitive
    public static Logger getLogger(String name, ResourceBundle bundle) {
        ResourceBundle rb2 = (ResourceBundle) Objects.requireNonNull(bundle);
        Objects.requireNonNull(name);
        Class<?> caller = Reflection.getCallerClass();
        if (caller == null) {
            throw new IllegalCallerException("no caller frame");
        }
        return LoggerFinder.accessProvider().getLocalizedLogger(name, rb2, caller.getModule());
    }

    public static void exit(int status) {
        Runtime.getRuntime().exit(status);
    }

    public static void gc() {
        Runtime.getRuntime().gc();
    }

    @Deprecated(since = "18", forRemoval = true)
    public static void runFinalization() {
        Runtime.getRuntime().runFinalization();
    }

    @Restricted
    @CallerSensitive
    public static void load(String filename) {
        Class<?> caller = Reflection.getCallerClass();
        Reflection.ensureNativeAccess(caller, System.class, "load", false);
        Runtime.getRuntime().load0(caller, filename);
    }

    @Restricted
    @CallerSensitive
    public static void loadLibrary(String libname) {
        Class<?> caller = Reflection.getCallerClass();
        Reflection.ensureNativeAccess(caller, System.class, "loadLibrary", false);
        Runtime.getRuntime().loadLibrary0(caller, libname);
    }

    private static PrintStream newPrintStream(OutputStream out2, String enc) {
        if (enc != null) {
            return new PrintStream((OutputStream) new BufferedOutputStream(out2, 128), true, Charset.forName(enc, UTF_8.INSTANCE));
        }
        return new PrintStream((OutputStream) new BufferedOutputStream(out2, 128), true);
    }

    private static void logInitException(boolean printToStderr, boolean printStackTrace, String msg, Throwable e10) {
        if (VM.initLevel() < 1) {
            throw new InternalError("system classes not initialized");
        }
        PrintStream log = printToStderr ? err : out;
        if (msg != null) {
            log.println(msg);
        }
        if (printStackTrace) {
            e10.printStackTrace(log);
            return;
        }
        log.println(e10);
        for (Throwable suppressed : e10.getSuppressed()) {
            log.println("Suppressed: " + ((Object) suppressed));
        }
        Throwable cause = e10.getCause();
        if (cause != null) {
            log.println("Caused by: " + ((Object) cause));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0044. Please report as an issue. */
    private static Properties createProperties(Map<String, String> initialProps) {
        Properties properties = new Properties(initialProps.size());
        for (Map.Entry<String, String> entry : initialProps.entrySet()) {
            String prop = entry.getKey();
            boolean z10 = -1;
            switch (prop.hashCode()) {
                case -1594982994:
                    if (prop.equals("jdk.boot.class.path.append")) {
                        z10 = 4;
                        break;
                    }
                    break;
                case -903405997:
                    if (prop.equals("sun.nio.MaxDirectMemorySize")) {
                        z10 = false;
                        break;
                    }
                    break;
                case -137219825:
                    if (prop.equals("sun.java.launcher.diag")) {
                        z10 = 3;
                        break;
                    }
                    break;
                case 82382212:
                    if (prop.equals("sun.nio.PageAlignDirectMemory")) {
                        z10 = true;
                        break;
                    }
                    break;
                case 2006761672:
                    if (prop.equals("java.lang.Integer.IntegerCache.high")) {
                        z10 = 2;
                        break;
                    }
                    break;
            }
            switch (z10) {
                case false:
                case true:
                case true:
                case true:
                case true:
                    break;
                default:
                    properties.put(prop, entry.getValue());
                    break;
            }
        }
        return properties;
    }

    private static void initPhase1() {
        setJavaLangAccess();
        Map<String, String> tempProps = SystemProps.initProperties();
        VersionProps.init(tempProps);
        VM.saveProperties(tempProps);
        props = createProperties(tempProps);
        String jnuEncoding = props.getProperty("sun.jnu.encoding");
        if (jnuEncoding == null || !Charset.isSupported(jnuEncoding)) {
            notSupportedJnuEncoding = jnuEncoding == null ? "null" : jnuEncoding;
            props.setProperty("sun.jnu.encoding", "UTF-8");
        }
        StaticProperty.javaHome();
        lineSeparator = props.getProperty("line.separator");
        FileInputStream fdIn = new In(FileDescriptor.f92729in);
        FileOutputStream fdOut = new Out(FileDescriptor.out);
        FileOutputStream fdErr = new Out(FileDescriptor.err);
        initialIn = new BufferedInputStream(fdIn);
        setIn0(initialIn);
        setOut0(newPrintStream(fdOut, props.getProperty("stdout.encoding")));
        initialErr = newPrintStream(fdErr, props.getProperty("stderr.encoding"));
        setErr0(initialErr);
        Terminator.setup();
        VM.initializeOSEnvironment();
        SharedSecrets.getJavaLangRefAccess().startThreads();
        VM.initLevel(1);
    }

    private static class In extends FileInputStream {
        In(FileDescriptor fd2) {
            super(fd2);
        }

        @Override
        public int read() throws IOException {
            boolean attempted = Blocker.begin();
            try {
                return super.read();
            } finally {
                Blocker.end(attempted);
            }
        }

        @Override
        public int read(byte[] b10) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                int read = super.read(b10);
                Blocker.end(attempted);
                return read;
            } catch (Throwable th2) {
                Blocker.end(attempted);
                throw th2;
            }
        }

        @Override
        public int read(byte[] b10, int off, int len) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                int read = super.read(b10, off, len);
                Blocker.end(attempted);
                return read;
            } catch (Throwable th2) {
                Blocker.end(attempted);
                throw th2;
            }
        }
    }

    private static class Out extends FileOutputStream {
        Out(FileDescriptor fd2) {
            super(fd2);
        }

        @Override
        public void write(int b10) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                super.write(b10);
            } finally {
                Blocker.end(attempted);
            }
        }

        @Override
        public void write(byte[] b10) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                super.write(b10);
            } finally {
                Blocker.end(attempted);
            }
        }

        @Override
        public void write(byte[] b10, int off, int len) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                super.write(b10, off, len);
                Blocker.end(attempted);
            } catch (Throwable th2) {
                Blocker.end(attempted);
                throw th2;
            }
        }
    }

    private static int initPhase2(boolean printToStderr, boolean printStackTrace) {
        try {
            bootLayer = ModuleBootstrap.boot();
            VM.initLevel(2);
            return 0;
        } catch (Error | Exception e10) {
            logInitException(printToStderr, printStackTrace, "Error occurred during initialization of boot layer", e10);
            return -1;
        }
    }

    private static void initPhase3() {
        if (SystemProps.isBadIoTmpdir()) {
            err.println("WARNING: java.io.tmpdir directory does not exist");
        }
        String smProp = getProperty("java.security.manager");
        if (smProp != null) {
            boolean z10 = -1;
            switch (smProp.hashCode()) {
                case 0:
                    if (smProp.equals("")) {
                        z10 = 2;
                        break;
                    }
                    break;
                case 92906313:
                    if (smProp.equals("allow")) {
                        z10 = true;
                        break;
                    }
                    break;
                case 271239035:
                    if (smProp.equals("disallow")) {
                        z10 = false;
                        break;
                    }
                    break;
                case 1544803905:
                    if (smProp.equals("default")) {
                        z10 = 3;
                        break;
                    }
                    break;
            }
            switch (z10) {
                case false:
                    break;
                case true:
                case true:
                case true:
                default:
                    throw new Error("A command line option has attempted to allow or enable the Security Manager. Enabling a Security Manager is not supported.");
            }
        }
        if (notSupportedJnuEncoding != null) {
            err.println("WARNING: The encoding of the underlying platform's file system is not supported: " + notSupportedJnuEncoding);
        }
        VM.initLevel(3);
        ClassLoader scl = ClassLoader.initSystemClassLoader();
        Thread.currentThread().setContextClassLoader(scl);
        if (Boolean.getBoolean("java.util.zip.use.nio.for.zip.file.access") && getProperty("java.nio.file.spi.DefaultFileSystemProvider") != null) {
            FileSystems.getDefault();
        }
        VM.initLevel(4);
    }

    private static void setJavaLangAccess() {
        SharedSecrets.setJavaLangAccess(new JavaLangAccess() {
            public List<Method> getDeclaredPublicMethods(Class<?> klass, String name, Class<?>... parameterTypes) {
                return klass.getDeclaredPublicMethods(name, parameterTypes);
            }

            public Method findMethod(Class<?> klass, boolean publicOnly, String name, Class<?>... parameterTypes) {
                return klass.findMethod(publicOnly, name, parameterTypes);
            }

            public ConstantPool getConstantPool(Class<?> klass) {
                return klass.getConstantPool();
            }

            public boolean casAnnotationType(Class<?> klass, AnnotationType oldType, AnnotationType newType) {
                return klass.casAnnotationType(oldType, newType);
            }

            public AnnotationType getAnnotationType(Class<?> klass) {
                return klass.getAnnotationType();
            }

            public Map<Class<? extends Annotation>, Annotation> getDeclaredAnnotationMap(Class<?> klass) {
                return klass.getDeclaredAnnotationMap();
            }

            public byte[] getRawClassAnnotations(Class<?> klass) {
                return klass.getRawAnnotations();
            }

            public byte[] getRawClassTypeAnnotations(Class<?> klass) {
                return klass.getRawTypeAnnotations();
            }

            public byte[] getRawExecutableTypeAnnotations(Executable executable) {
                return Class.getExecutableTypeAnnotationBytes(executable);
            }

            public <E extends Enum<E>> E[] getEnumConstantsShared(Class<E> klass) {
                return klass.getEnumConstantsShared();
            }

            public int classFileVersion(Class<?> clazz) {
                return clazz.getClassFileVersion();
            }

            public void blockedOn(Interruptible b10) {
                Thread.currentThread().blockedOn(b10);
            }

            public void registerShutdownHook(int slot, boolean registerShutdownInProgress, Runnable hook) {
                Shutdown.add(slot, registerShutdownInProgress, hook);
            }

            public void invokeFinalize(Object o10) throws Throwable {
                o10.finalize();
            }

            public ConcurrentHashMap<?, ?> createOrGetClassLoaderValueMap(ClassLoader cl2) {
                return cl2.createOrGetClassLoaderValueMap();
            }

            public Class<?> defineClass(ClassLoader loader, String name, byte[] b10, ProtectionDomain pd2, String source) {
                return ClassLoader.defineClass1(loader, name, b10, 0, b10.length, pd2, source);
            }

            public Class<?> defineClass(ClassLoader loader, Class<?> lookup, String name, byte[] b10, ProtectionDomain pd2, boolean initialize, int flags, Object classData) {
                return ClassLoader.defineClass0(loader, lookup, name, b10, 0, b10.length, pd2, initialize, flags, classData);
            }

            public Class<?> findBootstrapClassOrNull(String name) {
                return ClassLoader.findBootstrapClassOrNull(name);
            }

            public Package definePackage(ClassLoader cl2, String name, Module module) {
                return cl2.definePackage(name, module);
            }

            public Module defineModule(ClassLoader loader, ModuleDescriptor descriptor, URI uri) {
                return new Module(null, loader, descriptor, uri);
            }

            public Module defineUnnamedModule(ClassLoader loader) {
                return new Module(loader);
            }

            public void addReads(Module m12, Module m22) {
                m12.implAddReads(m22);
            }

            public void addReadsAllUnnamed(Module m10) {
                m10.implAddReadsAllUnnamed();
            }

            public void addExports(Module m10, String pn2) {
                m10.implAddExports(pn2);
            }

            public void addExports(Module m10, String pn2, Module other) {
                m10.implAddExports(pn2, other);
            }

            public void addExportsToAllUnnamed(Module m10, String pn2) {
                m10.implAddExportsToAllUnnamed(pn2);
            }

            public void addOpens(Module m10, String pn2, Module other) {
                m10.implAddOpens(pn2, other);
            }

            public void addOpensToAllUnnamed(Module m10, String pn2) {
                m10.implAddOpensToAllUnnamed(pn2);
            }

            public void addUses(Module m10, Class<?> service) {
                m10.implAddUses(service);
            }

            public boolean isReflectivelyExported(Module m10, String pn2, Module other) {
                return m10.isReflectivelyExported(pn2, other);
            }

            public boolean isReflectivelyOpened(Module m10, String pn2, Module other) {
                return m10.isReflectivelyOpened(pn2, other);
            }

            public Module addEnableNativeAccess(Module m10) {
                return m10.implAddEnableNativeAccess();
            }

            public boolean addEnableNativeAccess(ModuleLayer layer, String name) {
                return layer.addEnableNativeAccess(name);
            }

            public void addEnableNativeAccessToAllUnnamed() {
                Module.implAddEnableNativeAccessToAllUnnamed();
            }

            public void ensureNativeAccess(Module m10, Class<?> owner, String methodName, Class<?> currentClass, boolean jni) {
                m10.ensureNativeAccess(owner, methodName, currentClass, jni);
            }

            public ServicesCatalog getServicesCatalog(ModuleLayer layer) {
                return layer.getServicesCatalog();
            }

            public void bindToLoader(ModuleLayer layer, ClassLoader loader) {
                layer.bindToLoader(loader);
            }

            public Stream<ModuleLayer> layers(ModuleLayer layer) {
                return layer.layers();
            }

            public Stream<ModuleLayer> layers(ClassLoader loader) {
                return ModuleLayer.layers(loader);
            }

            public int uncheckedCountPositives(byte[] bytes, int offset, int length) {
                return StringCoding.countPositives(bytes, offset, length);
            }

            public int countNonZeroAscii(String s10) {
                return StringCoding.countNonZeroAscii(s10);
            }

            public String uncheckedNewStringNoRepl(byte[] bytes, Charset cs) throws CharacterCodingException {
                return String.newStringNoRepl(bytes, cs);
            }

            public char uncheckedGetUTF16Char(byte[] bytes, int index) {
                return StringUTF16.getChar(bytes, index);
            }

            public void uncheckedPutCharUTF16(byte[] bytes, int index, int ch2) {
                StringUTF16.putChar(bytes, index, ch2);
            }

            public byte[] uncheckedGetBytesNoRepl(String s10, Charset cs) throws CharacterCodingException {
                return String.getBytesNoRepl(s10, cs);
            }

            public String newStringUTF8NoRepl(byte[] bytes, int off, int len) {
                return String.newStringUTF8NoRepl(bytes, off, len, true);
            }

            public byte[] getBytesUTF8NoRepl(String s10) {
                return String.getBytesUTF8NoRepl(s10);
            }

            public void uncheckedInflateBytesToChars(byte[] src, int srcOff, char[] dst, int dstOff, int len) {
                StringLatin1.inflate(src, srcOff, dst, dstOff, len);
            }

            public int uncheckedDecodeASCII(byte[] src, int srcOff, char[] dst, int dstOff, int len) {
                return String.decodeASCII(src, srcOff, dst, dstOff, len);
            }

            public int uncheckedEncodeASCII(char[] src, int srcOff, byte[] dst, int dstOff, int len) {
                return StringCoding.implEncodeAsciiArray(src, srcOff, dst, dstOff, len);
            }

            public InputStream initialSystemIn() {
                return System.initialIn;
            }

            public PrintStream initialSystemErr() {
                return System.initialErr;
            }

            public void setCause(Throwable t10, Throwable cause) {
                t10.setCause(cause);
            }

            public ProtectionDomain protectionDomain(Class<?> c10) {
                return c10.getProtectionDomain();
            }

            public MethodHandle stringConcatHelper(String name, MethodType methodType) {
                return StringConcatHelper.lookupStatic(name, methodType);
            }

            public long stringConcatInitialCoder() {
                return StringConcatHelper.initialCoder();
            }

            public long stringConcatMix(long lengthCoder, String constant) {
                return StringConcatHelper.mix(lengthCoder, constant);
            }

            public long stringConcatMix(long lengthCoder, char value) {
                return StringConcatHelper.mix(lengthCoder, value);
            }

            public Object uncheckedStringConcat1(String[] constants) {
                return new StringConcatHelper.Concat1(constants);
            }

            public byte stringInitCoder() {
                return String.COMPACT_STRINGS ? (byte) 0 : (byte) 1;
            }

            public byte stringCoder(String str) {
                return str.coder();
            }

            public String join(String prefix, String suffix, String delimiter, String[] elements, int size) {
                return String.join(prefix, suffix, delimiter, elements, size);
            }

            public String concat(String prefix, Object value, String suffix) {
                return StringConcatHelper.concat(prefix, value, suffix);
            }

            public Object classData(Class<?> c10) {
                return c10.getClassData();
            }

            public NativeLibraries nativeLibrariesFor(ClassLoader loader) {
                return ClassLoader.nativeLibrariesFor(loader);
            }

            public Thread[] getAllThreads() {
                return Thread.getAllThreads();
            }

            public ThreadContainer threadContainer(Thread thread) {
                return thread.threadContainer();
            }

            public void start(Thread thread, ThreadContainer container) {
                thread.start(container);
            }

            public StackableScope headStackableScope(Thread thread) {
                return thread.headStackableScopes();
            }

            public void setHeadStackableScope(StackableScope scope) {
                Thread.setHeadStackableScope(scope);
            }

            public Thread currentCarrierThread() {
                return Thread.currentCarrierThread();
            }

            public <T> T getCarrierThreadLocal(CarrierThreadLocal<T> carrierThreadLocal) {
                return (T) carrierThreadLocal.getCarrierThreadLocal();
            }

            public <T> void setCarrierThreadLocal(CarrierThreadLocal<T> local, T value) {
                local.setCarrierThreadLocal(value);
            }

            public void removeCarrierThreadLocal(CarrierThreadLocal<?> local) {
                local.removeCarrierThreadLocal();
            }

            public Object[] scopedValueCache() {
                return Thread.scopedValueCache();
            }

            public void setScopedValueCache(Object[] cache) {
                Thread.setScopedValueCache(cache);
            }

            public Object scopedValueBindings() {
                return Thread.scopedValueBindings();
            }

            public Continuation getContinuation(Thread thread) {
                return thread.getContinuation();
            }

            public void setContinuation(Thread thread, Continuation continuation) {
                thread.setContinuation(continuation);
            }

            public ContinuationScope virtualThreadContinuationScope() {
                return VirtualThread.continuationScope();
            }

            public void parkVirtualThread() {
                Thread thread = Thread.currentThread();
                if (thread instanceof BaseVirtualThread) {
                    BaseVirtualThread vthread = (BaseVirtualThread) thread;
                    vthread.park();
                    return;
                }
                throw new WrongThreadException();
            }

            public void parkVirtualThread(long nanos) {
                Thread thread = Thread.currentThread();
                if (thread instanceof BaseVirtualThread) {
                    BaseVirtualThread vthread = (BaseVirtualThread) thread;
                    vthread.parkNanos(nanos);
                    return;
                }
                throw new WrongThreadException();
            }

            public void unparkVirtualThread(Thread thread) {
                if (thread instanceof BaseVirtualThread) {
                    BaseVirtualThread vthread = (BaseVirtualThread) thread;
                    vthread.unpark();
                    return;
                }
                throw new WrongThreadException();
            }

            public Executor virtualThreadDefaultScheduler() {
                return VirtualThread.defaultScheduler();
            }

            public StackWalker newStackWalkerInstance(Set<StackWalker.Option> options, ContinuationScope contScope, Continuation continuation) {
                return StackWalker.newInstance(options, null, contScope, continuation);
            }

            public String getLoaderNameID(ClassLoader loader) {
                return loader != null ? loader.nameAndId() : "null";
            }

            public void copyToSegmentRaw(String string, MemorySegment segment, long offset) {
                string.copyToSegmentRaw(segment, offset);
            }

            public boolean bytesCompatible(String string, Charset charset) {
                return string.bytesCompatible(charset);
            }
        });
    }
}
