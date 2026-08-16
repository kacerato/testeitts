package org.eclipse.jdt.internal.core.builder;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;
import org.eclipse.jdt.internal.compiler.env.IMultiModuleEntry;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.AbstractModule;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.CompilationGroup;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.ModuleUpdater;

public class NameEnvironment implements IModuleAwareNameEnvironment, SuffixConstants {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy;
    SimpleLookupTable additionalUnits;
    ClasspathLocation[] binaryLocations;
    private CompilationGroup compilationGroup;
    SimpleSet initialTypeNames;
    boolean isIncrementalBuild = false;
    Map<String, IModulePathEntry> modulePathEntries;
    ModuleUpdater moduleUpdater;
    BuildNotifier notifier;
    ClasspathMultiDirectory[] sourceLocations;

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

    public NameEnvironment(IWorkspaceRoot iWorkspaceRoot, JavaProject javaProject, SimpleLookupTable simpleLookupTable, BuildNotifier buildNotifier, CompilationGroup compilationGroup) throws CoreException {
        this.compilationGroup = compilationGroup;
        this.notifier = buildNotifier;
        computeClasspathLocations(iWorkspaceRoot, javaProject, simpleLookupTable);
        setNames(null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0332 A[LOOP:2: B:130:0x02f5->B:132:0x0332, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x048d  */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void computeClasspathLocations(IWorkspaceRoot iWorkspaceRoot, JavaProject javaProject, SimpleLookupTable simpleLookupTable) throws CoreException {
        LinkedHashMap linkedHashMap;
        ClasspathLocation[] classpathLocationArr;
        String str;
        JavaProject javaProject2;
        LinkedHashMap linkedHashMap2;
        ArrayList arrayList;
        String str2;
        IModule iModule;
        ArrayList arrayList2;
        String str3;
        ArrayList arrayList3;
        boolean z10;
        String str4;
        ClasspathLocation classpathLocation;
        ClasspathLocation forBinaryFolder;
        SimpleLookupTable simpleLookupTable2;
        ArrayList arrayList4;
        String str5;
        String str6;
        ClasspathLocation[] classpathLocationArr2;
        String valueOf;
        IModuleDescription moduleDescription;
        Set<String> set;
        ArrayList arrayList5;
        ClasspathLocation[] classpathLocationArr3;
        IProject folder;
        NameEnvironment nameEnvironment = this;
        IWorkspaceRoot iWorkspaceRoot2 = iWorkspaceRoot;
        JavaProject javaProject3 = javaProject;
        SimpleLookupTable simpleLookupTable3 = simpleLookupTable;
        IMarker cycleMarker = javaProject.getCycleMarker();
        ?? r13 = 1;
        if (cycleMarker != null) {
            int i10 = "error".equals(javaProject3.getOption(JavaCore.CORE_CIRCULAR_CLASSPATH, true)) ? 2 : 1;
            if (i10 != cycleMarker.getAttribute("severity", i10)) {
                cycleMarker.setAttribute("severity", i10);
            }
        }
        IClasspathEntry[] expandedClasspath = javaProject3.getExpandedClasspath(nameEnvironment.compilationGroup == CompilationGroup.MAIN);
        ArrayList arrayList6 = new ArrayList(expandedClasspath.length);
        ArrayList arrayList7 = new ArrayList(expandedClasspath.length);
        ArrayList arrayList8 = new ArrayList(expandedClasspath.length);
        String option = javaProject3.getOption("org.eclipse.jdt.core.compiler.compliance", true);
        if (CompilerOptions.versionToJdkLevel(option) >= ClassFileConstants.JDK9) {
            LinkedHashMap linkedHashMap3 = new LinkedHashMap(expandedClasspath.length);
            ModuleUpdater moduleUpdater = new ModuleUpdater(javaProject3);
            nameEnvironment.moduleUpdater = moduleUpdater;
            if (nameEnvironment.compilationGroup == CompilationGroup.TEST) {
                moduleUpdater.addReadUnnamedForNonEmptyClasspath(javaProject3, expandedClasspath);
            }
            linkedHashMap = linkedHashMap3;
        } else {
            linkedHashMap = null;
        }
        IModuleDescription moduleDescription2 = javaProject.getModuleDescription();
        String pushPatchToFront = ModuleEntryProcessor.pushPatchToFront(expandedClasspath, javaProject3);
        int length = expandedClasspath.length;
        IModule iModule2 = null;
        int i11 = 0;
        while (i11 < length) {
            if (i11 == r13 && pushPatchToFront != null) {
                pushPatchToFront = null;
            }
            ClasspathEntry classpathEntry = (ClasspathEntry) expandedClasspath[i11];
            int i12 = length;
            IPath path = classpathEntry.getPath();
            IClasspathEntry[] iClasspathEntryArr = expandedClasspath;
            Object target = JavaModel.getTarget(path, r13);
            int i13 = i11;
            IPath externalAnnotationPath = ClasspathEntry.getExternalAnnotationPath(classpathEntry, javaProject.getProject(), r13);
            if (target == null) {
                linkedHashMap2 = linkedHashMap;
                arrayList2 = arrayList8;
                arrayList = arrayList7;
                arrayList3 = arrayList6;
                javaProject2 = javaProject3;
                z10 = r13;
                str2 = option;
            } else {
                boolean isOnModulePath = nameEnvironment.isOnModulePath(classpathEntry);
                Set<String> computeLimitModules = ModuleEntryProcessor.computeLimitModules(classpathEntry);
                if (pushPatchToFront == null || computeLimitModules == null || computeLimitModules.contains(pushPatchToFront)) {
                    str = option;
                } else {
                    str = option;
                    pushPatchToFront = null;
                }
                if (nameEnvironment.moduleUpdater != null && (nameEnvironment.compilationGroup == CompilationGroup.TEST || !classpathEntry.isTest())) {
                    nameEnvironment.moduleUpdater.computeModuleUpdates(classpathEntry);
                }
                int entryKind = classpathEntry.getEntryKind();
                if (entryKind != 1) {
                    if (entryKind != 2) {
                        if (entryKind == 3 && (target instanceof IContainer)) {
                            IPath outputLocation = classpathEntry.getOutputLocation() != null ? classpathEntry.getOutputLocation() : javaProject.getOutputLocation();
                            if (outputLocation.segmentCount() == 1) {
                                folder = javaProject.getProject();
                            } else {
                                folder = iWorkspaceRoot2.getFolder(outputLocation);
                                if (!folder.exists()) {
                                    nameEnvironment.createOutputFolder(folder);
                                }
                            }
                            if (nameEnvironment.compilationGroup != CompilationGroup.TEST || classpathEntry.isTest()) {
                                ClasspathLocation forSourceFolder = ClasspathLocation.forSourceFolder((IContainer) target, folder, classpathEntry.fullInclusionPatternChars(), classpathEntry.fullExclusionPatternChars(), classpathEntry.ignoreOptionalProblems());
                                if (iModule2 != null) {
                                    ModuleEntryProcessor.combinePatchIntoModuleEntry(forSourceFolder, iModule2, linkedHashMap);
                                }
                                arrayList6.add(forSourceFolder);
                                forSourceFolder.patchModuleName = pushPatchToFront;
                            } else {
                                ClasspathLocation forBinaryFolder2 = ClasspathLocation.forBinaryFolder(folder, true, classpathEntry.getAccessRuleSet(), externalAnnotationPath, isOnModulePath);
                                arrayList7.add(forBinaryFolder2);
                                arrayList8.add(forBinaryFolder2);
                                if (iModule2 != null) {
                                    ModuleEntryProcessor.combinePatchIntoModuleEntry(forBinaryFolder2, iModule2, linkedHashMap);
                                }
                                forBinaryFolder2.patchModuleName = pushPatchToFront;
                            }
                        }
                    } else if (target instanceof IProject) {
                        IContainer iContainer = (IProject) target;
                        if (JavaProject.hasJavaNature(iContainer)) {
                            JavaProject javaProject4 = (JavaProject) JavaCore.create((IProject) iContainer);
                            IClasspathEntry[] rawClasspath = javaProject4.getRawClasspath();
                            ArrayList arrayList9 = new ArrayList();
                            ArrayList<ClasspathLocation> arrayList10 = new ArrayList();
                            IModule iModule3 = iModule2;
                            int length2 = rawClasspath.length;
                            ArrayList arrayList11 = arrayList8;
                            int i14 = 0;
                            while (i14 < length2) {
                                IClasspathEntry iClasspathEntry = rawClasspath[i14];
                                String str7 = pushPatchToFront;
                                int i15 = length2;
                                if (iClasspathEntry.getEntryKind() != 3 || (((nameEnvironment.compilationGroup == CompilationGroup.MAIN || classpathEntry.isWithoutTestCode()) && iClasspathEntry.isTest()) || !(JavaModel.getTarget(iClasspathEntry.getPath(), true) instanceof IContainer))) {
                                    set = computeLimitModules;
                                    arrayList5 = arrayList6;
                                } else {
                                    IPath outputLocation2 = iClasspathEntry.getOutputLocation() != null ? iClasspathEntry.getOutputLocation() : javaProject4.getOutputLocation();
                                    set = computeLimitModules;
                                    IContainer folder2 = outputLocation2.segmentCount() == 1 ? iContainer : iWorkspaceRoot2.getFolder(outputLocation2);
                                    if (!folder2.exists() || arrayList9.contains(folder2)) {
                                        arrayList5 = arrayList6;
                                    } else {
                                        arrayList9.add(folder2);
                                        ClasspathLocation forBinaryFolder3 = ClasspathLocation.forBinaryFolder(folder2, true, classpathEntry.getAccessRuleSet(), externalAnnotationPath, isOnModulePath);
                                        arrayList7.add(forBinaryFolder3);
                                        arrayList10.add(forBinaryFolder3);
                                        if (simpleLookupTable != null) {
                                            arrayList5 = arrayList6;
                                            ClasspathLocation[] classpathLocationArr4 = (ClasspathLocation[]) simpleLookupTable.get(iContainer);
                                            if (classpathLocationArr4 == null) {
                                                classpathLocationArr3 = new ClasspathLocation[]{forBinaryFolder3};
                                            } else {
                                                int length3 = classpathLocationArr4.length;
                                                ClasspathLocation[] classpathLocationArr5 = new ClasspathLocation[length3 + 1];
                                                System.arraycopy(classpathLocationArr4, 0, classpathLocationArr5, 0, length3);
                                                classpathLocationArr5[length3] = forBinaryFolder3;
                                                classpathLocationArr3 = classpathLocationArr5;
                                            }
                                            simpleLookupTable.put(iContainer, classpathLocationArr3);
                                        } else {
                                            arrayList5 = arrayList6;
                                        }
                                    }
                                }
                                i14++;
                                nameEnvironment = this;
                                iWorkspaceRoot2 = iWorkspaceRoot;
                                computeLimitModules = set;
                                pushPatchToFront = str7;
                                length2 = i15;
                                arrayList6 = arrayList5;
                            }
                            if (linkedHashMap != null && isOnModulePath && arrayList10.size() > 0) {
                                try {
                                    moduleDescription = javaProject4.getModuleDescription();
                                } catch (JavaModelException unused) {
                                }
                                if (moduleDescription != null) {
                                    iModule2 = ((AbstractModule) moduleDescription).getModuleInfo();
                                    if (iModule2 == null) {
                                        iModule2 = IModule.createAutomatic(javaProject4.getElementName(), false, javaProject4.getManifest());
                                    }
                                    ModulePathEntry modulePathEntry = new ModulePathEntry(javaProject4.getPath(), iModule2, (ClasspathLocation[]) arrayList10.toArray(new ClasspathLocation[arrayList10.size()]));
                                    valueOf = String.valueOf(iModule2.name());
                                    IUpdatableModule.UpdatesByKind updates = nameEnvironment.moduleUpdater.getUpdates(valueOf);
                                    for (ClasspathLocation classpathLocation2 : arrayList10) {
                                        classpathLocation2.limitModuleNames = computeLimitModules;
                                        classpathLocation2.updates = updates;
                                        classpathLocation2.patchModuleName = pushPatchToFront;
                                    }
                                    if (computeLimitModules != null || computeLimitModules.contains(valueOf)) {
                                        linkedHashMap.put(valueOf, modulePathEntry);
                                        if (valueOf.equals(pushPatchToFront)) {
                                            javaProject2 = javaProject;
                                            linkedHashMap2 = linkedHashMap;
                                            arrayList = arrayList7;
                                            str2 = str;
                                            arrayList2 = arrayList11;
                                            z10 = true;
                                            arrayList3 = arrayList6;
                                        }
                                    }
                                }
                                iModule2 = null;
                                if (iModule2 == null) {
                                }
                                ModulePathEntry modulePathEntry2 = new ModulePathEntry(javaProject4.getPath(), iModule2, (ClasspathLocation[]) arrayList10.toArray(new ClasspathLocation[arrayList10.size()]));
                                valueOf = String.valueOf(iModule2.name());
                                IUpdatableModule.UpdatesByKind updates2 = nameEnvironment.moduleUpdater.getUpdates(valueOf);
                                while (r10.hasNext()) {
                                }
                                if (computeLimitModules != null) {
                                }
                                linkedHashMap.put(valueOf, modulePathEntry2);
                                if (valueOf.equals(pushPatchToFront)) {
                                }
                            }
                            javaProject2 = javaProject;
                            str3 = pushPatchToFront;
                            linkedHashMap2 = linkedHashMap;
                            arrayList = arrayList7;
                            str2 = str;
                            iModule = iModule3;
                            arrayList2 = arrayList11;
                            z10 = true;
                            arrayList3 = arrayList6;
                            pushPatchToFront = str3;
                            iModule2 = iModule;
                        }
                    }
                    javaProject2 = javaProject;
                    iModule = iModule2;
                    linkedHashMap2 = linkedHashMap;
                    arrayList2 = arrayList8;
                    arrayList = arrayList7;
                    arrayList3 = arrayList6;
                    str2 = str;
                    z10 = true;
                    str3 = pushPatchToFront;
                    pushPatchToFront = str3;
                    iModule2 = iModule;
                } else {
                    String str8 = pushPatchToFront;
                    IModule iModule4 = iModule2;
                    ArrayList arrayList12 = arrayList8;
                    ArrayList arrayList13 = arrayList6;
                    SimpleLookupTable simpleLookupTable4 = simpleLookupTable3;
                    if (target instanceof IResource) {
                        IFile iFile = (IResource) target;
                        if (iFile instanceof IFile) {
                            javaProject2 = javaProject;
                            str4 = str;
                            forBinaryFolder = ClasspathLocation.forLibrary(iFile, ("ignore".equals(javaProject2.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) && "ignore".equals(javaProject2.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true))) ? null : classpathEntry.getAccessRuleSet(), externalAnnotationPath, isOnModulePath, str4);
                        } else {
                            javaProject2 = javaProject;
                            str4 = str;
                            if (iFile instanceof IContainer) {
                                forBinaryFolder = ClasspathLocation.forBinaryFolder((IContainer) target, false, ("ignore".equals(javaProject2.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) && "ignore".equals(javaProject2.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true))) ? null : classpathEntry.getAccessRuleSet(), externalAnnotationPath, isOnModulePath);
                            } else {
                                classpathLocation = null;
                                arrayList7.add(classpathLocation);
                                if (linkedHashMap == null) {
                                    str6 = str8;
                                    simpleLookupTable2 = simpleLookupTable4;
                                    linkedHashMap2 = linkedHashMap;
                                    str5 = str4;
                                    arrayList2 = arrayList12;
                                    arrayList4 = arrayList7;
                                    arrayList3 = arrayList13;
                                    iModule2 = collectModuleEntries(classpathLocation, path, isOnModulePath, computeLimitModules, str6, iModule4, linkedHashMap2);
                                } else {
                                    simpleLookupTable2 = simpleLookupTable4;
                                    linkedHashMap2 = linkedHashMap;
                                    arrayList4 = arrayList7;
                                    str5 = str4;
                                    arrayList2 = arrayList12;
                                    str6 = str8;
                                    arrayList3 = arrayList13;
                                    iModule2 = iModule4;
                                }
                                if (simpleLookupTable2 != null) {
                                    Object project = iFile.getProject();
                                    ClasspathLocation[] classpathLocationArr6 = (ClasspathLocation[]) simpleLookupTable2.get(project);
                                    if (classpathLocationArr6 == null) {
                                        classpathLocationArr2 = new ClasspathLocation[]{classpathLocation};
                                    } else {
                                        int length4 = classpathLocationArr6.length;
                                        ClasspathLocation[] classpathLocationArr7 = new ClasspathLocation[length4 + 1];
                                        System.arraycopy(classpathLocationArr6, 0, classpathLocationArr7, 0, length4);
                                        classpathLocationArr7[length4] = classpathLocation;
                                        classpathLocationArr2 = classpathLocationArr7;
                                    }
                                    simpleLookupTable2.put(project, classpathLocationArr2);
                                }
                                pushPatchToFront = str6;
                                str2 = str5;
                                arrayList = arrayList4;
                                z10 = true;
                            }
                        }
                        classpathLocation = forBinaryFolder;
                        arrayList7.add(classpathLocation);
                        if (linkedHashMap == null) {
                        }
                        if (simpleLookupTable2 != null) {
                        }
                        pushPatchToFront = str6;
                        str2 = str5;
                        arrayList = arrayList4;
                        z10 = true;
                    } else {
                        javaProject2 = javaProject;
                        linkedHashMap2 = linkedHashMap;
                        arrayList = arrayList7;
                        str2 = str;
                        iModule = iModule4;
                        arrayList2 = arrayList12;
                        str3 = str8;
                        arrayList3 = arrayList13;
                        if (target instanceof File) {
                            z10 = true;
                            AccessRuleSet accessRuleSet = ("ignore".equals(javaProject2.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) && "ignore".equals(javaProject2.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true))) ? null : classpathEntry.getAccessRuleSet();
                            ClasspathLocation forJrtSystem = Util.isJrt(path.toOSString()) ? ClasspathLocation.forJrtSystem(path.toOSString(), accessRuleSet, externalAnnotationPath, "enabled".equals(javaProject2.getOption("org.eclipse.jdt.core.compiler.release", false)) ? str2 : null) : ClasspathLocation.forLibrary(path.toOSString(), accessRuleSet, externalAnnotationPath, isOnModulePath, str2);
                            arrayList.add(forJrtSystem);
                            if (linkedHashMap2 != null) {
                                iModule2 = collectModuleEntries(forJrtSystem, path, isOnModulePath, (computeLimitModules != null || moduleDescription2 == null) ? computeLimitModules : ClasspathJrt.NO_LIMIT_MODULES, str3, iModule, linkedHashMap2);
                                pushPatchToFront = str3;
                            }
                        } else {
                            z10 = true;
                        }
                        pushPatchToFront = str3;
                        iModule2 = iModule;
                    }
                }
            }
            i11 = i13 + 1;
            simpleLookupTable3 = simpleLookupTable;
            arrayList7 = arrayList;
            option = str2;
            r13 = z10;
            length = i12;
            expandedClasspath = iClasspathEntryArr;
            linkedHashMap = linkedHashMap2;
            arrayList8 = arrayList2;
            arrayList6 = arrayList3;
            nameEnvironment = this;
            javaProject3 = javaProject2;
            iWorkspaceRoot2 = iWorkspaceRoot;
        }
        ArrayList arrayList14 = new ArrayList((int) r13);
        nameEnvironment.sourceLocations = new ClasspathMultiDirectory[arrayList6.size()];
        if (!arrayList6.isEmpty()) {
            arrayList6.toArray(nameEnvironment.sourceLocations);
            if (linkedHashMap != null && moduleDescription2 != null) {
                try {
                    AbstractModule abstractModule = (AbstractModule) moduleDescription2;
                    IModule iModule5 = (IModule) abstractModule.getElementInfo();
                    if (arrayList8.size() == 0) {
                        classpathLocationArr = nameEnvironment.sourceLocations;
                    } else {
                        ArrayList arrayList15 = new ArrayList(arrayList6.size() + arrayList8.size());
                        arrayList15.addAll(arrayList6);
                        arrayList15.addAll(arrayList8);
                        classpathLocationArr = (ClasspathLocation[]) arrayList15.toArray(new ClasspathLocation[arrayList15.size()]);
                    }
                    ModulePathEntry modulePathEntry3 = new ModulePathEntry(javaProject.getPath(), iModule5, classpathLocationArr);
                    if (!linkedHashMap.containsKey(abstractModule.getElementName())) {
                        linkedHashMap.put(abstractModule.getElementName(), modulePathEntry3);
                    }
                } catch (JavaModelException unused2) {
                }
            }
            int length5 = nameEnvironment.sourceLocations.length;
            for (int i16 = 0; i16 < length5; i16++) {
                ClasspathMultiDirectory classpathMultiDirectory = nameEnvironment.sourceLocations[i16];
                IPath fullPath = classpathMultiDirectory.binaryFolder.getFullPath();
                int i17 = 0;
                while (true) {
                    if (i17 >= i16) {
                        arrayList14.add(classpathMultiDirectory);
                        int length6 = nameEnvironment.sourceLocations.length;
                        int i18 = 0;
                        while (true) {
                            if (i18 >= length6) {
                                classpathMultiDirectory.hasIndependentOutputFolder = r13;
                                break;
                            } else if (fullPath.equals(nameEnvironment.sourceLocations[i18].sourceFolder.getFullPath())) {
                                break;
                            } else {
                                i18++;
                            }
                        }
                    } else {
                        if (fullPath.equals(nameEnvironment.sourceLocations[i17].binaryFolder.getFullPath())) {
                            classpathMultiDirectory.hasIndependentOutputFolder = nameEnvironment.sourceLocations[i17].hasIndependentOutputFolder;
                            break;
                        }
                        i17++;
                    }
                }
            }
        }
        nameEnvironment.binaryLocations = new ClasspathLocation[arrayList14.size() + arrayList7.size()];
        int size = arrayList14.size();
        int i19 = 0;
        int i20 = 0;
        while (i19 < size) {
            nameEnvironment.binaryLocations[i20] = (ClasspathLocation) arrayList14.get(i19);
            i19++;
            i20++;
        }
        int size2 = arrayList7.size();
        int i21 = 0;
        while (i21 < size2) {
            nameEnvironment.binaryLocations[i20] = (ClasspathLocation) arrayList7.get(i21);
            i21++;
            i20++;
        }
        if (linkedHashMap == null || linkedHashMap.isEmpty()) {
            return;
        }
        nameEnvironment.modulePathEntries = linkedHashMap;
    }

