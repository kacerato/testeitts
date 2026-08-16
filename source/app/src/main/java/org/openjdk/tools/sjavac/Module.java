package org.openjdk.tools.sjavac;

import b3.s;
import java.io.File;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class Module implements Comparable<Module> {
    private String dirname;
    private String name;
    private Map<String, Package> packages = new HashMap();
    private Map<String, Source> sources = new HashMap();
    private Map<String, File> artifacts = new HashMap();

    public Module(String str, String str2) {
        this.name = str;
        this.dirname = str;
    }

    public static Module load(String str) {
        int indexOf = str.indexOf(58, 2);
        if (indexOf == -1) {
            return null;
        }
        return new Module(str.substring(2, indexOf), "");
    }

    public static void saveModules(Map<String, Module> map, StringBuilder sb2) {
        Iterator<Module> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().save(sb2);
        }
    }

    public void addArtifacts(String str, Set<URI> set) {
        Package lookupPackage = lookupPackage(str);
        Iterator<URI> it = set.iterator();
        while (it.hasNext()) {
            lookupPackage.addArtifact(new File(it.next()));
        }
    }

    public void addPackage(Package r32) {
        this.packages.put(r32.name(), r32);
    }

    public void addSource(String str, Source source) {
        Package lookupPackage = lookupPackage(str);
        source.setPackage(lookupPackage);
        lookupPackage.addSource(source);
        this.sources.put(source.file().getPath(), source);
    }

    public Map<String, File> artifacts() {
        return this.artifacts;
    }

    public String dirname() {
        return this.dirname;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Module) && this.name.equals(((Module) obj).name);
    }

    public boolean hasPubapiChanged(String str, PubApi pubApi) {
        return lookupPackage(str).hasPubApiChanged(pubApi);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public Package lookupPackage(String str) {
        Package r02 = this.packages.get(str);
        if (r02 != null) {
            return r02;
        }
        Package r03 = new Package(this, str);
        this.packages.put(str, r03);
        return r03;
    }

    public Source lookupSource(String str) {
        return this.sources.get(str);
    }

    public String name() {
        return this.name;
    }

    public Map<String, Package> packages() {
        return this.packages;
    }

    public void save(StringBuilder sb2) {
        sb2.append("M ");
        sb2.append(this.name);
        sb2.append(s.f32937c);
        sb2.append("\n");
        Package.savePackages(this.packages, sb2);
    }

    public void setDependencies(String str, Map<String, Set<String>> map, boolean z10) {
        lookupPackage(str).setDependencies(map, z10);
    }

    public void setPubapi(String str, PubApi pubApi) {
        lookupPackage(str).setPubapi(pubApi);
    }

    public Map<String, Source> sources() {
        return this.sources;
    }

    @Override
    public int compareTo(Module module) {
        return this.name.compareTo(module.name);
    }
}
