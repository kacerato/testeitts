package org.openjdk.tools.sjavac;

import b3.s;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BinaryOperator;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class BuildState {
    private Map<String, Module> modules = new HashMap();
    private Map<String, Package> packages = new HashMap();
    private Map<String, Source> sources = new HashMap();
    private Map<String, File> artifacts = new HashMap();
    private Map<String, Set<String>> dependents = new HashMap();

    public Map<String, File> artifacts() {
        return this.artifacts;
    }

    public void calculateDependents() {
        this.dependents = new HashMap();
        for (String str : this.packages.o()) {
            Package r22 = this.packages.get(str);
            for (String str2 : r22.typeDependencies().values().stream().reduce(Collections.emptySet(), new BinaryOperator() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return Util.union((Set) obj, (Set) obj2);
                }
            })) {
                String str3 = s.f32937c + str2.substring(0, str2.lastIndexOf(46));
                this.dependents.merge(str3, Collections.singleton(str), new b());
                Package r42 = this.packages.get(str3);
                if (r42 != null) {
                    r42.addDependent(r22.name());
                }
            }
        }
    }

    public void checkInternalState(String str, boolean z10, Map<String, Source> map) {
        boolean z11;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (String str2 : this.sources.o()) {
            Source source = this.sources.get(str2);
            if (source.isLinkedOnly() == z10) {
                hashMap2.put(str2, source);
            }
        }
        for (String str3 : map.o()) {
            Source source2 = map.get(str3);
            if (source2.isLinkedOnly() == z10) {
                hashMap.put(str3, source2);
            }
        }
        if (hashMap.size() != hashMap2.size()) {
            Log.error("INTERNAL ERROR " + str + " original and calculated are not the same size!");
            z11 = true;
        } else {
            z11 = false;
        }
        if (!hashMap.o().equals(hashMap2.o())) {
            Log.error("INTERNAL ERROR " + str + " original and calculated do not have the same domain!");
            z11 = true;
        }
        if (!z11) {
            for (String str4 : hashMap.o()) {
                Source source3 = (Source) hashMap.get(str4);
                Source source4 = (Source) hashMap2.get(str4);
                if (source3 == null || source4 == null || !source3.equals(source4)) {
                    Log.error("INTERNAL ERROR " + str + " original and calculated have differing elements for " + str4);
                }
                z11 = true;
            }
        }
        if (z11) {
            for (String str5 : hashMap.o()) {
                if (((Source) hashMap2.get(str5)) == null) {
                    Log.error("The file " + str5 + " does not exist in calculated tree of sources.");
                }
            }
            for (String str6 : hashMap2.o()) {
                if (((Source) hashMap.get(str6)) == null) {
                    Log.error("The file " + str6 + " does not exist in original set of found sources.");
                }
            }
        }
    }

    public void copyPackagesExcept(BuildState buildState, Set<String> set, Set<String> set2) {
        for (String str : buildState.packages().o()) {
            if (!set.contains(str) && !set2.contains(str)) {
                Module findModuleFromPackageName = findModuleFromPackageName(str);
                Package r32 = buildState.packages().get(str);
                if (this.packages.containsKey(str)) {
                    r32.setPubapi(PubApi.mergeTypes(r32.getPubApi(), this.packages.get(str).getPubApi()));
                }
                findModuleFromPackageName.addPackage(r32);
                this.packages.put(str, r32);
            }
        }
    }

    public Map<String, Set<String>> dependents() {
        return this.dependents;
    }

    public Module findModuleFromPackageName(String str) {
        int indexOf = str.indexOf(58);
        Assert.check(indexOf != -1, "Could not find package name");
        return lookupModule(str.substring(0, indexOf));
    }

    public void flattenArtifacts(Map<String, Module> map) {
        this.modules = map;
        Iterator<Module> it = map.values().iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, Package> entry : it.next().packages().entrySet()) {
                Package r22 = this.packages.get(entry.getKey());
                Assert.check(r22 == null || r22 == entry.getValue());
                Package value = entry.getValue();
                this.packages.put(entry.getKey(), entry.getValue());
                for (Map.Entry<String, File> entry2 : value.artifacts().entrySet()) {
                    File file = this.artifacts.get(entry2.getKey());
                    Assert.check(file == null || file == entry2.getValue());
                    this.artifacts.put(entry2.getKey(), entry2.getValue());
                }
            }
        }
    }

    public void flattenPackagesSourcesAndArtifacts(Map<String, Module> map) {
        this.modules = map;
        Iterator<Module> it = map.values().iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, Package> entry : it.next().packages().entrySet()) {
                Package r22 = this.packages.get(entry.getKey());
                Assert.check(r22 == null || r22 == entry.getValue());
                if (r22 == null) {
                    r22 = entry.getValue();
                    this.packages.put(entry.getKey(), entry.getValue());
                }
                for (Map.Entry<String, Source> entry2 : r22.sources().entrySet()) {
                    Source source = this.sources.get(entry2.getKey());
                    Assert.check(source == null || source == entry2.getValue());
                    if (source == null) {
                        entry2.getValue();
                        this.sources.put(entry2.getKey(), entry2.getValue());
                    }
                }
                for (Map.Entry<String, File> entry3 : r22.artifacts().entrySet()) {
                    File file = this.artifacts.get(entry3.getKey());
                    Assert.check(file == null || file == entry3.getValue());
                    if (file == null) {
                        entry3.getValue();
                        this.artifacts.put(entry3.getKey(), entry3.getValue());
                    }
                }
            }
        }
    }

    public Module loadModule(String str) {
        Module load = Module.load(str);
        this.modules.put(load.name(), load);
        return load;
    }

    public Package loadPackage(Module module, String str) {
        Package load = Package.load(module, str);
        module.addPackage(load);
        this.packages.put(load.name(), load);
        return load;
    }

    public Source loadSource(Package r12, String str, boolean z10) {
        Source load = Source.load(r12, str, z10);
        r12.addSource(load);
        this.sources.put(load.name(), load);
        return load;
    }

    public Module lookupModule(String str) {
        Module module = this.modules.get(str);
        if (module != null) {
            return module;
        }
        Module module2 = new Module(str, "???");
        this.modules.put(str, module2);
        return module2;
    }

    public Map<String, Module> modules() {
        return this.modules;
    }

    public Map<String, Package> packages() {
        return this.packages;
    }

    public Map<String, Source> sources() {
        return this.sources;
    }
}
