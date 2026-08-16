package java.lang.invoke;

import java.lang.classfile.ClassFile;
import java.lang.classfile.ClassModel;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.invoke.LambdaForm;
import java.lang.invoke.MemberName;
import java.lang.invoke.MethodHandleImpl;
import java.lang.invoke.VarHandle;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.runtime.ObjectMethods;
import java.nio.ByteOrder;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Stream;
import jdk.internal.access.SharedSecrets;
import jdk.internal.misc.Unsafe;
import jdk.internal.misc.VM;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.CallerSensitiveAdapter;
import jdk.internal.reflect.Reflection;
import jdk.internal.util.ClassFileDumper;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Stable;
import sun.invoke.util.ValueConversions;
import sun.invoke.util.VerifyAccess;
import sun.invoke.util.Wrapper;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/invoke/MethodHandles.class
 */
public final class MethodHandles {
    static final MemberName.Factory IMPL_NAMES;
    private static final MethodHandle[] IDENTITY_MHS;

    @Stable
    private static final MethodHandle[] PRIMITIVE_ZERO_MHS;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !MethodHandles.class.desiredAssertionStatus();
        IMPL_NAMES = MemberName.getFactory();
        IDENTITY_MHS = new MethodHandle[10];
        PRIMITIVE_ZERO_MHS = new MethodHandle[10];
    }

    private MethodHandles() {
    }

    @ForceInline
    @CallerSensitive
    public static Lookup lookup() {
        Class<?> c10 = Reflection.getCallerClass();
        if (c10 == null) {
            throw new IllegalCallerException("no caller frame");
        }
        return new Lookup(c10);
    }

    @CallerSensitiveAdapter
    private static Lookup lookup(Class<?> caller) {
        if (caller.getClassLoader() == null) {
            throw MethodHandleStatics.newInternalError("calling lookup() reflectively is not supported: " + ((Object) caller));
        }
        return new Lookup(caller);
    }

    public static Lookup publicLookup() {
        return Lookup.PUBLIC_LOOKUP;
    }

    public static Lookup privateLookupIn(Class<?> targetClass, Lookup caller) throws IllegalAccessException {
        if (caller.allowedModes == -1) {
            return new Lookup(targetClass);
        }
        if (targetClass.isPrimitive()) {
            throw new IllegalArgumentException(((Object) targetClass) + " is a primitive class");
        }
        if (targetClass.isArray()) {
            throw new IllegalArgumentException(((Object) targetClass) + " is an array class");
        }
        if ((caller.lookupModes() & 18) != 18) {
            throw new IllegalAccessException("caller does not have PRIVATE and MODULE lookup mode");
        }
        if (!$assertionsDisabled && caller.previousLookupClass() != null) {
            throw new AssertionError();
        }
        Class<?> callerClass = caller.lookupClass();
        Module callerModule = callerClass.getModule();
        Module targetModule = targetClass.getModule();
        Class<?> newPreviousClass = null;
        int newModes = 31;
        if (targetModule != callerModule) {
            if (!callerModule.canRead(targetModule)) {
                throw new IllegalAccessException(((Object) callerModule) + " does not read " + ((Object) targetModule));
            }
            if (targetModule.isNamed()) {
                String pn2 = targetClass.getPackageName();
                if (!$assertionsDisabled && pn2.isEmpty()) {
                    throw new AssertionError((Object) "unnamed package cannot be in named module");
                }
                if (!targetModule.isOpen(pn2, callerModule)) {
                    throw new IllegalAccessException(((Object) targetModule) + " does not open " + pn2 + " to " + ((Object) callerModule));
                }
            }
            newPreviousClass = callerClass;
            newModes = 31 & (-17);
        }
        return Lookup.newLookup(targetClass, newPreviousClass, newModes);
    }

    public static <T> T classData(Lookup lookup, String str, Class<T> cls) throws IllegalAccessException {
        Objects.requireNonNull(lookup);
        Objects.requireNonNull(cls);
        if (!ConstantDescs.DEFAULT_NAME.equals(str)) {
            throw new IllegalArgumentException("name must be \"_\": " + str);
        }
        if ((lookup.lookupModes() & 64) != 64) {
            throw new IllegalAccessException(((Object) lookup) + " does not have ORIGINAL access");
        }
        Object classData = classData(lookup.lookupClass());
        if (classData == null) {
            return null;
        }
        try {
            return (T) BootstrapMethodInvoker.widenAndCast(classData, cls);
        } catch (Error | RuntimeException e10) {
            throw e10;
        } catch (Throwable th2) {
            throw new InternalError(th2);
        }
    }

    static Object classData(Class<?> c10) {
        MethodHandleStatics.UNSAFE.ensureClassInitialized(c10);
        return SharedSecrets.getJavaLangAccess().classData(c10);
    }

    public static <T> T classDataAt(Lookup lookup, String str, Class<T> cls, int i10) throws IllegalAccessException {
        List list = (List) classData(lookup, str, List.class);
        if (list == null) {
            return null;
        }
        try {
            return (T) BootstrapMethodInvoker.widenAndCast(list.get(i10), cls);
        } catch (Error | RuntimeException e10) {
            throw e10;
        } catch (Throwable th2) {
            throw new InternalError(th2);
        }
    }

    public static <T extends Member> T reflectAs(Class<T> cls, MethodHandle methodHandle) {
        Lookup lookup = Lookup.IMPL_LOOKUP;
        return (T) lookup.revealDirect(methodHandle).reflectAs(cls, lookup);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/invoke/MethodHandles$Lookup.class
 */
    public static final class Lookup {
        private final Class<?> lookupClass;
        private final Class<?> prevLookupClass;
        private final int allowedModes;
        public static final int PUBLIC = 1;
        public static final int PRIVATE = 2;
        public static final int PROTECTED = 4;
        public static final int PACKAGE = 8;
        public static final int MODULE = 16;
        public static final int UNCONDITIONAL = 32;
        public static final int ORIGINAL = 64;
        private static final int ALL_MODES = 127;
        private static final int FULL_POWER_MODES = 95;
        private static final int TRUSTED = -1;
        private static final ClassFileDumper DEFAULT_DUMPER;
        private volatile ProtectionDomain cachedProtectionDomain;
        static final Lookup IMPL_LOOKUP;
        static final Lookup PUBLIC_LOOKUP;
        static ConcurrentHashMap<MemberName, DirectMethodHandle> LOOKASIDE_TABLE;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !MethodHandles.class.desiredAssertionStatus();
            Reflection.registerFieldsToFilter(Lookup.class, Set.of("lookupClass", "allowedModes"));
            DEFAULT_DUMPER = ClassFileDumper.getInstance("jdk.invoke.MethodHandle.dumpClassFiles", "DUMP_CLASS_FILES");
            MethodHandles.IMPL_NAMES.getClass();
            IMPL_LOOKUP = new Lookup(Object.class, null, -1);
            PUBLIC_LOOKUP = new Lookup(Object.class, null, 32);
            LOOKASIDE_TABLE = new ConcurrentHashMap<>();
        }

        private static int fixmods(int mods) {
            int mods2 = mods & 7;
            if (Modifier.isPublic(mods2)) {
                mods2 |= 32;
            }
            if (mods2 != 0) {
                return mods2;
            }
            return 8;
        }

        public Class<?> lookupClass() {
            return this.lookupClass;
        }

        public Class<?> previousLookupClass() {
            return this.prevLookupClass;
        }

        private Class<?> lookupClassOrNull() {
            if (this.allowedModes == -1) {
                return null;
            }
            return this.lookupClass;
        }

        public int lookupModes() {
            return this.allowedModes & 127;
        }

        public Lookup(Class<?> lookupClass) {
            this(lookupClass, null, 95);
        }

        private Lookup(Class<?> lookupClass, Class<?> prevLookupClass, int allowedModes) {
            if (!$assertionsDisabled && prevLookupClass != null && ((allowedModes & 16) != 0 || prevLookupClass.getModule() == lookupClass.getModule())) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && (lookupClass.isArray() || lookupClass.isPrimitive())) {
                throw new AssertionError();
            }
            this.lookupClass = lookupClass;
            this.prevLookupClass = prevLookupClass;
            this.allowedModes = allowedModes;
        }

        private static Lookup newLookup(Class<?> lookupClass, Class<?> prevLookupClass, int allowedModes) {
            checkUnprivilegedlookupClass(lookupClass);
            return new Lookup(lookupClass, prevLookupClass, allowedModes);
        }

        public Lookup in(Class<?> requestedLookupClass) {
            Objects.requireNonNull(requestedLookupClass);
            if (requestedLookupClass.isPrimitive()) {
                throw new IllegalArgumentException(((Object) requestedLookupClass) + " is a primitive class");
            }
            if (requestedLookupClass.isArray()) {
                throw new IllegalArgumentException(((Object) requestedLookupClass) + " is an array class");
            }
            if (this.allowedModes == -1) {
                return new Lookup(requestedLookupClass, null, 95);
            }
            if (requestedLookupClass == this.lookupClass) {
                return this;
            }
            int newModes = this.allowedModes & 95 & (-65);
            Module fromModule = this.lookupClass.getModule();
            Module targetModule = requestedLookupClass.getModule();
            Class<?> plc = previousLookupClass();
            if ((this.allowedModes & 32) != 0) {
                if (!$assertionsDisabled && plc != null) {
                    throw new AssertionError();
                }
                newModes = 32;
            } else if (fromModule != targetModule) {
                if (plc != null && !VerifyAccess.isSameModule(plc, requestedLookupClass)) {
                    newModes = 0;
                }
                newModes &= -31;
                plc = this.lookupClass;
            }
            if ((newModes & 8) != 0 && !VerifyAccess.isSamePackage(this.lookupClass, requestedLookupClass)) {
                newModes &= -15;
            }
            if ((newModes & 2) != 0 && !VerifyAccess.isSamePackageMember(this.lookupClass, requestedLookupClass)) {
                newModes &= -7;
            }
            if ((newModes & 33) != 0 && !VerifyAccess.isClassAccessible(requestedLookupClass, this.lookupClass, this.prevLookupClass, this.allowedModes)) {
                newModes = 0;
            }
            return newLookup(requestedLookupClass, plc, newModes);
        }

        public Lookup dropLookupMode(int modeToDrop) {
            int oldModes = lookupModes();
            int newModes = oldModes & (((modeToDrop | 4) | 64) ^ (-1));
            switch (modeToDrop) {
                case 1:
                    newModes &= -96;
                    break;
                case 2:
                case 4:
                case 32:
                case 64:
                    break;
                case 8:
                    newModes &= -3;
                    break;
                case 16:
                    newModes &= -11;
                    break;
                default:
                    throw new IllegalArgumentException(modeToDrop + " is not a valid mode to drop");
            }
            return newModes == oldModes ? this : newLookup(lookupClass(), previousLookupClass(), newModes);
        }

        public Class<?> defineClass(byte[] bytes) throws IllegalAccessException {
            if ((lookupModes() & 8) == 0) {
                throw new IllegalAccessException("Lookup does not have PACKAGE access");
            }
            return makeClassDefiner((byte[]) bytes.clone()).defineClass(false);
        }

        public enum ClassOption {
            NESTMATE(1),
            STRONG(4);

            private final int flag;

            ClassOption(int flag) {
                this.flag = flag;
            }

            static int optionsToFlag(ClassOption[] options) {
                int flags = 0;
                for (ClassOption cp : options) {
                    if ((flags & cp.flag) != 0) {
                        throw new IllegalArgumentException("Duplicate ClassOption " + ((Object) cp));
                    }
                    flags |= cp.flag;
                }
                return flags;
            }
        }

        public Lookup defineHiddenClass(byte[] bytes, boolean initialize, ClassOption... options) throws IllegalAccessException {
            Objects.requireNonNull(bytes);
            int flags = ClassOption.optionsToFlag(options);
            if (!hasFullPrivilegeAccess()) {
                throw new IllegalAccessException(((Object) this) + " does not have full privilege access");
            }
            return makeHiddenClassDefiner((byte[]) bytes.clone(), false, flags).defineClassAsLookup(initialize);
        }

        public Lookup defineHiddenClassWithClassData(byte[] bytes, Object classData, boolean initialize, ClassOption... options) throws IllegalAccessException {
            Objects.requireNonNull(bytes);
            Objects.requireNonNull(classData);
            int flags = ClassOption.optionsToFlag(options);
            if (!hasFullPrivilegeAccess()) {
                throw new IllegalAccessException(((Object) this) + " does not have full privilege access");
            }
            return makeHiddenClassDefiner((byte[]) bytes.clone(), false, flags).defineClassAsLookup(initialize, classData);
        }

        private static ClassFileDumper defaultDumper() {
            return DEFAULT_DUMPER;
        }

        static String validateAndFindInternalName(byte[] bytes, String pkgName) {
            int magic = readInt(bytes, 0);
            if (magic != -889275714) {
                throw new ClassFormatError("Incompatible magic value: " + magic);
            }
            int minor = readUnsignedShort(bytes, 4);
            int major = readUnsignedShort(bytes, 6);
            if (!VM.isSupportedClassFileVersion(major, minor)) {
                throw new UnsupportedClassVersionError("Unsupported class file version " + major + "." + minor);
            }
            try {
                ClassModel cm2 = ClassFile.of().parse(bytes);
                ClassEntry thisClass = cm2.thisClass();
                String name = thisClass.asInternalName();
                ClassDesc sym = thisClass.asSymbol();
                int accessFlags = cm2.flags().flagsMask();
                if ((accessFlags & 32768) != 0) {
                    throw MethodHandleStatics.newIllegalArgumentException("Not a class or interface: ACC_MODULE flag is set");
                }
                String pn2 = sym.packageName();
                if (!pn2.equals(pkgName)) {
                    throw MethodHandleStatics.newIllegalArgumentException(name + " not in same package as lookup class");
                }
                return name;
            } catch (IllegalArgumentException e10) {
                ClassFormatError cfe = new ClassFormatError();
                cfe.initCause(e10);
                throw cfe;
            }
        }

        private static int readInt(byte[] bytes, int offset) {
            if (offset + 4 > bytes.length) {
                throw new ClassFormatError("Invalid ClassFile structure");
            }
            return ((bytes[offset] & 255) << 24) | ((bytes[offset + 1] & 255) << 16) | ((bytes[offset + 2] & 255) << 8) | (bytes[offset + 3] & 255);
        }

        private static int readUnsignedShort(byte[] bytes, int offset) {
            if (offset + 2 > bytes.length) {
                throw new ClassFormatError("Invalid ClassFile structure");
            }
            return ((bytes[offset] & 255) << 8) | (bytes[offset + 1] & 255);
        }

        private ClassDefiner makeClassDefiner(byte[] bytes) {
            String internalName = validateAndFindInternalName(bytes, lookupClass().getPackageName());
            return new ClassDefiner(this, internalName, bytes, 4, defaultDumper());
        }

        public ClassDefiner makeClassDefiner(String internalName, byte[] bytes, ClassFileDumper dumper) {
            return new ClassDefiner(this, internalName, bytes, 4, dumper);
        }

        ClassDefiner makeHiddenClassDefiner(byte[] bytes, ClassFileDumper dumper) {
            String internalName = validateAndFindInternalName(bytes, lookupClass().getPackageName());
            return makeHiddenClassDefiner(internalName, bytes, false, dumper, 0);
        }

        private ClassDefiner makeHiddenClassDefiner(byte[] bytes, boolean accessVmAnnotations, int flags) {
            String internalName = validateAndFindInternalName(bytes, lookupClass().getPackageName());
            return makeHiddenClassDefiner(internalName, bytes, accessVmAnnotations, defaultDumper(), flags);
        }

        public ClassDefiner makeHiddenClassDefiner(String internalName, byte[] bytes, ClassFileDumper dumper) {
            Objects.requireNonNull(dumper);
            return makeHiddenClassDefiner(internalName, bytes, false, dumper, 0);
        }

        public ClassDefiner makeHiddenClassDefiner(String internalName, byte[] bytes, ClassFileDumper dumper, int flags) {
            Objects.requireNonNull(dumper);
            return makeHiddenClassDefiner(internalName, bytes, false, dumper, flags);
        }

        private ClassDefiner makeHiddenClassDefiner(String internalName, byte[] bytes, boolean accessVmAnnotations, ClassFileDumper dumper, int flags) {
            int flags2 = flags | 2;
            if (accessVmAnnotations | VM.isSystemDomainLoader(this.lookupClass.getClassLoader())) {
                flags2 |= 8;
            }
            return new ClassDefiner(this, internalName, bytes, flags2, dumper);
        }

        public static final class ClassDefiner extends Record {
            private final Lookup lookup;
            private final String internalName;
            private final byte[] bytes;
            private final int classFlags;
            private final ClassFileDumper dumper;
            static final boolean $assertionsDisabled;

            @Override
            public final String toString() {
                return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, ClassDefiner.class), ClassDefiner.class, "lookup;internalName;bytes;classFlags;dumper", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->lookup:Ljava/lang/invoke/MethodHandles$Lookup;", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->internalName:Ljava/lang/String;", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->bytes:[B", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->classFlags:I", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->dumper:Ljdk/internal/util/ClassFileDumper;").dynamicInvoker().invoke(this) /* invoke-custom */;
            }

            @Override
            public final int hashCode() {
                return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, ClassDefiner.class), ClassDefiner.class, "lookup;internalName;bytes;classFlags;dumper", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->lookup:Ljava/lang/invoke/MethodHandles$Lookup;", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->internalName:Ljava/lang/String;", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->bytes:[B", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->classFlags:I", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->dumper:Ljdk/internal/util/ClassFileDumper;").dynamicInvoker().invoke(this) /* invoke-custom */;
            }

            @Override
            public final boolean equals(Object o10) {
                return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, ClassDefiner.class, Object.class), ClassDefiner.class, "lookup;internalName;bytes;classFlags;dumper", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->lookup:Ljava/lang/invoke/MethodHandles$Lookup;", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->internalName:Ljava/lang/String;", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->bytes:[B", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->classFlags:I", "FIELD:Ljava/lang/invoke/MethodHandles$Lookup$ClassDefiner;->dumper:Ljdk/internal/util/ClassFileDumper;").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
            }

            public Lookup lookup() {
                return this.lookup;
            }

            public String internalName() {
                return this.internalName;
            }

            public byte[] bytes() {
                return this.bytes;
            }

            public int classFlags() {
                return this.classFlags;
            }

            public ClassFileDumper dumper() {
                return this.dumper;
            }

            static {
                $assertionsDisabled = !MethodHandles.class.desiredAssertionStatus();
            }

            ClassDefiner(Lookup lookup, String internalName, byte[] bytes, int classFlags, ClassFileDumper dumper) {
                if (!$assertionsDisabled && (classFlags & 2) == 0 && (classFlags & 4) != 4) {
                    throw new AssertionError();
                }
                this.lookup = lookup;
                this.internalName = internalName;
                this.bytes = bytes;
                this.classFlags = classFlags;
                this.dumper = dumper;
            }

            public Class<?> defineClass(boolean initialize) {
                return defineClass(initialize, null);
            }

            public Lookup defineClassAsLookup(boolean initialize) {
                Class<?> c10 = defineClass(initialize, null);
                return new Lookup(c10, null, 95);
            }

            public Class<?> defineClass(boolean initialize, Object classData) {
                Class<?> lookupClass = this.lookup.lookupClass();
                ClassLoader loader = lookupClass.getClassLoader();
                ProtectionDomain pd2 = loader != null ? this.lookup.lookupClassProtectionDomain() : null;
                Class<?> c10 = null;
                try {
                    c10 = SharedSecrets.getJavaLangAccess().defineClass(loader, lookupClass, this.internalName, this.bytes, pd2, initialize, this.classFlags, classData);
                    if (!$assertionsDisabled && isNestmate() && c10.getNestHost() != lookupClass.getNestHost()) {
                        throw new AssertionError();
                    }
                    if (this.dumper.isEnabled()) {
                        String name = internalName();
                        if (c10 != null) {
                            this.dumper.dumpClass(name, c10, this.bytes);
                        } else {
                            this.dumper.dumpFailedClass(name, this.bytes);
                        }
                    }
                    return c10;
                } catch (Throwable th2) {
                    if (this.dumper.isEnabled()) {
                        String name2 = internalName();
                        if (c10 != null) {
                            this.dumper.dumpClass(name2, c10, this.bytes);
                        } else {
                            this.dumper.dumpFailedClass(name2, this.bytes);
                        }
                    }
                    throw th2;
                }
            }

            Lookup defineClassAsLookup(boolean initialize, Object classData) {
                Class<?> c10 = defineClass(initialize, classData);
                return new Lookup(c10, null, 95);
            }

            private boolean isNestmate() {
                return (this.classFlags & 1) != 0;
            }
        }

        private ProtectionDomain lookupClassProtectionDomain() {
            ProtectionDomain pd2 = this.cachedProtectionDomain;
            if (pd2 == null) {
                ProtectionDomain protectionDomain = SharedSecrets.getJavaLangAccess().protectionDomain(this.lookupClass);
                pd2 = protectionDomain;
                this.cachedProtectionDomain = protectionDomain;
            }
            return pd2;
        }

        private static void checkUnprivilegedlookupClass(Class<?> lookupClass) {
            String name = lookupClass.getName();
            if (name.startsWith("java.lang.invoke.")) {
                throw MethodHandleStatics.newIllegalArgumentException("illegal lookupClass: " + ((Object) lookupClass));
            }
        }

        public String toString() {
            String cname = this.lookupClass.getName();
            if (this.prevLookupClass != null) {
                cname = cname + "/" + this.prevLookupClass.getName();
            }
            switch (this.allowedModes) {
                case -1:
                    return "/trusted";
                case 0:
                    return cname + "/noaccess";
                case 1:
                    return cname + "/public";
                case 9:
                case 25:
                    return cname + "/package";
                case 11:
                case 27:
                    return cname + "/private";
                case 15:
                case 31:
                case 95:
                    return cname;
                case 17:
                    return cname + "/module";
                case 32:
                    return cname + "/publicLookup";
                default:
                    String cname2 = cname + "/" + Integer.toHexString(this.allowedModes);
                    if ($assertionsDisabled) {
                        return cname2;
                    }
                    throw new AssertionError((Object) cname2);
            }
        }

        public MethodHandle findStatic(Class<?> refc, String name, MethodType type) throws NoSuchMethodException, IllegalAccessException {
            MemberName method = resolveOrFail((byte) 6, refc, name, type);
            return getDirectMethod((byte) 6, refc, method, findBoundCallerLookup(method));
        }

        public MethodHandle findVirtual(Class<?> refc, String name, MethodType type) throws NoSuchMethodException, IllegalAccessException {
            MethodHandle mh2;
            if (refc == MethodHandle.class) {
                MethodHandle mh3 = findVirtualForMH(name, type);
                if (mh3 != null) {
                    return mh3;
                }
            } else if (refc == VarHandle.class && (mh2 = findVirtualForVH(name, type)) != null) {
                return mh2;
            }
            byte refKind = refc.isInterface() ? (byte) 9 : (byte) 5;
            MemberName method = resolveOrFail(refKind, refc, name, type);
            return getDirectMethod(refKind, refc, method, findBoundCallerLookup(method));
        }

        private MethodHandle findVirtualForMH(String name, MethodType type) {
            if ("invoke".equals(name)) {
                return MethodHandles.invoker(type);
            }
            if ("invokeExact".equals(name)) {
                return MethodHandles.exactInvoker(type);
            }
            if ($assertionsDisabled || !MemberName.isMethodHandleInvokeName(name)) {
                return null;
            }
            throw new AssertionError();
        }

        private MethodHandle findVirtualForVH(String name, MethodType type) {
            try {
                return MethodHandles.varHandleInvoker(VarHandle.AccessMode.valueFromMethodName(name), type);
            } catch (IllegalArgumentException e10) {
                return null;
            }
        }

        public MethodHandle findConstructor(Class<?> refc, MethodType type) throws NoSuchMethodException, IllegalAccessException {
            if (refc.isArray()) {
                throw new NoSuchMethodException("no constructor for array class: " + refc.getName());
            }
            MemberName ctor = resolveOrFail((byte) 8, refc, ConstantDescs.INIT_NAME, type);
            return getDirectConstructor(refc, ctor);
        }

        public Class<?> findClass(String targetName) throws ClassNotFoundException, IllegalAccessException {
            Class<?> targetClass = Class.forName(targetName, false, this.lookupClass.getClassLoader());
            return accessClass(targetClass);
        }

        public <T> Class<T> ensureInitialized(Class<T> targetClass) throws IllegalAccessException {
            if (targetClass.isPrimitive()) {
                throw new IllegalArgumentException(((Object) targetClass) + " is a primitive class");
            }
            if (targetClass.isArray()) {
                throw new IllegalArgumentException(((Object) targetClass) + " is an array class");
            }
            if (!VerifyAccess.isClassAccessible(targetClass, this.lookupClass, this.prevLookupClass, this.allowedModes)) {
                throw makeAccessException(targetClass);
            }
            Unsafe.getUnsafe().ensureClassInitialized(targetClass);
            return targetClass;
        }

        private IllegalAccessException makeAccessException(Class<?> targetClass) {
            String message;
            String message2 = "access violation: " + ((Object) targetClass);
            if (this == MethodHandles.publicLookup()) {
                message = message2 + ", from public Lookup";
            } else {
                Module m10 = lookupClass().getModule();
                message = message2 + ", from " + ((Object) lookupClass()) + " (" + ((Object) m10) + ")";
                if (this.prevLookupClass != null) {
                    message = message + ", previous lookup " + this.prevLookupClass.getName() + " (" + ((Object) this.prevLookupClass.getModule()) + ")";
                }
            }
            return new IllegalAccessException(message);
        }

        public <T> Class<T> accessClass(Class<T> targetClass) throws IllegalAccessException {
            if (!isClassAccessible(targetClass)) {
                throw makeAccessException(targetClass);
            }
            return targetClass;
        }

        public MethodHandle findSpecial(Class<?> refc, String name, MethodType type, Class<?> specialCaller) throws NoSuchMethodException, IllegalAccessException {
            checkSpecialCaller(specialCaller, refc);
            Lookup specialLookup = in(specialCaller);
            MemberName method = specialLookup.resolveOrFail((byte) 7, refc, name, type);
            return specialLookup.getDirectMethod((byte) 7, refc, method, findBoundCallerLookup(method));
        }

        public MethodHandle findGetter(Class<?> refc, String name, Class<?> type) throws NoSuchFieldException, IllegalAccessException {
            MemberName field = resolveOrFail((byte) 1, refc, name, type);
            return getDirectField((byte) 1, refc, field);
        }

        public MethodHandle findSetter(Class<?> refc, String name, Class<?> type) throws NoSuchFieldException, IllegalAccessException {
            MemberName field = resolveOrFail((byte) 3, refc, name, type);
            return getDirectField((byte) 3, refc, field);
        }

        public VarHandle findVarHandle(Class<?> recv, String name, Class<?> type) throws NoSuchFieldException, IllegalAccessException {
            MemberName getField = resolveOrFail((byte) 1, recv, name, type);
            MemberName putField = resolveOrFail((byte) 3, recv, name, type);
            return getFieldVarHandle((byte) 1, (byte) 3, recv, getField, putField);
        }

        public MethodHandle findStaticGetter(Class<?> refc, String name, Class<?> type) throws NoSuchFieldException, IllegalAccessException {
            MemberName field = resolveOrFail((byte) 2, refc, name, type);
            return getDirectField((byte) 2, refc, field);
        }

        public MethodHandle findStaticSetter(Class<?> refc, String name, Class<?> type) throws NoSuchFieldException, IllegalAccessException {
            MemberName field = resolveOrFail((byte) 4, refc, name, type);
            return getDirectField((byte) 4, refc, field);
        }

        public VarHandle findStaticVarHandle(Class<?> decl, String name, Class<?> type) throws NoSuchFieldException, IllegalAccessException {
            MemberName getField = resolveOrFail((byte) 2, decl, name, type);
            MemberName putField = resolveOrFail((byte) 4, decl, name, type);
            return getFieldVarHandle((byte) 2, (byte) 4, decl, getField, putField);
        }

        public MethodHandle bind(Object receiver, String name, MethodType type) throws NoSuchMethodException, IllegalAccessException {
            Class<?> cls = receiver.getClass();
            MemberName method = resolveOrFail((byte) 7, cls, name, type);
            MethodHandle mh2 = getDirectMethodNoRestrictInvokeSpecial(cls, method, findBoundCallerLookup(method));
            if (!mh2.type().leadingReferenceParameter().isAssignableFrom(receiver.getClass())) {
                throw new IllegalAccessException("The restricted defining class " + mh2.type().leadingReferenceParameter().getName() + " is not assignable from receiver class " + receiver.getClass().getName());
            }
            return mh2.bindArgumentL(0, receiver).setVarargs(method);
        }

        public MethodHandle unreflect(Method m10) throws IllegalAccessException {
            MethodHandle mh2;
            MethodHandle mh3;
            if (m10.getDeclaringClass() == MethodHandle.class && (mh3 = unreflectForMH(m10)) != null) {
                return mh3;
            }
            if (m10.getDeclaringClass() == VarHandle.class && (mh2 = unreflectForVH(m10)) != null) {
                return mh2;
            }
            MemberName method = new MemberName(m10);
            byte refKind = method.getReferenceKind();
            if (refKind == 7) {
                refKind = 5;
            }
            if (!$assertionsDisabled && !method.isMethod()) {
                throw new AssertionError();
            }
            Lookup lookup = m10.isAccessible() ? IMPL_LOOKUP : this;
            return lookup.getDirectMethod(refKind, method.getDeclaringClass(), method, findBoundCallerLookup(method));
        }

        private MethodHandle unreflectForMH(Method m10) {
            if (MemberName.isMethodHandleInvokeName(m10.getName())) {
                return MethodHandleImpl.fakeMethodHandleInvoke(new MemberName(m10));
            }
            return null;
        }

        private MethodHandle unreflectForVH(Method m10) {
            if (MemberName.isVarHandleMethodInvokeName(m10.getName())) {
                return MethodHandleImpl.fakeVarHandleInvoke(new MemberName(m10));
            }
            return null;
        }

        public MethodHandle unreflectSpecial(Method m10, Class<?> specialCaller) throws IllegalAccessException {
            checkSpecialCaller(specialCaller, m10.getDeclaringClass());
            Lookup specialLookup = in(specialCaller);
            MemberName method = new MemberName(m10, true);
            if ($assertionsDisabled || method.isMethod()) {
                return specialLookup.getDirectMethod((byte) 7, method.getDeclaringClass(), method, findBoundCallerLookup(method));
            }
            throw new AssertionError();
        }

        public MethodHandle unreflectConstructor(Constructor<?> c10) throws IllegalAccessException {
            MemberName ctor = new MemberName(c10);
            if (!$assertionsDisabled && !ctor.isConstructor()) {
                throw new AssertionError();
            }
            Lookup lookup = c10.isAccessible() ? IMPL_LOOKUP : this;
            return lookup.getDirectConstructor(ctor.getDeclaringClass(), ctor);
        }

        public MethodHandle serializableConstructor(Class<?> decl, Constructor<?> c10) throws IllegalAccessException {
            MemberName ctor = new MemberName(c10);
            if (!$assertionsDisabled && (!ctor.isConstructor() || !constructorInSuperclass(decl, c10))) {
                throw new AssertionError();
            }
            checkAccess((byte) 8, decl, ctor);
            if ($assertionsDisabled || !MethodHandleNatives.isCallerSensitive(ctor)) {
                return DirectMethodHandle.makeAllocator(decl, ctor).setVarargs(ctor);
            }
            throw new AssertionError();
        }

        private static boolean constructorInSuperclass(Class<?> decl, Constructor<?> ctor) {
            if (decl == ctor.getDeclaringClass()) {
                return true;
            }
            Class<?> cl2 = decl;
            do {
                Class<? super Object> superclass = cl2.getSuperclass();
                cl2 = superclass;
                if (superclass == null) {
                    return false;
                }
            } while (cl2 != ctor.getDeclaringClass());
            return true;
        }

        public MethodHandle unreflectGetter(Field f10) throws IllegalAccessException {
            return unreflectField(f10, false);
        }

        public MethodHandle unreflectSetter(Field f10) throws IllegalAccessException {
            return unreflectField(f10, true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        
            throw new java.lang.AssertionError();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private MethodHandle unreflectField(Field f10, boolean isSetter) throws IllegalAccessException {
            MemberName field = new MemberName(f10, isSetter);
            if (isSetter && field.isFinal() && field.isTrustedFinalField()) {
                String msg = field.isStatic() ? "static final field has no write access" : "final field has no write access";
                throw field.makeAccessException(msg, this);
            }
            if (!$assertionsDisabled) {
                if (isSetter) {
                }
            }
            Lookup lookup = f10.isAccessible() ? IMPL_LOOKUP : this;
            return lookup.getDirectField(field.getReferenceKind(), f10.getDeclaringClass(), field);
        }

        public VarHandle unreflectVarHandle(Field f10) throws IllegalAccessException {
            MemberName getField = new MemberName(f10, false);
            MemberName putField = new MemberName(f10, true);
            return getFieldVarHandle(getField.getReferenceKind(), putField.getReferenceKind(), f10.getDeclaringClass(), getField, putField);
        }

        public MethodHandleInfo revealDirect(MethodHandle target) {
            if (!target.isCrackable()) {
                throw MethodHandleStatics.newIllegalArgumentException("not a direct method handle");
            }
            MemberName member = target.internalMemberName();
            Class<?> defc = member.getDeclaringClass();
            byte refKind = member.getReferenceKind();
            if (!$assertionsDisabled && !MethodHandleNatives.refKindIsValid(refKind)) {
                throw new AssertionError();
            }
            if (refKind == 7 && !target.isInvokeSpecial()) {
                refKind = 5;
            }
            if (refKind == 5 && defc.isInterface()) {
                refKind = 9;
            }
            try {
                checkAccess(refKind, defc, member);
                if (this.allowedModes != -1 && member.isCallerSensitive()) {
                    Class<?> callerClass = target.internalCallerClass();
                    if ((lookupModes() & 64) == 0 || callerClass != lookupClass()) {
                        throw new IllegalArgumentException("method handle is caller sensitive: " + ((Object) callerClass));
                    }
                }
                return new InfoFromMemberName(this, member, refKind);
            } catch (IllegalAccessException ex) {
                throw new IllegalArgumentException(ex);
            }
        }

        public MemberName resolveOrFail(byte refKind, Class<?> refc, String name, Class<?> type) throws NoSuchFieldException, IllegalAccessException {
            checkSymbolicClass(refc);
            Objects.requireNonNull(name);
            Objects.requireNonNull(type);
            return MethodHandles.IMPL_NAMES.resolveOrFail(refKind, new MemberName(refc, name, type, refKind), lookupClassOrNull(), this.allowedModes, NoSuchFieldException.class);
        }

        public MemberName resolveOrFail(byte refKind, Class<?> refc, String name, MethodType type) throws NoSuchMethodException, IllegalAccessException {
            checkSymbolicClass(refc);
            Objects.requireNonNull(type);
            checkMethodName(refKind, name);
            return MethodHandles.IMPL_NAMES.resolveOrFail(refKind, new MemberName(refc, name, type, refKind), lookupClassOrNull(), this.allowedModes, NoSuchMethodException.class);
        }

        MemberName resolveOrFail(byte refKind, MemberName member) throws ReflectiveOperationException {
            checkSymbolicClass(member.getDeclaringClass());
            Objects.requireNonNull(member.getName());
            Objects.requireNonNull(member.getType());
            return MethodHandles.IMPL_NAMES.resolveOrFail(refKind, member, lookupClassOrNull(), this.allowedModes, ReflectiveOperationException.class);
        }

        public MemberName resolveOrNull(byte refKind, MemberName member) {
            if (!isClassAccessible(member.getDeclaringClass())) {
                return null;
            }
            Objects.requireNonNull(member.getName());
            Objects.requireNonNull(member.getType());
            return MethodHandles.IMPL_NAMES.resolveOrNull(refKind, member, lookupClassOrNull(), this.allowedModes);
        }

        public MemberName resolveOrNull(byte refKind, Class<?> refc, String name, MethodType type) {
            if (!isClassAccessible(refc)) {
                return null;
            }
            Objects.requireNonNull(type);
            if (name.startsWith("<") && refKind != 8) {
                return null;
            }
            return MethodHandles.IMPL_NAMES.resolveOrNull(refKind, new MemberName(refc, name, type, refKind), lookupClassOrNull(), this.allowedModes);
        }

        void checkSymbolicClass(Class<?> refc) throws IllegalAccessException {
            if (!isClassAccessible(refc)) {
                throw new MemberName(refc).makeAccessException("symbolic reference class is not accessible", this);
            }
        }

        boolean isClassAccessible(Class<?> refc) {
            Class<?> type;
            Objects.requireNonNull(refc);
            Class<?> caller = lookupClassOrNull();
            Class<?> cls = refc;
            while (true) {
                type = cls;
                if (!type.isArray()) {
                    break;
                }
                cls = type.getComponentType();
            }
            return caller == null || VerifyAccess.isClassAccessible(type, caller, this.prevLookupClass, this.allowedModes);
        }

        void checkMethodName(byte refKind, String name) throws NoSuchMethodException {
            if (name.startsWith("<") && refKind != 8) {
                throw new NoSuchMethodException("illegal method name: " + name);
            }
        }

        Lookup findBoundCallerLookup(MemberName m10) throws IllegalAccessException {
            if (MethodHandleNatives.isCallerSensitive(m10) && (lookupModes() & 64) == 0) {
                throw new IllegalAccessException("Attempt to lookup caller-sensitive method using restricted lookup object");
            }
            return this;
        }

        @Deprecated(since = "14")
        public boolean hasPrivateAccess() {
            return hasFullPrivilegeAccess();
        }

        public boolean hasFullPrivilegeAccess() {
            return (this.allowedModes & 18) == 18;
        }

        void checkMethod(byte refKind, Class<?> refc, MemberName m10) throws IllegalAccessException {
            String message;
            boolean wantStatic = refKind == 6;
            if (m10.isConstructor()) {
                message = "expected a method, not a constructor";
            } else if (!m10.isMethod()) {
                message = "expected a method";
            } else if (wantStatic != m10.isStatic()) {
                message = wantStatic ? "expected a static method" : "expected a non-static method";
            } else {
                checkAccess(refKind, refc, m10);
                return;
            }
            throw m10.makeAccessException(message, this);
        }

        void checkField(byte refKind, Class<?> refc, MemberName m10) throws IllegalAccessException {
            boolean wantStatic = !MethodHandleNatives.refKindHasReceiver(refKind);
            if (wantStatic != m10.isStatic()) {
                String message = wantStatic ? "expected a static field" : "expected a non-static field";
                throw m10.makeAccessException(message, this);
            }
            checkAccess(refKind, refc, m10);
        }

        private boolean isArrayClone(byte refKind, Class<?> refc, MemberName m10) {
            return Modifier.isProtected(m10.getModifiers()) && refKind == 5 && m10.getDeclaringClass() == Object.class && m10.getName().equals("clone") && refc.isArray();
        }

        public void checkAccess(byte refKind, Class<?> refc, MemberName m10) throws IllegalAccessException {
            if (!$assertionsDisabled && (!m10.referenceKindIsConsistentWith(refKind) || !MethodHandleNatives.refKindIsValid(refKind) || MethodHandleNatives.refKindIsField(refKind) != m10.isField())) {
                throw new AssertionError();
            }
            int allowedModes = this.allowedModes;
            if (allowedModes == -1) {
                return;
            }
            int mods = m10.getModifiers();
            if (isArrayClone(refKind, refc, m10)) {
                mods ^= 5;
            }
            if (Modifier.isProtected(mods) && refKind == 8) {
                mods ^= 4;
            }
            if (Modifier.isFinal(mods) && MethodHandleNatives.refKindIsSetter(refKind)) {
                throw m10.makeAccessException("unexpected set of a final field", this);
            }
            int requestedModes = fixmods(mods);
            if ((requestedModes & allowedModes) != 0) {
                if (VerifyAccess.isMemberAccessible(refc, m10.getDeclaringClass(), mods, lookupClass(), previousLookupClass(), allowedModes)) {
                    return;
                }
            } else if ((requestedModes & 4) != 0 && (allowedModes & 8) != 0 && VerifyAccess.isSamePackage(m10.getDeclaringClass(), lookupClass())) {
                return;
            }
            throw m10.makeAccessException(accessFailedMessage(refc, m10), this);
        }

        String accessFailedMessage(Class<?> refc, MemberName m10) {
            Class<?> defc = m10.getDeclaringClass();
            int mods = m10.getModifiers();
            boolean classOK = Modifier.isPublic(defc.getModifiers()) && (defc == refc || Modifier.isPublic(refc.getModifiers()));
            if (!classOK && (this.allowedModes & 8) != 0) {
                classOK = VerifyAccess.isClassAccessible(defc, lookupClass(), (Class) null, 95) && (defc == refc || VerifyAccess.isClassAccessible(refc, lookupClass(), (Class) null, 95));
            }
            if (!classOK) {
                return "class is not public";
            }
            if (Modifier.isPublic(mods)) {
                return "access to public member failed";
            }
            if (Modifier.isPrivate(mods)) {
                return "member is private";
            }
            if (Modifier.isProtected(mods)) {
                return "member is protected";
            }
            return "member is private to package";
        }

        private void checkSpecialCaller(Class<?> specialCaller, Class<?> refc) throws IllegalAccessException {
            int allowedModes = this.allowedModes;
            if (allowedModes == -1) {
                return;
            }
            if ((lookupModes() & 2) != 0) {
                if (specialCaller != lookupClass()) {
                    if (refc != null && refc.isInterface() && refc.isAssignableFrom(specialCaller)) {
                        return;
                    }
                } else {
                    return;
                }
            }
            throw new MemberName(specialCaller).makeAccessException("no private access for invokespecial", this);
        }

        private boolean restrictProtectedReceiver(MemberName method) {
            if (!method.isProtected() || method.isStatic() || this.allowedModes == -1 || method.getDeclaringClass() == lookupClass() || VerifyAccess.isSamePackage(method.getDeclaringClass(), lookupClass())) {
                return false;
            }
            return true;
        }

        private MethodHandle restrictReceiver(MemberName method, DirectMethodHandle mh2, Class<?> caller) throws IllegalAccessException {
            if (!$assertionsDisabled && method.isStatic()) {
                throw new AssertionError();
            }
            if (!method.getDeclaringClass().isAssignableFrom(caller)) {
                throw method.makeAccessException("caller class must be a subclass below the method", caller);
            }
            MethodType rawType = mh2.type();
            if (caller.isAssignableFrom(rawType.parameterType(0))) {
                return mh2;
            }
            MethodType narrowType = rawType.changeParameterType(0, caller);
            if (!$assertionsDisabled && mh2.isVarargsCollector()) {
                throw new AssertionError();
            }
            if ($assertionsDisabled || mh2.viewAsTypeChecks(narrowType, true)) {
                return mh2.copyWith(narrowType, mh2.form);
            }
            throw new AssertionError();
        }

        private MethodHandle getDirectMethod(byte refKind, Class<?> refc, MemberName method, Lookup callerLookup) throws IllegalAccessException {
            return getDirectMethodCommon(refKind, refc, method, true, callerLookup);
        }

        private MethodHandle getDirectMethodNoRestrictInvokeSpecial(Class<?> refc, MemberName method, Lookup callerLookup) throws IllegalAccessException {
            return getDirectMethodCommon((byte) 7, refc, method, false, callerLookup);
        }

        private MethodHandle getDirectMethodCommon(byte refKind, Class<?> refc, MemberName method, boolean doRestrict, Lookup boundCaller) throws IllegalAccessException {
            MemberName m22;
            checkMethod(refKind, refc, method);
            if (!$assertionsDisabled && method.isMethodHandleInvoke()) {
                throw new AssertionError();
            }
            if (refKind == 7 && refc != lookupClass() && !refc.isInterface() && !lookupClass().isInterface() && refc != lookupClass().getSuperclass() && refc.isAssignableFrom(lookupClass())) {
                if (!$assertionsDisabled && method.getName().equals(ConstantDescs.INIT_NAME)) {
                    throw new AssertionError();
                }
                Class<?> refcAsSuper = lookupClass();
                do {
                    refcAsSuper = refcAsSuper.getSuperclass();
                    m22 = MethodHandles.IMPL_NAMES.resolveOrNull(refKind, new MemberName(refcAsSuper, method.getName(), method.getMethodType(), (byte) 7), lookupClassOrNull(), this.allowedModes);
                    if (m22 != null) {
                        break;
                    }
                } while (refc != refcAsSuper);
                if (m22 == null) {
                    throw new InternalError(method.toString());
                }
                method = m22;
                refc = refcAsSuper;
                checkMethod(refKind, refc, method);
            }
            DirectMethodHandle dmh = DirectMethodHandle.make(refKind, refc, method, lookupClass());
            MethodHandle mh2 = dmh;
            if ((doRestrict && refKind == 7) || (MethodHandleNatives.refKindHasReceiver(refKind) && restrictProtectedReceiver(method) && !isArrayClone(refKind, refc, method))) {
                mh2 = restrictReceiver(method, dmh, lookupClass());
            }
            return maybeBindCaller(method, mh2, boundCaller).setVarargs(method);
        }

        private MethodHandle maybeBindCaller(MemberName method, MethodHandle mh2, Lookup boundCaller) throws IllegalAccessException {
            if (boundCaller.allowedModes == -1 || !MethodHandleNatives.isCallerSensitive(method)) {
                return mh2;
            }
            if ((boundCaller.lookupModes() & 64) == 0) {
                throw new IllegalAccessException("Attempt to lookup caller-sensitive method using restricted lookup object");
            }
            if (!$assertionsDisabled && !boundCaller.hasFullPrivilegeAccess()) {
                throw new AssertionError();
            }
            MethodHandle cbmh = MethodHandleImpl.bindCaller(mh2, boundCaller.lookupClass);
            return cbmh;
        }

        private MethodHandle getDirectField(byte refKind, Class<?> refc, MemberName field) throws IllegalAccessException {
            return getDirectFieldCommon(refKind, refc, field);
        }

        private MethodHandle getDirectFieldCommon(byte refKind, Class<?> refc, MemberName field) throws IllegalAccessException {
            checkField(refKind, refc, field);
            DirectMethodHandle dmh = DirectMethodHandle.make(refc, field);
            boolean doRestrict = MethodHandleNatives.refKindHasReceiver(refKind) && restrictProtectedReceiver(field);
            if (doRestrict) {
                return restrictReceiver(field, dmh, lookupClass());
            }
            return dmh;
        }

        private VarHandle getFieldVarHandle(byte getRefKind, byte putRefKind, Class<?> refc, MemberName getField, MemberName putField) throws IllegalAccessException {
            return getFieldVarHandleCommon(getRefKind, putRefKind, refc, getField, putField);
        }

        private VarHandle getFieldVarHandleCommon(byte getRefKind, byte putRefKind, Class<?> refc, MemberName getField, MemberName putField) throws IllegalAccessException {
            if (!$assertionsDisabled && getField.isStatic() != putField.isStatic()) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && (!getField.isGetter() || !putField.isSetter())) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && MethodHandleNatives.refKindIsStatic(getRefKind) != MethodHandleNatives.refKindIsStatic(putRefKind)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && (!MethodHandleNatives.refKindIsGetter(getRefKind) || !MethodHandleNatives.refKindIsSetter(putRefKind))) {
                throw new AssertionError();
            }
            checkField(getRefKind, refc, getField);
            if (!putField.isFinal()) {
                checkField(putRefKind, refc, putField);
            }
            boolean doRestrict = MethodHandleNatives.refKindHasReceiver(getRefKind) && restrictProtectedReceiver(getField);
            if (doRestrict) {
                if (!$assertionsDisabled && getField.isStatic()) {
                    throw new AssertionError();
                }
                if (!getField.getDeclaringClass().isAssignableFrom(lookupClass())) {
                    throw getField.makeAccessException("caller class must be a subclass below the method", lookupClass());
                }
                refc = lookupClass();
            }
            return VarHandles.makeFieldHandle(getField, refc, this.allowedModes == -1 && !getField.isTrustedFinalField());
        }

        private MethodHandle getDirectConstructor(Class<?> refc, MemberName ctor) throws IllegalAccessException {
            return getDirectConstructorCommon(refc, ctor);
        }

        private MethodHandle getDirectConstructorCommon(Class<?> refc, MemberName ctor) throws IllegalAccessException {
            if (!$assertionsDisabled && !ctor.isConstructor()) {
                throw new AssertionError();
            }
            checkAccess((byte) 8, refc, ctor);
            if ($assertionsDisabled || !MethodHandleNatives.isCallerSensitive(ctor)) {
                return DirectMethodHandle.make(ctor).setVarargs(ctor);
            }
            throw new AssertionError();
        }

        public MethodHandle linkMethodHandleConstant(byte refKind, Class<?> defc, String name, Object type) throws ReflectiveOperationException {
            MethodHandle mh2;
            if (!(type instanceof Class) && !(type instanceof MethodType)) {
                throw new InternalError("unresolved MemberName");
            }
            MemberName member = new MemberName(refKind, defc, name, type);
            MethodHandle mh3 = LOOKASIDE_TABLE.get(member);
            if (mh3 != null) {
                checkSymbolicClass(defc);
                return mh3;
            }
            if (defc == MethodHandle.class && refKind == 5) {
                MethodHandle mh4 = findVirtualForMH(member.getName(), member.getMethodType());
                if (mh4 != null) {
                    return mh4;
                }
            } else if (defc == VarHandle.class && refKind == 5 && (mh2 = findVirtualForVH(member.getName(), member.getMethodType())) != null) {
                return mh2;
            }
            MemberName resolved = resolveOrFail(refKind, member);
            MethodHandle mh5 = getDirectMethodForConstant(refKind, defc, resolved);
            if (mh5 instanceof DirectMethodHandle) {
                DirectMethodHandle dmh = (DirectMethodHandle) mh5;
                if (canBeCached(refKind, defc, resolved)) {
                    MemberName key = mh5.internalMemberName();
                    if (key != null) {
                        key = key.asNormalOriginal();
                    }
                    if (member.equals(key)) {
                        LOOKASIDE_TABLE.put(key, dmh);
                    }
                }
            }
            return mh5;
        }

        private boolean canBeCached(byte refKind, Class<?> defc, MemberName member) {
            if (refKind == 7 || !Modifier.isPublic(defc.getModifiers()) || !Modifier.isPublic(member.getDeclaringClass().getModifiers()) || !member.isPublic() || member.isCallerSensitive()) {
                return false;
            }
            ClassLoader loader = defc.getClassLoader();
            if (loader != null) {
                ClassLoader sysl = ClassLoader.getSystemClassLoader();
                boolean found = false;
                while (true) {
                    if (sysl == null) {
                        break;
                    }
                    if (loader == sysl) {
                        found = true;
                        break;
                    }
                    sysl = sysl.getParent();
                }
                if (!found) {
                    return false;
                }
            }
            MemberName resolved2 = MethodHandles.publicLookup().resolveOrNull(refKind, new MemberName(refKind, defc, member.getName(), member.getType()));
            if (resolved2 == null) {
                return false;
            }
            return true;
        }

        private MethodHandle getDirectMethodForConstant(byte refKind, Class<?> defc, MemberName member) throws ReflectiveOperationException {
            if (MethodHandleNatives.refKindIsField(refKind)) {
                return getDirectField(refKind, defc, member);
            }
            if (MethodHandleNatives.refKindIsMethod(refKind)) {
                return getDirectMethod(refKind, defc, member, findBoundCallerLookup(member));
            }
            if (refKind == 8) {
                return getDirectConstructor(defc, member);
            }
            throw MethodHandleStatics.newIllegalArgumentException("bad MethodHandle constant #" + ((Object) member));
        }
    }

    public static MethodHandle arrayConstructor(Class<?> arrayClass) throws IllegalArgumentException {
        if (!arrayClass.isArray()) {
            throw MethodHandleStatics.newIllegalArgumentException("not an array class: " + arrayClass.getName());
        }
        MethodHandle ani = MethodHandleImpl.getConstantHandle(7).bindTo(arrayClass.getComponentType());
        return ani.asType(ani.type().changeReturnType(arrayClass));
    }

    public static MethodHandle arrayLength(Class<?> arrayClass) throws IllegalArgumentException {
        return MethodHandleImpl.makeArrayElementAccessor(arrayClass, MethodHandleImpl.ArrayAccess.LENGTH);
    }

    public static MethodHandle arrayElementGetter(Class<?> arrayClass) throws IllegalArgumentException {
        return MethodHandleImpl.makeArrayElementAccessor(arrayClass, MethodHandleImpl.ArrayAccess.GET);
    }

    public static MethodHandle arrayElementSetter(Class<?> arrayClass) throws IllegalArgumentException {
        return MethodHandleImpl.makeArrayElementAccessor(arrayClass, MethodHandleImpl.ArrayAccess.SET);
    }

    public static VarHandle arrayElementVarHandle(Class<?> arrayClass) throws IllegalArgumentException {
        return VarHandles.makeArrayElementHandle(arrayClass);
    }

    public static VarHandle byteArrayViewVarHandle(Class<?> viewArrayClass, ByteOrder byteOrder) throws IllegalArgumentException {
        Objects.requireNonNull(byteOrder);
        return VarHandles.byteArrayViewHandle(viewArrayClass, byteOrder == ByteOrder.BIG_ENDIAN);
    }

    public static VarHandle byteBufferViewVarHandle(Class<?> viewArrayClass, ByteOrder byteOrder) throws IllegalArgumentException {
        Objects.requireNonNull(byteOrder);
        return VarHandles.makeByteBufferViewHandle(viewArrayClass, byteOrder == ByteOrder.BIG_ENDIAN);
    }

    public static MethodHandle spreadInvoker(MethodType type, int leadingArgCount) {
        if (leadingArgCount < 0 || leadingArgCount > type.parameterCount()) {
            throw MethodHandleStatics.newIllegalArgumentException("bad argument count", Integer.valueOf(leadingArgCount));
        }
        return type.asSpreaderType(Object[].class, leadingArgCount, type.parameterCount() - leadingArgCount).invokers().spreadInvoker(leadingArgCount);
    }

    public static MethodHandle exactInvoker(MethodType type) {
        return type.invokers().exactInvoker();
    }

    public static MethodHandle invoker(MethodType type) {
        return type.invokers().genericInvoker();
    }

    public static MethodHandle varHandleExactInvoker(VarHandle.AccessMode accessMode, MethodType type) {
        return type.invokers().varHandleMethodExactInvoker(accessMode);
    }

    public static MethodHandle varHandleInvoker(VarHandle.AccessMode accessMode, MethodType type) {
        return type.invokers().varHandleMethodInvoker(accessMode);
    }

    public static MethodHandle basicInvoker(MethodType type) {
        return type.invokers().basicInvoker();
    }

    public static MethodHandle explicitCastArguments(MethodHandle target, MethodType newType) {
        explicitCastArgumentsChecks(target, newType);
        MethodType oldType = target.type();
        if (oldType == newType) {
            return target;
        }
        if (oldType.explicitCastEquivalentToAsType(newType)) {
            return target.asFixedArity().asType(newType);
        }
        return MethodHandleImpl.makePairwiseConvert(target, newType, false);
    }

    private static void explicitCastArgumentsChecks(MethodHandle target, MethodType newType) {
        if (target.type().parameterCount() != newType.parameterCount()) {
            throw new WrongMethodTypeException("cannot explicitly cast " + ((Object) target) + " to " + ((Object) newType));
        }
    }

    public static MethodHandle permuteArguments(MethodHandle target, MethodType newType, int... reorder) {
        int[] reorder2 = (int[]) reorder.clone();
        MethodType oldType = target.type();
        permuteArgumentChecks(reorder2, newType, oldType);
        BoundMethodHandle result = target.rebind();
        LambdaForm form = result.form;
        int newArity = newType.parameterCount();
        while (true) {
            int ddIdx = findFirstDupOrDrop(reorder2, newArity);
            if (ddIdx != 0) {
                if (ddIdx > 0) {
                    int srcPos = ddIdx;
                    int dstPos = srcPos;
                    int dupVal = reorder2[srcPos];
                    boolean killFirst = false;
                    while (true) {
                        dstPos--;
                        int val = reorder2[dstPos];
                        if (val == dupVal) {
                            break;
                        }
                        if (dupVal > val) {
                            killFirst = true;
                        }
                    }
                    if (!killFirst) {
                        srcPos = dstPos;
                        dstPos = ddIdx;
                    }
                    form = form.editor().dupArgumentForm(1 + srcPos, 1 + dstPos);
                    if (!$assertionsDisabled && reorder2[srcPos] != reorder2[dstPos]) {
                        throw new AssertionError();
                    }
                    oldType = oldType.dropParameterTypes(dstPos, dstPos + 1);
                    int tailPos = dstPos + 1;
                    System.arraycopy(reorder2, tailPos, reorder2, dstPos, reorder2.length - tailPos);
                    reorder2 = Arrays.copyOf(reorder2, reorder2.length - 1);
                } else {
                    int dropVal = ddIdx ^ (-1);
                    int insPos = 0;
                    while (insPos < reorder2.length && reorder2[insPos] < dropVal) {
                        insPos++;
                    }
                    Class<?> ptype = newType.parameterType(dropVal);
                    form = form.editor().addArgumentForm(1 + insPos, LambdaForm.BasicType.basicType(ptype));
                    oldType = oldType.insertParameterTypes(insPos, ptype);
                    int tailPos2 = insPos + 1;
                    reorder2 = Arrays.copyOf(reorder2, reorder2.length + 1);
                    System.arraycopy(reorder2, insPos, reorder2, tailPos2, reorder2.length - tailPos2);
                    reorder2[insPos] = dropVal;
                }
                if (!$assertionsDisabled && !permuteArgumentChecks(reorder2, newType, oldType)) {
                    throw new AssertionError();
                }
            } else {
                if (!$assertionsDisabled && reorder2.length != newArity) {
                    throw new AssertionError();
                }
                LambdaForm form2 = form.editor().permuteArgumentsForm(1, reorder2);
                if (newType == result.type() && form2 == result.internalForm()) {
                    return result;
                }
                return result.copyWith(newType, form2);
            }
        }
    }

    private static int findFirstDupOrDrop(int[] reorder, int newArity) {
        if (newArity < 63) {
            long mask = 0;
            for (int i10 = 0; i10 < reorder.length; i10++) {
                int arg = reorder[i10];
                if (arg >= newArity) {
                    return reorder.length;
                }
                long bit = 1 << arg;
                if ((mask & bit) != 0) {
                    return i10;
                }
                mask |= bit;
            }
            if (mask == (1 << newArity) - 1) {
                if ($assertionsDisabled || Long.numberOfTrailingZeros(Long.lowestOneBit(mask ^ (-1))) == newArity) {
                    return 0;
                }
                throw new AssertionError();
            }
            long zeroBit = Long.lowestOneBit(mask ^ (-1));
            int zeroPos = Long.numberOfTrailingZeros(zeroBit);
            if (!$assertionsDisabled && zeroPos > newArity) {
                throw new AssertionError();
            }
            if (zeroPos == newArity) {
                return 0;
            }
            return zeroPos ^ (-1);
        }
        BitSet mask2 = new BitSet(newArity);
        for (int i11 = 0; i11 < reorder.length; i11++) {
            int arg2 = reorder[i11];
            if (arg2 >= newArity) {
                return reorder.length;
            }
            if (mask2.get(arg2)) {
                return i11;
            }
            mask2.set(arg2);
        }
        int zeroPos2 = mask2.nextClearBit(0);
        if (!$assertionsDisabled && zeroPos2 > newArity) {
            throw new AssertionError();
        }
        if (zeroPos2 == newArity) {
            return 0;
        }
        return zeroPos2 ^ (-1);
    }

    public static boolean permuteArgumentChecks(int[] reorder, MethodType newType, MethodType oldType) {
        if (newType.returnType() != oldType.returnType()) {
            throw MethodHandleStatics.newIllegalArgumentException("return types do not match", oldType, newType);
        }
        if (reorder.length != oldType.parameterCount()) {
            throw MethodHandleStatics.newIllegalArgumentException("old type parameter count and reorder array length do not match", oldType, Arrays.toString(reorder));
        }
        int limit = newType.parameterCount();
        for (int j10 = 0; j10 < reorder.length; j10++) {
            int i10 = reorder[j10];
            if (i10 < 0 || i10 >= limit) {
                throw MethodHandleStatics.newIllegalArgumentException("index is out of bounds for new type", Integer.valueOf(i10), newType);
            }
            Class<?> src = newType.parameterType(i10);
            Class<?> dst = oldType.parameterType(j10);
            if (src != dst) {
                throw MethodHandleStatics.newIllegalArgumentException("parameter types do not match after reorder", oldType, newType);
            }
        }
        return true;
    }

    public static MethodHandle constant(Class<?> type, Object value) {
        if (Objects.requireNonNull(type) == Void.TYPE) {
            throw MethodHandleStatics.newIllegalArgumentException("void type");
        }
        return MethodHandleImpl.makeConstantReturning(type, value);
    }

    public static MethodHandle identity(Class<?> type) {
        Wrapper btw = type.isPrimitive() ? Wrapper.forPrimitiveType(type) : Wrapper.OBJECT;
        int pos = btw.ordinal();
        MethodHandle ident = IDENTITY_MHS[pos];
        if (ident == null) {
            ident = setCachedMethodHandle(IDENTITY_MHS, pos, makeIdentity(btw.primitiveType()));
        }
        if (ident.type().returnType() == type) {
            return ident;
        }
        if ($assertionsDisabled || btw == Wrapper.OBJECT) {
            return makeIdentity(type);
        }
        throw new AssertionError();
    }

    public static MethodHandle zero(Class<?> type) {
        Objects.requireNonNull(type);
        return type.isPrimitive() ? primitiveZero(Wrapper.forPrimitiveType(type)) : MethodHandleImpl.makeConstantReturning(type, null);
    }

    private static MethodHandle identityOrVoid(Class<?> type) {
        return type == Void.TYPE ? zero(type) : identity(type);
    }

    public static MethodHandle empty(MethodType type) {
        Objects.requireNonNull(type);
        return dropArgumentsTrusted(zero(type.returnType()), 0, type.ptypes());
    }

    private static MethodHandle makeIdentity(Class<?> ptype) {
        MethodType mtype = MethodType.methodType(ptype, ptype);
        LambdaForm lform = LambdaForm.identityForm(LambdaForm.BasicType.basicType(ptype));
        return MethodHandleImpl.makeIntrinsic(mtype, lform, MethodHandleImpl.Intrinsic.IDENTITY);
    }

    private static MethodHandle primitiveZero(Wrapper w10) {
        if (!$assertionsDisabled && w10 == Wrapper.OBJECT) {
            throw new AssertionError(w10);
        }
        int pos = w10.ordinal();
        MethodHandle mh2 = PRIMITIVE_ZERO_MHS[pos];
        if (mh2 == null) {
            mh2 = setCachedMethodHandle(PRIMITIVE_ZERO_MHS, pos, makePrimitiveZero(w10));
        }
        if ($assertionsDisabled || mh2.type().returnType() == w10.primitiveType()) {
            return mh2;
        }
        throw new AssertionError(mh2);
    }

    private static MethodHandle makePrimitiveZero(Wrapper w10) {
        if (w10 == Wrapper.VOID) {
            LambdaForm lf2 = LambdaForm.identityForm(LambdaForm.BasicType.V_TYPE);
            return SimpleMethodHandle.make(MethodType.methodType(Void.TYPE), lf2);
        }
        return MethodHandleImpl.makeConstantReturning(w10.primitiveType(), w10.zero());
    }

    private static synchronized MethodHandle setCachedMethodHandle(MethodHandle[] cache, int pos, MethodHandle value) {
        MethodHandle prev = cache[pos];
        if (prev != null) {
            return prev;
        }
        cache[pos] = value;
        return value;
    }

    public static MethodHandle insertArguments(MethodHandle target, int pos, Object... values) {
        BoundMethodHandle bindArgumentL;
        int insCount = values.length;
        Class<?>[] ptypes = insertArgumentsChecks(target, insCount, pos);
        if (insCount == 0) {
            return target;
        }
        BoundMethodHandle result = target.rebind();
        for (int i10 = 0; i10 < insCount; i10++) {
            Object value = values[i10];
            Class<?> ptype = ptypes[pos + i10];
            if (ptype.isPrimitive()) {
                bindArgumentL = insertArgumentPrimitive(result, pos, ptype, value);
            } else {
                bindArgumentL = result.bindArgumentL(pos, ptype.cast(value));
            }
            result = bindArgumentL;
        }
        return result;
    }

    private static BoundMethodHandle insertArgumentPrimitive(BoundMethodHandle result, int pos, Class<?> ptype, Object value) {
        Wrapper w10 = Wrapper.forPrimitiveType(ptype);
        Object value2 = w10.convert(value, ptype);
        switch (AnonymousClass1.$SwitchMap$sun$invoke$util$Wrapper[w10.ordinal()]) {
            case 1:
                return result.bindArgumentI(pos, ((Integer) value2).intValue());
            case 2:
                return result.bindArgumentJ(pos, ((Long) value2).longValue());
            case 3:
                return result.bindArgumentF(pos, ((Float) value2).floatValue());
            case 4:
                return result.bindArgumentD(pos, ((Double) value2).doubleValue());
            default:
                return result.bindArgumentI(pos, ValueConversions.widenSubword(value2));
        }
    }

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$sun$invoke$util$Wrapper = new int[Wrapper.values().length];

        static {
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$sun$invoke$util$Wrapper[Wrapper.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    private static Class<?>[] insertArgumentsChecks(MethodHandle target, int insCount, int pos) throws RuntimeException {
        MethodType oldType = target.type();
        int outargs = oldType.parameterCount();
        int inargs = outargs - insCount;
        if (inargs < 0) {
            throw MethodHandleStatics.newIllegalArgumentException("too many values to insert");
        }
        if (pos < 0 || pos > inargs) {
            throw MethodHandleStatics.newIllegalArgumentException("no argument type to append");
        }
        return oldType.ptypes();
    }

    public static MethodHandle dropArguments(MethodHandle target, int pos, List<Class<?>> valueTypes) {
        return dropArgumentsTrusted(target, pos, (Class[]) ((Class[]) valueTypes.toArray(new Class[0])).clone());
    }

    public static MethodHandle dropArgumentsTrusted(MethodHandle target, int pos, Class<?>[] valueTypes) {
        MethodType oldType = target.type();
        int dropped = dropArgumentChecks(oldType, pos, valueTypes);
        MethodType newType = oldType.insertParameterTypes(pos, valueTypes);
        if (dropped == 0) {
            return target;
        }
        BoundMethodHandle result = target.rebind();
        LambdaForm lform = result.form;
        int insertFormArg = 1 + pos;
        for (Class<?> ptype : valueTypes) {
            int i10 = insertFormArg;
            insertFormArg++;
            lform = lform.editor().addArgumentForm(i10, LambdaForm.BasicType.basicType(ptype));
        }
        return result.copyWith(newType, lform);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int dropArgumentChecks(MethodType oldType, int pos, Class<?>[] valueTypes) {
        int dropped = valueTypes.length;
        MethodType.checkSlotCount(dropped);
        int outargs = oldType.parameterCount();
        int inargs = outargs + dropped;
        if (pos < 0 || pos > outargs) {
            throw MethodHandleStatics.newIllegalArgumentException("no argument type to remove" + ((Object) Arrays.asList(oldType, Integer.valueOf(pos), valueTypes, Integer.valueOf(inargs), Integer.valueOf(outargs))));
        }
        return dropped;
    }

    public static MethodHandle dropArguments(MethodHandle target, int pos, Class<?>... valueTypes) {
        return dropArgumentsTrusted(target, pos, (Class[]) valueTypes.clone());
    }

    public static MethodHandle dropArguments(MethodHandle target, int pos, Class<?> valueType1) {
        return dropArgumentsTrusted(target, pos, new Class[]{valueType1});
    }

    public static MethodHandle dropArguments(MethodHandle target, int pos, Class<?> valueType1, Class<?> valueType2) {
        return dropArgumentsTrusted(target, pos, new Class[]{valueType1, valueType2});
    }

    private static MethodHandle dropArgumentsToMatch(MethodHandle target, int skip, Class<?>[] newTypes, int pos, boolean nullOnFailure) {
        Class<?>[] oldTypes = target.type().ptypes();
        int match = oldTypes.length;
        if (skip != 0) {
            if (skip < 0 || skip > match) {
                throw MethodHandleStatics.newIllegalArgumentException("illegal skip", Integer.valueOf(skip), target);
            }
            oldTypes = (Class[]) Arrays.copyOfRange(oldTypes, skip, match);
            match -= skip;
        }
        Class<?>[] addTypes = newTypes;
        int add = addTypes.length;
        if (pos != 0) {
            if (pos < 0 || pos > add) {
                throw MethodHandleStatics.newIllegalArgumentException("illegal pos", Integer.valueOf(pos), Arrays.toString(newTypes));
            }
            addTypes = (Class[]) Arrays.copyOfRange(addTypes, pos, add);
            add -= pos;
            if (!$assertionsDisabled && addTypes.length != add) {
                throw new AssertionError();
            }
        }
        if (match > add || !Arrays.equals(oldTypes, 0, oldTypes.length, addTypes, 0, match)) {
            if (nullOnFailure) {
                return null;
            }
            throw MethodHandleStatics.newIllegalArgumentException("argument lists do not match", Arrays.toString(oldTypes), Arrays.toString(newTypes));
        }
        Class<?>[] addTypes2 = (Class[]) Arrays.copyOfRange(addTypes, match, add);
        int add2 = add - match;
        if (!$assertionsDisabled && addTypes2.length != add2) {
            throw new AssertionError();
        }
        MethodHandle adapter = target;
        if (add2 > 0) {
            adapter = dropArgumentsTrusted(adapter, skip + match, addTypes2);
        }
        if (pos > 0) {
            adapter = dropArgumentsTrusted(adapter, skip, (Class[]) Arrays.copyOfRange(newTypes, 0, pos));
        }
        return adapter;
    }

    public static MethodHandle dropArgumentsToMatch(MethodHandle target, int skip, List<Class<?>> newTypes, int pos) {
        Objects.requireNonNull(target);
        Objects.requireNonNull(newTypes);
        return dropArgumentsToMatch(target, skip, (Class[]) ((Class[]) newTypes.toArray(new Class[0])).clone(), pos, false);
    }

    public static MethodHandle dropReturn(MethodHandle target) {
        Objects.requireNonNull(target);
        MethodType oldType = target.type();
        Class<?> oldReturnType = oldType.returnType();
        if (oldReturnType == Void.TYPE) {
            return target;
        }
        MethodType newType = oldType.changeReturnType((Class<?>) Void.TYPE);
        BoundMethodHandle result = target.rebind();
        LambdaForm lform = result.editor().filterReturnForm(LambdaForm.BasicType.V_TYPE, true);
        return result.copyWith(newType, lform);
    }

    public static MethodHandle filterArguments(MethodHandle target, int pos, MethodHandle... filters) {
        filterArgumentsCheckArity(target, pos, filters);
        MethodHandle adapter = target;
        int index = 0;
        int[] positions = new int[filters.length];
        MethodHandle filter = null;
        for (int i10 = filters.length - 1; i10 >= 0; i10--) {
            MethodHandle newFilter = filters[i10];
            if (newFilter != null) {
                if (filter != newFilter) {
                    if (filter != null) {
                        if (index > 1) {
                            adapter = filterRepeatedArgument(adapter, filter, Arrays.copyOf(positions, index));
                        } else {
                            adapter = filterArgument(adapter, positions[0] - 1, filter);
                        }
                    }
                    filter = newFilter;
                    index = 0;
                }
                filterArgumentChecks(target, pos + i10, newFilter);
                int i11 = index;
                index++;
                positions[i11] = pos + i10 + 1;
            }
        }
        if (index > 1) {
            adapter = filterRepeatedArgument(adapter, filter, Arrays.copyOf(positions, index));
        } else if (index == 1) {
            adapter = filterArgument(adapter, positions[0] - 1, filter);
        }
        return adapter;
    }

    private static MethodHandle filterRepeatedArgument(MethodHandle adapter, MethodHandle filter, int[] positions) {
        MethodType targetType = adapter.type();
        MethodType filterType = filter.type();
        BoundMethodHandle result = adapter.rebind();
        Class<?> newParamType = filterType.parameterType(0);
        Class<?>[] ptypes = (Class[]) targetType.ptypes().clone();
        for (int pos : positions) {
            ptypes[pos - 1] = newParamType;
        }
        MethodType newType = MethodType.methodType(targetType.rtype(), ptypes, true);
        LambdaForm lform = result.editor().filterRepeatedArgumentForm(LambdaForm.BasicType.basicType(newParamType), positions);
        return result.copyWithExtendL(newType, lform, filter);
    }

    public static MethodHandle filterArgument(MethodHandle target, int pos, MethodHandle filter) {
        filterArgumentChecks(target, pos, filter);
        MethodType targetType = target.type();
        MethodType filterType = filter.type();
        BoundMethodHandle result = target.rebind();
        Class<?> newParamType = filterType.parameterType(0);
        LambdaForm lform = result.editor().filterArgumentForm(1 + pos, LambdaForm.BasicType.basicType(newParamType));
        MethodType newType = targetType.changeParameterType(pos, newParamType);
        return result.copyWithExtendL(newType, lform, filter);
    }

    private static void filterArgumentsCheckArity(MethodHandle target, int pos, MethodHandle[] filters) {
        MethodType targetType = target.type();
        int maxPos = targetType.parameterCount();
        if (pos + filters.length > maxPos) {
            throw MethodHandleStatics.newIllegalArgumentException("too many filters");
        }
    }

    private static void filterArgumentChecks(MethodHandle target, int pos, MethodHandle filter) throws RuntimeException {
        MethodType targetType = target.type();
        MethodType filterType = filter.type();
        if (filterType.parameterCount() != 1 || filterType.returnType() != targetType.parameterType(pos)) {
            throw MethodHandleStatics.newIllegalArgumentException("target and filter types do not match", targetType, filterType);
        }
    }

    public static MethodHandle collectArguments(MethodHandle target, int pos, MethodHandle filter) {
        MethodType newType = collectArgumentsChecks(target, pos, filter);
        MethodType collectorType = filter.type();
        BoundMethodHandle result = target.rebind();
        LambdaForm lform = result.editor().collectArgumentsForm(1 + pos, collectorType.basicType());
        return result.copyWithExtendL(newType, lform, filter);
    }

    private static MethodType collectArgumentsChecks(MethodHandle target, int pos, MethodHandle filter) throws RuntimeException {
        MethodType targetType = target.type();
        MethodType filterType = filter.type();
        Class<?> rtype = filterType.returnType();
        Class<?>[] filterArgs = filterType.ptypes();
        if (pos < 0 || ((rtype == Void.TYPE && pos > targetType.parameterCount()) || (rtype != Void.TYPE && pos >= targetType.parameterCount()))) {
            throw MethodHandleStatics.newIllegalArgumentException("position is out of range for target", target, Integer.valueOf(pos));
        }
        if (rtype == Void.TYPE) {
            return targetType.insertParameterTypes(pos, filterArgs);
        }
        if (rtype != targetType.parameterType(pos)) {
            throw MethodHandleStatics.newIllegalArgumentException("target and filter types do not match", targetType, filterType);
        }
        return targetType.dropParameterTypes(pos, pos + 1).insertParameterTypes(pos, filterArgs);
    }

    public static MethodHandle filterReturnValue(MethodHandle target, MethodHandle filter) {
        MethodType targetType = target.type();
        MethodType filterType = filter.type();
        filterReturnValueChecks(targetType, filterType);
        BoundMethodHandle result = target.rebind();
        LambdaForm.BasicType rtype = LambdaForm.BasicType.basicType(filterType.returnType());
        LambdaForm lform = result.editor().filterReturnForm(rtype, false);
        MethodType newType = targetType.changeReturnType(filterType.returnType());
        return result.copyWithExtendL(newType, lform, filter);
    }

    private static void filterReturnValueChecks(MethodType targetType, MethodType filterType) throws RuntimeException {
        Class<?> rtype = targetType.returnType();
        int filterValues = filterType.parameterCount();
        if (filterValues == 0) {
            if (rtype == Void.TYPE) {
                return;
            }
        } else if (rtype == filterType.parameterType(0) && filterValues == 1) {
            return;
        }
        throw MethodHandleStatics.newIllegalArgumentException("target and filter types do not match", targetType, filterType);
    }

    public static MethodHandle collectReturnValue(MethodHandle target, MethodHandle filter) {
        MethodType targetType = target.type();
        MethodType filterType = filter.type();
        BoundMethodHandle result = target.rebind();
        LambdaForm lform = result.editor().collectReturnValueForm(filterType.basicType());
        MethodType newType = targetType.changeReturnType(filterType.returnType());
        if (filterType.parameterCount() > 1) {
            for (int i10 = 0; i10 < filterType.parameterCount() - 1; i10++) {
                newType = newType.appendParameterTypes(filterType.parameterType(i10));
            }
        }
        return result.copyWithExtendL(newType, lform, filter);
    }

    public static MethodHandle foldArguments(MethodHandle target, MethodHandle combiner) {
        return foldArguments(target, 0, combiner);
    }

    public static MethodHandle foldArguments(MethodHandle target, int pos, MethodHandle combiner) {
        MethodType targetType = target.type();
        MethodType combinerType = combiner.type();
        Class<?> rtype = foldArgumentChecks(pos, targetType, combinerType);
        BoundMethodHandle result = target.rebind();
        boolean dropResult = rtype == Void.TYPE;
        LambdaForm lform = result.editor().foldArgumentsForm(1 + pos, dropResult, combinerType.basicType());
        MethodType newType = targetType;
        if (!dropResult) {
            newType = newType.dropParameterTypes(pos, pos + 1);
        }
        return result.copyWithExtendL(newType, lform, combiner);
    }

    private static Class<?> foldArgumentChecks(int foldPos, MethodType targetType, MethodType combinerType) {
        int foldArgs = combinerType.parameterCount();
        Class<?> rtype = combinerType.returnType();
        int foldVals = rtype == Void.TYPE ? 0 : 1;
        int afterInsertPos = foldPos + foldVals;
        boolean ok2 = targetType.parameterCount() >= afterInsertPos + foldArgs;
        if (ok2) {
            int i10 = 0;
            while (true) {
                if (i10 >= foldArgs) {
                    break;
                }
                if (combinerType.parameterType(i10) == targetType.parameterType(i10 + afterInsertPos)) {
                    i10++;
                } else {
                    ok2 = false;
                    break;
                }
            }
        }
        if (ok2 && foldVals != 0 && combinerType.returnType() != targetType.parameterType(foldPos)) {
            ok2 = false;
        }
        if (!ok2) {
            throw misMatchedTypes("target and combiner types", targetType, combinerType);
        }
        return rtype;
    }

    public static MethodHandle filterArgumentsWithCombiner(MethodHandle target, int position, MethodHandle combiner, int... argPositions) {
        return argumentsWithCombiner(true, target, position, combiner, argPositions);
    }

    public static MethodHandle foldArgumentsWithCombiner(MethodHandle target, int position, MethodHandle combiner, int... argPositions) {
        return argumentsWithCombiner(false, target, position, combiner, argPositions);
    }

    private static MethodHandle argumentsWithCombiner(boolean filter, MethodHandle target, int position, MethodHandle combiner, int... argPositions) {
        LambdaForm lform;
        MethodType targetType = target.type();
        MethodType combinerType = combiner.type();
        Class<?> rtype = argumentsWithCombinerChecks(position, filter, targetType, combinerType, argPositions);
        BoundMethodHandle result = target.rebind();
        MethodType newType = targetType;
        if (filter) {
            lform = result.editor().filterArgumentsForm(1 + position, combinerType.basicType(), argPositions);
        } else {
            boolean dropResult = rtype == Void.TYPE;
            lform = result.editor().foldArgumentsForm(1 + position, dropResult, combinerType.basicType(), argPositions);
            if (!dropResult) {
                newType = newType.dropParameterTypes(position, position + 1);
            }
        }
        return result.copyWithExtendL(newType, lform, combiner);
    }

    private static Class<?> argumentsWithCombinerChecks(int position, boolean filter, MethodType targetType, MethodType combinerType, int... argPos) {
        int combinerArgs = combinerType.parameterCount();
        if (argPos.length != combinerArgs) {
            throw MethodHandleStatics.newIllegalArgumentException("combiner and argument map must be equal size", combinerType, Integer.valueOf(argPos.length));
        }
        Class<?> rtype = combinerType.returnType();
        for (int i10 = 0; i10 < combinerArgs; i10++) {
            int arg = argPos[i10];
            if (arg < 0 || arg > targetType.parameterCount()) {
                throw MethodHandleStatics.newIllegalArgumentException("arg outside of target parameterRange", targetType, Integer.valueOf(arg));
            }
            if (combinerType.parameterType(i10) != targetType.parameterType(arg)) {
                throw MethodHandleStatics.newIllegalArgumentException("target argument type at position " + arg + " must match combiner argument type at index " + i10 + ": " + ((Object) targetType) + " -> " + ((Object) combinerType) + ", map: " + Arrays.toString(argPos));
            }
        }
        if (filter && combinerType.returnType() != targetType.parameterType(position)) {
            throw misMatchedTypes("target and combiner types", targetType, combinerType);
        }
        return rtype;
    }

    public static MethodHandle guardWithTest(MethodHandle test, MethodHandle target, MethodHandle fallback) {
        MethodType gtype = test.type();
        MethodType ttype = target.type();
        MethodType ftype = fallback.type();
        if (!ttype.equals((Object) ftype)) {
            throw misMatchedTypes("target and fallback types", ttype, ftype);
        }
        if (gtype.returnType() != Boolean.TYPE) {
            throw MethodHandleStatics.newIllegalArgumentException("guard type is not a predicate " + ((Object) gtype));
        }
        MethodHandle test2 = dropArgumentsToMatch(test, 0, ttype.ptypes(), 0, true);
        if (test2 == null) {
            throw misMatchedTypes("target and test types", ttype, gtype);
        }
        return MethodHandleImpl.makeGuardWithTest(test2, target, fallback);
    }

    static <T> RuntimeException misMatchedTypes(String what, T t12, T t22) {
        return MethodHandleStatics.newIllegalArgumentException(what + " must match: " + ((Object) t12) + " != " + ((Object) t22));
    }

    public static MethodHandle catchException(MethodHandle target, Class<? extends Throwable> exType, MethodHandle handler) {
        MethodType ttype = target.type();
        MethodType htype = handler.type();
        if (!Throwable.class.isAssignableFrom(exType)) {
            throw new ClassCastException(exType.getName());
        }
        if (htype.parameterCount() < 1 || !htype.parameterType(0).isAssignableFrom(exType)) {
            throw MethodHandleStatics.newIllegalArgumentException("handler does not accept exception type " + ((Object) exType));
        }
        if (htype.returnType() != ttype.returnType()) {
            throw misMatchedTypes("target and handler return types", ttype, htype);
        }
        MethodHandle handler2 = dropArgumentsToMatch(handler, 1, ttype.ptypes(), 0, true);
        if (handler2 == null) {
            throw misMatchedTypes("target and handler types", ttype, htype);
        }
        return MethodHandleImpl.makeGuardWithCatch(target, exType, handler2);
    }

    public static MethodHandle throwException(Class<?> returnType, Class<? extends Throwable> exType) {
        if (!Throwable.class.isAssignableFrom(exType)) {
            throw new ClassCastException(exType.getName());
        }
        return MethodHandleImpl.throwException(MethodType.methodType(returnType, exType));
    }

    public static MethodHandle loop(MethodHandle[]... clauses) {
        loopChecks0(clauses);
        List<MethodHandle> init = new ArrayList<>();
        List<MethodHandle> step = new ArrayList<>();
        List<MethodHandle> pred = new ArrayList<>();
        List<MethodHandle> fini = new ArrayList<>();
        Stream.of((Object[]) clauses).filter(c10 -> {
            return Stream.of((Object[]) c10).anyMatch((v0) -> {
                return Objects.nonNull(v0);
            });
        }).forEach(clause -> {
            init.add(clause[0]);
            step.add(clause.length <= 1 ? null : clause[1]);
            pred.add(clause.length <= 2 ? null : clause[2]);
            fini.add(clause.length <= 3 ? null : clause[3]);
        });
        if (!$assertionsDisabled && Stream.of((Object[]) new List[]{init, step, pred, fini}).map((v0) -> {
            return v0.size();
        }).distinct().count() != 1) {
            throw new AssertionError();
        }
        int nclauses = init.size();
        List<Class<?>> iterationVariableTypes = new ArrayList<>();
        for (int i10 = 0; i10 < nclauses; i10++) {
            MethodHandle in2 = init.get(i10);
            MethodHandle st = step.get(i10);
            if (in2 == null && st == null) {
                iterationVariableTypes.add(Void.TYPE);
            } else if (in2 != null && st != null) {
                loopChecks1a(i10, in2, st);
                iterationVariableTypes.add(in2.type().returnType());
            } else {
                iterationVariableTypes.add(in2 == null ? st.type().returnType() : in2.type().returnType());
            }
        }
        List<Class<?>> commonPrefix = iterationVariableTypes.stream().filter(t10 -> {
            return t10 != Void.TYPE;
        }).toList();
        List<Class<?>> commonSuffix = buildCommonSuffix(init, step, pred, fini, commonPrefix.size());
        loopChecks1b(init, commonSuffix);
        Stream<Class<?>> cstream = fini.stream().filter((v0) -> {
            return Objects.nonNull(v0);
        }).map((v0) -> {
            return v0.type();
        }).map((v0) -> {
            return v0.returnType();
        });
        Class<?> loopReturnType = cstream.findFirst().orElse(Void.TYPE);
        loopChecks1cd(pred, fini, loopReturnType);
        List<Class<?>> commonParameterSequence = new ArrayList<>(commonPrefix);
        commonParameterSequence.addAll(commonSuffix);
        loopChecks2(step, pred, fini, commonParameterSequence);
        for (int i11 = 0; i11 < nclauses; i11++) {
            Class<?> t11 = iterationVariableTypes.get(i11);
            if (init.get(i11) == null) {
                init.set(i11, empty(MethodType.methodType(t11, commonSuffix)));
            }
            if (step.get(i11) == null) {
                step.set(i11, dropArgumentsToMatch(identityOrVoid(t11), 0, commonParameterSequence, i11));
            }
            if (pred.get(i11) == null) {
                pred.set(i11, dropArguments(constant(Boolean.TYPE, true), 0, commonParameterSequence));
            }
            if (fini.get(i11) == null) {
                fini.set(i11, empty(MethodType.methodType(t11, commonParameterSequence)));
            }
        }
        List<MethodHandle> finit = fixArities(fillParameterTypes(init, commonSuffix));
        List<MethodHandle> fstep = fixArities(fillParameterTypes(step, commonParameterSequence));
        List<MethodHandle> fpred = fixArities(fillParameterTypes(pred, commonParameterSequence));
        List<MethodHandle> ffini = fixArities(fillParameterTypes(fini, commonParameterSequence));
        if (!$assertionsDisabled && !finit.stream().map((v0) -> {
            return v0.type();
        }).map((v0) -> {
            return v0.parameterList();
        }).allMatch(pl2 -> {
            return pl2.equals(commonSuffix);
        })) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !Stream.of((Object[]) new List[]{fstep, fpred, ffini}).flatMap((v0) -> {
            return v0.stream();
        }).map((v0) -> {
            return v0.type();
        }).map((v0) -> {
            return v0.parameterList();
        }).allMatch(pl3 -> {
            return pl3.equals(commonParameterSequence);
        })) {
            throw new AssertionError();
        }
        return MethodHandleImpl.makeLoop(loopReturnType, commonSuffix, finit, fstep, fpred, ffini);
    }

    private static void loopChecks0(MethodHandle[][] clauses) {
        if (clauses == null || clauses.length == 0) {
            throw MethodHandleStatics.newIllegalArgumentException("null or no clauses passed");
        }
        if (Stream.of((Object[]) clauses).anyMatch((v0) -> {
            return Objects.isNull(v0);
        })) {
            throw MethodHandleStatics.newIllegalArgumentException("null clauses are not allowed");
        }
        if (Stream.of((Object[]) clauses).anyMatch(c10 -> {
            return c10.length > 4;
        })) {
            throw MethodHandleStatics.newIllegalArgumentException("All loop clauses must be represented as MethodHandle arrays with at most 4 elements.");
        }
    }

    private static void loopChecks1a(int i10, MethodHandle in2, MethodHandle st) {
        if (in2.type().returnType() != st.type().returnType()) {
            throw misMatchedTypes("clause " + i10 + ": init and step return types", in2.type().returnType(), st.type().returnType());
        }
    }

    private static List<Class<?>> longestParameterList(Stream<MethodHandle> mhs, int skipSize) {
        return (List) mhs.filter((v0) -> {
            return Objects.nonNull(v0);
        }).map((v0) -> {
            return v0.type();
        }).filter(t10 -> {
            return t10.parameterCount() > skipSize;
        }).max(Comparator.comparingInt((v0) -> {
            return v0.parameterCount();
        })).map(methodType -> {
            return List.of((Class[]) Arrays.copyOfRange(methodType.ptypes(), skipSize, methodType.parameterCount()));
        }).orElse(List.of());
    }

    private static List<Class<?>> buildCommonSuffix(List<MethodHandle> init, List<MethodHandle> step, List<MethodHandle> pred, List<MethodHandle> fini, int cpSize) {
        List<Class<?>> longest1 = longestParameterList(Stream.of((Object[]) new List[]{step, pred, fini}).flatMap((v0) -> {
            return v0.stream();
        }), cpSize);
        List<Class<?>> longest2 = longestParameterList(init.stream(), 0);
        return longest1.size() >= longest2.size() ? longest1 : longest2;
    }

    private static void loopChecks1b(List<MethodHandle> init, List<Class<?>> commonSuffix) {
        if (init.stream().filter((v0) -> {
            return Objects.nonNull(v0);
        }).map((v0) -> {
            return v0.type();
        }).anyMatch(t10 -> {
            return !t10.effectivelyIdenticalParameters(0, commonSuffix);
        })) {
            throw MethodHandleStatics.newIllegalArgumentException("found non-effectively identical init parameter type lists: " + ((Object) init) + " (common suffix: " + ((Object) commonSuffix) + ")");
        }
    }

    private static void loopChecks1cd(List<MethodHandle> pred, List<MethodHandle> fini, Class<?> loopReturnType) {
        if (fini.stream().filter((v0) -> {
            return Objects.nonNull(v0);
        }).map((v0) -> {
            return v0.type();
        }).map((v0) -> {
            return v0.returnType();
        }).anyMatch(t10 -> {
            return t10 != loopReturnType;
        })) {
            throw MethodHandleStatics.newIllegalArgumentException("found non-identical finalizer return types: " + ((Object) fini) + " (return type: " + ((Object) loopReturnType) + ")");
        }
        if (pred.stream().noneMatch((v0) -> {
            return Objects.nonNull(v0);
        })) {
            throw MethodHandleStatics.newIllegalArgumentException("no predicate found", pred);
        }
        if (pred.stream().filter((v0) -> {
            return Objects.nonNull(v0);
        }).map((v0) -> {
            return v0.type();
        }).map((v0) -> {
            return v0.returnType();
        }).anyMatch(t11 -> {
            return t11 != Boolean.TYPE;
        })) {
            throw MethodHandleStatics.newIllegalArgumentException("predicates must have boolean return type", pred);
        }
    }

    private static void loopChecks2(List<MethodHandle> step, List<MethodHandle> pred, List<MethodHandle> fini, List<Class<?>> commonParameterSequence) {
        if (Stream.of((Object[]) new List[]{step, pred, fini}).flatMap((v0) -> {
            return v0.stream();
        }).filter((v0) -> {
            return Objects.nonNull(v0);
        }).map((v0) -> {
            return v0.type();
        }).anyMatch(t10 -> {
            return !t10.effectivelyIdenticalParameters(0, commonParameterSequence);
        })) {
            throw MethodHandleStatics.newIllegalArgumentException("found non-effectively identical parameter type lists:\nstep: " + ((Object) step) + "\npred: " + ((Object) pred) + "\nfini: " + ((Object) fini) + " (common parameter sequence: " + ((Object) commonParameterSequence) + ")");
        }
    }

    private static List<MethodHandle> fillParameterTypes(List<MethodHandle> hs, List<Class<?>> targetParams) {
        return hs.stream().map(h10 -> {
            int pc2 = h10.type().parameterCount();
            int tpsize = targetParams.size();
            return pc2 < tpsize ? dropArguments(h10, pc2, (List<Class<?>>) targetParams.subList(pc2, tpsize)) : h10;
        }).toList();
    }

    private static List<MethodHandle> fixArities(List<MethodHandle> hs) {
        return hs.stream().map((v0) -> {
            return v0.asFixedArity();
        }).toList();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.invoke.MethodHandle[], java.lang.invoke.MethodHandle[][]] */
    public static MethodHandle whileLoop(MethodHandle init, MethodHandle pred, MethodHandle body) {
        whileLoopChecks(init, pred, body);
        MethodHandle fini = identityOrVoid(body.type().returnType());
        MethodHandle[] checkExit = {null, null, pred, fini};
        MethodHandle[] varBody = {init, body};
        return loop(new MethodHandle[]{checkExit, varBody});
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.invoke.MethodHandle[], java.lang.invoke.MethodHandle[][]] */
    public static MethodHandle doWhileLoop(MethodHandle init, MethodHandle body, MethodHandle pred) {
        whileLoopChecks(init, pred, body);
        MethodHandle fini = identityOrVoid(body.type().returnType());
        MethodHandle[] clause = {init, body, pred, fini};
        return loop(new MethodHandle[]{clause});
    }

    private static void whileLoopChecks(MethodHandle init, MethodHandle pred, MethodHandle body) {
        Objects.requireNonNull(pred);
        Objects.requireNonNull(body);
        MethodType bodyType = body.type();
        Class<?> returnType = bodyType.returnType();
        List<Class<?>> innerList = bodyType.parameterList();
        List<Class<?>> outerList = innerList;
        if (returnType != Void.TYPE) {
            if (innerList.isEmpty() || innerList.get(0) != returnType) {
                MethodType expected = bodyType.insertParameterTypes(0, returnType);
                throw misMatchedTypes("body function", bodyType, expected);
            }
            outerList = innerList.subList(1, innerList.size());
        }
        MethodType predType = pred.type();
        if (predType.returnType() != Boolean.TYPE || !predType.effectivelyIdenticalParameters(0, innerList)) {
            throw misMatchedTypes("loop predicate", predType, MethodType.methodType(Boolean.TYPE, innerList));
        }
        if (init != null) {
            MethodType initType = init.type();
            if (initType.returnType() != returnType || !initType.effectivelyIdenticalParameters(0, outerList)) {
                throw misMatchedTypes("loop initializer", initType, MethodType.methodType(returnType, outerList));
            }
        }
    }

    public static MethodHandle countedLoop(MethodHandle iterations, MethodHandle init, MethodHandle body) {
        return countedLoop(empty(iterations.type()), iterations, init, body);
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.invoke.MethodHandle[], java.lang.invoke.MethodHandle[][]] */
    public static MethodHandle countedLoop(MethodHandle start, MethodHandle end, MethodHandle init, MethodHandle body) {
        countedLoopChecks(start, end, init, body);
        Class<?> counterType = start.type().returnType();
        end.type().returnType();
        Class<?> returnType = body.type().returnType();
        MethodHandle incr = MethodHandleImpl.getConstantHandle(3);
        MethodHandle pred = MethodHandleImpl.getConstantHandle(2);
        MethodHandle retv = null;
        if (returnType != Void.TYPE) {
            incr = dropArguments(incr, 1, returnType);
            pred = dropArguments(pred, 1, returnType);
            retv = dropArguments(identity(returnType), 0, counterType);
        }
        MethodHandle body2 = dropArguments(body, 0, counterType);
        MethodHandle[] loopLimit = {end, null, pred, retv};
        MethodHandle[] bodyClause = {init, body2};
        MethodHandle[] indexVar = {start, incr};
        return loop(new MethodHandle[]{loopLimit, bodyClause, indexVar});
    }

    private static void countedLoopChecks(MethodHandle start, MethodHandle end, MethodHandle init, MethodHandle body) {
        Objects.requireNonNull(start);
        Objects.requireNonNull(end);
        Objects.requireNonNull(body);
        Class<?> counterType = start.type().returnType();
        if (counterType != Integer.TYPE) {
            throw misMatchedTypes("start function", start.type(), start.type().changeReturnType((Class<?>) Integer.TYPE));
        }
        if (end.type().returnType() != counterType) {
            throw misMatchedTypes("end function", end.type(), end.type().changeReturnType(counterType));
        }
        MethodType bodyType = body.type();
        Class<?> returnType = bodyType.returnType();
        List<Class<?>> innerList = bodyType.parameterList();
        int vsize = returnType == Void.TYPE ? 0 : 1;
        if (vsize != 0 && (innerList.isEmpty() || innerList.get(0) != returnType)) {
            throw misMatchedTypes("body function", bodyType, bodyType.insertParameterTypes(0, returnType));
        }
        if (innerList.size() <= vsize || innerList.get(vsize) != counterType) {
            throw misMatchedTypes("body function", bodyType, bodyType.insertParameterTypes(vsize, counterType));
        }
        List<Class<?>> outerList = innerList.subList(vsize + 1, innerList.size());
        if (outerList.isEmpty()) {
            outerList = end.type().parameterList();
            bodyType.insertParameterTypes(vsize + 1, outerList).parameterList();
        }
        MethodType expected = MethodType.methodType(counterType, outerList);
        if (!start.type().effectivelyIdenticalParameters(0, outerList)) {
            throw misMatchedTypes("start parameter types", start.type(), expected);
        }
        if (end.type() != start.type() && !end.type().effectivelyIdenticalParameters(0, outerList)) {
            throw misMatchedTypes("end parameter types", end.type(), expected);
        }
        if (init != null) {
            MethodType initType = init.type();
            if (initType.returnType() != returnType || !initType.effectivelyIdenticalParameters(0, outerList)) {
                throw misMatchedTypes("loop initializer", initType, MethodType.methodType(returnType, outerList));
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [java.lang.invoke.MethodHandle[], java.lang.invoke.MethodHandle[][]] */
    public static MethodHandle iteratedLoop(MethodHandle iterator, MethodHandle init, MethodHandle body) {
        MethodType iteratorType;
        MethodHandle startIter;
        Class<?> iterableType = iteratedLoopChecks(iterator, init, body);
        Class<?> returnType = body.type().returnType();
        MethodHandle hasNext = MethodHandleImpl.getConstantHandle(5);
        MethodHandle nextRaw = MethodHandleImpl.getConstantHandle(6);
        if (iterator == null) {
            startIter = MethodHandleImpl.getConstantHandle(4);
            iteratorType = startIter.type().changeParameterType(0, iterableType);
        } else {
            iteratorType = iterator.type().changeReturnType(Iterator.class);
            startIter = iterator;
        }
        Class<?> ttype = body.type().parameterType(returnType == Void.TYPE ? 0 : 1);
        MethodType nextValType = nextRaw.type().changeReturnType(ttype);
        try {
            MethodHandle startIter2 = startIter.asType(iteratorType);
            MethodHandle nextVal = nextRaw.asType(nextValType);
            MethodHandle retv = null;
            MethodHandle step = body;
            if (returnType != Void.TYPE) {
                retv = dropArguments(identity(returnType), 0, (Class<?>) Iterator.class);
                step = swapArguments(body, 0, 1);
            }
            MethodHandle[] iterVar = {startIter2, null, hasNext, retv};
            MethodHandle[] bodyClause = {init, filterArgument(step, 0, nextVal)};
            return loop(new MethodHandle[]{iterVar, bodyClause});
        } catch (WrongMethodTypeException ex) {
            throw new IllegalArgumentException(ex);
        }
    }

    private static Class<?> iteratedLoopChecks(MethodHandle iterator, MethodHandle init, MethodHandle body) {
        Objects.requireNonNull(body);
        MethodType bodyType = body.type();
        Class<?> returnType = bodyType.returnType();
        List<Class<?>> internalParamList = bodyType.parameterList();
        int vsize = returnType == Void.TYPE ? 0 : 1;
        if (vsize != 0 && (internalParamList.isEmpty() || internalParamList.get(0) != returnType)) {
            MethodType expected = bodyType.insertParameterTypes(0, returnType);
            throw misMatchedTypes("body function", bodyType, expected);
        }
        if (internalParamList.size() <= vsize) {
            MethodType expected2 = bodyType.insertParameterTypes(vsize, Object.class);
            throw misMatchedTypes("body function", bodyType, expected2);
        }
        List<Class<?>> externalParamList = internalParamList.subList(vsize + 1, internalParamList.size());
        Class<?> iterableType = null;
        if (iterator != null) {
            if (externalParamList.isEmpty()) {
                externalParamList = iterator.type().parameterList();
            }
            MethodType itype = iterator.type();
            if (!Iterator.class.isAssignableFrom(itype.returnType())) {
                throw MethodHandleStatics.newIllegalArgumentException("iteratedLoop first argument must have Iterator return type");
            }
            if (!itype.effectivelyIdenticalParameters(0, externalParamList)) {
                MethodType expected3 = MethodType.methodType(itype.returnType(), externalParamList);
                throw misMatchedTypes("iterator parameters", itype, expected3);
            }
        } else if (externalParamList.isEmpty()) {
            externalParamList = List.of(Iterable.class);
            iterableType = Iterable.class;
        } else {
            iterableType = externalParamList.get(0);
            if (!Iterable.class.isAssignableFrom(iterableType)) {
                throw MethodHandleStatics.newIllegalArgumentException("inferred first loop argument must inherit from Iterable: " + ((Object) iterableType));
            }
        }
        if (init != null) {
            MethodType initType = init.type();
            if (initType.returnType() != returnType || !initType.effectivelyIdenticalParameters(0, externalParamList)) {
                throw misMatchedTypes("loop initializer", initType, MethodType.methodType(returnType, externalParamList));
            }
        }
        return iterableType;
    }

    static MethodHandle swapArguments(MethodHandle mh2, int i10, int j10) {
        int arity = mh2.type().parameterCount();
        int[] order = new int[arity];
        for (int k10 = 0; k10 < arity; k10++) {
            order[k10] = k10;
        }
        order[i10] = j10;
        order[j10] = i10;
        Class<?>[] types = mh2.type().parameterArray();
        Class<?> ti2 = types[i10];
        types[i10] = types[j10];
        types[j10] = ti2;
        MethodType swapType = MethodType.methodType(mh2.type().returnType(), types);
        return permuteArguments(mh2, swapType, order);
    }

    public static MethodHandle tryFinally(MethodHandle target, MethodHandle cleanup) {
        Class<?>[] targetParamTypes = target.type().ptypes();
        Class<?> rtype = target.type().returnType();
        tryFinallyChecks(target, cleanup);
        MethodHandle cleanup2 = dropArgumentsToMatch(cleanup, rtype == Void.TYPE ? 1 : 2, targetParamTypes, 0, false);
        return MethodHandleImpl.makeTryFinally(target.asFixedArity(), cleanup2.asType(cleanup2.type().changeParameterType(0, Throwable.class)).asFixedArity(), rtype, targetParamTypes);
    }

    private static void tryFinallyChecks(MethodHandle target, MethodHandle cleanup) {
        Class<?> rtype = target.type().returnType();
        if (rtype != cleanup.type().returnType()) {
            throw misMatchedTypes("target and return types", cleanup.type().returnType(), rtype);
        }
        MethodType cleanupType = cleanup.type();
        if (!Throwable.class.isAssignableFrom(cleanupType.parameterType(0))) {
            throw misMatchedTypes("cleanup first argument and Throwable", cleanup.type(), Throwable.class);
        }
        if (rtype != Void.TYPE && cleanupType.parameterType(1) != rtype) {
            throw misMatchedTypes("cleanup second argument and target return type", cleanup.type(), rtype);
        }
        int cleanupArgIndex = rtype == Void.TYPE ? 1 : 2;
        if (!cleanupType.effectivelyIdenticalParameters(cleanupArgIndex, target.type().parameterList())) {
            throw misMatchedTypes("cleanup parameters after (Throwable,result) and target parameter list prefix", cleanup.type(), target.type());
        }
    }

    public static MethodHandle tableSwitch(MethodHandle fallback, MethodHandle... targets) {
        Objects.requireNonNull(fallback);
        Objects.requireNonNull(targets);
        MethodHandle[] targets2 = (MethodHandle[]) targets.clone();
        MethodType type = tableSwitchChecks(fallback, targets2);
        return MethodHandleImpl.makeTableSwitch(type, fallback, targets2);
    }

    private static MethodType tableSwitchChecks(MethodHandle defaultCase, MethodHandle[] caseActions) {
        if (caseActions.length == 0) {
            throw new IllegalArgumentException("Not enough cases: " + Arrays.toString(caseActions));
        }
        MethodType expectedType = defaultCase.type();
        if (expectedType.parameterCount() < 1 || expectedType.parameterType(0) != Integer.TYPE) {
            throw new IllegalArgumentException("Case actions must have int as leading parameter: " + Arrays.toString(caseActions));
        }
        for (MethodHandle mh2 : caseActions) {
            Objects.requireNonNull(mh2);
            if (mh2.type() != expectedType) {
                throw new IllegalArgumentException("Case actions must have the same type: " + Arrays.toString(caseActions));
            }
        }
        return expectedType;
    }

    public static VarHandle filterValue(VarHandle target, MethodHandle filterToTarget, MethodHandle filterFromTarget) {
        return VarHandles.filterValue(target, filterToTarget, filterFromTarget);
    }

    public static VarHandle filterCoordinates(VarHandle target, int pos, MethodHandle... filters) {
        return VarHandles.filterCoordinates(target, pos, filters);
    }

    public static VarHandle insertCoordinates(VarHandle target, int pos, Object... values) {
        return VarHandles.insertCoordinates(target, pos, values);
    }

    public static VarHandle permuteCoordinates(VarHandle target, List<Class<?>> newCoordinates, int... reorder) {
        return VarHandles.permuteCoordinates(target, newCoordinates, reorder);
    }

    public static VarHandle collectCoordinates(VarHandle target, int pos, MethodHandle filter) {
        return VarHandles.collectCoordinates(target, pos, filter);
    }

    public static VarHandle dropCoordinates(VarHandle target, int pos, Class<?>... valueTypes) {
        return VarHandles.dropCoordinates(target, pos, valueTypes);
    }
}
