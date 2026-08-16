package java.lang;

import java.io.Serializable;
import java.lang.module.ResolvedModule;
import java.util.HashSet;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import jdk.internal.loader.BuiltinClassLoader;
import jdk.internal.misc.VM;
import jdk.internal.module.ModuleHashes;
import jdk.internal.module.ModuleReferenceImpl;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/StackTraceElement.class
 */
public final class StackTraceElement implements Serializable {
    private static final String NATIVE_METHOD = "Native Method";
    private static final String UNKNOWN_SOURCE = "Unknown Source";
    private transient Class<?> declaringClassObject;
    private String classLoaderName;
    private String moduleName;
    private String moduleVersion;
    private String declaringClass;
    private String methodName;
    private String fileName;
    private int lineNumber;
    private byte format;
    private static final byte BUILTIN_CLASS_LOADER = 1;
    private static final byte JDK_NON_UPGRADEABLE_MODULE = 2;
    private static final long serialVersionUID = 6992337162326171013L;

    private static native void initStackTraceElements(StackTraceElement[] stackTraceElementArr, Object obj, int i10);

    private static native void initStackTraceElement(StackTraceElement stackTraceElement, StackFrameInfo stackFrameInfo);

    public StackTraceElement(String declaringClass, String methodName, String fileName, int lineNumber) {
        this(null, null, null, declaringClass, methodName, fileName, lineNumber);
    }

    public StackTraceElement(String classLoaderName, String moduleName, String moduleVersion, String declaringClass, String methodName, String fileName, int lineNumber) {
        this.format = (byte) 0;
        this.classLoaderName = classLoaderName;
        this.moduleName = moduleName;
        this.moduleVersion = moduleVersion;
        this.declaringClass = (String) Objects.requireNonNull(declaringClass, "Declaring class is null");
        this.methodName = (String) Objects.requireNonNull(methodName, "Method name is null");
        this.fileName = fileName;
        this.lineNumber = lineNumber;
    }

    private StackTraceElement() {
        this.format = (byte) 0;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public String getModuleName() {
        return this.moduleName;
    }

    public String getModuleVersion() {
        return this.moduleVersion;
    }

    public String getClassLoaderName() {
        return this.classLoaderName;
    }

    public String getClassName() {
        return this.declaringClass;
    }

    public String getMethodName() {
        return this.methodName;
    }

    public boolean isNativeMethod() {
        return this.lineNumber == -2;
    }

    public String toString() {
        int estimatedLength = length(this.classLoaderName) + 1 + length(this.moduleName) + 1 + length(this.moduleVersion) + 1 + this.declaringClass.length() + 1 + this.methodName.length() + 1 + Math.max(UNKNOWN_SOURCE.length(), length(this.fileName)) + 1 + 12;
        StringBuilder sb2 = new StringBuilder(estimatedLength);
        if (!dropClassLoaderName() && this.classLoaderName != null && !this.classLoaderName.isEmpty()) {
            sb2.append(this.classLoaderName).append('/');
        }
        if (this.moduleName != null && !this.moduleName.isEmpty()) {
            sb2.append(this.moduleName);
            if (!dropModuleVersion() && this.moduleVersion != null && !this.moduleVersion.isEmpty()) {
                sb2.append('@').append(this.moduleVersion);
            }
        }
        if (sb2.length() > 0) {
            sb2.append('/');
        }
        sb2.append(this.declaringClass).append('.').append(this.methodName).append('(');
        if (isNativeMethod()) {
            sb2.append(NATIVE_METHOD);
        } else if (this.fileName == null) {
            sb2.append(UNKNOWN_SOURCE);
        } else {
            sb2.append(this.fileName);
            if (this.lineNumber >= 0) {
                sb2.append(':').append(this.lineNumber);
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    private static int length(String s10) {
        if (s10 == null) {
            return 0;
        }
        return s10.length();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StackTraceElement) {
            StackTraceElement e10 = (StackTraceElement) obj;
            if (e10.lineNumber == this.lineNumber && e10.declaringClass.equals(this.declaringClass) && Objects.equals(this.classLoaderName, e10.classLoaderName) && Objects.equals(this.moduleName, e10.moduleName) && Objects.equals(this.moduleVersion, e10.moduleVersion) && Objects.equals(this.methodName, e10.methodName) && Objects.equals(this.fileName, e10.fileName)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int result = (31 * this.declaringClass.hashCode()) + this.methodName.hashCode();
        return (31 * ((31 * ((31 * ((31 * ((31 * result) + Objects.hashCode(this.classLoaderName))) + Objects.hashCode(this.moduleName))) + Objects.hashCode(this.moduleVersion))) + Objects.hashCode(this.fileName))) + this.lineNumber;
    }

    private synchronized void computeFormat() {
        try {
            Class<?> cls = this.declaringClassObject;
            ClassLoader loader = cls.getClassLoader0();
            Module m10 = cls.getModule();
            byte bits = 0;
            if (loader instanceof BuiltinClassLoader) {
                bits = (byte) (0 | 1);
            }
            if (isHashedInJavaBase(m10)) {
                bits = (byte) (bits | 2);
            }
            this.format = bits;
            this.declaringClassObject = null;
        } catch (Throwable th2) {
            this.declaringClassObject = null;
            throw th2;
        }
    }

    private boolean dropClassLoaderName() {
        return (this.format & 1) == 1;
    }

    private boolean dropModuleVersion() {
        return (this.format & 2) == 2;
    }

    private static boolean isHashedInJavaBase(Module m10) {
        if (VM.isModuleSystemInited()) {
            return ModuleLayer.boot() == m10.getLayer() && HashedModules.contains(m10);
        }
        return true;
    }

    public static class HashedModules {
        static Set<String> HASHED_MODULES;
        static final boolean $assertionsDisabled;

        private HashedModules() {
        }

        static {
            $assertionsDisabled = !StackTraceElement.class.desiredAssertionStatus();
            HASHED_MODULES = hashedModules();
        }

        static Set<String> hashedModules() {
            Optional<ResolvedModule> resolvedModule = ModuleLayer.boot().configuration().findModule(JRTUtil.JAVA_BASE);
            if (!$assertionsDisabled && !resolvedModule.isPresent()) {
                throw new AssertionError();
            }
            ModuleReferenceImpl reference = resolvedModule.get().reference();
            if (!$assertionsDisabled && !(reference instanceof ModuleReferenceImpl)) {
                throw new AssertionError();
            }
            ModuleHashes hashes = reference.recordedHashes();
            if (hashes != null) {
                Set<String> names = new HashSet<>(hashes.names());
                names.add(JRTUtil.JAVA_BASE);
                return names;
            }
            return Set.of();
        }

        static boolean contains(Module m10) {
            return HASHED_MODULES.contains(m10.getName());
        }
    }

    public static StackTraceElement[] of(Object x10, int depth) {
        StackTraceElement[] stackTrace = new StackTraceElement[depth];
        for (int i10 = 0; i10 < depth; i10++) {
            stackTrace[i10] = new StackTraceElement();
        }
        initStackTraceElements(stackTrace, x10, depth);
        return of(stackTrace);
    }

    public static StackTraceElement of(StackFrameInfo sfi) {
        StackTraceElement ste = new StackTraceElement();
        initStackTraceElement(ste, sfi);
        ste.computeFormat();
        return ste;
    }

    public static StackTraceElement[] of(StackTraceElement[] stackTrace) {
        for (StackTraceElement ste : stackTrace) {
            ste.computeFormat();
        }
        return stackTrace;
    }
}
