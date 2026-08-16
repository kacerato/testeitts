package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.nio.file.InvalidPathException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.zip.ZipFile;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class FileSystem implements IModuleAwareNameEnvironment, SuffixConstants {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy;
    public static ArrayList<Classpath> EMPTY_CLASSPATH = new ArrayList<>();
    private static HashMap<File, Classpath> JRT_CLASSPATH_CACHE = null;
    static final boolean isJRE12Plus = "12".equals(System.getProperty("java.specification.version"));
    protected boolean annotationsFromClasspath;
    protected Classpath[] classpaths;
    Set<String> knownFileNames;
    protected IModule module;
    protected Map<String, Classpath> moduleLocations;
    Map<String, IUpdatableModule.UpdatesByKind> moduleUpdates;

    public interface Classpath extends IModulePathEntry {
        void acceptModule(IModule iModule);

        List<Classpath> fetchLinkedJars(ClasspathSectionProblemReporter classpathSectionProblemReporter);

        NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3);

        NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10);

        char[][][] findTypeNames(String str, String str2);

        String getDestinationPath();

        Collection<String> getModuleNames(Collection<String> collection);

        Collection<String> getModuleNames(Collection<String> collection, Function<String, IModule> function);

        String getPath();

        boolean hasAnnotationFileFor(String str);

        default boolean hasCUDeclaringPackage(String str, Function<CompilationUnit, String> function) {
            return hasCompilationUnit(str, null);
        }

        default boolean hasModule() {
            return getModule() != null;
        }

        void initialize() throws IOException;

        boolean isPackage(String str, String str2);

        char[] normalizedPath();

        void reset();
    }

    public static class ClasspathNormalizer {
        public static ArrayList<Classpath> normalize(ArrayList<Classpath> arrayList) {
            ArrayList<Classpath> arrayList2 = new ArrayList<>();
            HashSet hashSet = new HashSet();
            Iterator<Classpath> it = arrayList.iterator();
            while (it.hasNext()) {
                Classpath next = it.next();
                if (!hashSet.contains(next)) {
                    arrayList2.add(next);
                    hashSet.add(next);
                }
            }
            return arrayList2;
        }
    }

    public interface ClasspathSectionProblemReporter {
        void invalidClasspathSection(String str);

        void multipleClasspathSections(String str);
    }

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[IModuleAwareNameEnvironment.LookupStrategy.valuesCustom().length];
        try {
            iArr2[IModuleAwareNameEnvironment.LookupStrategy.Any.ordinal()] = 3;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[IModuleAwareNameEnvironment.LookupStrategy.AnyNamed.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[IModuleAwareNameEnvironment.LookupStrategy.Named.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[IModuleAwareNameEnvironment.LookupStrategy.Unnamed.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy = iArr2;
        return iArr2;
    }

    public FileSystem(String[] strArr, String[] strArr2, String str) {
        this(strArr, strArr2, str, (Collection<String>) null);
    }

    private static String convertPathSeparators(String str) {
        return File.separatorChar == '/' ? str.replace(JavaElement.JEM_ESCAPE, '/') : str.replace('/', JavaElement.JEM_ESCAPE);
    }

    private NameEnvironmentAnswer findClass(String str, char[] cArr, boolean z10, char[] cArr2) {
        boolean z11;
        NameEnvironmentAnswer internalFindClass = internalFindClass(str, cArr, z10, cArr2);
        if (this.annotationsFromClasspath && internalFindClass != null && (internalFindClass.getBinaryType() instanceof ClassFileReader)) {
            int length = this.classpaths.length;
            boolean z12 = false;
            for (int i10 = 0; i10 < length; i10++) {
                Classpath classpath = this.classpaths[i10];
                if (classpath.hasAnnotationFileFor(str)) {
                    ZipFile zipFile = classpath instanceof ClasspathJar ? ((ClasspathJar) classpath).zipFile : null;
                    if (zipFile == null) {
                        try {
                            zipFile = ExternalAnnotationDecorator.getAnnotationZipFile(classpath.getPath(), null);
                            z11 = true;
                        } catch (IOException unused) {
                            z11 = false;
                            if (z11 && zipFile != null) {
                                try {
                                    zipFile.close();
                                } catch (IOException unused2) {
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (z12 && zipFile != null) {
                                try {
                                    zipFile.close();
                                } catch (IOException unused3) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        z11 = false;
                    }
                    try {
                        internalFindClass.setBinaryType(ExternalAnnotationDecorator.create(internalFindClass.getBinaryType(), classpath.getPath(), str, zipFile));
                        if (z11 && zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException unused4) {
                            }
                        }
                        return internalFindClass;
                    } catch (IOException unused5) {
                        if (z11) {
                            zipFile.close();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        z12 = z11;
                        if (z12) {
                            zipFile.close();
                        }
                        throw th;
                    }
                }
            }
            internalFindClass.setBinaryType(new ExternalAnnotationDecorator(internalFindClass.getBinaryType(), (ExternalAnnotationProvider) null));
        }
        return internalFindClass;
    }

    public static Classpath getClasspath(String str, String str2, AccessRuleSet accessRuleSet) {
        return getClasspath(str, str2, false, accessRuleSet, null, null, null);
    }

    public static Classpath getJrtClasspath(String str, String str2, AccessRuleSet accessRuleSet, Map<String, String> map) {
        return new ClasspathJrt(new File(convertPathSeparators(str)), true, accessRuleSet, null);
    }

    public static Classpath getOlderSystemRelease(String str, String str2, AccessRuleSet accessRuleSet) {
        return isJRE12Plus ? new ClasspathJep247Jdk12(new File(convertPathSeparators(str)), str2, accessRuleSet) : new ClasspathJep247(new File(convertPathSeparators(str)), str2, accessRuleSet);
    }

    private Parser getParser() {
        HashMap hashMap = new HashMap();
        hashMap.put("org.eclipse.jdt.core.compiler.source", "9");
        return new Parser(new ProblemReporter(DefaultErrorHandlingPolicies.exitOnFirstError(), new CompilerOptions(hashMap), new DefaultProblemFactory(Locale.getDefault())), false);
    }

    private void initializeKnownFileNames(String[] strArr) {
        if (strArr == null) {
            this.knownFileNames = new HashSet(0);
            return;
        }
        this.knownFileNames = new HashSet(strArr.length * 2);
        int length = strArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            try {
                char[] charArray = new File(strArr[length]).getCanonicalPath().toCharArray();
                int lastIndexOf = CharOperation.lastIndexOf('.', charArray);
                if (lastIndexOf != -1) {
                    charArray = CharOperation.subarray(charArray, 0, lastIndexOf);
                }
                CharOperation.replace(charArray, JavaElement.JEM_ESCAPE, '/');
                int length2 = this.classpaths.length;
                char[] cArr = null;
                for (int i10 = 0; i10 < length2; i10++) {
                    char[] normalizedPath = this.classpaths[i10].normalizedPath();
                    if ((this.classpaths[i10] instanceof ClasspathDirectory) && CharOperation.prefixEquals(normalizedPath, charArray) && (cArr == null || normalizedPath.length > cArr.length)) {
                        cArr = normalizedPath;
                    }
                }
                if (cArr == null) {
                    this.knownFileNames.add(new String(charArray));
                } else {
                    this.knownFileNames.add(new String(CharOperation.subarray(charArray, cArr.length, charArray.length)));
                }
            } catch (IOException unused) {
            }
        }
    }

    private void initializeModuleLocations(Set<String> set) {
        if (set == null) {
            for (Classpath classpath : this.classpaths) {
                Iterator<String> it = classpath.getModuleNames(null).iterator();
                while (it.hasNext()) {
                    this.moduleLocations.put(it.next(), classpath);
                }
            }
            return;
        }
        HashMap hashMap = new HashMap();
        for (Classpath classpath2 : this.classpaths) {
            Iterator<String> it2 = classpath2.getModuleNames(null).iterator();
            while (it2.hasNext()) {
                hashMap.put(it2.next(), classpath2);
            }
        }
        for (Classpath classpath3 : this.classpaths) {
            for (String str : classpath3.getModuleNames(set, new Function() {
                @Override
                public final Object apply(Object obj) {
                    IModule lambda$0;
                    lambda$0 = FileSystem.this.lambda$0((String) obj);
                    return lambda$0;
                }
            })) {
                this.moduleLocations.put(str, (Classpath) hashMap.get(str));
            }
        }
    }

    private NameEnvironmentAnswer internalFindClass(String str, char[] cArr, boolean z10, char[] cArr2) {
        NameEnvironmentAnswer findClass;
        String valueOf;
        Classpath classpath;
        if (this.knownFileNames.contains(str)) {
            return null;
        }
        String str2 = String.valueOf(str) + ".class";
        String substring = str.length() == cArr.length ? Util.EMPTY_STRING : str2.substring(0, (str.length() - cArr.length) - 1);
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr2);
        if (lookupStrategy == IModuleAwareNameEnvironment.LookupStrategy.Named) {
            if (this.moduleLocations == null || (classpath = this.moduleLocations.get((valueOf = String.valueOf(cArr2)))) == null) {
                return null;
            }
            return classpath.findClass(cArr, substring, valueOf, str2);
        }
        char c10 = File.separatorChar;
        String replace = c10 == '/' ? substring : substring.replace('/', c10);
        if (substring == replace) {
            int length = this.classpaths.length;
            NameEnvironmentAnswer nameEnvironmentAnswer = null;
            for (int i10 = 0; i10 < length; i10++) {
                if (lookupStrategy.matches(this.classpaths[i10], new e()) && (findClass = this.classpaths[i10].findClass(cArr, substring, null, str2, z10)) != null && (findClass.moduleName() == null || this.moduleLocations.containsKey(String.valueOf(findClass.moduleName())))) {
                    if (!findClass.ignoreIfBetter()) {
                        if (findClass.isBetter(nameEnvironmentAnswer)) {
                            return findClass;
                        }
                    } else if (findClass.isBetter(nameEnvironmentAnswer)) {
                        nameEnvironmentAnswer = findClass;
                    }
                }
            }
            return nameEnvironmentAnswer;
        }
        String replace2 = str2.replace('/', c10);
        int length2 = this.classpaths.length;
        NameEnvironmentAnswer nameEnvironmentAnswer2 = null;
        for (int i11 = 0; i11 < length2; i11++) {
            Classpath classpath2 = this.classpaths[i11];
            if (lookupStrategy.matches(classpath2, new e())) {
                NameEnvironmentAnswer findClass2 = !(classpath2 instanceof ClasspathDirectory) ? classpath2.findClass(cArr, substring, null, str2, z10) : classpath2.findClass(cArr, replace, null, replace2, z10);
                if (findClass2 != null && (findClass2.moduleName() == null || this.moduleLocations.containsKey(String.valueOf(findClass2.moduleName())))) {
                    if (!findClass2.ignoreIfBetter()) {
                        if (findClass2.isBetter(nameEnvironmentAnswer2)) {
                            return findClass2;
                        }
                    } else if (findClass2.isBetter(nameEnvironmentAnswer2)) {
                        nameEnvironmentAnswer2 = findClass2;
                    }
                }
            }
        }
        return nameEnvironmentAnswer2;
    }

    public IModule lambda$0(String str) {
        return getModuleFromEnvironment(str.toCharArray());
    }

    public static String lambda$4(Parser parser, CompilationUnit compilationUnit) {
        char[][] parsePackageDeclaration = parser.parsePackageDeclaration(compilationUnit.getContents(), new CompilationResult(compilationUnit, 0, 0, 1));
        if (parsePackageDeclaration != null) {
            return CharOperation.toString(parsePackageDeclaration);
        }
        return null;
    }

    public void addModuleUpdate(String str, Consumer<IUpdatableModule> consumer, IUpdatableModule.UpdateKind updateKind) {
        IUpdatableModule.UpdatesByKind updatesByKind = this.moduleUpdates.get(str);
        if (updatesByKind == null) {
            Map<String, IUpdatableModule.UpdatesByKind> map = this.moduleUpdates;
            IUpdatableModule.UpdatesByKind updatesByKind2 = new IUpdatableModule.UpdatesByKind();
            map.put(str, updatesByKind2);
            updatesByKind = updatesByKind2;
        }
        updatesByKind.getList(updateKind, true).add(consumer);
    }

    @Override
    public void applyModuleUpdates(IUpdatableModule iUpdatableModule, IUpdatableModule.UpdateKind updateKind) {
        IUpdatableModule.UpdatesByKind updatesByKind;
        char[] name = iUpdatableModule.name();
        if (name == ModuleBinding.UNNAMED || (updatesByKind = this.moduleUpdates.get(String.valueOf(name))) == null) {
            return;
        }
        Iterator<Consumer<IUpdatableModule>> it = updatesByKind.getList(updateKind, false).iterator();
        while (it.hasNext()) {
            it.next().accept(iUpdatableModule);
        }
    }

    @Override
    public void cleanup() {
        int length = this.classpaths.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.classpaths[i10].reset();
        }
    }

    @Override
    public NameEnvironmentAnswer findType(char[][] cArr, char[] cArr2) {
        if (cArr != null) {
            return findClass(new String(CharOperation.concatWith(cArr, '/')), cArr[cArr.length - 1], false, cArr2);
        }
        return null;
    }

    public char[][][] findTypeNames(char[][] cArr) {
        if (cArr == null) {
            return null;
        }
        String str = new String(CharOperation.concatWith(cArr, '/'));
        char c10 = File.separatorChar;
        String replace = c10 == '/' ? str : str.replace('/', c10);
        if (str == replace) {
            int length = this.classpaths.length;
            char[][][] cArr2 = null;
            for (int i10 = 0; i10 < length; i10++) {
                char[][][] findTypeNames = this.classpaths[i10].findTypeNames(str, null);
                if (findTypeNames != null) {
                    if (cArr2 == null) {
                        cArr2 = findTypeNames;
                    } else {
                        int length2 = cArr2.length;
                        int length3 = findTypeNames.length;
                        char[][][] cArr3 = new char[length3 + length2][];
                        System.arraycopy(cArr2, 0, cArr3, 0, length2);
                        System.arraycopy(findTypeNames, 0, cArr3, length2, length3);
                        cArr2 = cArr3;
                    }
                }
            }
            return cArr2;
        }
        int length4 = this.classpaths.length;
        char[][][] cArr4 = null;
        for (int i11 = 0; i11 < length4; i11++) {
            Classpath classpath = this.classpaths[i11];
            char[][][] findTypeNames2 = !(classpath instanceof ClasspathDirectory) ? classpath.findTypeNames(str, null) : classpath.findTypeNames(replace, null);
            if (findTypeNames2 != null) {
                if (cArr4 == null) {
                    cArr4 = findTypeNames2;
                } else {
                    int length5 = cArr4.length;
                    int length6 = findTypeNames2.length;
                    char[][][] cArr5 = new char[length6 + length5][];
                    System.arraycopy(cArr4, 0, cArr5, 0, length5);
                    System.arraycopy(findTypeNames2, 0, cArr5, length5, length6);
                    cArr4 = cArr5;
                }
            }
        }
        return cArr4;
    }

    @Override
    public char[][] getAllAutomaticModules() {
        HashSet hashSet = new HashSet();
        int length = this.classpaths.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.classpaths[i10].isAutomaticModule()) {
                hashSet.add(this.classpaths[i10].getModule().name());
            }
        }
        return (char[][]) hashSet.toArray(new char[hashSet.size()]);
    }

    @Override
    public IModule getModule(char[] cArr) {
        IModule iModule = this.module;
        if (iModule != null && CharOperation.equals(cArr, iModule.name())) {
            return this.module;
        }
        if (!this.moduleLocations.containsKey(new String(cArr))) {
            return null;
        }
        for (Classpath classpath : this.classpaths) {
            IModule module = classpath.getModule(cArr);
            if (module != null) {
                return module;
            }
        }
        return null;
    }

    public IModule getModuleFromEnvironment(char[] cArr) {
        IModule iModule = this.module;
        if (iModule != null && CharOperation.equals(cArr, iModule.name())) {
            return this.module;
        }
        for (Classpath classpath : this.classpaths) {
            IModule module = classpath.getModule(cArr);
            if (module != null) {
                return module;
            }
        }
        return null;
    }

    @Override
    public char[][] getModulesDeclaringPackage(char[][] cArr, char[] cArr2, char[] cArr3) {
        Classpath classpath;
        String str = new String(CharOperation.concatWith(cArr, cArr2, '/'));
        String valueOf = String.valueOf(cArr3);
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr3);
        if (lookupStrategy == IModuleAwareNameEnvironment.LookupStrategy.Named) {
            Map<String, Classpath> map = this.moduleLocations;
            if (map == null || (classpath = map.get(valueOf)) == null || !classpath.isPackage(str, valueOf)) {
                return null;
            }
            return new char[][]{cArr3};
        }
        char[][] cArr4 = null;
        for (Classpath classpath2 : this.classpaths) {
            if (lookupStrategy.matches(classpath2, new e())) {
                if (lookupStrategy != IModuleAwareNameEnvironment.LookupStrategy.Unnamed) {
                    char[][] modulesDeclaringPackage = classpath2.getModulesDeclaringPackage(str, null);
                    if (modulesDeclaringPackage != null) {
                        cArr4 = cArr4 == null ? modulesDeclaringPackage : CharOperation.arrayConcat(cArr4, modulesDeclaringPackage);
                    }
                } else if (classpath2.isPackage(str, valueOf)) {
                    return new char[][]{ModuleBinding.UNNAMED};
                }
            }
        }
        return cArr4;
    }

    @Override
    public boolean hasCompilationUnit(char[][] cArr, char[] cArr2, boolean z10) {
        Classpath classpath;
        String valueOf = String.valueOf(CharOperation.concatWith(cArr, '/'));
        String valueOf2 = String.valueOf(cArr2);
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr2);
        final Parser parser = z10 ? getParser() : null;
        Function<CompilationUnit, String> function = new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$4;
                lambda$4 = FileSystem.lambda$4(Parser.this, (CompilationUnit) obj);
                return lambda$4;
            }
        };
        if ($SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[lookupStrategy.ordinal()] == 1) {
            Map<String, Classpath> map = this.moduleLocations;
            if (map == null || (classpath = map.get(valueOf2)) == null) {
                return false;
            }
            return z10 ? classpath.hasCUDeclaringPackage(valueOf, function) : classpath.hasCompilationUnit(valueOf, valueOf2);
        }
        int i10 = 0;
        while (true) {
            Classpath[] classpathArr = this.classpaths;
            if (i10 >= classpathArr.length) {
                return false;
            }
            Classpath classpath2 = classpathArr[i10];
            if (lookupStrategy.matches(classpath2, new e()) && classpath2.hasCompilationUnit(valueOf, valueOf2)) {
                return true;
            }
            i10++;
        }
    }

    public void scanForModules(Parser parser) {
        int length = this.classpaths.length;
        for (int i10 = 0; i10 < length; i10++) {
            IModule scanForModule = ModuleFinder.scanForModule(this.classpaths[i10], new File(this.classpaths[i10].getPath()), parser, false, null);
            if (scanForModule != null) {
                this.moduleLocations.put(String.valueOf(scanForModule.name()), this.classpaths[i10]);
            }
        }
    }

    public FileSystem(String[] strArr, String[] strArr2, String str, Collection<String> collection) {
        this.moduleLocations = new HashMap();
        this.moduleUpdates = new HashMap();
        int length = strArr.length;
        this.classpaths = new Classpath[length];
        int i10 = 0;
        for (String str2 : strArr) {
            Classpath classpath = getClasspath(str2, str, null, null, null);
            try {
                classpath.initialize();
                Iterator<String> it = classpath.getModuleNames(collection).iterator();
                while (it.hasNext()) {
                    this.moduleLocations.put(it.next(), classpath);
                }
                int i11 = i10 + 1;
                try {
                    this.classpaths[i10] = classpath;
                } catch (IOException unused) {
                }
                i10 = i11;
            } catch (IOException unused2) {
            }
        }
        if (i10 != length) {
            Classpath[] classpathArr = this.classpaths;
            Classpath[] classpathArr2 = new Classpath[i10];
            this.classpaths = classpathArr2;
            System.arraycopy(classpathArr, 0, classpathArr2, 0, i10);
        }
        initializeKnownFileNames(strArr2);
    }

    public static Classpath getClasspath(String str, String str2, AccessRuleSet accessRuleSet, Map<String, String> map, String str3) {
        return getClasspath(str, str2, false, accessRuleSet, null, map, str3);
    }

    public static Classpath getClasspath(String str, String str2, boolean z10, AccessRuleSet accessRuleSet, String str3, Map<String, String> map, String str4) {
        Classpath classpathMultiReleaseJar;
        File file = new File(convertPathSeparators(str));
        if (file.isDirectory()) {
            if (!file.exists()) {
                return null;
            }
            int i10 = z10 ? 1 : 3;
            if (str3 != null && str3 != "none") {
                str3 = convertPathSeparators(str3);
            }
            classpathMultiReleaseJar = new ClasspathDirectory(file, str2, i10, accessRuleSet, str3, map);
        } else {
            int archiveFormat = Util.archiveFormat(str);
            if (archiveFormat != 0) {
                if (archiveFormat == 1) {
                    return new ClasspathJmod(file, true, accessRuleSet, null);
                }
                return null;
            }
            if (z10) {
                if (str3 != null && str3 != "none") {
                    str3 = convertPathSeparators(str3);
                }
                classpathMultiReleaseJar = new ClasspathSourceJar(file, true, accessRuleSet, str2, str3);
            } else {
                if (str3 != null) {
                    return null;
                }
                if (str.endsWith(JRTUtil.JRT_FS_JAR)) {
                    HashMap<File, Classpath> hashMap = JRT_CLASSPATH_CACHE;
                    if (hashMap == null) {
                        JRT_CLASSPATH_CACHE = new HashMap<>();
                        classpathMultiReleaseJar = null;
                    } else {
                        classpathMultiReleaseJar = hashMap.get(file);
                    }
                    if (classpathMultiReleaseJar == null) {
                        classpathMultiReleaseJar = new ClasspathJrt(file, true, accessRuleSet, null);
                        try {
                            classpathMultiReleaseJar.initialize();
                        } catch (IOException unused) {
                        }
                        JRT_CLASSPATH_CACHE.put(file, classpathMultiReleaseJar);
                    }
                } else if (str4 == null) {
                    classpathMultiReleaseJar = new ClasspathJar(file, true, accessRuleSet, null);
                } else {
                    classpathMultiReleaseJar = new ClasspathMultiReleaseJar(file, true, accessRuleSet, str3, str4);
                }
            }
        }
        return classpathMultiReleaseJar;
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, char[] cArr3) {
        if (cArr != null) {
            return findClass(new String(CharOperation.concatWith(cArr2, cArr, '/')), cArr, false, cArr3);
        }
        return null;
    }

    public FileSystem(Classpath[] classpathArr, String[] strArr, boolean z10, Set<String> set) {
        this.moduleLocations = new HashMap();
        this.moduleUpdates = new HashMap();
        int length = classpathArr.length;
        this.classpaths = new Classpath[length];
        int i10 = 0;
        for (Classpath classpath : classpathArr) {
            try {
                classpath.initialize();
                Iterator<String> it = classpath.getModuleNames(set).iterator();
                while (it.hasNext()) {
                    this.moduleLocations.put(it.next(), classpath);
                }
                int i11 = i10 + 1;
                try {
                    this.classpaths[i10] = classpath;
                } catch (IOException | InvalidPathException unused) {
                }
                i10 = i11;
            } catch (IOException | InvalidPathException unused2) {
            }
        }
        if (i10 != length) {
            Classpath[] classpathArr2 = this.classpaths;
            Classpath[] classpathArr3 = new Classpath[i10];
            this.classpaths = classpathArr3;
            System.arraycopy(classpathArr2, 0, classpathArr3, 0, i10);
        }
        initializeModuleLocations(set);
        initializeKnownFileNames(strArr);
        this.annotationsFromClasspath = z10;
    }

    public FileSystem(Classpath[] classpathArr, String[] strArr, boolean z10) {
        this(classpathArr, strArr, z10, (Set<String>) null);
    }
}
