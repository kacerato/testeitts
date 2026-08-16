package java.lang.module;

import java.nio.file.Path;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import jdk.internal.module.ModulePath;
import jdk.internal.module.SystemModuleFinders;

public interface ModuleFinder {
    Optional<ModuleReference> find(String str);

    Set<ModuleReference> findAll();

    static ModuleFinder ofSystem() {
        return SystemModuleFinders.ofSystem();
    }

    static ModuleFinder of(Path... entries) {
        if (entries.length == 0) {
            return new ModuleFinder() {
                @Override
                public Optional<ModuleReference> find(String name) {
                    Objects.requireNonNull(name);
                    return Optional.empty();
                }

                @Override
                public Set<ModuleReference> findAll() {
                    return Set.of();
                }
            };
        }
        return ModulePath.of(entries);
    }

    static ModuleFinder compose(ModuleFinder... finders) {
        final List<ModuleFinder> finderList = List.of(finders);
        return new ModuleFinder() {
            private final Map<String, ModuleReference> nameToModule = new HashMap();
            private Set<ModuleReference> allModules;

            @Override
            public Optional<ModuleReference> find(String name) {
                ModuleReference mref = this.nameToModule.get(name);
                if (mref != null) {
                    return Optional.of(mref);
                }
                Optional<ModuleReference> omref = List.this.stream().map(f10 -> {
                    return f10.find(name);
                }).flatMap((v0) -> {
                    return v0.stream();
                }).findFirst();
                omref.ifPresent(m10 -> {
                    this.nameToModule.put(name, m10);
                });
                return omref;
            }

            @Override
            public Set<ModuleReference> findAll() {
                if (this.allModules != null) {
                    return this.allModules;
                }
                Set<ModuleReference> result = new HashSet<>(this.nameToModule.values());
                List.this.stream().flatMap(f10 -> {
                    return f10.findAll().stream();
                }).forEach(mref -> {
                    String name = mref.descriptor().name();
                    if (this.nameToModule.putIfAbsent(name, mref) == null) {
                        result.add(mref);
                    }
                });
                this.allModules = Collections.unmodifiableSet(result);
                return this.allModules;
            }
        };
    }
}
