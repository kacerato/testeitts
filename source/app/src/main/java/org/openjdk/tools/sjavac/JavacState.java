package org.openjdk.tools.sjavac;

import b3.s;
import com.android.tools.r8.internal.C6854d11;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.nio.file.NoSuchFileException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.tools.sjavac.comp.CompilationService;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.pubapi.PubApi;
import yd.C16181m;

public class JavacState {
    private Set<File> binArtifacts;
    private File binDir;
    private Set<File> gensrcArtifacts;
    private File gensrcDir;
    private Set<File> headerArtifacts;
    private File headerDir;
    private File javacState;
    private boolean needsSaving;
    private boolean newJavacState;
    private BuildState now;
    int numCores;
    private Options options;
    private Set<String> packagesWithChangedPublicApis;
    private BuildState prev;
    private Set<String> recompiledPackages;
    private File stateDir;
    private Set<String> taintedModules;
    private Set<String> taintedPackages;
    String theArgs;
    Set<URI> visibleSrcs;
    Set<Source> removedSources = null;
    Set<Source> addedSources = null;
    Set<Source> modifiedSources = null;
    private CompileJavaPackages compileJavaPackages = new CompileJavaPackages();

    public JavacState(Options options, boolean z10) {
        this.options = options;
        this.numCores = options.getNumCores();
        this.theArgs = this.options.getStateArgsString();
        this.binDir = Util.pathToFile(this.options.getDestDir());
        this.gensrcDir = Util.pathToFile(this.options.getGenSrcDir());
        this.headerDir = Util.pathToFile(this.options.getHeaderDir());
        this.stateDir = Util.pathToFile(this.options.getStateDir());
        File file = new File(this.stateDir, "javac_state");
        this.javacState = file;
        if (z10 && file.exists()) {
            this.javacState.delete();
        }
        this.newJavacState = false;
        if (!this.javacState.exists()) {
            this.newJavacState = true;
            if (!this.options.areUnidentifiedArtifactsPermitted()) {
                deleteContents(this.binDir);
                deleteContents(this.gensrcDir);
                deleteContents(this.headerDir);
            }
            this.needsSaving = true;
        }
        this.prev = new BuildState();
        this.now = new BuildState();
        this.taintedPackages = new HashSet();
        this.recompiledPackages = new HashSet();
        this.packagesWithChangedPublicApis = new HashSet();
    }

