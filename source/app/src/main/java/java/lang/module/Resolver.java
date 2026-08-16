package java.lang.module;

import java.io.PrintStream;
import java.lang.module.ModuleDescriptor;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.HexFormat;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jdk.internal.module.ModuleHashes;
import jdk.internal.module.ModuleReferenceImpl;
import jdk.internal.module.ModuleResolution;
import jdk.internal.module.ModuleTarget;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public final class Resolver {
    private final ModuleFinder beforeFinder;
    private final List<Configuration> parents;
    private final ModuleFinder afterFinder;
    private final PrintStream traceOutput;
    private final Map<String, ModuleReference> nameToReference = new HashMap();
    private boolean haveAllAutomaticModules;
    private String targetPlatform;
    private Set<ModuleDescriptor> visited;
    private Set<ModuleDescriptor> visitPath;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !Resolver.class.desiredAssertionStatus();
    }

    public String targetPlatform() {
        return this.targetPlatform;
    }

    public Resolver(ModuleFinder beforeFinder, List<Configuration> parents, ModuleFinder afterFinder, PrintStream traceOutput) {
        this.beforeFinder = beforeFinder;
        this.parents = parents;
        this.afterFinder = afterFinder;
        this.traceOutput = traceOutput;
        for (Configuration parent : parents) {
            String value = parent.targetPlatform();
            if (value != null) {
                if (this.targetPlatform == null) {
                    this.targetPlatform = value;
                } else if (!value.equals(this.targetPlatform)) {
                    String msg = "Parents have conflicting constraints on target  platform: " + this.targetPlatform + ", " + value;
                    throw new IllegalArgumentException(msg);
                }
            }
        }
    }

    public Resolver resolve(Collection<String> roots) {
        Deque<ModuleDescriptor> q10 = new ArrayDeque<>();
        for (String root : roots) {
            ModuleReference mref = findWithBeforeFinder(root);
            if (mref == null) {
                if (findInParent(root) == null) {
                    mref = findWithAfterFinder(root);
                    if (mref == null) {
                        findFail("Module %s not found", root);
                    }
                }
            }
            if (isTracing()) {
                trace("root %s", nameAndInfo(mref));
            }
            addFoundModule(mref);
            q10.push(mref.descriptor());
        }
        resolve(q10);
        return this;
    }

    private Set<ModuleDescriptor> resolve(Deque<ModuleDescriptor> q10) {
        Set<ModuleDescriptor> resolved = new HashSet<>();
        while (!q10.isEmpty()) {
            ModuleDescriptor descriptor = q10.poll();
            if (!$assertionsDisabled && !this.nameToReference.containsKey(descriptor.name())) {
                throw new AssertionError();
            }
            if (descriptor.isAutomatic() && !this.haveAllAutomaticModules) {
                addFoundAutomaticModules().forEach(mref -> {
                    ModuleDescriptor other = mref.descriptor();
                    q10.offer(other);
                    if (isTracing()) {
                        trace("%s requires %s", descriptor.name(), nameAndInfo(mref));
                    }
                });
                this.haveAllAutomaticModules = true;
            }
            for (ModuleDescriptor.Requires requires : descriptor.requires()) {
                if (!requires.modifiers().contains(ModuleDescriptor.Requires.Modifier.STATIC)) {
                    String dn2 = requires.name();
                    ModuleReference mref2 = findWithBeforeFinder(dn2);
                    if (mref2 == null) {
                        if (findInParent(dn2) == null) {
                            mref2 = findWithAfterFinder(dn2);
                            if (mref2 == null) {
                                findFail("Module %s not found, required by %s", dn2, descriptor.name());
                            }
                        }
                    }
                    if (isTracing() && !dn2.equals(JRTUtil.JAVA_BASE)) {
                        trace("%s requires %s", descriptor.name(), nameAndInfo(mref2));
                    }
                    if (!this.nameToReference.containsKey(dn2)) {
                        addFoundModule(mref2);
                        q10.offer(mref2.descriptor());
                    }
                }
            }
            resolved.add(descriptor);
        }
        return resolved;
    }

    public Resolver bind() {
        return bind(true);
    }

    public Resolver bind(boolean bindIncubatorModules) {
        Set<ModuleDescriptor> initialConsumers;
        boolean candidate;
        Map<String, Set<ModuleReference>> availableProviders = new HashMap<>();
        Iterator<ModuleReference> it = findAll().iterator();
        while (it.hasNext()) {
            ModuleReferenceImpl moduleReferenceImpl = (ModuleReference) it.next();
            ModuleDescriptor descriptor = moduleReferenceImpl.descriptor();
            if (!bindIncubatorModules && (moduleReferenceImpl instanceof ModuleReferenceImpl)) {
                ModuleResolution mres = moduleReferenceImpl.moduleResolution();
                candidate = mres == null || !mres.hasIncubatingWarning();
            } else {
                candidate = true;
            }
            if (candidate && !descriptor.provides().isEmpty()) {
                for (ModuleDescriptor.Provides provides : descriptor.provides()) {
                    String sn2 = provides.service();
                    Set<ModuleReference> providers = availableProviders.get(sn2);
                    if (providers == null) {
                        providers = new HashSet<>();
                        availableProviders.put(sn2, providers);
                    }
                    providers.add(moduleReferenceImpl);
                }
            }
        }
        Deque<ModuleDescriptor> q10 = new ArrayDeque<>();
        if (ModuleLayer.boot() == null) {
            initialConsumers = new HashSet();
        } else {
            initialConsumers = (Set) this.parents.stream().flatMap((v0) -> {
                return v0.configurations();
            }).distinct().flatMap(c10 -> {
                return c10.descriptors().stream();
            }).collect(Collectors.toSet());
        }
        Iterator<ModuleReference> it2 = this.nameToReference.values().iterator();
        while (it2.hasNext()) {
            initialConsumers.add(it2.next().descriptor());
        }
        Set<ModuleDescriptor> candidateConsumers = initialConsumers;
        do {
            for (ModuleDescriptor descriptor2 : candidateConsumers) {
                if (!descriptor2.uses().isEmpty()) {
                    Set<ModuleDescriptor> modulesToBind = null;
                    if (isTracing()) {
                        modulesToBind = new HashSet<>();
                    }
                    for (String service : descriptor2.uses()) {
                        Set<ModuleReference> mrefs = availableProviders.get(service);
                        if (mrefs != null) {
                            for (ModuleReference mref : mrefs) {
                                ModuleDescriptor provider = mref.descriptor();
                                if (!provider.equals(descriptor2)) {
                                    if (isTracing() && modulesToBind.add(provider)) {
                                        trace("%s binds %s", descriptor2.name(), nameAndInfo(mref));
                                    }
                                    String pn2 = provider.name();
                                    if (!this.nameToReference.containsKey(pn2)) {
                                        addFoundModule(mref);
                                        q10.push(provider);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            candidateConsumers = resolve(q10);
        } while (!candidateConsumers.isEmpty());
        return this;
    }

    private Set<ModuleReference> addFoundAutomaticModules() {
        Set<ModuleReference> result = new HashSet<>();
        findAll().forEach(mref -> {
            String mn2 = mref.descriptor().name();
            if (mref.descriptor().isAutomatic() && !this.nameToReference.containsKey(mn2)) {
                addFoundModule(mref);
                result.add(mref);
            }
        });
        return result;
    }

    private void addFoundModule(ModuleReference mref) {
        ModuleTarget target;
        String mn2 = mref.descriptor().name();
        if ((mref instanceof ModuleReferenceImpl) && (target = ((ModuleReferenceImpl) mref).moduleTarget()) != null) {
            checkTargetPlatform(mn2, target);
        }
        this.nameToReference.put(mn2, mref);
    }

    private void checkTargetPlatform(String mn2, ModuleTarget target) {
        String value = target.targetPlatform();
        if (value != null) {
            if (this.targetPlatform == null) {
                this.targetPlatform = value;
            } else if (!value.equals(this.targetPlatform)) {
                findFail("Module %s has constraints on target platform (%s) that conflict with other modules: %s", mn2, value, this.targetPlatform);
            }
        }
    }

    public Map<ResolvedModule, Set<ResolvedModule>> finish(Configuration cf2) {
        detectCycles();
        checkHashes();
        Map<ResolvedModule, Set<ResolvedModule>> graph = makeGraph(cf2);
        checkExportSuppliers(graph);
        return graph;
    }

    private void detectCycles() {
        this.visited = new HashSet();
        this.visitPath = new LinkedHashSet();
        for (ModuleReference mref : this.nameToReference.values()) {
            visit(mref.descriptor());
        }
        this.visited.clear();
    }

    private void visit(ModuleDescriptor descriptor) {
        ModuleDescriptor other;
        if (!this.visited.contains(descriptor)) {
            boolean added = this.visitPath.add(descriptor);
            if (!added) {
                resolveFail("Cycle detected: %s", cycleAsString(descriptor));
            }
            for (ModuleDescriptor.Requires requires : descriptor.requires()) {
                String dn2 = requires.name();
                ModuleReference mref = this.nameToReference.get(dn2);
                if (mref != null && (other = mref.descriptor()) != descriptor) {
                    visit(other);
                }
            }
            this.visitPath.remove(descriptor);
            this.visited.add(descriptor);
        }
    }

    private String cycleAsString(ModuleDescriptor descriptor) {
        List<ModuleDescriptor> list = new ArrayList<>(this.visitPath);
        list.add(descriptor);
        int index = list.indexOf(descriptor);
        return (String) list.stream().skip(index).map((v0) -> {
            return v0.name();
        }).collect(Collectors.joining(" -> "));
    }

    private void checkHashes() {
        ModuleHashes hashes;
        ResolvedModule resolvedModule;
        Iterator<ModuleReference> it = this.nameToReference.values().iterator();
        while (it.hasNext()) {
            ModuleReferenceImpl moduleReferenceImpl = (ModuleReference) it.next();
            if ((moduleReferenceImpl instanceof ModuleReferenceImpl) && (hashes = moduleReferenceImpl.recordedHashes()) != null) {
                ModuleDescriptor descriptor = moduleReferenceImpl.descriptor();
                String algorithm = hashes.algorithm();
                for (String dn2 : hashes.names()) {
                    ModuleReference mref2 = this.nameToReference.get(dn2);
                    if (mref2 == null && (resolvedModule = findInParent(dn2)) != null) {
                        mref2 = resolvedModule.reference();
                    }
                    if (mref2 != null) {
                        if (!(mref2 instanceof ModuleReferenceImpl)) {
                            findFail("Unable to compute the hash of module %s", dn2);
                        }
                        ModuleReferenceImpl other = (ModuleReferenceImpl) mref2;
                        if (other != null) {
                            byte[] recordedHash = hashes.hashFor(dn2);
                            byte[] actualHash = other.computeHash(algorithm);
                            if (actualHash == null) {
                                findFail("Unable to compute the hash of module %s", dn2);
                            }
                            if (!Arrays.equals(recordedHash, actualHash)) {
                                HexFormat hex = HexFormat.of();
                                findFail("Hash of %s (%s) differs to expected hash (%s) recorded in %s", dn2, hex.formatHex(actualHash), hex.formatHex(recordedHash), descriptor.name());
                            }
                        }
                    }
                }
            }
        }
    }

    private Map<ResolvedModule, Set<ResolvedModule>> makeGraph(Configuration cf2) {
        Map<ResolvedModule, Set<ResolvedModule>> g22;
        boolean changed;
        ResolvedModule m22;
        int moduleCount = this.nameToReference.size();
        Map<ResolvedModule, Set<ResolvedModule>> g12 = HashMap.newHashMap(moduleCount);
        if (ModuleLayer.boot() == null) {
            g22 = HashMap.newHashMap(moduleCount);
        } else {
            g22 = (Map) this.parents.stream().flatMap((v0) -> {
                return v0.configurations();
            }).distinct().flatMap(c10 -> {
                return c10.modules().stream().flatMap(m12 -> {
                    return m12.descriptor().requires().stream().filter(r10 -> {
                        return r10.modifiers().contains(ModuleDescriptor.Requires.Modifier.TRANSITIVE);
                    }).flatMap(r11 -> {
                        Optional<ResolvedModule> m23 = c10.findModule(r11.name());
                        if (!$assertionsDisabled && !m23.isPresent() && !r11.modifiers().contains(ModuleDescriptor.Requires.Modifier.STATIC)) {
                            throw new AssertionError();
                        }
                        return m23.stream();
                    }).map(m23 -> {
                        return Map.entry(m12, m23);
                    });
                });
            }).collect(Collectors.groupingBy((v0) -> {
                return v0.getKey();
            }, HashMap::new, Collectors.mapping((v0) -> {
                return v0.getValue();
            }, Collectors.toSet())));
        }
        Map<String, ResolvedModule> nameToResolved = HashMap.newHashMap(moduleCount);
        for (ModuleReference mref : this.nameToReference.values()) {
            ModuleDescriptor descriptor = mref.descriptor();
            String name = descriptor.name();
            ResolvedModule m12 = computeIfAbsent(nameToResolved, name, cf2, mref);
            Set<ResolvedModule> reads = new HashSet<>();
            Set<ResolvedModule> requiresTransitive = new HashSet<>();
            for (ModuleDescriptor.Requires requires : descriptor.requires()) {
                String dn2 = requires.name();
                ModuleReference mref2 = this.nameToReference.get(dn2);
                if (mref2 != null) {
                    m22 = computeIfAbsent(nameToResolved, dn2, cf2, mref2);
                } else {
                    m22 = findInParent(dn2);
                    if (m22 == null) {
                        if (!$assertionsDisabled && !requires.modifiers().contains(ModuleDescriptor.Requires.Modifier.STATIC)) {
                            throw new AssertionError();
                        }
                    } else if (m22.descriptor().isAutomatic()) {
                        Stream<ResolvedModule> filter = m22.reads().stream().filter(d10 -> {
                            return d10.descriptor().isAutomatic();
                        });
                        Objects.requireNonNull(reads);
                        filter.forEach((v1) -> {
                            r1.add(v1);
                        });
                    }
                }
                reads.add(m22);
                if (requires.modifiers().contains(ModuleDescriptor.Requires.Modifier.TRANSITIVE)) {
                    requiresTransitive.add(m22);
                }
            }
            if (descriptor.isAutomatic()) {
                for (ModuleReference mref22 : this.nameToReference.values()) {
                    ModuleDescriptor descriptor2 = mref22.descriptor();
                    String name2 = descriptor2.name();
                    if (!name.equals(name2)) {
                        ResolvedModule m23 = computeIfAbsent(nameToResolved, name2, cf2, mref22);
                        reads.add(m23);
                        if (descriptor2.isAutomatic()) {
                            requiresTransitive.add(m23);
                        }
                    }
                }
                for (Configuration parent : this.parents) {
                    parent.configurations().map((v0) -> {
                        return v0.modules();
                    }).flatMap((v0) -> {
                        return v0.stream();
                    }).forEach(m10 -> {
                        reads.add(m10);
                        if (m10.reference().descriptor().isAutomatic()) {
                            requiresTransitive.add(m10);
                        }
                    });
                }
            }
            g12.put(m12, reads);
            g22.put(m12, requiresTransitive);
        }
        List<ResolvedModule> toAdd = new ArrayList<>();
        do {
            changed = false;
            for (Map.Entry<ResolvedModule, Set<ResolvedModule>> e10 : g12.entrySet()) {
                if (!e10.getKey().descriptor().isAutomatic()) {
                    Set<ResolvedModule> m1Reads = e10.getValue();
                    Iterator<ResolvedModule> it = m1Reads.iterator();
                    while (it.hasNext()) {
                        Set<ResolvedModule> m2RequiresTransitive = g22.get(it.next());
                        if (m2RequiresTransitive != null) {
                            for (ResolvedModule m32 : m2RequiresTransitive) {
                                if (!m1Reads.contains(m32)) {
                                    toAdd.add(m32);
                                }
                            }
                        }
                    }
                    if (!toAdd.isEmpty()) {
                        m1Reads.addAll(toAdd);
                        toAdd.clear();
                        changed = true;
                    }
                }
            }
        } while (changed);
        return g12;
    }

    private ResolvedModule computeIfAbsent(Map<String, ResolvedModule> map, String name, Configuration cf2, ModuleReference mref) {
        ResolvedModule m10 = map.get(name);
        if (m10 == null) {
            m10 = new ResolvedModule(cf2, mref);
            map.put(name, m10);
        }
        return m10;
    }

    private void checkExportSuppliers(Map<ResolvedModule, Set<ResolvedModule>> graph) {
        for (Map.Entry<ResolvedModule, Set<ResolvedModule>> e10 : graph.entrySet()) {
            ModuleDescriptor descriptor1 = e10.getKey().descriptor();
            String name1 = descriptor1.name();
            Set<String> names = new HashSet<>();
            names.add(name1);
            Map<String, ModuleDescriptor> packageToExporter = new HashMap<>();
            Set<String> packages = descriptor1.packages();
            Iterator<String> it = packages.iterator();
            while (it.hasNext()) {
                packageToExporter.put(it.next(), descriptor1);
            }
            Set<ResolvedModule> reads = e10.getValue();
            for (ResolvedModule endpoint : reads) {
                ModuleDescriptor descriptor2 = endpoint.descriptor();
                String name2 = descriptor2.name();
                if (descriptor2 != descriptor1 && !names.add(name2)) {
                    if (name2.equals(name1)) {
                        resolveFail("Module %s reads another module named %s", name1, name1);
                    } else {
                        resolveFail("Module %s reads more than one module named %s", name1, name2);
                    }
                }
                if (descriptor2.isAutomatic()) {
                    if (descriptor2 != descriptor1) {
                        for (String source : descriptor2.packages()) {
                            ModuleDescriptor supplier = packageToExporter.putIfAbsent(source, descriptor2);
                            if (supplier != null) {
                                failTwoSuppliers(descriptor1, source, descriptor2, supplier);
                            }
                        }
                    }
                } else {
                    for (ModuleDescriptor.Exports export : descriptor2.exports()) {
                        if (!export.isQualified() || export.targets().contains(descriptor1.name())) {
                            String source2 = export.source();
                            ModuleDescriptor supplier2 = packageToExporter.putIfAbsent(source2, descriptor2);
                            if (supplier2 != null) {
                                failTwoSuppliers(descriptor1, source2, descriptor2, supplier2);
                            }
                        }
                    }
                }
            }
            if (!descriptor1.isAutomatic()) {
                for (String service : descriptor1.uses()) {
                    String pn2 = packageName(service);
                    if (!packageToExporter.containsKey(pn2) && !requiresStaticMissingModule(descriptor1, reads)) {
                        resolveFail("Module %s uses %s but does not read a module that exports %s to %s", descriptor1.name(), service, pn2, descriptor1.name());
                    }
                }
                for (ModuleDescriptor.Provides provides : descriptor1.provides()) {
                    String pn3 = packageName(provides.service());
                    if (!packageToExporter.containsKey(pn3) && !requiresStaticMissingModule(descriptor1, reads)) {
                        resolveFail("Module %s provides %s but does not read a module that exports %s to %s", descriptor1.name(), provides.service(), pn3, descriptor1.name());
                    }
                }
            }
        }
    }

    private boolean requiresStaticMissingModule(ModuleDescriptor descriptor, Set<ResolvedModule> reads) {
        Set<String> moduleNames = (Set) reads.stream().map((v0) -> {
            return v0.name();
        }).collect(Collectors.toSet());
        for (ModuleDescriptor.Requires r10 : descriptor.requires()) {
            if (r10.modifiers().contains(ModuleDescriptor.Requires.Modifier.STATIC) && !moduleNames.contains(r10.name())) {
                return true;
            }
        }
        for (ResolvedModule rm2 : reads) {
            for (ModuleDescriptor.Requires r11 : rm2.descriptor().requires()) {
                if (r11.modifiers().contains(ModuleDescriptor.Requires.Modifier.STATIC) && r11.modifiers().contains(ModuleDescriptor.Requires.Modifier.TRANSITIVE) && !moduleNames.contains(r11.name())) {
                    return true;
                }
            }
        }
        return false;
    }

    private void failTwoSuppliers(ModuleDescriptor descriptor, String source, ModuleDescriptor supplier1, ModuleDescriptor supplier2) {
        if (supplier2 == descriptor) {
            supplier1 = supplier2;
            supplier2 = supplier1;
        }
        if (supplier1 == descriptor) {
            resolveFail("Module %s contains package %s, module %s exports package %s to %s", descriptor.name(), source, supplier2.name(), source, descriptor.name());
        } else {
            resolveFail("Modules %s and %s export package %s to module %s", supplier1.name(), supplier2.name(), source, descriptor.name());
        }
    }

    private ResolvedModule findInParent(String mn2) {
        for (Configuration parent : this.parents) {
            Optional<ResolvedModule> om2 = parent.findModule(mn2);
            if (om2.isPresent()) {
                return om2.get();
            }
        }
        return null;
    }

    private ModuleReference findWithBeforeFinder(String mn2) {
        return this.beforeFinder.find(mn2).orElse(null);
    }

    private ModuleReference findWithAfterFinder(String mn2) {
        return this.afterFinder.find(mn2).orElse(null);
    }

    private Set<ModuleReference> findAll() {
        Set<ModuleReference> beforeModules = this.beforeFinder.findAll();
        Set<ModuleReference> afterModules = this.afterFinder.findAll();
        if (afterModules.isEmpty()) {
            return beforeModules;
        }
        if (beforeModules.isEmpty() && this.parents.size() == 1 && this.parents.get(0) == Configuration.empty()) {
            return afterModules;
        }
        Set<ModuleReference> result = new HashSet<>(beforeModules);
        for (ModuleReference mref : afterModules) {
            String name = mref.descriptor().name();
            if (this.beforeFinder.find(name).isEmpty() && findInParent(name) == null) {
                result.add(mref);
            }
        }
        return result;
    }

    private static String packageName(String cn2) {
        int index = cn2.lastIndexOf(".");
        return index == -1 ? "" : cn2.substring(0, index);
    }

    private static void findFail(String fmt, Object... args) {
        String msg = String.format(fmt, args);
        throw new FindException(msg);
    }

    private static void resolveFail(String fmt, Object... args) {
        String msg = String.format(fmt, args);
        throw new ResolutionException(msg);
    }

    private boolean isTracing() {
        return this.traceOutput != null;
    }

    private void trace(String fmt, Object... args) {
        if (this.traceOutput != null) {
            this.traceOutput.format(fmt, args);
            this.traceOutput.println();
        }
    }

    private String nameAndInfo(ModuleReference mref) {
        ModuleDescriptor descriptor = mref.descriptor();
        StringBuilder sb2 = new StringBuilder(descriptor.name());
        mref.location().ifPresent(uri -> {
            sb2.append(" " + ((Object) uri));
        });
        if (descriptor.isAutomatic()) {
            sb2.append(" automatic");
        }
        return sb2.toString();
    }
}
