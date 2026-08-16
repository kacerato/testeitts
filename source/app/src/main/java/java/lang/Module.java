package java.lang;

import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.classfile.AccessFlags;
import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.ClassFile;
import java.lang.classfile.attribute.RuntimeVisibleAnnotationsAttribute;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.module.Configuration;
import java.lang.module.ModuleDescriptor;
import java.lang.module.ModuleReference;
import java.lang.module.ResolvedModule;
import java.lang.reflect.AccessFlag;
import java.lang.reflect.AnnotatedElement;
import java.lang.runtime.SwitchBootstraps;
import java.net.URI;
import java.net.URL;
import java.security.CodeSource;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jdk.internal.loader.BootLoader;
import jdk.internal.loader.BuiltinClassLoader;
import jdk.internal.loader.ClassLoaders;
import jdk.internal.misc.CDS;
import jdk.internal.misc.Unsafe;
import jdk.internal.misc.VM;
import jdk.internal.module.ModuleBootstrap;
import jdk.internal.module.ModuleLoaderMap;
import jdk.internal.module.Resources;
import jdk.internal.module.ServicesCatalog;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.Reflection;
import jdk.internal.vm.annotation.Stable;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public final class Module implements AnnotatedElement {
    private final ModuleLayer layer;
    private final String name;
    private final ClassLoader loader;
    private final ModuleDescriptor descriptor;

    @Stable
    private boolean enableNativeAccess;
    private static final Module ALL_UNNAMED_MODULE;
    private static final Set<Module> ALL_UNNAMED_MODULE_SET;
    private static final Module EVERYONE_MODULE;
    private static final Set<Module> EVERYONE_SET;
    private volatile Set<Module> reads;
    private volatile Map<String, Set<Module>> openPackages;
    private volatile Map<String, Set<Module>> exportedPackages;
    private volatile Class<?> moduleInfoClass;
    static final boolean $assertionsDisabled;

    private static native void defineModule0(Module module, boolean z10, String str, String str2, Object[] objArr);

    private static native void addReads0(Module module, Module module2);

    private static native void addExports0(Module module, String str, Module module2);

    private static native void addExportsToAll0(Module module, String str);

    private static native void addExportsToAllUnnamed0(Module module, String str);

    static {
        $assertionsDisabled = !Module.class.desiredAssertionStatus();
        ArchivedData archivedData = ArchivedData.get();
        if (archivedData != null) {
            ALL_UNNAMED_MODULE = archivedData.allUnnamedModule;
            ALL_UNNAMED_MODULE_SET = archivedData.allUnnamedModules;
            EVERYONE_MODULE = archivedData.everyoneModule;
            EVERYONE_SET = archivedData.everyoneSet;
            return;
        }
        ALL_UNNAMED_MODULE = new Module(null);
        ALL_UNNAMED_MODULE_SET = Set.of(ALL_UNNAMED_MODULE);
        EVERYONE_MODULE = new Module(null);
        EVERYONE_SET = Set.of(EVERYONE_MODULE);
        ArchivedData.archive();
    }

    public Module(ModuleLayer layer, ClassLoader loader, ModuleDescriptor descriptor, URI uri) {
        this.layer = layer;
        this.name = descriptor.name();
        this.loader = loader;
        this.descriptor = descriptor;
        boolean isOpen = descriptor.isOpen() || descriptor.isAutomatic();
        ModuleDescriptor.Version version = descriptor.version().orElse(null);
        String vs = Objects.toString(version, null);
        String loc = Objects.toString(uri, null);
        Object[] packages = descriptor.packages().toArray();
        defineModule0(this, isOpen, vs, loc, packages);
    }

    public Module(ClassLoader loader) {
        this.layer = null;
        this.name = null;
        this.loader = loader;
        this.descriptor = null;
    }

    Module(ClassLoader loader, ModuleDescriptor descriptor) {
        this.layer = null;
        this.name = descriptor.name();
        this.loader = loader;
        this.descriptor = descriptor;
    }

    public boolean isNamed() {
        return this.name != null;
    }

    public String getName() {
        return this.name;
    }

    public ClassLoader getClassLoader() {
        return this.loader;
    }

    public ModuleDescriptor getDescriptor() {
        return this.descriptor;
    }

    public ModuleLayer getLayer() {
        if (isNamed()) {
            ModuleLayer layer = this.layer;
            if (layer != null) {
                return layer;
            }
            if (this.loader == null && this.name.equals(JRTUtil.JAVA_BASE)) {
                return ModuleLayer.boot();
            }
            return null;
        }
        return null;
    }

    public Module implAddEnableNativeAccess() {
        EnableNativeAccess.trySetEnableNativeAccess(this);
        return this;
    }

    public boolean isNativeAccessEnabled() {
        Module target = moduleForNativeAccess();
        return EnableNativeAccess.isNativeAccessEnabled(target);
    }

    public static final class EnableNativeAccess {
        private static final Unsafe UNSAFE = Unsafe.getUnsafe();
        private static final long FIELD_OFFSET = UNSAFE.objectFieldOffset(Module.class, "enableNativeAccess");

        private EnableNativeAccess() {
        }

        private static boolean isNativeAccessEnabled(Module target) {
            return UNSAFE.getBooleanVolatile(target, FIELD_OFFSET);
        }

        private static boolean trySetEnableNativeAccess(Module target) {
            return UNSAFE.compareAndSetBoolean(target, FIELD_OFFSET, false, true);
        }
    }

    private Module moduleForNativeAccess() {
        return isNamed() ? this : ALL_UNNAMED_MODULE;
    }

    public void ensureNativeAccess(Class<?> owner, String methodName, Class<?> currentClass, boolean jni) {
        CodeSource cs;
        URL url;
        Module target = moduleForNativeAccess();
        ModuleBootstrap.IllegalNativeAccess illegalNativeAccess = ModuleBootstrap.illegalNativeAccess();
        if (illegalNativeAccess != ModuleBootstrap.IllegalNativeAccess.ALLOW && !EnableNativeAccess.isNativeAccessEnabled(target)) {
            String mod = isNamed() ? "module " + getName() : "an unnamed module";
            if (currentClass != null && (cs = currentClass.getProtectionDomain().getCodeSource()) != null && (url = cs.getLocation()) != null) {
                mod = mod + " (" + ((Object) url) + ")";
            }
            if (illegalNativeAccess == ModuleBootstrap.IllegalNativeAccess.DENY) {
                throw new IllegalCallerException("Illegal native access from " + mod);
            }
            if (EnableNativeAccess.trySetEnableNativeAccess(target)) {
                String cls = owner.getName();
                String mtd = cls + "::" + methodName;
                String modflag = isNamed() ? getName() : "ALL-UNNAMED";
                String caller = currentClass != null ? currentClass.getName() : "code";
                if (jni) {
                    VM.initialErr().printf("WARNING: A native method in %s has been bound\nWARNING: %s is declared in %s\nWARNING: Use --enable-native-access=%s to avoid a warning for native methods declared in this module\nWARNING: Restricted methods will be blocked in a future release unless native access is enabled\n%n", cls, mtd, mod, modflag);
                } else {
                    VM.initialErr().printf("WARNING: A restricted method in %s has been called\nWARNING: %s has been called by %s in %s\nWARNING: Use --enable-native-access=%s to avoid a warning for callers in this module\nWARNING: Restricted methods will be blocked in a future release unless native access is enabled\n%n", cls, mtd, caller, mod, modflag);
                }
            }
        }
    }

    public static void implAddEnableNativeAccessToAllUnnamed() {
        EnableNativeAccess.trySetEnableNativeAccess(ALL_UNNAMED_MODULE);
    }

    private static class ArchivedData {
        private static ArchivedData archivedData;
        private final Module allUnnamedModule = Module.ALL_UNNAMED_MODULE;
        private final Set<Module> allUnnamedModules = Module.ALL_UNNAMED_MODULE_SET;
        private final Module everyoneModule = Module.EVERYONE_MODULE;
        private final Set<Module> everyoneSet = Module.EVERYONE_SET;

        private ArchivedData() {
        }

        static void archive() {
            archivedData = new ArchivedData();
        }

        static ArchivedData get() {
            return archivedData;
        }

        static {
            CDS.initializeFromArchive(ArchivedData.class);
        }
    }

    public static class ReflectionData {
        static final WeakPairMap<Module, Module, Boolean> reads = new WeakPairMap<>();
        static final WeakPairMap<Module, Module, Map<String, Boolean>> exports = new WeakPairMap<>();
        static final WeakPairMap<Module, Class<?>, Boolean> uses = new WeakPairMap<>();

        private ReflectionData() {
        }
    }

    public boolean canRead(Module other) {
        Set<Module> reads;
        Objects.requireNonNull(other);
        if (!isNamed() || other == this) {
            return true;
        }
        if ((other.isNamed() && (reads = this.reads) != null && reads.contains(other)) || ReflectionData.reads.containsKeyPair(this, other)) {
            return true;
        }
        if (!other.isNamed() && ReflectionData.reads.containsKeyPair(this, ALL_UNNAMED_MODULE)) {
            return true;
        }
        return false;
    }

    @CallerSensitive
    public Module addReads(Module other) {
        Objects.requireNonNull(other);
        if (isNamed()) {
            Module caller = getCallerModule(Reflection.getCallerClass());
            if (caller != this) {
                throw new IllegalCallerException(((Object) caller) + " != " + ((Object) this));
            }
            implAddReads(other, true);
        }
        return this;
    }

    public void implAddReads(Module other) {
        implAddReads(other, true);
    }

    public void implAddReadsAllUnnamed() {
        implAddReads(ALL_UNNAMED_MODULE, true);
    }

    void implAddReadsNoSync(Module other) {
        implAddReads(other, false);
    }

    private void implAddReads(Module other, boolean syncVM) {
        Objects.requireNonNull(other);
        if (!canRead(other)) {
            if (syncVM) {
                if (other == ALL_UNNAMED_MODULE) {
                    addReads0(this, null);
                } else {
                    addReads0(this, other);
                }
            }
            ReflectionData.reads.putIfAbsent(this, other, Boolean.TRUE);
        }
    }

    public boolean isExported(String pn2, Module other) {
        Objects.requireNonNull(pn2);
        Objects.requireNonNull(other);
        return implIsExportedOrOpen(pn2, other, false);
    }

    public boolean isOpen(String pn2, Module other) {
        Objects.requireNonNull(pn2);
        Objects.requireNonNull(other);
        return implIsExportedOrOpen(pn2, other, true);
    }

    public boolean isExported(String pn2) {
        Objects.requireNonNull(pn2);
        return implIsExportedOrOpen(pn2, EVERYONE_MODULE, false);
    }

    public boolean isOpen(String pn2) {
        Objects.requireNonNull(pn2);
        return implIsExportedOrOpen(pn2, EVERYONE_MODULE, true);
    }

    private boolean implIsExportedOrOpen(String pn2, Module other, boolean open) {
        if (!isNamed()) {
            return true;
        }
        if (other == this && this.descriptor.packages().contains(pn2)) {
            return true;
        }
        if (this.descriptor.isOpen() || this.descriptor.isAutomatic()) {
            return this.descriptor.packages().contains(pn2);
        }
        if (isExplicitlyExportedOrOpened(pn2, other, open) || isReflectivelyExportedOrOpened(pn2, other, open)) {
            return true;
        }
        return false;
    }

    private boolean isExplicitlyExportedOrOpened(String pn2, Module other, boolean open) {
        Map<String, Set<Module>> exportedPackages;
        Map<String, Set<Module>> openPackages = this.openPackages;
        if (openPackages != null && allows(openPackages.get(pn2), other)) {
            return true;
        }
        if (!open && (exportedPackages = this.exportedPackages) != null && allows(exportedPackages.get(pn2), other)) {
            return true;
        }
        return false;
    }

    private boolean allows(Set<Module> targets, Module module) {
        if (targets != null) {
            if (targets.contains(EVERYONE_MODULE)) {
                return true;
            }
            if (module != EVERYONE_MODULE) {
                if (targets.contains(module)) {
                    return true;
                }
                if (!module.isNamed() && targets.contains(ALL_UNNAMED_MODULE)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    private boolean isReflectivelyExportedOrOpened(String pn2, Module other, boolean open) {
        Map<String, Boolean> exports;
        Boolean b10;
        Boolean b11;
        Boolean b12;
        Map<String, Boolean> exports2 = ReflectionData.exports.get(this, EVERYONE_MODULE);
        if (exports2 != null && (b12 = exports2.get(pn2)) != null) {
            boolean isOpen = b12.booleanValue();
            if (!open || isOpen) {
                return true;
            }
        }
        if (other != EVERYONE_MODULE) {
            Map<String, Boolean> exports3 = ReflectionData.exports.get(this, other);
            if (exports3 != null && (b11 = exports3.get(pn2)) != null) {
                boolean isOpen2 = b11.booleanValue();
                if (!open || isOpen2) {
                    return true;
                }
            }
            if (!other.isNamed() && (exports = ReflectionData.exports.get(this, ALL_UNNAMED_MODULE)) != null && (b10 = exports.get(pn2)) != null) {
                boolean isOpen3 = b10.booleanValue();
                return !open || isOpen3;
            }
            return false;
        }
        return false;
    }

    public boolean isReflectivelyExported(String pn2, Module other) {
        return isReflectivelyExportedOrOpened(pn2, other, false);
    }

    public boolean isReflectivelyOpened(String pn2, Module other) {
        return isReflectivelyExportedOrOpened(pn2, other, true);
    }

    @CallerSensitive
    public Module addExports(String pn2, Module other) {
        if (pn2 == null) {
            throw new IllegalArgumentException("package is null");
        }
        Objects.requireNonNull(other);
        if (isNamed()) {
            Module caller = getCallerModule(Reflection.getCallerClass());
            if (caller != this) {
                throw new IllegalCallerException(((Object) caller) + " != " + ((Object) this));
            }
            implAddExportsOrOpens(pn2, other, false, true);
        }
        return this;
    }

    @CallerSensitive
    public Module addOpens(String pn2, Module other) {
        if (pn2 == null) {
            throw new IllegalArgumentException("package is null");
        }
        Objects.requireNonNull(other);
        if (isNamed()) {
            Module caller = getCallerModule(Reflection.getCallerClass());
            if (caller != this && (caller == null || !isOpen(pn2, caller))) {
                throw new IllegalCallerException(pn2 + " is not open to " + ((Object) caller));
            }
            implAddExportsOrOpens(pn2, other, true, true);
        }
        return this;
    }

    public void implAddExports(String pn2) {
        implAddExportsOrOpens(pn2, EVERYONE_MODULE, false, true);
    }

    public void implAddExports(String pn2, Module other) {
        implAddExportsOrOpens(pn2, other, false, true);
    }

    public void implAddExportsToAllUnnamed(String pn2) {
        implAddExportsOrOpens(pn2, ALL_UNNAMED_MODULE, false, true);
    }

    void implAddExportsNoSync(String pn2) {
        implAddExportsOrOpens(pn2.replace('/', '.'), EVERYONE_MODULE, false, false);
    }

    void implAddExportsNoSync(String pn2, Module other) {
        implAddExportsOrOpens(pn2.replace('/', '.'), other, false, false);
    }

    void implAddOpens(String pn2) {
        implAddExportsOrOpens(pn2, EVERYONE_MODULE, true, true);
    }

    public void implAddOpens(String pn2, Module other) {
        implAddExportsOrOpens(pn2, other, true, true);
    }

    public void implAddOpensToAllUnnamed(String pn2) {
        implAddExportsOrOpens(pn2, ALL_UNNAMED_MODULE, true, true);
    }

    private void implAddExportsOrOpens(String pn2, Module other, boolean open, boolean syncVM) {
        Map<String, Set<Module>> packageToTargets;
        Objects.requireNonNull(other);
        Objects.requireNonNull(pn2);
        if (!isNamed() || this.descriptor.isOpen() || this.descriptor.isAutomatic() || implIsExportedOrOpen(pn2, other, open)) {
            return;
        }
        if (!this.descriptor.packages().contains(pn2)) {
            throw new IllegalArgumentException("package " + pn2 + " not in contents");
        }
        if (syncVM) {
            if (other == EVERYONE_MODULE) {
                addExportsToAll0(this, pn2);
            } else if (other == ALL_UNNAMED_MODULE) {
                addExportsToAllUnnamed0(this, pn2);
            } else {
                addExports0(this, pn2, other);
            }
        }
        if (VM.isBooted()) {
            Map<String, Boolean> map = ReflectionData.exports.computeIfAbsent(this, other, (m12, m22) -> {
                return new ConcurrentHashMap();
            });
            if (open) {
                map.put(pn2, Boolean.TRUE);
                return;
            } else {
                map.putIfAbsent(pn2, Boolean.FALSE);
                return;
            }
        }
        Map<String, Set<Module>> packageToTargets2 = open ? this.openPackages : this.exportedPackages;
        if (packageToTargets2 != null) {
            packageToTargets = new HashMap(packageToTargets2);
            packageToTargets.compute(pn2, (str, values) -> {
                HashSet<Module> targets = new HashSet<>();
                if (values != null) {
                    targets.addAll(values);
                }
                targets.add(other);
                return targets;
            });
        } else {
            packageToTargets = Map.of(pn2, Set.of(other));
        }
        if (open) {
            this.openPackages = packageToTargets;
        } else {
            this.exportedPackages = packageToTargets;
        }
    }

    @CallerSensitive
    public Module addUses(Class<?> service) {
        Objects.requireNonNull(service);
        if (isNamed() && !this.descriptor.isAutomatic()) {
            Module caller = getCallerModule(Reflection.getCallerClass());
            if (caller != this) {
                throw new IllegalCallerException(((Object) caller) + " != " + ((Object) this));
            }
            implAddUses(service);
        }
        return this;
    }

    public void implAddUses(Class<?> service) {
        if (!canUse(service)) {
            ReflectionData.uses.putIfAbsent(this, service, Boolean.TRUE);
        }
    }

    public boolean canUse(Class<?> service) {
        Objects.requireNonNull(service);
        if (!isNamed() || this.descriptor.isAutomatic() || this.descriptor.uses().contains(service.getName())) {
            return true;
        }
        return ReflectionData.uses.containsKeyPair(this, service);
    }

    public Set<String> getPackages() {
        Stream<Package> packages;
        if (isNamed()) {
            return this.descriptor.packages();
        }
        if (this.loader == null) {
            packages = BootLoader.packages();
        } else {
            packages = this.loader.packages();
        }
        return (Set) packages.filter(p10 -> {
            return p10.module() == this;
        }).map((v0) -> {
            return v0.getName();
        }).collect(Collectors.toSet());
    }

    public static Map<String, Module> defineModules(Configuration cf2, Function<String, ClassLoader> clf, ModuleLayer layer) {
        Module module;
        boolean isBootLayer = ModuleLayer.boot() == null;
        int numModules = cf2.modules().size();
        Map<String, Module> nameToModule = HashMap.newHashMap(numModules);
        ResolvedModule[] resolvedModules = new ResolvedModule[numModules];
        Module[] modules = new Module[numModules];
        ClassLoader[] classLoaders = new ClassLoader[numModules];
        ResolvedModule[] resolvedModules2 = (ResolvedModule[]) cf2.modules().toArray(resolvedModules);
        HashSet<ClassLoader> toBindLoaders = new HashSet<>(4);
        boolean hasPlatformModules = false;
        ClassLoader pcl = ClassLoaders.platformClassLoader();
        boolean isModuleLoaderMapper = ModuleLoaderMap.isBuiltinMapper(clf);
        for (int index = 0; index < numModules; index++) {
            ClassLoader loader = clf.apply(resolvedModules2[index].name());
            if (loader == null || loader == pcl) {
                if (!isModuleLoaderMapper) {
                    throw new IllegalArgumentException("loader can't be 'null' or the platform class loader");
                }
                hasPlatformModules = true;
            } else {
                toBindLoaders.add(loader);
            }
            classLoaders[index] = loader;
        }
        for (int index2 = 0; index2 < numModules; index2++) {
            ModuleReference mref = resolvedModules2[index2].reference();
            ModuleDescriptor descriptor = mref.descriptor();
            String name = descriptor.name();
            ClassLoader loader2 = classLoaders[index2];
            if (loader2 == null && name.equals(JRTUtil.JAVA_BASE)) {
                module = Object.class.getModule();
            } else {
                URI uri = mref.location().orElse(null);
                module = new Module(layer, loader2, descriptor, uri);
            }
            Module m10 = module;
            nameToModule.put(name, m10);
            modules[index2] = m10;
        }
        for (int index3 = 0; index3 < numModules; index3++) {
            ResolvedModule resolvedModule = resolvedModules2[index3];
            ModuleReference mref2 = resolvedModule.reference();
            ModuleDescriptor descriptor2 = mref2.descriptor();
            Module m11 = modules[index3];
            Set<Module> reads = new HashSet<>();
            Map<String, Module> nameToSource = Map.of();
            for (ResolvedModule other : resolvedModule.reads()) {
                Module m22 = null;
                if (other.configuration() == cf2) {
                    m22 = nameToModule.get(other.name());
                    if (!$assertionsDisabled && m22 == null) {
                        throw new AssertionError();
                    }
                } else {
                    for (ModuleLayer parent : layer.parents()) {
                        m22 = findModule(parent, other);
                        if (m22 != null) {
                            break;
                        }
                    }
                    if (!$assertionsDisabled && m22 == null) {
                        throw new AssertionError();
                    }
                    if (nameToSource.isEmpty()) {
                        nameToSource = new HashMap<>();
                    }
                    nameToSource.put(other.name(), m22);
                }
                reads.add(m22);
                addReads0(m11, m22);
            }
            m11.reads = reads;
            if (descriptor2.isAutomatic()) {
                m11.implAddReads(ALL_UNNAMED_MODULE, true);
            }
            if (!descriptor2.isOpen() && !descriptor2.isAutomatic()) {
                if (isBootLayer && descriptor2.opens().isEmpty()) {
                    initExports(m11, nameToModule);
                } else {
                    initExportsAndOpens(m11, nameToSource, nameToModule, layer.parents());
                }
            }
        }
        if (hasPlatformModules) {
            ServicesCatalog bootCatalog = BootLoader.getServicesCatalog();
            ServicesCatalog pclCatalog = ServicesCatalog.getServicesCatalog(pcl);
            for (int index4 = 0; index4 < numModules; index4++) {
                ModuleReference mref3 = resolvedModules2[index4].reference();
                if (!mref3.descriptor().provides().isEmpty()) {
                    Module m12 = modules[index4];
                    ClassLoader loader3 = classLoaders[index4];
                    if (loader3 == null) {
                        bootCatalog.register(m12);
                    } else if (loader3 == pcl) {
                        pclCatalog.register(m12);
                    }
                }
            }
        }
        Iterator<ClassLoader> it = toBindLoaders.iterator();
        while (it.hasNext()) {
            layer.bindToLoader(it.next());
        }
        return nameToModule;
    }

    private static Module findModule(ModuleLayer parent, ResolvedModule resolvedModule) {
        Configuration cf2 = resolvedModule.configuration();
        String dn2 = resolvedModule.name();
        return (Module) parent.layers().filter(l10 -> {
            return l10.configuration() == cf2;
        }).findAny().map(layer -> {
            Optional<Module> om2 = layer.findModule(dn2);
            if (!$assertionsDisabled && !om2.isPresent()) {
                throw new AssertionError((Object) (dn2 + " not found in layer"));
            }
            Module m10 = om2.get();
            if ($assertionsDisabled || m10.getLayer() == layer) {
                return m10;
            }
            throw new AssertionError((Object) (((Object) m10) + " not in expected layer"));
        }).orElse(null);
    }

    private static void initExports(Module m10, Map<String, Module> nameToModule) {
        Map<String, Set<Module>> exportedPackages = new HashMap<>();
        for (ModuleDescriptor.Exports exports : m10.getDescriptor().exports()) {
            String source = exports.source();
            if (exports.isQualified()) {
                Set<Module> targets = new HashSet<>();
                for (String target : exports.targets()) {
                    Module m22 = nameToModule.get(target);
                    if (m22 != null) {
                        addExports0(m10, source, m22);
                        targets.add(m22);
                    }
                }
                if (!targets.isEmpty()) {
                    exportedPackages.put(source, targets);
                }
            } else {
                addExportsToAll0(m10, source);
                exportedPackages.put(source, EVERYONE_SET);
            }
        }
        if (!exportedPackages.isEmpty()) {
            m10.exportedPackages = exportedPackages;
        }
    }

    private static void initExportsAndOpens(Module m10, Map<String, Module> nameToSource, Map<String, Module> nameToModule, List<ModuleLayer> parents) {
        ModuleDescriptor descriptor = m10.getDescriptor();
        Map<String, Set<Module>> openPackages = new HashMap<>();
        Map<String, Set<Module>> exportedPackages = new HashMap<>();
        for (ModuleDescriptor.Opens opens : descriptor.opens()) {
            String source = opens.source();
            if (opens.isQualified()) {
                Set<Module> targets = new HashSet<>();
                for (String target : opens.targets()) {
                    Module m22 = findModule(target, nameToSource, nameToModule, parents);
                    if (m22 != null) {
                        addExports0(m10, source, m22);
                        targets.add(m22);
                    }
                }
                if (!targets.isEmpty()) {
                    openPackages.put(source, targets);
                }
            } else {
                addExportsToAll0(m10, source);
                openPackages.put(source, EVERYONE_SET);
            }
        }
        for (ModuleDescriptor.Exports exports : descriptor.exports()) {
            String source2 = exports.source();
            Set<Module> openToTargets = openPackages.get(source2);
            if (openToTargets == null || !openToTargets.contains(EVERYONE_MODULE)) {
                if (exports.isQualified()) {
                    Set<Module> targets2 = new HashSet<>();
                    for (String target2 : exports.targets()) {
                        Module m23 = findModule(target2, nameToSource, nameToModule, parents);
                        if (m23 != null && (openToTargets == null || !openToTargets.contains(m23))) {
                            addExports0(m10, source2, m23);
                            targets2.add(m23);
                        }
                    }
                    if (!targets2.isEmpty()) {
                        exportedPackages.put(source2, targets2);
                    }
                } else {
                    addExportsToAll0(m10, source2);
                    exportedPackages.put(source2, EVERYONE_SET);
                }
            }
        }
        if (!openPackages.isEmpty()) {
            m10.openPackages = openPackages;
        }
        if (!exportedPackages.isEmpty()) {
            m10.exportedPackages = exportedPackages;
        }
    }

    private static Module findModule(String target, Map<String, Module> nameToSource, Map<String, Module> nameToModule, List<ModuleLayer> parents) {
        Module m10 = nameToSource.get(target);
        if (m10 == null) {
            m10 = nameToModule.get(target);
            if (m10 == null) {
                for (ModuleLayer parent : parents) {
                    m10 = parent.findModule(target).orElse(null);
                    if (m10 != null) {
                        break;
                    }
                }
            }
        }
        return m10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) moduleInfoClass().getDeclaredAnnotation(cls);
    }

    @Override
    public Annotation[] getAnnotations() {
        return moduleInfoClass().getAnnotations();
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        return moduleInfoClass().getDeclaredAnnotations();
    }

    private Class<?> moduleInfoClass() {
        Class<?> cls;
        Class<?> clazz = this.moduleInfoClass;
        if (clazz != null) {
            return clazz;
        }
        synchronized (this) {
            Class<?> clazz2 = this.moduleInfoClass;
            if (clazz2 == null) {
                if (isNamed()) {
                    clazz2 = loadModuleInfoClass();
                }
                if (clazz2 == null) {
                    clazz2 = C1DummyModuleInfo.class;
                }
                this.moduleInfoClass = clazz2;
            }
            cls = clazz2;
        }
        return cls;
    }

    class C1DummyModuleInfo {
        C1DummyModuleInfo(Module this$0) {
            Objects.requireNonNull(this$0);
        }
    }

    private Class<?> loadModuleInfoClass() {
        Class<?> clazz = null;
        try {
            InputStream in2 = getResourceAsStream("module-info.class");
            if (in2 != null) {
                try {
                    clazz = loadModuleInfoClass(in2);
                } finally {
                }
            }
            if (in2 != null) {
                in2.close();
            }
        } catch (Exception e10) {
        }
        return clazz;
    }

    private Class<?> loadModuleInfoClass(InputStream in2) throws IOException {
        ClassFile cc2 = ClassFile.of(ClassFile.ConstantPoolSharingOption.NEW_POOL);
        final byte[] bytes = cc2.transformClass(cc2.parse(in2.readAllBytes()), (clb, cle) -> {
            Objects.requireNonNull(cle);
            switch ((int) SwitchBootstraps.typeSwitch(MethodHandles.lookup(), "typeSwitch", MethodType.methodType(Integer.TYPE, ClassElement.class, Integer.TYPE), AccessFlags.class, RuntimeVisibleAnnotationsAttribute.class, Attribute.class).dynamicInvoker().invoke(cle, 0) /* invoke-custom */) {
                case 0:
                    clb.withFlags(AccessFlag.INTERFACE, AccessFlag.ABSTRACT, AccessFlag.SYNTHETIC);
                    return;
                case 1:
                    RuntimeVisibleAnnotationsAttribute a10 = (RuntimeVisibleAnnotationsAttribute) cle;
                    clb.with(a10);
                    return;
                case 2:
                    return;
                default:
                    clb.with(cle);
                    return;
            }
        });
        ClassLoader cl2 = new ClassLoader(this, this.loader) {
            {
                Objects.requireNonNull(this);
            }

            @Override
            public Class<?> findClass(String cn2) throws ClassNotFoundException {
                if (cn2.equals("module-info")) {
                    return super.defineClass(cn2, bytes, 0, bytes.length);
                }
                throw new ClassNotFoundException(cn2);
            }

            @Override
            public Class<?> loadClass(String cn2, boolean resolve) throws ClassNotFoundException {
                Class<?> cls;
                synchronized (getClassLoadingLock(cn2)) {
                    Class<?> c10 = findLoadedClass(cn2);
                    if (c10 == null) {
                        if (cn2.equals("module-info")) {
                            c10 = findClass(cn2);
                        } else {
                            c10 = super.loadClass(cn2, resolve);
                        }
                    }
                    if (resolve) {
                        resolveClass(c10);
                    }
                    cls = c10;
                }
                return cls;
            }
        };
        try {
            return cl2.loadClass("module-info");
        } catch (ClassNotFoundException e10) {
            throw new InternalError(e10);
        }
    }

    @CallerSensitive
    public InputStream getResourceAsStream(String name) throws IOException {
        Module caller;
        if (name.startsWith("/")) {
            name = name.substring(1);
        }
        if (isNamed() && Resources.canEncapsulate(name) && (caller = getCallerModule(Reflection.getCallerClass())) != this && caller != Object.class.getModule()) {
            String pn2 = Resources.toPackageName(name);
            if (getPackages().contains(pn2)) {
                if (caller == null) {
                    if (!isOpen(pn2)) {
                        return null;
                    }
                } else if (!isOpen(pn2, caller)) {
                    return null;
                }
            }
        }
        String mn2 = this.name;
        if (this.loader == null) {
            return BootLoader.findResourceAsStream(mn2, name);
        }
        if (this.loader instanceof BuiltinClassLoader) {
            return this.loader.findResourceAsStream(mn2, name);
        }
        URL url = this.loader.findResource(mn2, name);
        if (url != null) {
            try {
                return url.openStream();
            } catch (SecurityException e10) {
                return null;
            }
        }
        return null;
    }

    public String toString() {
        if (isNamed()) {
            return "module " + this.name;
        }
        String id2 = Integer.toHexString(System.identityHashCode(this));
        return "unnamed module @" + id2;
    }

    private Module getCallerModule(Class<?> caller) {
        if (caller != null) {
            return caller.getModule();
        }
        return null;
    }
}