    private void createOutputFolder(IContainer iContainer) throws CoreException {
        createParentFolder(iContainer.getParent());
        ((IFolder) iContainer).create(1025, true, (IProgressMonitor) null);
    }

    private void createParentFolder(IContainer iContainer) throws CoreException {
        if (iContainer.exists()) {
            return;
        }
        createParentFolder(iContainer.getParent());
        ((IFolder) iContainer).create(true, true, (IProgressMonitor) null);
    }

    private NameEnvironmentAnswer findClass(String str, char[] cArr, IModuleAwareNameEnvironment.LookupStrategy lookupStrategy, String str2) {
        String str3;
        ClasspathLocation[] classpathLocationArr;
        f fVar;
        NameEnvironmentAnswer nameEnvironmentAnswer;
        char[] moduleName;
        Map<String, IModulePathEntry> map;
        Map<String, IModulePathEntry> map2;
        BuildNotifier buildNotifier = this.notifier;
        if (buildNotifier != null) {
            buildNotifier.checkCancelWithinCompiler();
        }
        if (str2 != null) {
            str3 = str2 + ':' + str;
        } else {
            str3 = str;
        }
        SimpleSet simpleSet = this.initialTypeNames;
        f fVar2 = null;
        if (simpleSet != null && simpleSet.includes(str3)) {
            if (this.isIncrementalBuild) {
                throw new AbortCompilation(true, (RuntimeException) new AbortIncrementalBuildException(str));
            }
            return null;
        }
        SimpleLookupTable simpleLookupTable = this.additionalUnits;
        if (simpleLookupTable != null && this.sourceLocations.length > 0) {
            SourceFile sourceFile = (SourceFile) simpleLookupTable.get(str);
            if (sourceFile != null) {
                return new NameEnvironmentAnswer(sourceFile, (AccessRestriction) null);
            }
            int indexOf = str.indexOf(36);
            if (indexOf > 0) {
                SourceFile sourceFile2 = (SourceFile) this.additionalUnits.get(str.substring(0, indexOf));
                if (sourceFile2 != null) {
                    return new NameEnvironmentAnswer(sourceFile2, (AccessRestriction) null);
                }
            }
        }
        String str4 = String.valueOf(str) + ".class";
        String substring = str.length() == cArr.length ? Util.EMPTY_STRING : str4.substring(0, (str4.length() - cArr.length) - 7);
        char[] concat = CharOperation.concat(cArr, SuffixConstants.SUFFIX_class);
        if (str2 == null || (map2 = this.modulePathEntries) == null) {
            classpathLocationArr = this.binaryLocations;
        } else {
            Object obj = (IModulePathEntry) map2.get(str2);
            if (!(obj instanceof ModulePathEntry)) {
                if (obj instanceof ClasspathLocation) {
                    return ((ClasspathLocation) obj).findClass(cArr, substring, str2, str4, false, (Predicate<String>) null);
                }
                return null;
            }
            classpathLocationArr = ((ModulePathEntry) obj).getClasspathLocations();
        }
        ClasspathLocation[] classpathLocationArr2 = classpathLocationArr;
        int length = classpathLocationArr2.length;
        int i10 = 0;
        NameEnvironmentAnswer nameEnvironmentAnswer2 = null;
        while (i10 < length) {
            ClasspathLocation classpathLocation = classpathLocationArr2[i10];
            if (lookupStrategy.matches(classpathLocation, new e())) {
                Map<String, IModulePathEntry> map3 = this.modulePathEntries;
                if (map3 != null) {
                    map3.getClass();
                    fVar = new f(map3);
                } else {
                    fVar = fVar2;
                }
                nameEnvironmentAnswer = nameEnvironmentAnswer2;
                nameEnvironmentAnswer2 = classpathLocation.findClass(concat, substring, str2, str4, false, (Predicate<String>) fVar);
                if (nameEnvironmentAnswer2 != null && ((moduleName = nameEnvironmentAnswer2.moduleName()) == null || (map = this.modulePathEntries) == null || map.containsKey(String.valueOf(moduleName)))) {
                    if (nameEnvironmentAnswer2.ignoreIfBetter()) {
                        if (nameEnvironmentAnswer2.isBetter(nameEnvironmentAnswer)) {
                            i10++;
                            fVar2 = null;
                        }
                    } else if (nameEnvironmentAnswer2.isBetter(nameEnvironmentAnswer)) {
                        return nameEnvironmentAnswer2;
                    }
                }
            } else {
                nameEnvironmentAnswer = nameEnvironmentAnswer2;
            }
            nameEnvironmentAnswer2 = nameEnvironmentAnswer;
            i10++;
            fVar2 = null;
        }
        return nameEnvironmentAnswer2;
    }

