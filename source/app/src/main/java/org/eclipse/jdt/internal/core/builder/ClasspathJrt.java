package org.eclipse.jdt.internal.core.builder;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IMultiModuleEntry;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaProject;

public class ClasspathJrt extends ClasspathLocation implements IMultiModuleEntry {
    AccessRuleSet accessRuleSet;
    protected ZipFile annotationZipFile;
    String externalAnnotationPath;
    String zipFilename;
    protected static HashMap<String, HashMap<String, SimpleSet>> PackageCache = new HashMap<>();
    protected static HashMap<String, Set<IModule>> ModulesCache = new HashMap<>();
    static final Set<String> NO_LIMIT_MODULES = new HashSet();

    public ClasspathJrt() {
    }

    public static HashMap<String, SimpleSet> findPackagesInModules(ClasspathJrt classpathJrt) {
        String str = classpathJrt.zipFilename;
        HashMap<String, SimpleSet> hashMap = PackageCache.get(classpathJrt.getKey());
        if (hashMap != null) {
            return hashMap;
        }
        final HashMap<String, SimpleSet> hashMap2 = new HashMap<>();
        PackageCache.put(str, hashMap2);
        try {
            final File file = new File(str);
            JRTUtil.walkModuleImage(file, new JRTUtil.JrtFileVisitor<Path>() {
                SimpleSet packageSet = null;

                @Override
                public FileVisitResult visitFile(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitModule(Path path, String str2) throws IOException {
                    try {
                        ClasspathJrt.this.acceptModule(JRTUtil.getClassfileContent(file, "module-info.class", str2));
                    } catch (ClassFormatException e10) {
                        e10.printStackTrace();
                    }
                    SimpleSet simpleSet = new SimpleSet(41);
                    this.packageSet = simpleSet;
                    simpleSet.add("");
                    if (str2.endsWith("/")) {
                        str2 = str2.substring(0, str2.length() - 1);
                    }
                    hashMap2.put(str2, this.packageSet);
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitPackage(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                    ClasspathJar.addToPackageSet(this.packageSet, path.toString(), true);
                    return FileVisitResult.CONTINUE;
                }
            }, JRTUtil.NOTIFY_PACKAGES | JRTUtil.NOTIFY_MODULES);
        } catch (IOException unused) {
        }
        return hashMap2;
    }

    public static String lambda$0(String str) {
        return str;
    }

    public IModule lambda$1(String str) {
        return getModule(str.toCharArray());
    }

    public static void loadModules(ClasspathJrt classpathJrt) {
        if (ModulesCache.get(classpathJrt.getKey()) == null) {
            try {
                final File file = new File(classpathJrt.zipFilename);
                JRTUtil.walkModuleImage(file, new JRTUtil.JrtFileVisitor<Path>() {
                    SimpleSet packageSet = null;

                    @Override
                    public FileVisitResult visitFile(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                        return FileVisitResult.CONTINUE;
                    }

                    @Override
                    public FileVisitResult visitModule(Path path, String str) throws IOException {
                        try {
                            ClasspathJrt.this.acceptModule(JRTUtil.getClassfileContent(file, "module-info.class", str));
                        } catch (ClassFormatException e10) {
                            e10.printStackTrace();
                        }
                        return FileVisitResult.SKIP_SUBTREE;
                    }

                    @Override
                    public FileVisitResult visitPackage(Path path, Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                        ClasspathJar.addToPackageSet(this.packageSet, path.toString(), true);
                        return FileVisitResult.CONTINUE;
                    }
                }, JRTUtil.NOTIFY_MODULES);
            } catch (IOException unused) {
            }
        }
    }

    public static void resetCaches() {
        PackageCache.clear();
        ModulesCache.clear();
    }

    public void acceptModule(byte[] bArr) {
        ClassFileReader classFileReader;
        if (bArr == null) {
            return;
        }
        try {
            classFileReader = new ClassFileReader(bArr, "module-info.class".toCharArray());
        } catch (ClassFormatException e10) {
            e10.printStackTrace();
            classFileReader = null;
        }
        if (classFileReader != null) {
            String key = getKey();
            IBinaryModule moduleDeclaration = classFileReader.getModuleDeclaration();
            if (moduleDeclaration != null) {
                Set<IModule> set = ModulesCache.get(key);
                if (set == null) {
                    HashMap<String, Set<IModule>> hashMap = ModulesCache;
                    HashSet hashSet = new HashSet();
                    hashMap.put(key, hashSet);
                    set = hashSet;
                }
                set.add(moduleDeclaration);
            }
        }
    }

    public void addRequired(String str, Set<String> set) {
        IModule module = getModule(str.toCharArray());
        if (module == null) {
            return;
        }
        for (IModule.IModuleReference iModuleReference : module.requires()) {
            IModule module2 = getModule(iModuleReference.name());
            if (module2 != null) {
                String valueOf = String.valueOf(module2.name());
                if (set.add(valueOf)) {
                    addRequired(valueOf, set);
                }
            }
        }
    }

    @Override
    public void cleanup() {
        ZipFile zipFile = this.annotationZipFile;
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
            this.annotationZipFile = null;
        }
    }

    public NameEnvironmentAnswer createAnswer(String str, IBinaryType iBinaryType) {
        if (iBinaryType == null) {
            return null;
        }
        String str2 = this.externalAnnotationPath;
        if (str2 != null) {
            try {
                if (this.annotationZipFile == null) {
                    this.annotationZipFile = ExternalAnnotationDecorator.getAnnotationZipFile(str2, null);
                }
                iBinaryType = ExternalAnnotationDecorator.create(iBinaryType, this.externalAnnotationPath, str, this.annotationZipFile);
            } catch (IOException unused) {
            }
        }
        AccessRuleSet accessRuleSet = this.accessRuleSet;
        return accessRuleSet == null ? new NameEnvironmentAnswer(iBinaryType, (AccessRestriction) null, iBinaryType.getModule()) : new NameEnvironmentAnswer(iBinaryType, accessRuleSet.getViolatedRestriction(str.toCharArray()), iBinaryType.getModule());
    }

    @Override
    public String debugPathString() {
        return this.zipFilename;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClasspathJrt)) {
            return false;
        }
        ClasspathJrt classpathJrt = (ClasspathJrt) obj;
        AccessRuleSet accessRuleSet = this.accessRuleSet;
        AccessRuleSet accessRuleSet2 = classpathJrt.accessRuleSet;
        return (accessRuleSet == accessRuleSet2 || (accessRuleSet != null && accessRuleSet.equals(accessRuleSet2))) && this.zipFilename.endsWith(classpathJrt.zipFilename) && areAllModuleOptionsEqual(classpathJrt);
    }

    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4, boolean z10, Predicate<String> predicate) {
        if (!isPackage(str2, str3)) {
            return null;
        }
        try {
            return createAnswer(str4.substring(0, str4.length() - SuffixConstants.SUFFIX_CLASS.length), ClassFileReader.readFromModule(new File(this.zipFilename), str3, str4, predicate));
        } catch (IOException | ClassFormatException unused) {
            return null;
        }
    }

    public String getKey() {
        return this.zipFilename;
    }

    @Override
    public IModule getModule(char[] cArr) {
        Set<IModule> set = ModulesCache.get(getKey());
        if (set == null) {
            return null;
        }
        for (IModule iModule : set) {
            if (CharOperation.equals(iModule.name(), cArr)) {
                return iModule;
            }
        }
        return null;
    }

    @Override
    public Collection<String> getModuleNames(Collection<String> collection) {
        HashMap<String, SimpleSet> findPackagesInModules = findPackagesInModules(this);
        return findPackagesInModules != null ? selectModules(findPackagesInModules.o(), collection) : Collections.emptyList();
    }

    @Override
    public char[][] getModulesDeclaringPackage(String str, String str2) {
        return CharOperation.toCharArrays(JRTUtil.getModulesDeclaringPackage(new File(this.zipFilename), str, str2));
    }

    @Override
    public IPath getProjectRelativePath() {
        return null;
    }

    @Override
    public boolean hasCompilationUnit(String str, String str2) {
        return JRTUtil.hasCompilationUnit(new File(this.zipFilename), str, str2);
    }

    @Override
    public boolean hasModule() {
        return true;
    }

    public int hashCode() {
        String str = this.zipFilename;
        return str == null ? super.hashCode() : str.hashCode();
    }

    @Override
    public boolean isPackage(String str, String str2) {
        return JRTUtil.getModulesDeclaringPackage(new File(this.zipFilename), str, str2) != null;
    }

    public Collection<String> selectModules(Set<String> set, Collection<String> collection) {
        Collection internalDefaultRootModules;
        if (collection == NO_LIMIT_MODULES) {
            internalDefaultRootModules = new HashSet(set);
        } else if (collection != null) {
            HashSet hashSet = new HashSet(set);
            hashSet.retainAll(collection);
            internalDefaultRootModules = hashSet;
        } else {
            internalDefaultRootModules = JavaProject.internalDefaultRootModules(set, new Function() {
                @Override
                public final Object apply(Object obj) {
                    String lambda$0;
                    lambda$0 = ClasspathJrt.lambda$0((String) obj);
                    return lambda$0;
                }
            }, new Function() {
                @Override
                public final Object apply(Object obj) {
                    IModule lambda$1;
                    lambda$1 = ClasspathJrt.this.lambda$1((String) obj);
                    return lambda$1;
                }
            });
        }
        HashSet hashSet2 = new HashSet(internalDefaultRootModules);
        Iterator it = internalDefaultRootModules.iterator();
        while (it.hasNext()) {
            addRequired((String) it.next(), hashSet2);
        }
        return hashSet2;
    }

    public String toString() {
        return "Classpath jrt file " + this.zipFilename;
    }

    public ClasspathJrt(String str, AccessRuleSet accessRuleSet, IPath iPath) {
        this.zipFilename = str;
        this.accessRuleSet = accessRuleSet;
        if (iPath != null) {
            this.externalAnnotationPath = iPath.toString();
        }
        loadModules(this);
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10, Predicate<String> predicate) {
        return findClass(new String(cArr), str, str2, str3, z10, predicate);
    }

    @Override
    public NameEnvironmentAnswer findClass(String str, String str2, String str3, String str4) {
        return findClass(str, str2, str3, str4, false, (Predicate<String>) null);
    }
}
