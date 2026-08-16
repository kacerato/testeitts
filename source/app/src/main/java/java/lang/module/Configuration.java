package java.lang.module;

import java.io.PrintStream;
import java.nio.file.Path;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jdk.internal.misc.CDS;
import jdk.internal.module.ModuleReferenceImpl;
import jdk.internal.module.ModuleTarget;
import jdk.internal.vm.annotation.Stable;

public final class Configuration {

    @Stable
    private static Configuration EMPTY_CONFIGURATION;
    private final List<Configuration> parents;
    private final Map<ResolvedModule, Set<ResolvedModule>> graph;
    private final Set<ResolvedModule> modules;
    private final Map<String, ResolvedModule> nameToModule;
    private final String targetPlatform;
    private volatile List<Configuration> allConfigurations;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !Configuration.class.desiredAssertionStatus();
        CDS.initializeFromArchive(Configuration.class);
        if (EMPTY_CONFIGURATION == null) {
            EMPTY_CONFIGURATION = new Configuration();
        }
    }

    public String targetPlatform() {
        return this.targetPlatform;
    }

    private Configuration() {
        this.parents = List.of();
        this.graph = Map.of();
        this.modules = Set.of();
        this.nameToModule = Map.of();
        this.targetPlatform = null;
    }

    private Configuration(List<Configuration> parents, Resolver resolver) {
        Map<ResolvedModule, Set<ResolvedModule>> g10 = resolver.finish(this);
        Map.Entry<String, ResolvedModule>[] nameEntries = new Map.Entry[g10.size()];
        ResolvedModule[] moduleArray = new ResolvedModule[g10.size()];
        int i10 = 0;
        for (ResolvedModule resolvedModule : g10.o()) {
            moduleArray[i10] = resolvedModule;
            nameEntries[i10] = Map.entry(resolvedModule.name(), resolvedModule);
            i10++;
        }
        this.parents = List.copyOf(parents);
        this.graph = g10;
        this.modules = Set.of(moduleArray);
        this.nameToModule = Map.ofEntries(nameEntries);
        this.targetPlatform = resolver.targetPlatform();
    }

    public Configuration(ModuleFinder finder, Map<String, Set<String>> map) {
        ModuleTarget target;
        int moduleCount = map.size();
        Map.Entry<String, ResolvedModule>[] nameEntries = new Map.Entry[moduleCount];
        ResolvedModule[] moduleArray = new ResolvedModule[moduleCount];
        String targetPlatform = null;
        int i10 = 0;
        for (String name : map.o()) {
            ModuleReferenceImpl moduleReferenceImpl = (ModuleReference) finder.find(name).orElse(null);
            if (!$assertionsDisabled && moduleReferenceImpl == null) {
                throw new AssertionError();
            }
            if (targetPlatform == null && (moduleReferenceImpl instanceof ModuleReferenceImpl) && (target = moduleReferenceImpl.moduleTarget()) != null) {
                targetPlatform = target.targetPlatform();
            }
            ResolvedModule resolvedModule = new ResolvedModule(this, moduleReferenceImpl);
            moduleArray[i10] = resolvedModule;
            nameEntries[i10] = Map.entry(name, resolvedModule);
            i10++;
        }
        Map<String, ResolvedModule> nameToModule = Map.ofEntries(nameEntries);
        Map.Entry<ResolvedModule, Set<ResolvedModule>>[] moduleEntries = new Map.Entry[moduleCount];
        int i11 = 0;
        for (ResolvedModule resolvedModule2 : moduleArray) {
            Set<String> names = map.get(resolvedModule2.name());
            ResolvedModule[] readsArray = new ResolvedModule[names.size()];
            int j10 = 0;
            Iterator<String> it = names.iterator();
            while (it.hasNext()) {
                int i12 = j10;
                j10++;
                readsArray[i12] = nameToModule.get(it.next());
            }
            int i13 = i11;
            i11++;
            moduleEntries[i13] = Map.entry(resolvedModule2, Set.of(readsArray));
        }
        this.parents = List.of(empty());
        this.graph = Map.ofEntries(moduleEntries);
        this.modules = Set.of(moduleArray);
        this.nameToModule = nameToModule;
        this.targetPlatform = targetPlatform;
    }

    public Configuration resolve(ModuleFinder before, ModuleFinder after, Collection<String> roots) {
        return resolve(before, List.of(this), after, roots);
    }

    public Configuration resolveAndBind(ModuleFinder before, ModuleFinder after, Collection<String> roots) {
        return resolveAndBind(before, List.of(this), after, roots);
    }

    public static Configuration resolveAndBind(ModuleFinder finder, Collection<String> roots, PrintStream traceOutput) {
        List<Configuration> parents = List.of(empty());
        Resolver resolver = new Resolver(finder, parents, ModuleFinder.of(new Path[0]), traceOutput);
        resolver.resolve(roots).bind(false);
        return new Configuration(parents, resolver);
    }

    public static Configuration resolve(ModuleFinder before, List<Configuration> parents, ModuleFinder after, Collection<String> roots) {
        Objects.requireNonNull(before);
        Objects.requireNonNull(after);
        Objects.requireNonNull(roots);
        List<Configuration> parentList = new ArrayList<>(parents);
        if (parentList.isEmpty()) {
            throw new IllegalArgumentException("'parents' is empty");
        }
        Resolver resolver = new Resolver(before, parentList, after, null);
        resolver.resolve(roots);
        return new Configuration(parentList, resolver);
    }

    public static Configuration resolveAndBind(ModuleFinder before, List<Configuration> parents, ModuleFinder after, Collection<String> roots) {
        Objects.requireNonNull(before);
        Objects.requireNonNull(after);
        Objects.requireNonNull(roots);
        List<Configuration> parentList = new ArrayList<>(parents);
        if (parentList.isEmpty()) {
            throw new IllegalArgumentException("'parents' is empty");
        }
        Resolver resolver = new Resolver(before, parentList, after, null);
        resolver.resolve(roots).bind();
        return new Configuration(parentList, resolver);
    }

    public static Configuration empty() {
        return EMPTY_CONFIGURATION;
    }

    public List<Configuration> parents() {
        return this.parents;
    }

    public Set<ResolvedModule> modules() {
        return this.modules;
    }

    public Optional<ResolvedModule> findModule(String name) {
        Objects.requireNonNull(name);
        ResolvedModule m10 = this.nameToModule.get(name);
        if (m10 != null) {
            return Optional.of(m10);
        }
        if (!this.parents.isEmpty()) {
            return configurations().skip(1L).map(cf2 -> {
                return cf2.nameToModule.get(name);
            }).filter((v0) -> {
                return Objects.nonNull(v0);
            }).findFirst();
        }
        return Optional.empty();
    }

    public Set<ModuleDescriptor> descriptors() {
        if (this.modules.isEmpty()) {
            return Set.of();
        }
        return (Set) this.modules.stream().map((v0) -> {
            return v0.reference();
        }).map((v0) -> {
            return v0.descriptor();
        }).collect(Collectors.toSet());
    }

    public Set<ResolvedModule> reads(ResolvedModule m10) {
        return Set.copyOf(this.graph.get(m10));
    }

    public Stream<Configuration> configurations() {
        List<Configuration> allConfigurations = this.allConfigurations;
        if (allConfigurations == null) {
            allConfigurations = new ArrayList();
            Set<Configuration> visited = new HashSet<>();
            Deque<Configuration> stack = new ArrayDeque<>();
            visited.add(this);
            stack.push(this);
            while (!stack.isEmpty()) {
                Configuration layer = stack.pop();
                allConfigurations.add(layer);
                for (int i10 = layer.parents.size() - 1; i10 >= 0; i10--) {
                    Configuration parent = layer.parents.get(i10);
                    if (visited.add(parent)) {
                        stack.push(parent);
                    }
                }
            }
            this.allConfigurations = allConfigurations;
        }
        return allConfigurations.stream();
    }

    public String toString() {
        return (String) modules().stream().map((v0) -> {
            return v0.name();
        }).collect(Collectors.joining(", "));
    }
}