    public static char[] lambda$9(IModulePathEntry iModulePathEntry) {
        return iModulePathEntry.getModule().name();
    }

    @Override
    public void applyModuleUpdates(IUpdatableModule iUpdatableModule, IUpdatableModule.UpdateKind updateKind) {
        ModuleUpdater moduleUpdater = this.moduleUpdater;
        if (moduleUpdater != null) {
            moduleUpdater.applyModuleUpdates(iUpdatableModule, updateKind);
        }
    }

    @Override
    public void cleanup() {
        this.initialTypeNames = null;
        this.additionalUnits = null;
        int length = this.sourceLocations.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.sourceLocations[i10].cleanup();
        }
        int length2 = this.binaryLocations.length;
        for (int i11 = 0; i11 < length2; i11++) {
            this.binaryLocations[i11].cleanup();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IModule collectModuleEntries(ClasspathLocation classpathLocation, IPath iPath, boolean z10, Set<String> set, String str, IModule iModule, Map<String, IModulePathEntry> map) {
        IModulePathEntry modulePathEntry;
        IModule module;
        IModule module2;
        if (classpathLocation instanceof IMultiModuleEntry) {
            IMultiModuleEntry iMultiModuleEntry = (IMultiModuleEntry) classpathLocation;
            classpathLocation.limitModuleNames = set;
            classpathLocation.patchModuleName = str;
            IUpdatableModule.UpdatesByKind updatesByKind = new IUpdatableModule.UpdatesByKind();
            List<Consumer<IUpdatableModule>> list = null;
            List<Consumer<IUpdatableModule>> list2 = null;
            for (String str2 : iMultiModuleEntry.getModuleNames(set)) {
                map.put(str2, iMultiModuleEntry);
                IUpdatableModule.UpdatesByKind updates = this.moduleUpdater.getUpdates(str2);
                if (updates != null) {
                    IUpdatableModule.UpdateKind updateKind = IUpdatableModule.UpdateKind.PACKAGE;
                    List<Consumer<IUpdatableModule>> list3 = updates.getList(updateKind, false);
                    if (list3 != null) {
                        list = updatesByKind.getList(updateKind, true);
                        list.addAll(list3);
                    }
                    IUpdatableModule.UpdateKind updateKind2 = IUpdatableModule.UpdateKind.MODULE;
                    List<Consumer<IUpdatableModule>> list4 = updates.getList(updateKind2, false);
                    if (list4 != null) {
                        list2 = updatesByKind.getList(updateKind2, true);
                        list2.addAll(list4);
                    }
                }
            }
            if (list != null || list2 != null) {
                classpathLocation.updates = updatesByKind;
            }
            if (str != null && (module2 = iMultiModuleEntry.getModule(str.toCharArray())) != null) {
                return module2;
            }
        } else if (z10 && (module = (modulePathEntry = new ModulePathEntry(iPath, classpathLocation)).getModule()) != null) {
            String valueOf = String.valueOf(module.name());
            classpathLocation.updates = this.moduleUpdater.getUpdates(valueOf);
            classpathLocation.limitModuleNames = set;
            classpathLocation.patchModuleName = str;
            if (set == null || set == ClasspathJrt.NO_LIMIT_MODULES || set.contains(valueOf)) {
                map.put(valueOf, modulePathEntry);
                if (str != null && valueOf.equals(str)) {
                    return module;
                }
            }
        }
        return iModule;
    }

    @Override
    public NameEnvironmentAnswer findType(char[][] cArr, char[] cArr2) {
        if (cArr != null) {
            return findClass(String.valueOf(CharOperation.concatWith(cArr, '/')), cArr[cArr.length - 1], IModuleAwareNameEnvironment.LookupStrategy.get(cArr2), IModuleAwareNameEnvironment.LookupStrategy.getStringName(cArr2));
        }
        return null;
    }

    @Override
    public char[][] getAllAutomaticModules() {
        Map<String, IModulePathEntry> map = this.modulePathEntries;
        if (map == null) {
            return CharOperation.NO_CHAR_CHAR;
        }
        Set set = (Set) map.values().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean isAutomaticModule;
                isAutomaticModule = ((IModulePathEntry) obj).isAutomaticModule();
                return isAutomaticModule;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                char[] lambda$9;
                lambda$9 = NameEnvironment.lambda$9((IModulePathEntry) obj);
                return lambda$9;
            }
        }).collect(Collectors.toSet());
        return (char[][]) set.toArray(new char[set.size()]);
    }

    @Override
    public IModule getModule(char[] cArr) {
        Map<String, IModulePathEntry> map = this.modulePathEntries;
        if (map == null) {
            return null;
        }
        IModulePathEntry iModulePathEntry = map.get(String.valueOf(cArr));
        if (iModulePathEntry instanceof IMultiModuleEntry) {
            return iModulePathEntry.getModule(cArr);
        }
        if (iModulePathEntry != null) {
            return iModulePathEntry.getModule();
        }
        return null;
    }

    @Override
    public char[][] getModulesDeclaringPackage(char[][] cArr, char[] cArr2, char[] cArr3) {
        char[][] modulesDeclaringPackage;
        char[][] modulesDeclaringPackage2;
        String str = new String(CharOperation.concatWith(cArr, cArr2, '/'));
        String str2 = new String(cArr3);
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr3);
        int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[lookupStrategy.ordinal()];
        if (i10 == 2) {
            str2 = null;
        } else if (i10 == 3 || i10 == 4) {
            char[][] cArr4 = CharOperation.NO_CHAR_CHAR;
            for (ClasspathLocation classpathLocation : this.binaryLocations) {
                if (lookupStrategy.matches(classpathLocation, new e()) && (modulesDeclaringPackage2 = classpathLocation.getModulesDeclaringPackage(str, null)) != null) {
                    cArr4 = CharOperation.arrayConcat(cArr4, modulesDeclaringPackage2);
                }
            }
            for (ClasspathMultiDirectory classpathMultiDirectory : this.sourceLocations) {
                if (lookupStrategy.matches(classpathMultiDirectory, new e()) && (modulesDeclaringPackage = classpathMultiDirectory.getModulesDeclaringPackage(str, null)) != null) {
                    cArr4 = CharOperation.arrayConcat(cArr4, modulesDeclaringPackage);
                }
            }
            if (cArr4 == CharOperation.NO_CHAR_CHAR) {
                return null;
            }
            return cArr4;
        }
        if (this.modulePathEntries == null) {
            return null;
        }
        char[][] cArr5 = CharOperation.NO_CHAR_CHAR;
        Iterator<E> it = new HashSet(this.modulePathEntries.values()).iterator();
        while (it.hasNext()) {
            char[][] modulesDeclaringPackage3 = ((IModulePathEntry) it.next()).getModulesDeclaringPackage(str, str2);
            if (modulesDeclaringPackage3 != null) {
                cArr5 = CharOperation.arrayConcat(cArr5, modulesDeclaringPackage3);
            }
        }
        if (cArr5 == CharOperation.NO_CHAR_CHAR) {
            return null;
        }
        return cArr5;
    }

    @Override
    public boolean hasCompilationUnit(char[][] cArr, char[] cArr2, boolean z10) {
        IModulePathEntry iModulePathEntry;
        String valueOf = String.valueOf(CharOperation.concatWith(cArr, '/'));
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr2);
        String stringName = IModuleAwareNameEnvironment.LookupStrategy.getStringName(cArr2);
        int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[lookupStrategy.ordinal()];
        if (i10 == 1) {
            Map<String, IModulePathEntry> map = this.modulePathEntries;
            return (map == null || (iModulePathEntry = map.get(stringName)) == null || !iModulePathEntry.hasCompilationUnit(valueOf, stringName)) ? false : true;
        }
        if (i10 == 2) {
            Map<String, IModulePathEntry> map2 = this.modulePathEntries;
            if (map2 != null) {
                Iterator<IModulePathEntry> it = map2.values().iterator();
                while (it.hasNext()) {
                    if (it.next().hasCompilationUnit(valueOf, stringName)) {
                        return true;
                    }
                }
            }
            return false;
        }
        if (i10 != 3 && i10 != 4) {
            throw new IllegalArgumentException("Unexpected LookupStrategy " + ((Object) lookupStrategy));
        }
        for (ClasspathLocation classpathLocation : this.binaryLocations) {
            if (lookupStrategy.matches(classpathLocation, new e()) && classpathLocation.hasCompilationUnit(valueOf, null)) {
                return true;
            }
        }
        for (ClasspathMultiDirectory classpathMultiDirectory : this.sourceLocations) {
            if (lookupStrategy.matches(classpathMultiDirectory, new e()) && classpathMultiDirectory.hasCompilationUnit(valueOf, null)) {
                return true;
            }
        }
        return false;
    }

    public boolean isOnModulePath(ClasspathEntry classpathEntry) {
        return classpathEntry.isModular();
    }

    public boolean isPackage(String str, char[] cArr) {
        Collection<IModulePathEntry> values;
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr);
        int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[lookupStrategy.ordinal()];
        String str2 = null;
        if (i10 == 2) {
            values = this.modulePathEntries.values();
        } else {
            if (i10 == 3 || i10 == 4) {
                int length = this.binaryLocations.length;
                for (int i11 = 0; i11 < length; i11++) {
                    if (lookupStrategy.matches(this.binaryLocations[i11], new e()) && this.binaryLocations[i11].isPackage(str, null)) {
                        return true;
                    }
                }
                int length2 = this.sourceLocations.length;
                for (int i12 = 0; i12 < length2; i12++) {
                    if (lookupStrategy.matches(this.sourceLocations[i12], new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return ((ClasspathMultiDirectory) obj).hasModule();
                        }
                    }) && this.sourceLocations[i12].isPackage(str, null)) {
                        return true;
                    }
                }
                return false;
            }
            str2 = String.valueOf(cArr);
            IModulePathEntry iModulePathEntry = this.modulePathEntries.get(str2);
            if (iModulePathEntry == null) {
                return false;
            }
            values = Collections.singletonList(iModulePathEntry);
        }
        for (Object obj : values) {
            if (obj instanceof ModulePathEntry) {
                ClasspathLocation[] classpathLocations = ((ModulePathEntry) obj).getClasspathLocations();
                for (ClasspathLocation classpathLocation : classpathLocations) {
                    if (classpathLocation.isPackage(str, str2)) {
                        return true;
                    }
                }
            } else if (obj instanceof ClasspathLocation) {
                return ((ClasspathLocation) obj).isPackage(str, str2);
            }
        }
        return false;
    }

    public void setNames(String[] strArr, SourceFile[] sourceFileArr) {
        if (strArr == null) {
            this.initialTypeNames = null;
        } else {
            this.initialTypeNames = new SimpleSet(strArr.length);
            for (String str : strArr) {
                this.initialTypeNames.add(str);
            }
        }
        if (sourceFileArr == null) {
            this.additionalUnits = null;
        } else {
            this.additionalUnits = new SimpleLookupTable(sourceFileArr.length);
            for (SourceFile sourceFile : sourceFileArr) {
                if (sourceFile != null) {
                    this.additionalUnits.put(sourceFile.initialTypeName, sourceFile);
                }
            }
        }
        int length = this.sourceLocations.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.sourceLocations[i10].reset();
        }
        int length2 = this.binaryLocations.length;
        for (int i11 = 0; i11 < length2; i11++) {
            this.binaryLocations[i11].reset();
        }
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, char[] cArr3) {
        return findClass(String.valueOf(CharOperation.concatWith(cArr2, cArr, '/')), cArr, IModuleAwareNameEnvironment.LookupStrategy.get(cArr3), IModuleAwareNameEnvironment.LookupStrategy.getStringName(cArr3));
    }

    public NameEnvironment(IJavaProject iJavaProject, CompilationGroup compilationGroup) {
        this.compilationGroup = compilationGroup;
        try {
            computeClasspathLocations(iJavaProject.getProject().getWorkspace().getRoot(), (JavaProject) iJavaProject, null);
        } catch (CoreException unused) {
            this.sourceLocations = new ClasspathMultiDirectory[0];
            this.binaryLocations = new ClasspathLocation[0];
        }
        setNames(null, null);
    }
}
