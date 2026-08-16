package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchConstants;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModuleAwareNameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessConstructorRequestor;
import org.eclipse.jdt.internal.core.search.IRestrictedAccessTypeRequestor;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.processing.IJob;
import org.eclipse.jdt.internal.core.util.Util;

public class SearchableEnvironment implements IModuleAwareNameEnvironment, IJavaSearchConstants {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy;
    protected boolean checkAccessRestrictions;
    private boolean excludeTestCode;
    private Map<String, IPackageFragmentRoot[]> knownModuleLocations;
    private ModuleUpdater moduleUpdater;
    public NameLookup nameLookup;
    protected WorkingCopyOwner owner;
    protected JavaProject project;
    private Map<IPackageFragmentRoot, IModuleDescription> rootToModule;
    protected IJavaSearchScope searchScope;
    protected ICompilationUnit unitToSkip;
    protected org.eclipse.jdt.core.ICompilationUnit[] workingCopies;

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

    @Deprecated
    public SearchableEnvironment(JavaProject javaProject, org.eclipse.jdt.core.ICompilationUnit[] iCompilationUnitArr) throws JavaModelException {
        this(javaProject, iCompilationUnitArr, false);
    }

    private static int convertSearchFilterToModelFilter(int i10) {
        switch (i10) {
            case 5:
                return 2;
            case 6:
                return 4;
            case 7:
                return 8;
            case 8:
                return 16;
            case 9:
                return 10;
            case 10:
                return 6;
            default:
                return 30;
        }
    }

