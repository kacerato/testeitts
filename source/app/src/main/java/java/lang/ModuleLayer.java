package java.lang;

import java.lang.module.Configuration;
import java.lang.module.ModuleDescriptor;
import java.lang.module.ResolvedModule;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jdk.internal.javac.Restricted;
import jdk.internal.loader.ClassLoaderValue;
import jdk.internal.loader.Loader;
import jdk.internal.loader.LoaderPool;
import jdk.internal.misc.CDS;
import jdk.internal.module.ServicesCatalog;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.Reflection;
import jdk.internal.vm.annotation.Stable;

public final class ModuleLayer {

    @Stable
    private static ModuleLayer EMPTY_LAYER;

    private final Configuration f92787cf;
    private final List<ModuleLayer> parents;
    private final Map<String, Module> nameToModule;
    private volatile List<ModuleLayer> allLayers;
    private volatile Set<Module> modules;
    private volatile ServicesCatalog servicesCatalog;
    private static final ClassLoaderValue<List<ModuleLayer>> CLV;

    static {
        CDS.initializeFromArchive(ModuleLayer.class);
        if (EMPTY_LAYER == null) {
            EMPTY_LAYER = new ModuleLayer(Configuration.empty(), List.of(), null);
        }
        CLV = new ClassLoaderValue<>();
    }

    private ModuleLayer(Configuration cf2, List<ModuleLayer> parents, Function<String, ClassLoader> clf) {
        Map<String, Module> map;
        this.f92787cf = cf2;
        this.parents = parents;
        if (parents.isEmpty()) {
            map = Map.of();
        } else {
            map = Module.defineModules(cf2, clf, this);
        }
        this.nameToModule = map;
    }

    public static final class Controller {
        private final ModuleLayer layer;

        Controller(ModuleLayer layer) {
            this.layer = layer;
        }

        public ModuleLayer layer() {
            return this.layer;
        }

        private void ensureInLayer(Module source) {
            if (source.getLayer() != this.layer) {
                throw new IllegalArgumentException(((Object) source) + " not in layer");
            }
        }

        public Controller addReads(Module source, Module target) {
            ensureInLayer(source);
            source.implAddReads(target);
            return this;
        }

        public Controller addExports(Module source, String pn2, Module target) {
            ensureInLayer(source);
            source.implAddExports(pn2, target);
            return this;
        }

        public Controller addOpens(Module source, String pn2, Module target) {
            ensureInLayer(source);
            source.implAddOpens(pn2, target);
            return this;
        }

        @Restricted
        @CallerSensitive
        public Controller enableNativeAccess(Module target) {
            ensureInLayer(target);
            Reflection.ensureNativeAccess(Reflection.getCallerClass(), Module.class, "enableNativeAccess", false);
            target.implAddEnableNativeAccess();
            return this;
        }
    }

    public ModuleLayer defineModulesWithOneLoader(Configuration cf2, ClassLoader parentLoader) {
        return defineModulesWithOneLoader(cf2, List.of(this), parentLoader).layer();
    }

    public ModuleLayer defineModulesWithManyLoaders(Configuration cf2, ClassLoader parentLoader) {
        return defineModulesWithManyLoaders(cf2, List.of(this), parentLoader).layer();
    }

    public ModuleLayer defineModules(Configuration cf2, Function<String, ClassLoader> clf) {
        return defineModules(cf2, List.of(this), clf).layer();
    }

    public static Controller defineModulesWithOneLoader(Configuration cf2, List<ModuleLayer> parentLayers, ClassLoader parentLoader) {
        List<ModuleLayer> parents = List.copyOf(parentLayers);
        checkConfiguration(cf2, parents);
        try {
            Loader loader = new Loader(cf2.modules(), parentLoader);
            loader.initRemotePackageMap(cf2, parents);
            ModuleLayer layer = new ModuleLayer(cf2, parents, mn2 -> {
                return loader;
            });
            return new Controller(layer);
        } catch (IllegalArgumentException | IllegalStateException e10) {
            throw new LayerInstantiationException(e10.getMessage());
        }
    }

    public static Controller defineModulesWithManyLoaders(Configuration cf2, List<ModuleLayer> parentLayers, ClassLoader parentLoader) {
        List<ModuleLayer> parents = List.copyOf(parentLayers);
        checkConfiguration(cf2, parents);
        LoaderPool pool = new LoaderPool(cf2, parents, parentLoader);
        try {
            Objects.requireNonNull(pool);
            ModuleLayer layer = new ModuleLayer(cf2, parents, pool::loaderFor);
            return new Controller(layer);
        } catch (IllegalArgumentException | IllegalStateException e10) {
            throw new LayerInstantiationException(e10.getMessage());
        }
    }

    public static Controller defineModules(Configuration cf2, List<ModuleLayer> parentLayers, Function<String, ClassLoader> clf) {
        List<ModuleLayer> parents = List.copyOf(parentLayers);
        checkConfiguration(cf2, parents);
        Objects.requireNonNull(clf);
        if (boot() != null) {
            checkForDuplicatePkgs(cf2, clf);
        }
        try {
            ModuleLayer layer = new ModuleLayer(cf2, parents, clf);
            return new Controller(layer);
        } catch (IllegalArgumentException | IllegalStateException e10) {
            throw new LayerInstantiationException(e10.getMessage());
        }
    }