    private void addFileToTransform(Map<Transformer, Map<String, Set<URI>>> map, Transformer transformer, Source source) {
        Map<String, Set<URI>> map2 = map.get(transformer);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(transformer, map2);
        }
        Set<URI> set = map2.get(source.pkg().name());
        if (set == null) {
            set = new HashSet<>();
            map2.put(source.pkg().name(), set);
        }
        set.add(source.file().toURI());
    }

    private Set<Source> calculateAddedSources() {
        HashSet hashSet = new HashSet();
        for (String str : this.now.sources().o()) {
            if (this.prev.sources().get(str) == null) {
                hashSet.add(this.now.sources().get(str));
            }
        }
        return hashSet;
    }

    private Set<Source> calculateModifiedSources() {
        HashSet hashSet = new HashSet();
        for (String str : this.now.sources().o()) {
            Source source = this.now.sources().get(str);
            Source source2 = this.prev.sources().get(str);
            if (this.prev.sources().get(str) != null && source2 != null) {
                if (source.lastModified() > source2.lastModified()) {
                    hashSet.add(source);
                } else if (source.lastModified() < source2.lastModified()) {
                    hashSet.add(source);
                    Log.warn("The source file " + source.name() + " timestamp has moved backwards in time.");
                }
            }
        }
        return hashSet;
    }

    private Set<Source> calculateRemovedSources() {
        HashSet hashSet = new HashSet();
        for (String str : this.prev.sources().o()) {
            if (this.now.sources().get(str) == null) {
                hashSet.add(this.prev.sources().get(str));
            }
        }
        return hashSet;
    }

    private void deleteContents(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                deleteContents(file2);
            }
            if (!this.options.isUnidentifiedArtifactPermitted(file2.getAbsolutePath())) {
                Log.debug("Removing " + file2.getAbsolutePath());
                file2.delete();
            }
        }
    }

    private Map<String, File> fetchPrevArtifacts(String str) {
        Package r22 = this.prev.packages().get(str);
        return r22 != null ? r22.artifacts() : new HashMap();
    }

    private static Set<File> findAllFiles(File file) {
        HashSet hashSet = new HashSet();
        if (file == null) {
            return hashSet;
        }
        recurse(file, hashSet);
        return hashSet;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(3:2|3|4)|(3:5|6|(3:8|(3:13|14|(3:138|139|140)(8:16|17|(2:133|(1:137)(2:135|136))(3:19|20|(2:113|(6:116|(1:120)|124|(1:126)(1:129)|127|128)(1:132))(3:22|23|(2:105|(2:108|109)(1:112))(3:25|26|(2:97|(2:100|101)(1:104))(2:28|(2:89|(2:92|93)(1:96))(3:30|31|(2:80|(2:83|84)(1:88))(3:33|34|(3:73|74|(3:76|77|78)(1:79))(3:36|37|(3:45|46|(1:51)(2:48|49)))))))))|53|54|(1:(1:(1:65))(1:63))(1:57)|58|59))|50)(2:143|144))|87|53|54|(0)|(0)|(0)|58|59|(3:(0)|(1:154)|(1:149))) */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0093, code lost:
    
        throw new java.lang.RuntimeException("Bad dependency string: " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0128, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0154 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0163 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JavacState load(Options options) {
        boolean z10;
        boolean z11;
        boolean z12;
        BufferedReader bufferedReader;
        Module module;
        Package r52;
        int indexOf;
        boolean z13 = false;
        JavacState javacState = new JavacState(options, false);
        Log.debug("Loading javac state file: " + ((Object) javacState.javacState));
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(javacState.javacState));
                module = null;
                z12 = false;
                z11 = false;
                r52 = null;
            } catch (IOException unused) {
                Log.warn("Dropping old javac_state because of errors when reading it.");
                javacState = new JavacState(options, true);
                z10 = false;
                z11 = false;
                z12 = true;
            }
        } catch (FileNotFoundException | NoSuchFileException unused2) {
            z10 = false;
            z11 = false;
        }
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                if (readLine.length() >= 3 && readLine.charAt(1) == ' ') {
                    char charAt = readLine.charAt(0);
                    if (charAt != 'M') {
                        if (charAt == 'P') {
                            if (module == null) {
                                break;
                            }
                            r52 = javacState.prev.loadPackage(module, readLine);
                        } else if (charAt == 'D') {
                            if (module == null || r52 == null) {
                                break;
                            }
                            char charAt2 = readLine.charAt(2);
                            if (charAt2 != 'S' && charAt2 != 'C') {
                                break;
                            }
                            r52.parseAndAddDependency(readLine.substring(4), charAt2 == 'C');
                        } else if (charAt == 'I') {
                            if (module == null || r52 == null) {
                                break;
                            }
                            r52.getPubApi().appendItem(readLine.substring(2));
                        } else if (charAt == 'A') {
                            if (module == null || r52 == null) {
                                break;
                            }
                            r52.loadArtifact(readLine);
                        } else if (charAt == 'S') {
                            if (module == null || r52 == null) {
                                break;
                            }
                            javacState.prev.loadSource(r52, readLine, false);
                        } else if (charAt == 'G') {
                            if (module == null || r52 == null) {
                                break;
                            }
                            javacState.prev.loadSource(r52, readLine, true);
                        } else if (charAt == 'R') {
                            if (!readLine.equals("R " + javacState.theArgs)) {
                                z11 = true;
                            }
                        } else if (charAt == '#' && readLine.startsWith("# javac_state ver ") && (indexOf = readLine.indexOf(" ", 18)) != -1) {
                            if (!readLine.substring(18, indexOf).equals("0.4")) {
                                break;
                            }
                            z12 = true;
                        }
                        bufferedReader.close();
                        if (z12 && !z13) {
                            Log.debug("Dropping old javac_state since it is of an old version.");
                            javacState = new JavacState(options, true);
                        } else if (!z11 && !z13) {
                            Log.debug("Dropping old javac_state since a new command line is used!");
                            javacState = new JavacState(options, true);
                        } else if (z10) {
                            Log.warn("Dropping old javac_state since it contains syntax errors.");
                            javacState = new JavacState(options, true);
                        }
                        javacState.prev.calculateDependents();
                        return javacState;
                    }
                    module = javacState.prev.loadModule(readLine);
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th4) {
                        try {
                            th2.addSuppressed(th4);
                        } catch (FileNotFoundException | NoSuchFileException unused3) {
                            z10 = false;
                            z13 = z12;
                            z12 = z13;
                            z13 = true;
                            if (z12) {
                            }
                            if (!z11) {
                            }
                            if (z10) {
                            }
                            javacState.prev.calculateDependents();
                            return javacState;
                        }
                    }
                    throw th3;
                }
            }
        }
        z10 = true;
        bufferedReader.close();
        if (z12) {
        }
        if (!z11) {
        }
        if (z10) {
        }
        javacState.prev.calculateDependents();
        return javacState;
    }

    private void needsSaving() {
        this.needsSaving = true;
    }

    private boolean perform(CompilationService compilationService, File file, Map<String, Transformer> map) {
        HashMap hashMap = new HashMap();
        for (Source source : this.now.sources().values()) {
            Transformer transformer = map.get(source.suffix());
            if (transformer != null && this.taintedPackages.contains(source.pkg().name()) && !source.isLinkedOnly()) {
                addFileToTransform(hashMap, transformer, source);
            }
        }
        boolean z10 = true;
        for (Map.Entry<Transformer, Map<String, Set<URI>>> entry : hashMap.entrySet()) {
            Transformer key = entry.getKey();
            Map<String, Set<URI>> value = entry.getValue();
            Map<String, Set<URI>> synchronizedMap = Collections.synchronizedMap(new HashMap());
            Map<String, Map<String, Set<String>>> synchronizedMap2 = Collections.synchronizedMap(new HashMap());
            Map<String, Map<String, Set<String>>> synchronizedMap3 = Collections.synchronizedMap(new HashMap());
            Map<String, PubApi> synchronizedMap4 = Collections.synchronizedMap(new HashMap());
            Map<String, PubApi> synchronizedMap5 = Collections.synchronizedMap(new HashMap());
            if (!key.transform(compilationService, value, this.visibleSrcs, this.prev.dependents(), file.toURI(), synchronizedMap, synchronizedMap2, synchronizedMap3, synchronizedMap4, synchronizedMap5, 0, isIncremental(), this.numCores)) {
                z10 = false;
            }
            Iterator<String> it = value.o().iterator();
            while (it.hasNext()) {
                this.recompiledPackages.add(it.next());
            }
            for (Map.Entry<String, Set<URI>> entry2 : synchronizedMap.entrySet()) {
                this.now.findModuleFromPackageName(entry2.getKey()).addArtifacts(entry2.getKey(), entry2.getValue());
            }
            for (Map.Entry<String, Map<String, Set<String>>> entry3 : synchronizedMap2.entrySet()) {
                this.now.findModuleFromPackageName(entry3.getKey()).setDependencies(entry3.getKey(), entry3.getValue(), false);
            }
            for (Map.Entry<String, Map<String, Set<String>>> entry4 : synchronizedMap3.entrySet()) {
                this.now.findModuleFromPackageName(entry4.getKey()).setDependencies(entry4.getKey(), entry4.getValue(), true);
            }
            for (Map.Entry<String, PubApi> entry5 : synchronizedMap5.entrySet()) {
                String key2 = entry5.getKey();
                PubApi value2 = entry5.getValue();
                Package lookupPackage = this.now.findModuleFromPackageName(key2).lookupPackage(key2);
                PubApi mergeTypes = PubApi.mergeTypes(lookupPackage.getPubApi(), value2);
                lookupPackage.setPubapi(mergeTypes);
                if (this.now.packages().containsKey(key2)) {
                    this.now.packages().get(key2).setPubapi(mergeTypes);
                } else {
                    this.now.packages().put(key2, lookupPackage);
                }
            }
            for (Map.Entry<String, PubApi> entry6 : synchronizedMap4.entrySet()) {
                String key3 = entry6.getKey();
                PubApi value3 = entry6.getValue();
                Module findModuleFromPackageName = this.prev.findModuleFromPackageName(key3);
                this.now.findModuleFromPackageName(key3).setPubapi(key3, value3);
                if (findModuleFromPackageName.hasPubapiChanged(key3, value3) && findModuleFromPackageName.lookupPackage(key3).existsInJavacState()) {
                    this.packagesWithChangedPublicApis.add(key3);
                    Log.debug("The API of " + Util.justPackageName(key3) + " has changed!");
                }
            }
        }
        return z10;
    }

    private static void recurse(File file, Set<File> set) {
        for (File file2 : file.listFiles()) {
            if (file2.isFile()) {
                set.add(file2);
            } else if (file2.isDirectory()) {
                recurse(file2, set);
            }
        }
    }

    public static String[] removeArgsNotAffectingState(String[] strArr) {
        String[] strArr2 = new String[strArr.length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < strArr.length) {
            if (!strArr[i10].equals("-j")) {
                if (!strArr[i10].startsWith("--server:") && !strArr[i10].startsWith("--log=")) {
                    if (!strArr[i10].equals("--compare-found-sources")) {
                        strArr2[i11] = strArr[i10];
                        i11++;
                    }
                }
                i10++;
            }
            i10++;
            i10++;
        }
        String[] strArr3 = new String[i11];
        System.arraycopy(strArr2, 0, strArr3, 0, i11);
        return strArr3;
    }

    public void checkSourceStatus(boolean z10) {
        Set<Source> calculateRemovedSources = calculateRemovedSources();
        this.removedSources = calculateRemovedSources;
        for (Source source : calculateRemovedSources) {
            if (!source.isGenerated() || z10) {
                taintPackage(source.pkg().name(), "source " + source.name() + " was removed");
            }
        }
        Set<Source> calculateAddedSources = calculateAddedSources();
        this.addedSources = calculateAddedSources;
        for (Source source2 : calculateAddedSources) {
            String str = isIncremental() ? "source " + source2.name() + " was added" : null;
            if (!source2.isGenerated() || z10) {
                taintPackage(source2.pkg().name(), str);
            }
        }
        Set<Source> calculateModifiedSources = calculateModifiedSources();
        this.modifiedSources = calculateModifiedSources;
        for (Source source3 : calculateModifiedSources) {
            if (!source3.isGenerated() || z10) {
                taintPackage(source3.pkg().name(), "source " + source3.name() + " was modified");
            }
        }
    }

    public void clearTaintedPackages() {
        this.taintedPackages = new HashSet();
    }

    public void compareWithMakefileList(File file) throws ProblemException {
        boolean z10 = File.pathSeparatorChar == ';';
        if (file == null) {
            return;
        }
        HashSet<String> hashSet = new HashSet();
        HashSet<String> hashSet2 = new HashSet();
        for (Source source : this.now.sources().values()) {
            if (!source.isLinkedOnly()) {
                String path = source.file().getPath();
                if (z10) {
                    path = Util.normalizeDriveLetter(path);
                }
                hashSet.add(path);
            }
        }
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        String trim = readLine.trim();
                        if (z10) {
                            if (trim.indexOf(s.f32937c) != 1 || trim.indexOf(C16181m.f130232i) != 2) {
                                if (trim.indexOf(s.f32937c) == 1 && trim.indexOf("/") == 2) {
                                    trim = trim.replaceAll("/", "\\\\");
                                } else if (trim.charAt(0) == '/' && trim.indexOf("/", 1) != -1) {
                                    int indexOf = trim.indexOf("/", 1);
                                    String replaceAll = trim.replaceAll("/", "\\\\");
                                    trim = "" + replaceAll.charAt(indexOf + 1) + s.f32937c + replaceAll.substring(indexOf + 2);
                                }
                            }
                            if (Character.isLowerCase(trim.charAt(0))) {
                                trim = Character.toUpperCase(trim.charAt(0)) + trim.substring(1);
                            }
                        }
                        hashSet2.add(trim);
                    } finally {
                    }
                }
                bufferedReader.close();
                for (String str : hashSet2) {
                    if (!hashSet.contains(str)) {
                        throw new ProblemException("The makefile listed source " + str + " was not calculated by the smart javac wrapper!");
                    }
                }
                for (String str2 : hashSet) {
                    if (!hashSet2.contains(str2)) {
                        throw new ProblemException("The smart javac wrapper calculated source " + str2 + " was not listed by the makefiles!");
                    }
                }
            } catch (FileNotFoundException | NoSuchFileException unused) {
                throw new ProblemException("Could not open " + file.getPath() + " since it does not exist!");
            }
        } catch (IOException unused2) {
            throw new ProblemException("Could not read " + file.getPath());
        }
    }

    public void deleteClassArtifactsInTaintedPackages() {
        Iterator<String> it = this.taintedPackages.iterator();
        while (it.hasNext()) {
            for (File file : fetchPrevArtifacts(it.next()).values()) {
                if (file.exists() && file.getName().endsWith(".class")) {
                    file.delete();
                }
            }
        }
    }

    public void findAllArtifacts() {
        this.binArtifacts = findAllFiles(this.binDir);
        this.gensrcArtifacts = findAllFiles(this.gensrcDir);
        this.headerArtifacts = findAllFiles(this.headerDir);
    }

    public Map<String, Transformer> getJavaSuffixRule() {
        HashMap hashMap = new HashMap();
        hashMap.put(".java", this.compileJavaPackages);
        return hashMap;
    }

    public boolean isIncremental() {
        return !this.prev.sources().isEmpty();
    }

    public BuildState now() {
        return this.now;
    }

    public void performCopying(File file, Map<String, Transformer> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Transformer> entry : map.entrySet()) {
            if (entry.getValue().getClass().equals(CopyFile.class)) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        perform(null, file, hashMap);
    }

    public boolean performJavaCompilations(CompilationService compilationService, Options options, Set<String> set, boolean[] zArr) {
        HashMap hashMap = new HashMap();
        hashMap.put(".java", this.compileJavaPackages);
        this.compileJavaPackages.setExtra(options);
        zArr[0] = perform(compilationService, this.binDir, hashMap);
        set.addAll(taintedPackages());
        clearTaintedPackages();
        boolean isEmpty = this.packagesWithChangedPublicApis.isEmpty();
        taintPackagesDependingOnChangedPackages(this.packagesWithChangedPublicApis, set);
        this.packagesWithChangedPublicApis = new HashSet();
        return !isEmpty && zArr[0];
    }

    public void performTranslation(File file, Map<String, Transformer> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Transformer> entry : map.entrySet()) {
            Class<?> cls = entry.getValue().getClass();
            if (cls != CompileJavaPackages.class && cls != CopyFile.class) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        perform(null, file, hashMap);
    }

    public BuildState prev() {
        return this.prev;
    }

    public void removeSuperfluousArtifacts(Set<String> set) {
        if (set.size() == 0) {
            return;
        }
        for (String str : this.now.packages().o()) {
            if (set.contains(str)) {
                Collection<File> values = this.now.artifacts().values();
                for (File file : fetchPrevArtifacts(str).values()) {
                    if (!values.contains(file)) {
                        Log.debug("Removing " + file.getPath() + " since it is now superfluous!");
                        if (file.exists()) {
                            file.delete();
                        }
                    }
                }
            }
        }
    }

    public void removeUnidentifiedArtifacts() {
        HashSet hashSet = new HashSet();
        Iterator<Package> it = this.prev.packages().values().iterator();
        while (it.hasNext()) {
            Iterator<File> it2 = it.next().artifacts().values().iterator();
            while (it2.hasNext()) {
                hashSet.add(it2.next());
            }
        }
        hashSet.add(this.javacState);
        for (File file : this.binArtifacts) {
            if (!hashSet.contains(file) && !this.options.isUnidentifiedArtifactPermitted(file.getAbsolutePath())) {
                Log.debug("Removing " + file.getPath() + " since it is unknown to the javac_state.");
                file.delete();
            }
        }
        for (File file2 : this.headerArtifacts) {
            if (!hashSet.contains(file2)) {
                Log.debug("Removing " + file2.getPath() + " since it is unknown to the javac_state.");
                file2.delete();
            }
        }
        for (File file3 : this.gensrcArtifacts) {
            if (!hashSet.contains(file3)) {
                Log.debug("Removing " + file3.getPath() + " since it is unknown to the javac_state.");
                file3.delete();
            }
        }
    }

    public void save() throws IOException {
        if (this.needsSaving) {
            FileWriter fileWriter = new FileWriter(this.javacState);
            try {
                StringBuilder sb2 = new StringBuilder();
                long currentTimeMillis = System.currentTimeMillis();
                Date date = new Date(currentTimeMillis);
                sb2.append("# javac_state ver 0.4 generated " + currentTimeMillis + " " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS").format(date) + "\n");
                sb2.append("# This format might change at any time. Please do not depend on it.\n");
                sb2.append("# R arguments\n");
                sb2.append("# M module\n");
                sb2.append("# P package\n");
                sb2.append("# S C source_tobe_compiled timestamp\n");
                sb2.append("# S L link_only_source timestamp\n");
                sb2.append("# G C generated_source timestamp\n");
                sb2.append("# A artifact timestamp\n");
                sb2.append("# D S dependant -> source dependency\n");
                sb2.append("# D C dependant -> classpath dependency\n");
                sb2.append("# I pubapi\n");
                sb2.append("R ");
                sb2.append(this.theArgs);
                sb2.append("\n");
                this.now.copyPackagesExcept(this.prev, this.recompiledPackages, new HashSet());
                Module.saveModules(this.now.modules(), sb2);
                String sb3 = sb2.toString();
                fileWriter.write(sb3, 0, sb3.length());
                fileWriter.close();
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    try {
                        fileWriter.close();
                    } catch (Throwable th4) {
                        th2.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
        }
    }

    public void setVisibleSources(Map<String, Source> map) {
        this.visibleSrcs = new HashSet();
        Iterator<String> it = map.o().iterator();
        while (it.hasNext()) {
            this.visibleSrcs.add(map.get(it.next()).file().toURI());
        }
    }

    public void taintPackage(String str, String str2) {
        if (this.taintedPackages.contains(str)) {
            return;
        }
        if (str2 != null) {
            Log.debug("Tainting " + Util.justPackageName(str) + " because " + str2);
        }
        this.taintedPackages.add(str);
        needsSaving();
        Package r32 = this.now.packages().get(str);
        if (r32 != null) {
            Iterator<String> it = r32.dependents().iterator();
            while (it.hasNext()) {
                taintPackage(it.next(), str2);
            }
        }
    }

    public void taintPackagesDependingOnChangedClasspathPackages() throws IOException {
        HashSet<String> hashSet = new HashSet();
        for (Package r22 : this.prev.packages().values()) {
            if (!r22.sources().isEmpty()) {
                r22.typeClasspathDependencies().values().forEach(new C6854d11(hashSet));
            }
        }
        PubApiExtractor pubApiExtractor = new PubApiExtractor(this.options);
        HashMap hashMap = new HashMap();
        for (String str : hashSet) {
            hashMap.put(str, pubApiExtractor.getPubApi(str));
        }
        pubApiExtractor.close();
        for (Package r12 : this.prev.packages().values()) {
            if (!r12.sources().isEmpty()) {
                HashSet hashSet2 = new HashSet();
                Iterator<Set<String>> it = r12.typeClasspathDependencies().values().iterator();
                while (it.hasNext()) {
                    hashSet2.addAll(it.next());
                }
                Iterator<E> it2 = hashSet2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        String str2 = (String) it2.next();
                        PubApi pubApi = this.prev.packages().get(s.f32937c + str2.substring(0, str2.lastIndexOf(46))).getPubApi().types.get(str2).pubApi;
                        PubApi pubApi2 = ((PubApi) hashMap.get(str2)).types.get(str2).pubApi;
                        if (!pubApi2.isBackwardCompatibleWith(pubApi)) {
                            List<String> diff = pubApi2.diff(pubApi);
                            taintPackage(r12.name(), "depends on classpath package which has an updated package api: " + String.join("\n", diff));
                            break;
                        }
                    }
                }
            }
        }
    }

    public void taintPackagesDependingOnChangedPackages(Set<String> set, Set<String> set2) {
        Iterator it = new HashSet(this.prev.packages().values()).iterator();
        while (it.hasNext()) {
            Package r12 = (Package) it.next();
            for (String str : (Set) r12.typeDependencies().values().stream().flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((Set) obj).stream();
                }
            }).collect(Collectors.toSet())) {
                String str2 = s.f32937c + str.substring(0, str.lastIndexOf(46));
                if (!str2.equals(r12.name()) && set.contains(str2) && !set2.contains(r12.name())) {
                    taintPackage(r12.name(), "its depending on " + str2);
                }
            }
        }
    }

    public void taintPackagesThatMissArtifacts() {
        for (Package r12 : this.prev.packages().values()) {
            for (File file : r12.artifacts().values()) {
                if (!file.exists()) {
                    taintPackage(r12.name(), "" + ((Object) file) + " is missing.");
                }
            }
        }
    }

    public Set<String> taintedPackages() {
        return this.taintedPackages;
    }
}
