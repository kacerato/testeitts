package org.eclipse.jdt.internal.core.search.matching;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementRequestor;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.JrtPackageFragmentRoot;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.builder.e;
import org.eclipse.jdt.internal.core.builder.f;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchNameEnvironment implements IModuleAwareNameEnvironment, SuffixConstants {
    LinkedHashSet<ClasspathLocation> locationSet;
    Map<String, ClasspathLocation> moduleLocations;
    Map<String, LinkedHashSet<ClasspathLocation>> moduleToClassPathLocations;
    Map<String, IModuleDescription> modules;
    private boolean modulesComputed = false;
    Map<String, ICompilationUnit> workingCopies;

    public JavaSearchNameEnvironment(IJavaProject iJavaProject, ICompilationUnit[] iCompilationUnitArr) {
        if (isComplianceJava9OrHigher(iJavaProject)) {
            this.moduleLocations = new HashMap();
            this.moduleToClassPathLocations = new HashMap();
        }
        this.modules = new HashMap();
        this.locationSet = computeClasspathLocations((JavaProject) iJavaProject);
        this.workingCopies = getWorkingCopyMap(iCompilationUnitArr);
    }

    private void addClassPathToModule(String str, ClasspathLocation classpathLocation) {
        Map<String, LinkedHashSet<ClasspathLocation>> map = this.moduleToClassPathLocations;
        if (map != null) {
            LinkedHashSet<ClasspathLocation> linkedHashSet = map.get(str);
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet<>();
                this.moduleToClassPathLocations.put(str, linkedHashSet);
            }
            linkedHashSet.add(classpathLocation);
        }
    }

    private void addModuleClassPathInfo(PackageFragmentRoot packageFragmentRoot, IModuleDescription iModuleDescription, ClasspathLocation classpathLocation) {
        IModuleDescription moduleDescription = packageFragmentRoot.getModuleDescription();
        if (moduleDescription == null) {
            if (iModuleDescription != null) {
                addModuleClassPathInfo(classpathLocation, iModuleDescription);
                return;
            }
            return;
        }
        String addModuleClassPathInfo = addModuleClassPathInfo(classpathLocation, moduleDescription);
        if (addModuleClassPathInfo != null) {
            this.modules.put(addModuleClassPathInfo, moduleDescription);
        }
        Map<String, ClasspathLocation> map = this.moduleLocations;
        if (map != null) {
            map.put(addModuleClassPathInfo, classpathLocation);
        }
    }

    private LinkedHashSet<ClasspathLocation> computeClasspathLocations(JavaProject javaProject) {
        IModuleDescription iModuleDescription = null;
        try {
            IPackageFragmentRoot[] allPackageFragmentRoots = javaProject.getAllPackageFragmentRoots();
            try {
                iModuleDescription = javaProject.getModuleDescription();
            } catch (JavaModelException unused) {
            }
            IModuleDescription iModuleDescription2 = iModuleDescription;
            LinkedHashSet<ClasspathLocation> linkedHashSet = new LinkedHashSet<>();
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            for (IPackageFragmentRoot iPackageFragmentRoot : allPackageFragmentRoots) {
                ClasspathLocation mapToClassPathLocation = mapToClassPathLocation(javaModelManager, (PackageFragmentRoot) iPackageFragmentRoot, iModuleDescription2);
                if (mapToClassPathLocation != null) {
                    linkedHashSet.add(mapToClassPathLocation);
                }
            }
            return linkedHashSet;
        } catch (JavaModelException unused2) {
            return null;
        }
    }

    private void computeModules() {
        if (this.modulesComputed) {
            return;
        }
        this.modulesComputed = true;
        JavaElementRequestor javaElementRequestor = new JavaElementRequestor();
        try {
            JavaModelManager.getModulePathManager().seekModule(CharOperation.ALL_PREFIX, true, javaElementRequestor);
            for (IModuleDescription iModuleDescription : javaElementRequestor.getModules()) {
                this.modules.putIfAbsent(iModuleDescription.getElementName(), iModuleDescription);
            }
        } catch (JavaModelException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private NameEnvironmentAnswer findClass(String str, char[] cArr, IModuleAwareNameEnvironment.LookupStrategy lookupStrategy, String str2) {
        String str3;
        String str4;
        String str5;
        Map<String, ClasspathLocation> map;
        f fVar;
        NameEnvironmentAnswer findClass;
        String str6;
        String str7;
        String str8;
        Iterator<ClasspathLocation> locationsFor = getLocationsFor(str2);
        String str9 = null;
        NameEnvironmentAnswer nameEnvironmentAnswer = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        while (locationsFor.hasNext()) {
            ClasspathLocation next = locationsFor.next();
            if (lookupStrategy.matches(next, new e())) {
                if (next instanceof ClasspathSourceDirectory) {
                    if (str11 != null) {
                        str6 = str13;
                        str7 = str11;
                        str8 = str9;
                    } else if (str.length() > cArr.length) {
                        int length = str.length() - cArr.length;
                        String substring = str.substring(0, length - 1);
                        str6 = str;
                        str7 = str.substring(length);
                        str8 = substring;
                    } else {
                        str7 = str;
                        str6 = str7;
                        str8 = "";
                    }
                    org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) this.workingCopies.get(str);
                    findClass = iCompilationUnit != null ? new NameEnvironmentAnswer(iCompilationUnit, (AccessRestriction) null) : next.findClass(str7, str8, str2, str6, false, (Predicate<String>) null);
                    str9 = str8;
                    str11 = str7;
                    str13 = str6;
                } else {
                    if (str10 == null) {
                        String str14 = String.valueOf(str) + ".class";
                        if (str.length() > cArr.length) {
                            int length2 = str14.length() - cArr.length;
                            int i10 = length2 - 6;
                            str9 = str14.substring(0, length2 - 7);
                            str4 = str14.substring(i10);
                            str3 = str14;
                        } else {
                            str4 = str14;
                            str3 = str4;
                            str5 = "";
                            map = this.moduleLocations;
                            if (map == null) {
                                map.getClass();
                                fVar = new f(map);
                            } else {
                                fVar = null;
                            }
                            findClass = next.findClass(str4, str5, str2, str3, false, (Predicate<String>) fVar);
                            str9 = str5;
                            str10 = str4;
                            str12 = str3;
                        }
                    } else {
                        str3 = str12;
                        str4 = str10;
                    }
                    str5 = str9;
                    map = this.moduleLocations;
                    if (map == null) {
                    }
                    findClass = next.findClass(str4, str5, str2, str3, false, (Predicate<String>) fVar);
                    str9 = str5;
                    str10 = str4;
                    str12 = str3;
                }
                if (findClass == null) {
                    continue;
                } else if (findClass.ignoreIfBetter()) {
                    if (findClass.isBetter(nameEnvironmentAnswer)) {
                        nameEnvironmentAnswer = findClass;
                    }
                } else if (findClass.isBetter(nameEnvironmentAnswer)) {
                    return findClass;
                }
            }
        }
        if (nameEnvironmentAnswer != null) {
            return nameEnvironmentAnswer;
        }
        return null;
    }

    private Iterator<ClasspathLocation> getLocationsFor(String str) {
        LinkedHashSet<ClasspathLocation> linkedHashSet;
        return (str == null || (linkedHashSet = this.moduleToClassPathLocations.get(str)) == null || linkedHashSet.size() <= 0) ? this.locationSet.iterator() : linkedHashSet.iterator();
    }

    public static Map<String, ICompilationUnit> getWorkingCopyMap(ICompilationUnit[] iCompilationUnitArr) {
        int length = iCompilationUnitArr == null ? 0 : iCompilationUnitArr.length;
        HashMap hashMap = new HashMap(length);
        if (iCompilationUnitArr != null) {
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    try {
                        ICompilationUnit iCompilationUnit = iCompilationUnitArr[i10];
                        IPackageDeclaration[] packageDeclarations = iCompilationUnit.getPackageDeclarations();
                        String elementName = packageDeclarations.length > 0 ? packageDeclarations[0].getElementName() : "";
                        String nameWithoutJavaLikeExtension = Util.getNameWithoutJavaLikeExtension(iCompilationUnit.getElementName());
                        if (elementName.length() != 0) {
                            nameWithoutJavaLikeExtension = String.valueOf(elementName.replace('.', '/')) + '/' + nameWithoutJavaLikeExtension;
                        }
                        hashMap.put(nameWithoutJavaLikeExtension, iCompilationUnit);
                        i10++;
                    } catch (JavaModelException unused) {
                    }
                }
            }
        }
        return hashMap;
    }

    private static boolean isComplianceJava9OrHigher(IJavaProject iJavaProject) {
        return iJavaProject != null && CompilerOptions.versionToJdkLevel(iJavaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)) >= ClassFileConstants.JDK9;
    }

    public static boolean lambda$5(IModule iModule) {
        return iModule != null && iModule.isAutomatic();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0097, code lost:
    
        r7 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ClasspathLocation mapToClassPathLocation(JavaModelManager javaModelManager, PackageFragmentRoot packageFragmentRoot, IModuleDescription iModuleDescription) {
        ClasspathLocation classpathLocation;
        IPath path = packageFragmentRoot.getPath();
        try {
        } catch (CoreException unused) {
            classpathLocation = null;
        }
        if (packageFragmentRoot.isArchive()) {
            ClasspathEntry classpathEntry = (ClasspathEntry) packageFragmentRoot.getRawClasspathEntry();
            IJavaProject iJavaProject = (IJavaProject) packageFragmentRoot.getParent();
            String option = iJavaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
            classpathLocation = packageFragmentRoot instanceof JrtPackageFragmentRoot ? ClasspathLocation.forJrtSystem(path.toOSString(), classpathEntry.getAccessRuleSet(), ClasspathEntry.getExternalAnnotationPath(classpathEntry, iJavaProject.getProject(), true), option) : ClasspathLocation.forLibrary(javaModelManager.getZipFile(path), classpathEntry.getAccessRuleSet(), ClasspathEntry.getExternalAnnotationPath(classpathEntry, ((IJavaProject) packageFragmentRoot.getParent()).getProject(), true), classpathEntry.isModular(), option);
        } else {
            Object target = JavaModel.getTarget(path, true);
            if (target != null) {
                if (packageFragmentRoot.getKind() == 1) {
                    classpathLocation = new ClasspathSourceDirectory((IContainer) target, packageFragmentRoot.fullExclusionPatternChars(), packageFragmentRoot.fullInclusionPatternChars());
                } else {
                    ClasspathEntry classpathEntry2 = (ClasspathEntry) packageFragmentRoot.getRawClasspathEntry();
                    classpathLocation = ClasspathLocation.forBinaryFolder((IContainer) target, false, classpathEntry2.getAccessRuleSet(), ClasspathEntry.getExternalAnnotationPath(classpathEntry2, ((IJavaProject) packageFragmentRoot.getParent()).getProject(), true), classpathEntry2.isModular());
                }
            }
            classpathLocation = null;
        }
        if (isComplianceJava9OrHigher(packageFragmentRoot.getJavaProject())) {
            addModuleClassPathInfo(packageFragmentRoot, iModuleDescription, classpathLocation);
        }
        return classpathLocation;
    }

    public void addProjectClassPath(JavaProject javaProject) {
        LinkedHashSet<ClasspathLocation> computeClasspathLocations = computeClasspathLocations(javaProject);
        if (computeClasspathLocations != null) {
            this.locationSet.addAll(computeClasspathLocations);
        }
    }

    @Override
    public void cleanup() {
        this.locationSet.clear();
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, char[] cArr3) {
        if (cArr != null) {
            return findClass(new String(CharOperation.concatWith(cArr2, cArr, '/')), cArr, IModuleAwareNameEnvironment.LookupStrategy.get(cArr3), IModuleAwareNameEnvironment.LookupStrategy.getStringName(cArr3));
        }
        return null;
    }

    @Override
    public char[][] getAllAutomaticModules() {
        Map<String, ClasspathLocation> map = this.moduleLocations;
        if (map == null || map.size() == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        Set set = (Set) this.moduleLocations.values().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                IModule module;
                module = ((ClasspathLocation) obj).getModule();
                return module;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$5;
                lambda$5 = JavaSearchNameEnvironment.lambda$5((IModule) obj);
                return lambda$5;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                char[] name;
                name = ((IModule) obj).name();
                return name;
            }
        }).collect(Collectors.toSet());
        return (char[][]) set.toArray(new char[set.size()]);
    }

    @Override
    public IModule getModule(char[] cArr) {
        computeModules();
        IAdaptable iAdaptable = (IModuleDescription) this.modules.get(new String(cArr));
        if (iAdaptable != null) {
            try {
                return (IModule) ((JavaElement) iAdaptable).getElementInfo();
            } catch (JavaModelException unused) {
            }
        }
        return null;
    }

    @Override
    public char[][] getModulesDeclaringPackage(char[][] cArr, char[] cArr2, char[] cArr3) {
        char[][] modulesDeclaringPackage;
        String valueOf = String.valueOf(CharOperation.concatWith(cArr, cArr2, '/'));
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr3);
        if (lookupStrategy == IModuleAwareNameEnvironment.LookupStrategy.Named) {
            if (this.moduleToClassPathLocations != null) {
                String valueOf2 = String.valueOf(cArr3);
                LinkedHashSet<ClasspathLocation> linkedHashSet = this.moduleToClassPathLocations.get(valueOf2);
                List list = linkedHashSet != null ? (List) linkedHashSet.stream().collect(Collectors.toList()) : null;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (((ClasspathLocation) it.next()).isPackage(valueOf, valueOf2)) {
                            return new char[][]{cArr3};
                        }
                    }
                }
            }
            return null;
        }
        char[][] cArr4 = CharOperation.NO_CHAR_CHAR;
        Iterator<ClasspathLocation> it2 = this.locationSet.iterator();
        while (it2.hasNext()) {
            ClasspathLocation next = it2.next();
            if (lookupStrategy.matches(next, new e()) && next.isPackage(valueOf, null) && (modulesDeclaringPackage = next.getModulesDeclaringPackage(valueOf, null)) != null && modulesDeclaringPackage.length != 0) {
                cArr4 = CharOperation.arrayConcat(cArr4, modulesDeclaringPackage);
            }
        }
        if (cArr4 == CharOperation.NO_CHAR_CHAR) {
            return null;
        }
        return cArr4;
    }

    @Override
    public boolean hasCompilationUnit(char[][] cArr, char[] cArr2, boolean z10) {
        ClasspathLocation classpathLocation;
        String valueOf = String.valueOf(CharOperation.concatWith(cArr, '/'));
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr2);
        String stringName = IModuleAwareNameEnvironment.LookupStrategy.getStringName(cArr2);
        if (lookupStrategy == IModuleAwareNameEnvironment.LookupStrategy.Named) {
            Map<String, ClasspathLocation> map = this.moduleLocations;
            if (map == null || (classpathLocation = map.get(stringName)) == null) {
                return false;
            }
            return classpathLocation.hasCompilationUnit(valueOf, stringName);
        }
        Iterator<ClasspathLocation> it = this.locationSet.iterator();
        while (it.hasNext()) {
            ClasspathLocation next = it.next();
            if (lookupStrategy.matches(next, new e()) && next.hasCompilationUnit(valueOf, stringName)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public NameEnvironmentAnswer findType(char[][] cArr, char[] cArr2) {
        if (cArr != null) {
            return findClass(new String(CharOperation.concatWith(cArr, '/')), cArr[cArr.length - 1], IModuleAwareNameEnvironment.LookupStrategy.get(cArr2), IModuleAwareNameEnvironment.LookupStrategy.getStringName(cArr2));
        }
        return null;
    }

    private String addModuleClassPathInfo(ClasspathLocation classpathLocation, IModuleDescription iModuleDescription) {
        char[] name;
        IModule moduleDescriptionInfo = NameLookup.getModuleDescriptionInfo(iModuleDescription);
        if (moduleDescriptionInfo == null || (name = moduleDescriptionInfo.name()) == null) {
            return null;
        }
        String str = new String(name);
        classpathLocation.setModule(moduleDescriptionInfo);
        addClassPathToModule(str, classpathLocation);
        return str;
    }
}