    private static void checkConfiguration(Configuration cf2, List<ModuleLayer> parentLayers) {
        Objects.requireNonNull(cf2);
        List<Configuration> parentConfigurations = cf2.parents();
        if (parentLayers.size() != parentConfigurations.size()) {
            throw new IllegalArgumentException("wrong number of parents");
        }
        int index = 0;
        for (ModuleLayer parent : parentLayers) {
            if (parent.configuration() != parentConfigurations.get(index)) {
                throw new IllegalArgumentException("Parent of configuration != configuration of this Layer");
            }
            index++;
        }
    }

    private static void checkForDuplicatePkgs(Configuration cf2, Function<String, ClassLoader> clf) {
        Map<ClassLoader, Set<String>> loaderToPackages = new HashMap<>();
        for (ResolvedModule resolvedModule : cf2.modules()) {
            ModuleDescriptor descriptor = resolvedModule.reference().descriptor();
            ClassLoader loader = clf.apply(descriptor.name());
            Set<String> loaderPackages = loaderToPackages.computeIfAbsent(loader, k10 -> {
                return new HashSet();
            });
            for (String pkg : descriptor.packages()) {
                boolean added = loaderPackages.add(pkg);
                if (!added) {
                    throw fail("More than one module with package %s mapped to the same class loader", pkg);
                }
            }
        }
    }

    private static LayerInstantiationException fail(String fmt, Object... args) {
        String msg = String.format(fmt, args);
        return new LayerInstantiationException(msg);
    }

    public Configuration configuration() {
        return this.f92787cf;
    }

    public List<ModuleLayer> parents() {
        return this.parents;
    }

    public Stream<ModuleLayer> layers() {
        List<ModuleLayer> allLayers = this.allLayers;
        if (allLayers != null) {
            return allLayers.stream();
        }
        List<ModuleLayer> allLayers2 = new ArrayList<>();
        Set<ModuleLayer> visited = new HashSet<>();
        Deque<ModuleLayer> stack = new ArrayDeque<>();
        visited.add(this);
        stack.push(this);
        while (!stack.isEmpty()) {
            ModuleLayer layer = stack.pop();
            allLayers2.add(layer);
            for (int i10 = layer.parents.size() - 1; i10 >= 0; i10--) {
                ModuleLayer parent = layer.parents.get(i10);
                if (visited.add(parent)) {
                    stack.push(parent);
                }
            }
        }
        List<ModuleLayer> allLayers3 = Collections.unmodifiableList(allLayers2);
        this.allLayers = allLayers3;
        return allLayers3.stream();
    }

    public Set<Module> modules() {
        Set<Module> modules = this.modules;
        if (modules == null) {
            Set<Module> copyOf = Set.copyOf(this.nameToModule.values());
            modules = copyOf;
            this.modules = copyOf;
        }
        return modules;
    }

    public Optional<Module> findModule(String name) {
        Objects.requireNonNull(name);
        if (this == EMPTY_LAYER) {
            return Optional.empty();
        }
        Module m10 = this.nameToModule.get(name);
        if (m10 != null) {
            return Optional.of(m10);
        }
        return layers().skip(1L).map(l10 -> {
            return l10.nameToModule.get(name);
        }).filter((v0) -> {
            return Objects.nonNull(v0);
        }).findAny();
    }

    public boolean addEnableNativeAccess(String name) {
        Module m10 = this.nameToModule.get(name);
        if (m10 != null) {
            m10.implAddEnableNativeAccess();
            return true;
        }
        return false;
    }

    public ClassLoader findLoader(String name) {
        Optional<Module> om2 = findModule(name);
        if (om2.isPresent()) {
            return om2.get().getClassLoader();
        }
        throw new IllegalArgumentException("Module " + name + " not known to this layer");
    }

    public String toString() {
        return (String) modules().stream().map((v0) -> {
            return v0.getName();
        }).collect(Collectors.joining(", "));
    }

    public static ModuleLayer empty() {
        return EMPTY_LAYER;
    }

    public static ModuleLayer boot() {
        return System.bootLayer;
    }

    public ServicesCatalog getServicesCatalog() {
        ServicesCatalog servicesCatalog;
        ServicesCatalog servicesCatalog2 = this.servicesCatalog;
        if (servicesCatalog2 != null) {
            return servicesCatalog2;
        }
        synchronized (this) {
            servicesCatalog = this.servicesCatalog;
            if (servicesCatalog == null) {
                servicesCatalog = ServicesCatalog.create();
                for (Module m10 : this.nameToModule.values()) {
                    servicesCatalog.register(m10);
                }
                this.servicesCatalog = servicesCatalog;
            }
        }
        return servicesCatalog;
    }

    public void bindToLoader(ClassLoader loader) {
        List<ModuleLayer> list = (List) CLV.get(loader);
        if (list == null) {
            list = new CopyOnWriteArrayList<>();
            List<ModuleLayer> previous = (List) CLV.putIfAbsent(loader, list);
            if (previous != null) {
                list = previous;
            }
        }
        list.add(this);
    }

    public static Stream<ModuleLayer> layers(ClassLoader loader) {
        List<ModuleLayer> list = (List) CLV.get(loader);
        if (list != null) {
            return list.stream();
        }
        return Stream.empty();
    }
}
