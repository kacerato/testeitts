package org.openjdk.tools.sjavac;

import b3.s;
import com.android.tools.r8.kotlin.C10789h1;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class Package implements Comparable<Package> {
    private static Pattern DEP_PATTERN = Pattern.compile("(.*) -> (.*)");
    private String dirname;
    private Module mod;
    private String name;
    private Set<String> dependents = new HashSet();
    private Map<String, Set<String>> dependencies = new TreeMap();
    private Map<String, Set<String>> cpDependencies = new TreeMap();
    private PubApi pubApi = new PubApi();
    private Map<String, Source> sources = new HashMap();
    private Map<String, File> artifacts = new HashMap();

    public Package(Module module, String str) {
        Assert.check(str.indexOf(s.f32937c) != -1);
        Assert.check(module.name().equals(module.name()));
        this.name = str;
        char c10 = File.separatorChar;
        this.dirname = str.replace('.', c10);
        if (module.name().length() > 0) {
            this.dirname = module.dirname() + c10 + this.dirname;
        }
    }

    public static Stream lambda$savePubapi$0(String str) {
        return Stream.of((Object[]) new String[]{"I ", str, "\n"});
    }

    public static Package load(Module module, String str) {
        return new Package(module, str.substring(2));
    }

    public static void savePackages(Map<String, Package> map, StringBuilder sb2) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = map.o().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Collections.sort(arrayList);
        Iterator<E> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            map.get((String) it2.next()).save(sb2);
        }
    }

    public void addArtifact(String str) {
        this.artifacts.put(str, new File(str));
    }

    public void addArtifacts(Set<URI> set) {
        Iterator<URI> it = set.iterator();
        while (it.hasNext()) {
            addArtifact(new File(it.next()));
        }
    }

    public void addDependency(String str, String str2, boolean z10) {
        Map<String, Set<String>> map = z10 ? this.cpDependencies : this.dependencies;
        if (!map.containsKey(str)) {
            map.put(str, new HashSet());
        }
        map.get(str).add(str2);
    }

    public void addDependent(String str) {
        this.dependents.add(str);
    }

    public void addSource(Source source) {
        this.sources.put(source.file().getPath(), source);
    }

    public Map<String, File> artifacts() {
        return this.artifacts;
    }

    public void deleteArtifacts() {
        Iterator<File> it = this.artifacts.values().iterator();
        while (it.hasNext()) {
            it.next().delete();
        }
    }

    public Set<String> dependents() {
        return this.dependents;
    }

    public String dirname() {
        return this.dirname;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Package) && this.name.equals(((Package) obj).name);
    }

    public boolean existsInJavacState() {
        return this.artifacts.size() > 0 || !this.pubApi.isEmpty();
    }

    public PubApi getPubApi() {
        return this.pubApi;
    }

    public boolean hasPubApiChanged(PubApi pubApi) {
        return !pubApi.isBackwardCompatibleWith(this.pubApi);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public void loadArtifact(String str) {
        int indexOf = str.indexOf(32, 2);
        String substring = str.substring(2, indexOf);
        long parseLong = Long.parseLong(str.substring(indexOf + 1));
        File file = new File(substring);
        if (file.exists() && file.lastModified() != parseLong) {
            Log.debug("Removing " + file.getPath() + " since its timestamp does not match javac_state.");
            file.delete();
        }
        this.artifacts.put(file.getPath(), file);
    }

    public Module mod() {
        return this.mod;
    }

    public String name() {
        return this.name;
    }

    public void parseAndAddDependency(String str, boolean z10) {
        Matcher matcher = DEP_PATTERN.matcher(str);
        if (matcher.matches()) {
            addDependency(matcher.group(1), matcher.group(2), z10);
            return;
        }
        throw new IllegalArgumentException("Bad dependency string: " + str);
    }

    public void save(StringBuilder sb2) {
        sb2.append("P ");
        sb2.append(this.name);
        sb2.append("\n");
        Source.saveSources(this.sources, sb2);
        saveDependencies(sb2);
        savePubapi(sb2);
        saveArtifacts(sb2);
    }

    public void saveArtifacts(StringBuilder sb2) {
        ArrayList<File> arrayList = new ArrayList();
        Iterator<File> it = this.artifacts.values().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Collections.sort(arrayList);
        for (File file : arrayList) {
            sb2.append("A " + file.getPath() + " " + file.lastModified() + "\n");
        }
    }

    public void saveDependencies(StringBuilder sb2) {
        for (String str : this.dependencies.o()) {
            Iterator<String> it = this.dependencies.get(str).iterator();
            while (it.hasNext()) {
                sb2.append(String.format("D S %s -> %s%n", str, it.next()));
            }
        }
        for (String str2 : this.cpDependencies.o()) {
            Iterator<String> it2 = this.cpDependencies.get(str2).iterator();
            while (it2.hasNext()) {
                sb2.append(String.format("D C %s -> %s%n", str2, it2.next()));
            }
        }
    }

    public void savePubapi(StringBuilder sb2) {
        Stream<R> flatMap = this.pubApi.asListOfStrings().stream().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream lambda$savePubapi$0;
                lambda$savePubapi$0 = Package.lambda$savePubapi$0((String) obj);
                return lambda$savePubapi$0;
            }
        });
        sb2.getClass();
        flatMap.forEach(new C10789h1(sb2));
    }

    public void setArtifacts(Set<URI> set) {
        Assert.check(!this.artifacts.isEmpty());
        this.artifacts = new HashMap();
        addArtifacts(set);
    }

    public void setDependencies(Map<String, Set<String>> map, boolean z10) {
        (z10 ? this.cpDependencies : this.dependencies).clear();
        for (String str : map.o()) {
            Iterator<String> it = map.get(str).iterator();
            while (it.hasNext()) {
                addDependency(str, it.next(), z10);
            }
        }
    }

    public void setPubapi(PubApi pubApi) {
        this.pubApi = pubApi;
    }

    public Map<String, Source> sources() {
        return this.sources;
    }

    public Map<String, Set<String>> typeClasspathDependencies() {
        return this.cpDependencies;
    }

    public Map<String, Set<String>> typeDependencies() {
        return this.dependencies;
    }

    public void addArtifact(File file) {
        this.artifacts.put(file.getPath(), file);
    }

    @Override
    public int compareTo(Package r22) {
        return this.name.compareTo(r22.name);
    }
}