    private IPackageFragmentRoot[] findModuleContext(char[] cArr) {
        NameLookup.Answer findModule;
        IProject project;
        Map<String, IPackageFragmentRoot[]> map = this.knownModuleLocations;
        if (map == null || cArr == null || cArr.length <= 0) {
            return null;
        }
        IPackageFragmentRoot[] iPackageFragmentRootArr = map.get(String.valueOf(cArr));
        if (iPackageFragmentRootArr != null || (findModule = this.nameLookup.findModule(cArr)) == null) {
            return iPackageFragmentRootArr;
        }
        IProject project2 = findModule.module.getJavaProject().getProject();
        IJavaElement parent = findModule.module.getParent();
        while (iPackageFragmentRootArr == null && parent != null) {
            int elementType = parent.getElementType();
            if (elementType != 2) {
                if (elementType != 3) {
                    parent = parent.getParent();
                    if (parent != null) {
                        try {
                            IResource underlyingResource = parent.getUnderlyingResource();
                            if (underlyingResource != null && (project = underlyingResource.getProject()) != null && !project.equals(project2)) {
                                IJavaProject create = JavaCore.create(project);
                                if (create.exists()) {
                                    iPackageFragmentRootArr = getRootsForOutputLocation(create, underlyingResource);
                                }
                            }
                        } catch (JavaModelException e10) {
                            Util.log((Throwable) e10, "Failed to find package fragment root for " + ((Object) parent));
                        }
                    }
                } else {
                    IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) parent;
                    if (iPackageFragmentRoot.isExternal() || (parent instanceof JarPackageFragmentRoot)) {
                        iPackageFragmentRootArr = new IPackageFragmentRoot[]{iPackageFragmentRoot};
                    } else {
                        parent = parent.getJavaProject();
                    }
                }
            }
            try {
                getOwnedPackageFragmentRoots((IJavaProject) parent);
            } catch (JavaModelException unused) {
            }
        }
        this.knownModuleLocations.put(String.valueOf(cArr), iPackageFragmentRootArr);
        return iPackageFragmentRootArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.prefixEquals(r15, r5) != false) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findPackagesFromRequires(char[] cArr, boolean z10, ISearchRequestor iSearchRequestor, IModule.IModuleReference iModuleReference, char[] cArr2) {
        char[] name;
        IPackageFragmentRoot[] findModuleContext = findModuleContext(iModuleReference.name());
        if (findModuleContext == null) {
            return;
        }
        for (IPackageFragmentRoot iPackageFragmentRoot : findModuleContext) {
            try {
                IModuleDescription moduleDescription = iPackageFragmentRoot.getJavaProject().getModuleDescription();
                if (moduleDescription instanceof AbstractModule) {
                    AbstractModule abstractModule = (AbstractModule) moduleDescription;
                    for (IModule.IPackageExport iPackageExport : abstractModule.getExportedPackages()) {
                        try {
                            if (iPackageExport.isQualified()) {
                                try {
                                    try {
                                        if (!CharOperation.containsEqual(iPackageExport.targets(), cArr2)) {
                                        }
                                    } catch (JavaModelException unused) {
                                    }
                                } catch (JavaModelException unused2) {
                                }
                            }
                            iSearchRequestor.acceptPackage(name);
                        } catch (JavaModelException unused3) {
                        }
                        name = iPackageExport.name();
                        if (!z10) {
                            try {
                            } catch (JavaModelException unused4) {
                            }
                        }
                    }
                    for (IModule.IModuleReference iModuleReference2 : abstractModule.getRequiredModules()) {
                        if (iModuleReference2.isTransitive()) {
                            findPackagesFromRequires(cArr, z10, iSearchRequestor, iModuleReference2, cArr2);
                        }
                    }
                }
            } catch (JavaModelException unused5) {
            }
        }
    }

    private String getExternalAnnotationPath(IClasspathEntry iClasspathEntry) {
        IPath externalAnnotationPath;
        if (iClasspathEntry == null || (externalAnnotationPath = ClasspathEntry.getExternalAnnotationPath(iClasspathEntry, this.project.getProject(), true)) == null) {
            return null;
        }
        return externalAnnotationPath.toOSString();
    }

    private IModuleDescription getModuleDescription(IPackageFragmentRoot[] iPackageFragmentRootArr) {
        if (this.rootToModule == null) {
            this.rootToModule = new HashMap();
        }
        for (IPackageFragmentRoot iPackageFragmentRoot : iPackageFragmentRootArr) {
            JavaProject javaProject = this.project;
            Map<IPackageFragmentRoot, IModuleDescription> map = this.rootToModule;
            Map<IPackageFragmentRoot, IClasspathEntry> map2 = this.nameLookup.rootToResolvedEntries;
            map2.getClass();
            IModuleDescription moduleDescription = NameLookup.getModuleDescription(javaProject, iPackageFragmentRoot, map, new y(map2));
            if (moduleDescription != null) {
                return moduleDescription;
            }
        }
        return null;
    }

    public static IPackageFragmentRoot[] getOwnedPackageFragmentRoots(IJavaProject iJavaProject) throws JavaModelException {
        IResource resource;
        IPackageFragmentRoot[] packageFragmentRoots = iJavaProject.getPackageFragmentRoots();
        IPackageFragmentRoot[] iPackageFragmentRootArr = (IPackageFragmentRoot[]) Arrays.copyOf(packageFragmentRoots, packageFragmentRoots.length);
        int i10 = 0;
        for (IPackageFragmentRoot iPackageFragmentRoot : packageFragmentRoots) {
            if (iPackageFragmentRoot.getKind() != 2 || (!(iPackageFragmentRoot instanceof JarPackageFragmentRoot) && (resource = iPackageFragmentRoot.getResource()) != null && resource.getProject().equals(iJavaProject.getProject()))) {
                iPackageFragmentRootArr[i10] = iPackageFragmentRoot;
                i10++;
            }
        }
        return i10 < packageFragmentRoots.length ? (IPackageFragmentRoot[]) Arrays.copyOf(iPackageFragmentRootArr, i10) : iPackageFragmentRootArr;
    }

    private IPackageFragmentRoot[] getRootsForOutputLocation(IJavaProject iJavaProject, IResource iResource) throws JavaModelException {
        IPath fullPath = iResource.getFullPath();
        ArrayList arrayList = new ArrayList();
        if (fullPath.equals(iJavaProject.getOutputLocation())) {
            for (IClasspathEntry iClasspathEntry : iJavaProject.getRawClasspath()) {
                if (iClasspathEntry.getOutputLocation() == null) {
                    for (IPackageFragmentRoot iPackageFragmentRoot : iJavaProject.findPackageFragmentRoots(iClasspathEntry)) {
                        IResource resource = iPackageFragmentRoot.getResource();
                        if (resource != null && resource.getProject().equals(iJavaProject.getProject())) {
                            arrayList.add(iPackageFragmentRoot);
                        }
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return (IPackageFragmentRoot[]) arrayList.toArray(new IPackageFragmentRoot[arrayList.size()]);
        }
        for (IClasspathEntry iClasspathEntry2 : iJavaProject.getRawClasspath()) {
            if (fullPath.equals(iClasspathEntry2.getOutputLocation())) {
                return iJavaProject.findPackageFragmentRoots(iClasspathEntry2);
            }
        }
        return null;
    }

    private IJavaSearchScope getSearchScope() {
        if (this.searchScope == null) {
            if (this.checkAccessRestrictions) {
                this.searchScope = BasicSearchEngine.createJavaSearchScope(this.excludeTestCode, new IJavaElement[]{this.project});
            } else {
                this.searchScope = BasicSearchEngine.createJavaSearchScope(this.excludeTestCode, this.nameLookup.packageFragmentRoots);
            }
        }
        return this.searchScope;
    }

    public boolean lambda$1(IPackageFragmentRoot[] iPackageFragmentRootArr) {
        return (iPackageFragmentRootArr[0] instanceof JrtPackageFragmentRoot) || getModuleDescription(iPackageFragmentRootArr) != null;
    }

    public boolean lambda$2(IPackageFragmentRoot[] iPackageFragmentRootArr) {
        return (iPackageFragmentRootArr[0] instanceof JrtPackageFragmentRoot) || getModuleDescription(iPackageFragmentRootArr) != null;
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
    }

    public NameEnvironmentAnswer find(String str, String str2, IPackageFragmentRoot[] iPackageFragmentRootArr) {
        String findSource;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = str2;
        WorkingCopyOwner workingCopyOwner = this.owner;
        if (workingCopyOwner != null && (findSource = workingCopyOwner.findSource(str, str3)) != null) {
            return new NameEnvironmentAnswer(new BasicCompilationUnit(findSource.toCharArray(), CharOperation.splitOn('.', str3.toCharArray()), String.valueOf(str) + Util.defaultJavaExtension(), (iPackageFragmentRootArr == null || iPackageFragmentRootArr.length <= 0) ? null : iPackageFragmentRootArr[0]), (AccessRestriction) null);
        }
        NameLookup.Answer findType = this.nameLookup.findType(str, str3, false, 30, this.checkAccessRestrictions, iPackageFragmentRootArr);
        if (findType != null) {
            IType iType = findType.type;
            if (iType instanceof BinaryType) {
                try {
                    IModuleDescription iModuleDescription = findType.module;
                    return new NameEnvironmentAnswer((IBinaryType) ((BinaryType) findType.type).getElementInfo(), findType.restriction, iModuleDescription != null ? iModuleDescription.getElementName().toCharArray() : null);
                } catch (JavaModelException unused) {
                }
            } else {
                try {
                    SourceTypeElementInfo sourceTypeElementInfo = (SourceTypeElementInfo) ((SourceType) iType).getElementInfo();
                    ISourceType iSourceType = sourceTypeElementInfo;
                    while (iSourceType.getEnclosingType() != null) {
                        iSourceType = iSourceType.getEnclosingType();
                    }
                    Object[] types = sourceTypeElementInfo.getHandle().getCompilationUnit().getTypes();
                    ISourceType[] iSourceTypeArr = new ISourceType[types.length];
                    iSourceTypeArr[0] = sourceTypeElementInfo;
                    int length = types.length;
                    int i10 = 1;
                    for (Object obj : types) {
                        ISourceType iSourceType2 = (ISourceType) ((JavaElement) obj).getElementInfo();
                        if (!iSourceType2.equals(iSourceType) && i10 < length) {
                            iSourceTypeArr[i10] = iSourceType2;
                            i10++;
                        }
                    }
                    IModuleDescription iModuleDescription2 = findType.module;
                    return new NameEnvironmentAnswer(iSourceTypeArr, findType.restriction, getExternalAnnotationPath(findType.entry), iModuleDescription2 != null ? iModuleDescription2.getElementName().toCharArray() : null);
                } catch (JavaModelException e10) {
                    if (e10.isDoesNotExist() && String.valueOf(TypeConstants.PACKAGE_INFO_NAME).equals(str)) {
                        return new NameEnvironmentAnswer((ICompilationUnit) findType.type.getParent(), findType.restriction);
                    }
                }
            }
        }
        return null;
    }

    public void findConstructorDeclarations(char[] cArr, boolean z10, final ISearchRequestor iSearchRequestor, IProgressMonitor iProgressMonitor) {
        char[] cArr2 = cArr;
        try {
            ICompilationUnit iCompilationUnit = this.unitToSkip;
            char[] cArr3 = null;
            final String obj = (iCompilationUnit == null || !(iCompilationUnit instanceof IJavaElement)) ? null : ((IJavaElement) iCompilationUnit).getPath().toString();
            int lastIndexOf = CharOperation.lastIndexOf('.', cArr2);
            if (lastIndexOf >= 0) {
                cArr3 = CharOperation.subarray(cArr2, 0, lastIndexOf);
                cArr2 = z10 ? CharOperation.subarray(cArr2, lastIndexOf + 1, cArr2.length) : CharOperation.toLowerCase(CharOperation.subarray(cArr2, lastIndexOf + 1, cArr2.length));
            } else if (!z10) {
                cArr2 = CharOperation.toLowerCase(cArr);
            }
            char[] cArr4 = cArr2;
            char[] cArr5 = cArr3;
            IProgressMonitor iProgressMonitor2 = new IProgressMonitor() {
                boolean isCanceled = false;

                public void beginTask(String str, int i10) {
                }

                public void done() {
                }

                public void internalWorked(double d10) {
                }

                public boolean isCanceled() {
                    return this.isCanceled;
                }

                public void setCanceled(boolean z11) {
                    this.isCanceled = z11;
                }

                public void setTaskName(String str) {
                }

                public void subTask(String str) {
                }

                public void worked(int i10) {
                }
            };
            IRestrictedAccessConstructorRequestor iRestrictedAccessConstructorRequestor = new IRestrictedAccessConstructorRequestor() {
                @Override
                public void acceptConstructor(int i10, char[] cArr6, int i11, char[] cArr7, char[][] cArr8, char[][] cArr9, int i12, char[] cArr10, int i13, String str, AccessRestriction accessRestriction) {
                    String str2 = obj;
                    if (str2 == null || !str2.equals(str)) {
                        iSearchRequestor.acceptConstructor(i10, cArr6, i11, cArr7, cArr8, cArr9, i12, cArr10, i13, str, accessRestriction);
                    }
                }
            };
            int i10 = z10 ? 129 : 1;
            if (iProgressMonitor == null) {
                new BasicSearchEngine(this.workingCopies).searchAllConstructorDeclarations(cArr5, cArr4, i10, getSearchScope(), iRestrictedAccessConstructorRequestor, 2, iProgressMonitor2);
            } else {
                JavaModelManager.getIndexManager().performConcurrentJob(new IJob() {
                    @Override
                    public boolean belongsTo(String str) {
                        return true;
                    }

                    @Override
                    public void cancel() {
                    }

                    @Override
                    public void ensureReadyToRun() {
                    }

                    @Override
                    public boolean execute(IProgressMonitor iProgressMonitor3) {
                        return iProgressMonitor3 == null || !iProgressMonitor3.isCanceled();
                    }

                    @Override
                    public String getJobFamily() {
                        return "";
                    }
                }, 3, iProgressMonitor);
                new BasicSearchEngine(this.workingCopies).searchAllConstructorDeclarations(cArr5, cArr4, i10, getSearchScope(), iRestrictedAccessConstructorRequestor, 1, iProgressMonitor2);
            }
        } catch (JavaModelException | OperationCanceledException unused) {
        }
    }

    public void findExactTypes(char[] cArr, final boolean z10, int i10, final ISearchRequestor iSearchRequestor) {
        final String str;
        try {
            ICompilationUnit iCompilationUnit = this.unitToSkip;
            if (iCompilationUnit == null) {
                str = null;
            } else {
                if (!(iCompilationUnit instanceof IJavaElement)) {
                    findExactTypes(new String(cArr), iSearchRequestor, convertSearchFilterToModelFilter(i10));
                    return;
                }
                str = ((IJavaElement) iCompilationUnit).getPath().toString();
            }
            IProgressMonitor iProgressMonitor = new IProgressMonitor() {
                boolean isCanceled = false;

                public void beginTask(String str2, int i11) {
                }

                public void done() {
                }

                public void internalWorked(double d10) {
                }

                public boolean isCanceled() {
                    return this.isCanceled;
                }

                public void setCanceled(boolean z11) {
                    this.isCanceled = z11;
                }

                public void setTaskName(String str2) {
                }

                public void subTask(String str2) {
                }

                public void worked(int i11) {
                }
            };
            try {
                new BasicSearchEngine(this.workingCopies).searchAllTypeNames(null, 0, cArr, 0, i10, getSearchScope(), new IRestrictedAccessTypeRequestor() {
                    @Override
                    public void acceptType(int i11, char[] cArr2, char[] cArr3, char[][] cArr4, String str2, AccessRestriction accessRestriction) {
                        String str3 = str;
                        if (str3 == null || !str3.equals(str2)) {
                            if (z10 || cArr4 == null || cArr4.length <= 0) {
                                iSearchRequestor.acceptType(cArr2, cArr3, cArr4, i11, accessRestriction);
                            }
                        }
                    }
                }, 2, iProgressMonitor);
            } catch (OperationCanceledException unused) {
                findExactTypes(new String(cArr), iSearchRequestor, convertSearchFilterToModelFilter(i10));
            }
        } catch (JavaModelException unused2) {
            findExactTypes(new String(cArr), iSearchRequestor, convertSearchFilterToModelFilter(i10));
        }
    }

    public void findModules(char[] cArr, ISearchRequestor iSearchRequestor, IJavaProject iJavaProject) {
        this.nameLookup.seekModule(cArr, true, new SearchableEnvironmentRequestor(iSearchRequestor));
    }

    public void findPackages(char[] cArr, ISearchRequestor iSearchRequestor) {
        this.nameLookup.seekPackageFragments(new String(cArr), true, new SearchableEnvironmentRequestor(iSearchRequestor));
    }

    @Override
    public NameEnvironmentAnswer findType(char[][] cArr, char[] cArr2) {
        if (cArr == null) {
            return null;
        }
        IPackageFragmentRoot[] findModuleContext = IModuleAwareNameEnvironment.LookupStrategy.get(cArr2) == IModuleAwareNameEnvironment.LookupStrategy.Named ? findModuleContext(cArr2) : null;
        int length = cArr.length;
        if (length <= 1) {
            if (length == 0) {
                return null;
            }
            return find(new String(cArr[0]), null, findModuleContext);
        }
        int i10 = length - 1;
        char[][] cArr3 = new char[i10];
        System.arraycopy(cArr, 0, cArr3, 0, i10);
        return find(new String(cArr[i10]), CharOperation.toString(cArr3), findModuleContext);
    }

    public NameEnvironmentAnswer findTypeInModules(char[][] cArr, ModuleBinding moduleBinding) {
        char[] nameForLookup = moduleBinding.nameForLookup();
        NameEnvironmentAnswer findType = findType(cArr, nameForLookup);
        if (findType != null) {
            return findType;
        }
        if (IModuleAwareNameEnvironment.LookupStrategy.get(nameForLookup) != IModuleAwareNameEnvironment.LookupStrategy.Named) {
            return null;
        }
        for (ModuleBinding moduleBinding2 : moduleBinding.getAllRequiredModules()) {
            NameEnvironmentAnswer findType2 = findType(cArr, moduleBinding2.nameForLookup());
            if (findType2 != null) {
                return findType2;
            }
        }
        return null;
    }

    public void findTypes(char[] cArr, boolean z10, boolean z11, int i10, ISearchRequestor iSearchRequestor) {
        findTypes(cArr, z10, z11, i10, iSearchRequestor, null);
    }

    @Override
    public char[][] getAllAutomaticModules() {
        return CharOperation.NO_CHAR_CHAR;
    }

    @Override
    public IModule getModule(char[] cArr) {
        NameLookup.Answer findModule = this.nameLookup.findModule(cArr);
        if (findModule != null) {
            return NameLookup.getModuleDescriptionInfo(findModule.module);
        }
        return null;
    }

    @Override
    public char[][] getModulesDeclaringPackage(char[][] cArr, char[] cArr2, char[] cArr3) {
        String[] strArr;
        IPackageFragmentRoot[] findModuleContext;
        char[] cArr4;
        if (cArr == null) {
            strArr = new String[]{new String(cArr2)};
        } else {
            int length = cArr.length;
            String[] strArr2 = new String[length + 1];
            for (int i10 = 0; i10 < length; i10++) {
                strArr2[i10] = new String(cArr[i10]);
            }
            strArr2[length] = new String(cArr2);
            strArr = strArr2;
        }
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr3);
        int i11 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[lookupStrategy.ordinal()];
        if (i11 == 1) {
            if (this.knownModuleLocations == null || (findModuleContext = findModuleContext(cArr3)) == null || !this.nameLookup.isPackage(strArr, findModuleContext)) {
                return null;
            }
            return new char[][]{cArr3};
        }
        if (i11 != 2) {
            if (i11 != 3 && i11 != 4) {
                throw new IllegalArgumentException("Unexpected LookupStrategy " + ((Object) lookupStrategy));
            }
            if (this.knownModuleLocations == null) {
                WorkingCopyOwner workingCopyOwner = this.owner;
                if ((workingCopyOwner == null || !workingCopyOwner.isPackage(strArr)) && !this.nameLookup.isPackage(strArr)) {
                    return null;
                }
                return new char[][]{ModuleBinding.UNNAMED};
            }
        }
        char[][] cArr5 = CharOperation.NO_CHAR_CHAR;
        boolean z10 = false;
        for (IPackageFragmentRoot iPackageFragmentRoot : this.nameLookup.packageFragmentRoots) {
            IPackageFragmentRoot[] iPackageFragmentRootArr = {iPackageFragmentRoot};
            if (lookupStrategy.matches(iPackageFragmentRootArr, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$1;
                    lambda$1 = SearchableEnvironment.this.lambda$1((IPackageFragmentRoot[]) obj);
                    return lambda$1;
                }
            }) && this.nameLookup.isPackage(strArr, iPackageFragmentRootArr)) {
                IModuleDescription moduleDescription = getModuleDescription(iPackageFragmentRootArr);
                if (moduleDescription != null) {
                    cArr4 = moduleDescription.getElementName().toCharArray();
                } else if (!z10) {
                    cArr4 = ModuleBinding.UNNAMED;
                    z10 = true;
                }
                cArr5 = CharOperation.arrayConcat(cArr5, cArr4);
            }
        }
        if (cArr5 == CharOperation.NO_CHAR_CHAR) {
            return null;
        }
        return cArr5;
    }

    @Override
    public boolean hasCompilationUnit(char[][] cArr, char[] cArr2, boolean z10) {
        IPackageFragmentRoot[] findModuleContext;
        IModuleAwareNameEnvironment.LookupStrategy lookupStrategy = IModuleAwareNameEnvironment.LookupStrategy.get(cArr2);
        int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IModuleAwareNameEnvironment$LookupStrategy()[lookupStrategy.ordinal()];
        if (i10 == 1) {
            return (this.knownModuleLocations == null || (findModuleContext = findModuleContext(cArr2)) == null || !this.nameLookup.hasCompilationUnit(cArr, findModuleContext)) ? false : true;
        }
        if (i10 != 2) {
            if (i10 != 3 && i10 != 4) {
                throw new IllegalArgumentException("Unexpected LookupStrategy " + ((Object) lookupStrategy));
            }
            if (this.knownModuleLocations == null && this.nameLookup.hasCompilationUnit(cArr, null)) {
                return true;
            }
        }
        for (IPackageFragmentRoot iPackageFragmentRoot : this.nameLookup.packageFragmentRoots) {
            IPackageFragmentRoot[] iPackageFragmentRootArr = {iPackageFragmentRoot};
            if (lookupStrategy.matches(iPackageFragmentRootArr, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$2;
                    lambda$2 = SearchableEnvironment.this.lambda$2((IPackageFragmentRoot[]) obj);
                    return lambda$2;
                }
            }) && this.nameLookup.hasCompilationUnit(cArr, iPackageFragmentRootArr)) {
                return true;
            }
        }
        return false;
    }

    public String toStringChar(char[] cArr) {
        return "[" + new String(cArr) + "]";
    }

    public String toStringCharChar(char[][] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (char[] cArr2 : cArr) {
            stringBuffer.append(toStringChar(cArr2));
        }
        return stringBuffer.toString();
    }

    public SearchableEnvironment(JavaProject javaProject, org.eclipse.jdt.core.ICompilationUnit[] iCompilationUnitArr, boolean z10) throws JavaModelException {
        this.project = javaProject;
        this.excludeTestCode = z10;
        this.checkAccessRestrictions = ("ignore".equals(javaProject.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) && "ignore".equals(javaProject.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true))) ? false : true;
        this.workingCopies = iCompilationUnitArr;
        this.nameLookup = javaProject.newNameLookup(iCompilationUnitArr, z10);
        if (CompilerOptions.versionToJdkLevel(javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)) >= ClassFileConstants.JDK9) {
            this.knownModuleLocations = new HashMap();
        }
        if (CompilerOptions.versionToJdkLevel(javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)) >= ClassFileConstants.JDK9) {
            this.moduleUpdater = new ModuleUpdater(javaProject);
            if (!z10) {
                IClasspathEntry[] expandedClasspath = javaProject.getExpandedClasspath();
                if (Arrays.stream(expandedClasspath).anyMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean isTest;
                        isTest = ((IClasspathEntry) obj).isTest();
                        return isTest;
                    }
                })) {
                    this.moduleUpdater.addReadUnnamedForNonEmptyClasspath(javaProject, expandedClasspath);
                }
            }
            for (IClasspathEntry iClasspathEntry : javaProject.getRawClasspath()) {
                if (!z10 || !iClasspathEntry.isTest()) {
                    this.moduleUpdater.computeModuleUpdates(iClasspathEntry);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069 A[Catch: JavaModelException -> 0x00e3, TryCatch #1 {JavaModelException -> 0x00e3, blocks: (B:3:0x0006, B:5:0x000b, B:7:0x000f, B:10:0x001c, B:11:0x0028, B:15:0x0056, B:20:0x0069, B:22:0x0073, B:26:0x008a, B:27:0x008d, B:29:0x0093, B:31:0x0099, B:33:0x00ae, B:35:0x00bb, B:36:0x00c0, B:40:0x00c1, B:43:0x00d6, B:45:0x0036, B:47:0x003d, B:49:0x0044, B:50:0x004b), top: B:2:0x0006, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void findTypes(char[] cArr, final boolean z10, boolean z11, int i10, final ISearchRequestor iSearchRequestor, IProgressMonitor iProgressMonitor) {
        final String str;
        char[] lowerCase;
        char[] cArr2;
        char[] cArr3;
        try {
            ICompilationUnit iCompilationUnit = this.unitToSkip;
            char[] cArr4 = null;
            if (iCompilationUnit == null) {
                str = null;
            } else {
                if (!(iCompilationUnit instanceof IJavaElement)) {
                    findTypes(new String(cArr), iSearchRequestor, convertSearchFilterToModelFilter(i10));
                    return;
                }
                str = ((IJavaElement) iCompilationUnit).getPath().toString();
            }
            int lastIndexOf = CharOperation.lastIndexOf('.', cArr);
            if (lastIndexOf >= 0) {
                cArr4 = CharOperation.subarray(cArr, 0, lastIndexOf);
                if (z11) {
                    lowerCase = CharOperation.subarray(cArr, lastIndexOf + 1, cArr.length);
                } else {
                    lowerCase = CharOperation.toLowerCase(CharOperation.subarray(cArr, lastIndexOf + 1, cArr.length));
                }
            } else if (!z11) {
                lowerCase = CharOperation.toLowerCase(cArr);
            } else {
                cArr3 = cArr;
                cArr2 = null;
                IProgressMonitor iProgressMonitor2 = new IProgressMonitor() {
                    boolean isCanceled = false;

                    public void beginTask(String str2, int i11) {
                    }

                    public void done() {
                    }

                    public void internalWorked(double d10) {
                    }

                    public boolean isCanceled() {
                        return this.isCanceled;
                    }

                    public void setCanceled(boolean z12) {
                        this.isCanceled = z12;
                    }

                    public void setTaskName(String str2) {
                    }

                    public void subTask(String str2) {
                    }

                    public void worked(int i11) {
                    }
                };
                IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor = new IRestrictedAccessTypeRequestor() {
                    @Override
                    public void acceptType(int i11, char[] cArr5, char[] cArr6, char[][] cArr7, String str2, AccessRestriction accessRestriction) {
                        String str3 = str;
                        if (str3 == null || !str3.equals(str2)) {
                            if (z10 || cArr7 == null || cArr7.length <= 0) {
                                iSearchRequestor.acceptType(cArr5, cArr6, cArr7, i11, accessRestriction);
                            }
                        }
                    }
                };
                int i11 = z11 ? 129 : 1;
                if (iProgressMonitor == null) {
                    IndexManager indexManager = JavaModelManager.getIndexManager();
                    if (indexManager.awaitingJobsCount() == 0) {
                        new BasicSearchEngine(this.workingCopies).searchAllTypeNames(cArr2, 0, cArr3, i11, i10, getSearchScope(), iRestrictedAccessTypeRequestor, 1, iProgressMonitor2);
                        return;
                    }
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                    if (!iProgressMonitor.isCanceled()) {
                        if (indexManager.awaitingJobsCount() == 0) {
                            new BasicSearchEngine(this.workingCopies).searchAllTypeNames(cArr2, 0, cArr3, i11, i10, getSearchScope(), iRestrictedAccessTypeRequestor, 1, iProgressMonitor2);
                            return;
                        } else {
                            findTypes(new String(cArr), iSearchRequestor, convertSearchFilterToModelFilter(i10));
                            return;
                        }
                    }
                    throw new OperationCanceledException();
                }
                try {
                    new BasicSearchEngine(this.workingCopies).searchAllTypeNames(cArr2, 0, cArr3, i11, i10, getSearchScope(), iRestrictedAccessTypeRequestor, 2, iProgressMonitor2);
                    return;
                } catch (OperationCanceledException unused2) {
                    findTypes(new String(cArr), iSearchRequestor, convertSearchFilterToModelFilter(i10));
                    return;
                }
            }
            cArr2 = cArr4;
            cArr3 = lowerCase;
            IProgressMonitor iProgressMonitor22 = new IProgressMonitor() {
                boolean isCanceled = false;

                public void beginTask(String str2, int i112) {
                }

                public void done() {
                }

                public void internalWorked(double d10) {
                }

                public boolean isCanceled() {
                    return this.isCanceled;
                }

                public void setCanceled(boolean z12) {
                    this.isCanceled = z12;
                }

                public void setTaskName(String str2) {
                }

                public void subTask(String str2) {
                }

                public void worked(int i112) {
                }
            };
            IRestrictedAccessTypeRequestor iRestrictedAccessTypeRequestor2 = new IRestrictedAccessTypeRequestor() {
                @Override
                public void acceptType(int i112, char[] cArr5, char[] cArr6, char[][] cArr7, String str2, AccessRestriction accessRestriction) {
                    String str3 = str;
                    if (str3 == null || !str3.equals(str2)) {
                        if (z10 || cArr7 == null || cArr7.length <= 0) {
                            iSearchRequestor.acceptType(cArr5, cArr6, cArr7, i112, accessRestriction);
                        }
                    }
                }
            };
            int i112 = z11 ? 129 : 1;
            if (iProgressMonitor == null) {
            }
        } catch (JavaModelException unused3) {
            findTypes(new String(cArr), iSearchRequestor, convertSearchFilterToModelFilter(i10));
        }
    }

    public void findPackages(char[] cArr, ISearchRequestor iSearchRequestor, IPackageFragmentRoot[] iPackageFragmentRootArr, boolean z10) {
        this.nameLookup.seekPackageFragments(new String(cArr), true, new SearchableEnvironmentRequestor(iSearchRequestor), iPackageFragmentRootArr);
        if (!z10 || this.knownModuleLocations == null) {
            return;
        }
        try {
            boolean equals = CharOperation.equals(CharOperation.ALL_PREFIX, cArr);
            HashSet<IModuleDescription> hashSet = new HashSet();
            for (IPackageFragmentRoot iPackageFragmentRoot : iPackageFragmentRootArr) {
                IModuleDescription moduleDescription = iPackageFragmentRoot.getJavaProject().getModuleDescription();
                if (moduleDescription instanceof AbstractModule) {
                    hashSet.add(moduleDescription);
                }
            }
            for (IModuleDescription iModuleDescription : hashSet) {
                IModule.IModuleReference[] requiredModules = ((AbstractModule) iModuleDescription).getRequiredModules();
                char[] charArray = iModuleDescription.getElementName().toCharArray();
                for (IModule.IModuleReference iModuleReference : requiredModules) {
                    findPackagesFromRequires(cArr, equals, iSearchRequestor, iModuleReference, charArray);
                }
            }
        } catch (JavaModelException unused) {
        }
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, char[] cArr3) {
        String str = null;
        if (cArr == null) {
            return null;
        }
        IPackageFragmentRoot[] findModuleContext = IModuleAwareNameEnvironment.LookupStrategy.get(cArr3) == IModuleAwareNameEnvironment.LookupStrategy.Named ? findModuleContext(cArr3) : null;
        String str2 = new String(cArr);
        if (cArr2 != null && cArr2.length != 0) {
            str = CharOperation.toString(cArr2);
        }
        return find(str2, str, findModuleContext);
    }

    private void findExactTypes(String str, ISearchRequestor iSearchRequestor, int i10) {
        this.nameLookup.seekTypes(str, null, false, i10, new SearchableEnvironmentRequestor(iSearchRequestor, this.unitToSkip, this.project, this.nameLookup));
    }

    @Deprecated
    public SearchableEnvironment(JavaProject javaProject, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        this(javaProject, workingCopyOwner, false);
    }

    public SearchableEnvironment(JavaProject javaProject, WorkingCopyOwner workingCopyOwner, boolean z10) throws JavaModelException {
        this(javaProject, workingCopyOwner == null ? null : JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, true), z10);
        this.owner = workingCopyOwner;
    }

    private void findTypes(String str, ISearchRequestor iSearchRequestor, int i10) {
        SearchableEnvironmentRequestor searchableEnvironmentRequestor = new SearchableEnvironmentRequestor(iSearchRequestor, this.unitToSkip, this.project, this.nameLookup);
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            this.nameLookup.seekTypes(str, null, true, i10, searchableEnvironmentRequestor);
            return;
        }
        String substring = str.substring(0, lastIndexOf);
        JavaElementRequestor javaElementRequestor = new JavaElementRequestor();
        this.nameLookup.seekPackageFragments(substring, false, javaElementRequestor);
        IPackageFragment[] packageFragments = javaElementRequestor.getPackageFragments();
        if (packageFragments != null) {
            String substring2 = str.substring(lastIndexOf + 1);
            for (IPackageFragment iPackageFragment : packageFragments) {
                if (iPackageFragment != null) {
                    this.nameLookup.seekTypes(substring2, iPackageFragment, true, i10, searchableEnvironmentRequestor);
                }
            }
        }
    }
}
