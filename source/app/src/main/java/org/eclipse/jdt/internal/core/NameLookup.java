package org.eclipse.jdt.internal.core;

import android.icu.text.DateFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.AbstractModule;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class NameLookup implements SuffixConstants {
    public static final int ACCEPT_ALL = 30;
    public static final int ACCEPT_ANNOTATIONS = 16;
    public static final int ACCEPT_CLASSES = 2;
    public static final int ACCEPT_ENUMS = 8;
    public static final int ACCEPT_INTERFACES = 4;
    protected IPackageFragmentRoot[] packageFragmentRoots;
    protected HashtableOfArrayToObject packageFragments;
    private JavaProject rootProject;
    protected Map<IPackageFragmentRoot, IModuleDescription> rootToModule;
    protected Map<IPackageFragmentRoot, IClasspathEntry> rootToResolvedEntries;
    protected HashMap typesInWorkingCopies;
    private static IModuleDescription NO_MODULE = new SourceModule(null, "Not a module") {
    };
    public static boolean VERBOSE = false;
    private static final IType[] NO_TYPES = new IType[0];
    public long timeSpentInSeekTypesInSourcePackage = 0;
    public long timeSpentInSeekTypesInBinaryPackage = 0;

    public static class Answer {
        IClasspathEntry entry;
        public IModuleDescription module;
        AccessRestriction restriction;
        public IType type;

        public Answer(IType iType, AccessRestriction accessRestriction, IClasspathEntry iClasspathEntry) {
            this(iType, accessRestriction, iClasspathEntry, null);
        }

        public boolean ignoreIfBetter() {
            AccessRestriction accessRestriction = this.restriction;
            return accessRestriction != null && accessRestriction.ignoreIfBetter();
        }

        public boolean isBetter(Answer answer) {
            AccessRestriction accessRestriction;
            if (answer == null || (accessRestriction = this.restriction) == null) {
                return true;
            }
            return answer.restriction != null && accessRestriction.getProblemId() < answer.restriction.getProblemId();
        }

        public String toString() {
            return this.type.toString() + "from " + ((Object) this.module);
        }

        public Answer(IType iType, AccessRestriction accessRestriction, IClasspathEntry iClasspathEntry, IModuleDescription iModuleDescription) {
            this.type = iType;
            this.restriction = accessRestriction;
            this.entry = iClasspathEntry;
            this.module = iModuleDescription;
        }

        public Answer(IModuleDescription iModuleDescription) {
            this.module = iModuleDescription;
            this.restriction = null;
        }
    }

    @FunctionalInterface
    public interface IPrefixMatcherCharArray {
        boolean matches(char[] cArr, char[] cArr2, boolean z10);
    }

    public class Selector implements IJavaElementRequestor {
        public List<IPackageFragment> pkgFragments = new ArrayList();

        public Selector(String str) {
        }

        @Override
        public void acceptField(IField iField) {
        }

        @Override
        public void acceptInitializer(IInitializer iInitializer) {
        }

        @Override
        public void acceptMemberType(IType iType) {
        }

        @Override
        public void acceptMethod(IMethod iMethod) {
        }

        @Override
        public void acceptModule(IModuleDescription iModuleDescription) {
        }

        @Override
        public void acceptPackageFragment(IPackageFragment iPackageFragment) {
            this.pkgFragments.add(iPackageFragment);
        }

        @Override
        public void acceptType(IType iType) {
        }

        @Override
        public boolean isCanceled() {
            return false;
        }
    }

    public NameLookup(JavaProject javaProject, IPackageFragmentRoot[] iPackageFragmentRootArr, HashtableOfArrayToObject hashtableOfArrayToObject, ICompilationUnit[] iCompilationUnitArr, Map map) {
        long j10;
        long j11;
        int i10;
        int i11;
        ICompilationUnit[] iCompilationUnitArr2 = iCompilationUnitArr;
        this.rootProject = javaProject;
        if (VERBOSE) {
            Util.verbose(" BUILDING NameLoopkup");
            StringBuilder sb2 = new StringBuilder(" -> pkg roots size: ");
            sb2.append(iPackageFragmentRootArr == null ? 0 : iPackageFragmentRootArr.length);
            Util.verbose(sb2.toString());
            StringBuilder sb3 = new StringBuilder(" -> pkgs size: ");
            sb3.append(hashtableOfArrayToObject == null ? 0 : hashtableOfArrayToObject.size());
            Util.verbose(sb3.toString());
            StringBuilder sb4 = new StringBuilder(" -> working copy size: ");
            sb4.append(iCompilationUnitArr2 == null ? 0 : iCompilationUnitArr2.length);
            Util.verbose(sb4.toString());
            j10 = System.currentTimeMillis();
        } else {
            j10 = -1;
        }
        this.rootToModule = new HashMap();
        this.packageFragmentRoots = iPackageFragmentRootArr;
        if (iCompilationUnitArr2 == null) {
            this.packageFragments = hashtableOfArrayToObject;
        } else {
            try {
                this.packageFragments = (HashtableOfArrayToObject) hashtableOfArrayToObject.clone();
            } catch (CloneNotSupportedException unused) {
            }
            this.typesInWorkingCopies = new HashMap();
            HashtableOfObjectToInt hashtableOfObjectToInt = new HashtableOfObjectToInt();
            int length = iPackageFragmentRootArr.length;
            int i12 = 0;
            while (i12 < length) {
                hashtableOfObjectToInt.put(iPackageFragmentRootArr[i12], i12);
                i12++;
                iCompilationUnitArr2 = iCompilationUnitArr;
            }
            int length2 = iCompilationUnitArr2.length;
            int i13 = 0;
            while (i13 < length2) {
                ICompilationUnit iCompilationUnit = iCompilationUnitArr2[i13];
                PackageFragment packageFragment = (PackageFragment) iCompilationUnit.getParent();
                IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) packageFragment.getParent();
                int i14 = hashtableOfObjectToInt.get(iPackageFragmentRoot);
                if (i14 == -1) {
                    j11 = j10;
                } else {
                    HashMap hashMap = (HashMap) this.typesInWorkingCopies.get(packageFragment);
                    if (hashMap == null) {
                        hashMap = new HashMap();
                        this.typesInWorkingCopies.put(packageFragment, hashMap);
                    }
                    try {
                        IType[] types = iCompilationUnit.getTypes();
                        int length3 = types.length;
                        if (length3 == 0) {
                            hashMap.put(Util.getNameWithoutJavaLikeExtension(iCompilationUnit.getElementName()), NO_TYPES);
                        } else {
                            int i15 = 0;
                            while (i15 < length3) {
                                IType iType = types[i15];
                                String elementName = iType.getElementName();
                                IType[] iTypeArr = types;
                                Object obj = hashMap.get(elementName);
                                if (obj == null) {
                                    hashMap.put(elementName, iType);
                                    i11 = length3;
                                    j11 = j10;
                                } else {
                                    i11 = length3;
                                    if (obj instanceof IType) {
                                        j11 = j10;
                                        try {
                                            hashMap.put(elementName, new IType[]{(IType) obj, iType});
                                        } catch (JavaModelException unused2) {
                                        }
                                    } else {
                                        j11 = j10;
                                        IType[] iTypeArr2 = (IType[]) obj;
                                        int length4 = iTypeArr2.length;
                                        IType[] iTypeArr3 = new IType[length4 + 1];
                                        System.arraycopy(iTypeArr2, 0, iTypeArr3, 0, length4);
                                        iTypeArr3[length4] = iType;
                                        hashMap.put(elementName, iTypeArr3);
                                    }
                                }
                                i15++;
                                types = iTypeArr;
                                length3 = i11;
                                j10 = j11;
                            }
                        }
                    } catch (JavaModelException unused3) {
                    }
                    j11 = j10;
                    String[] strArr = packageFragment.names;
                    Object obj2 = this.packageFragments.get(strArr);
                    if (obj2 == null || obj2 == JavaProjectElementInfo.NO_ROOTS) {
                        i10 = 1;
                        this.packageFragments.put(strArr, iPackageFragmentRoot);
                        JavaProjectElementInfo.addSuperPackageNames(strArr, this.packageFragments);
                    } else {
                        if (obj2 instanceof PackageFragmentRoot) {
                            int i16 = hashtableOfObjectToInt.get(obj2);
                            if (i14 != i16) {
                                this.packageFragments.put(strArr, i16 < i14 ? new IPackageFragmentRoot[]{(PackageFragmentRoot) obj2, iPackageFragmentRoot} : new IPackageFragmentRoot[]{iPackageFragmentRoot, (PackageFragmentRoot) obj2});
                            }
                        } else {
                            IPackageFragmentRoot[] iPackageFragmentRootArr2 = (IPackageFragmentRoot[]) obj2;
                            int length5 = iPackageFragmentRootArr2.length;
                            int i17 = 0;
                            int i18 = 0;
                            while (true) {
                                if (i17 >= length5) {
                                    break;
                                }
                                int i19 = hashtableOfObjectToInt.get(iPackageFragmentRootArr2[i17]);
                                if (i14 <= i19) {
                                    if (i14 != i19) {
                                        if (i14 < i19) {
                                            break;
                                        }
                                    } else {
                                        i18 = -1;
                                        break;
                                    }
                                } else {
                                    i18 = i17;
                                }
                                i17++;
                            }
                            if (i18 != -1) {
                                i10 = 1;
                                IPackageFragmentRoot[] iPackageFragmentRootArr3 = new IPackageFragmentRoot[length5 + 1];
                                System.arraycopy(iPackageFragmentRootArr2, 0, iPackageFragmentRootArr3, 0, i18);
                                iPackageFragmentRootArr3[i18] = iPackageFragmentRoot;
                                System.arraycopy(iPackageFragmentRootArr2, i18, iPackageFragmentRootArr3, i18 + 1, length5 - i18);
                                this.packageFragments.put(strArr, iPackageFragmentRootArr3);
                            }
                        }
                        i10 = 1;
                    }
                    i13 += i10;
                    iCompilationUnitArr2 = iCompilationUnitArr;
                    j10 = j11;
                }
                i10 = 1;
                i13 += i10;
                iCompilationUnitArr2 = iCompilationUnitArr;
                j10 = j11;
            }
        }
        this.rootToResolvedEntries = map;
        if (VERBOSE) {
            Util.verbose(" -> spent: " + (System.currentTimeMillis() - j10) + DateFormat.MINUTE_SECOND);
        }
    }

    private void checkModulePackages(IJavaElementRequestor iJavaElementRequestor, IPackageFragmentRoot[] iPackageFragmentRootArr, int i10) {
        HashtableOfArrayToObject hashtableOfArrayToObject = this.packageFragments;
        Object obj = hashtableOfArrayToObject.valueTable[i10];
        String[] strArr = (String[]) hashtableOfArrayToObject.keyTable[i10];
        if (obj instanceof PackageFragmentRoot) {
            PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) obj;
            if (moduleMatches(packageFragmentRoot, iPackageFragmentRootArr)) {
                iJavaElementRequestor.acceptPackageFragment(packageFragmentRoot.getPackageFragment(strArr));
                return;
            }
            return;
        }
        IPackageFragmentRoot[] iPackageFragmentRootArr2 = (IPackageFragmentRoot[]) obj;
        if (iPackageFragmentRootArr2 != null) {
            int length = iPackageFragmentRootArr2.length;
            for (int i11 = 0; i11 < length && !iJavaElementRequestor.isCanceled(); i11++) {
                PackageFragmentRoot packageFragmentRoot2 = (PackageFragmentRoot) iPackageFragmentRootArr2[i11];
                if (moduleMatches(packageFragmentRoot2, iPackageFragmentRootArr)) {
                    iJavaElementRequestor.acceptPackageFragment(packageFragmentRoot2.getPackageFragment(strArr));
                }
            }
        }
    }

    private void findAllTypes(String str, boolean z10, int i10, IJavaElementRequestor iJavaElementRequestor) {
        int length = this.packageFragmentRoots.length;
        for (int i11 = 0; i11 < length && !iJavaElementRequestor.isCanceled(); i11++) {
            try {
                IJavaElement[] children = this.packageFragmentRoots[i11].getChildren();
                if (children != null) {
                    for (IJavaElement iJavaElement : children) {
                        if (iJavaElementRequestor.isCanceled()) {
                            return;
                        }
                        seekTypes(str, (IPackageFragment) iJavaElement, z10, i10, iJavaElementRequestor);
                    }
                } else {
                    continue;
                }
            } catch (JavaModelException unused) {
            }
        }
    }

    private IType findSecondaryType(String str, String str2, IJavaProject iJavaProject, boolean z10, IProgressMonitor iProgressMonitor) {
        IType iType;
        try {
            Map<String, Map<String, IType>> secondaryTypes = JavaModelManager.getJavaModelManager().secondaryTypes(iJavaProject, z10, iProgressMonitor);
            if (secondaryTypes.size() <= 0) {
                return null;
            }
            Map<String, IType> map = secondaryTypes.get(str == null ? "" : str);
            if (map == null || map.size() <= 0 || (iType = map.get(str2)) == null) {
                return null;
            }
            if (JavaModelManager.VERBOSE) {
                Util.verbose("NameLookup FIND SECONDARY TYPES:");
                Util.verbose(" -> pkg name: " + str);
                Util.verbose(" -> type name: " + str2);
                Util.verbose(" -> project: " + iJavaProject.getElementName());
                Util.verbose(" -> type: " + iType.getElementName());
            }
            return iType;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    private IType getMemberType(IType iType, String str, int i10) {
        while (i10 != -1) {
            int i11 = i10 + 1;
            int indexOf = str.indexOf(46, i11);
            iType = iType.getType(str.substring(i11, indexOf == -1 ? str.length() : indexOf));
            i10 = indexOf;
        }
        return iType;
    }

    public static IModuleDescription getModuleDescription(JavaProject javaProject, IPackageFragmentRoot iPackageFragmentRoot, Map<IPackageFragmentRoot, IModuleDescription> map, Function<IPackageFragmentRoot, IClasspathEntry> function) {
        IModuleDescription iModuleDescription = map.get(iPackageFragmentRoot);
        if (iModuleDescription != null) {
            if (iModuleDescription != NO_MODULE) {
                return iModuleDescription;
            }
            return null;
        }
        if (!Objects.equals(javaProject, iPackageFragmentRoot.getJavaProject())) {
            IClasspathEntry apply = function.apply(iPackageFragmentRoot);
            if ((apply instanceof ClasspathEntry) && !((ClasspathEntry) apply).isModular()) {
                map.put(iPackageFragmentRoot, NO_MODULE);
                return null;
            }
        }
        try {
            if (iPackageFragmentRoot.getKind() == 1) {
                iModuleDescription = iPackageFragmentRoot.getJavaProject().getModuleDescription();
            }
            if (iModuleDescription == null) {
                IClasspathEntry apply2 = function.apply(iPackageFragmentRoot);
                if (apply2 instanceof ClasspathEntry) {
                    if (((ClasspathEntry) apply2).isModular() && (iModuleDescription = iPackageFragmentRoot.getModuleDescription()) == null) {
                        iModuleDescription = ((PackageFragmentRoot) iPackageFragmentRoot).getAutomaticModuleDescription(apply2);
                    }
                } else if (iPackageFragmentRoot instanceof JrtPackageFragmentRoot) {
                    iModuleDescription = iPackageFragmentRoot.getModuleDescription();
                }
            }
            map.put(iPackageFragmentRoot, iModuleDescription != null ? iModuleDescription : NO_MODULE);
            return iModuleDescription;
        } catch (JavaModelException unused) {
            map.put(iPackageFragmentRoot, NO_MODULE);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    public static IModule getModuleDescriptionInfo(IModuleDescription iModuleDescription) {
        if (iModuleDescription == null) {
            return null;
        }
        try {
            if (iModuleDescription instanceof AbstractModule.AutoModule) {
                return IModule.createAutomatic(iModuleDescription.getElementName().toCharArray(), ((AbstractModule.AutoModule) iModuleDescription).isAutoNameFromManifest());
            }
            return ((AbstractModule) iModuleDescription).getModuleInfo();
        } catch (JavaModelException e10) {
            if (e10.isDoesNotExist()) {
                return null;
            }
            Util.log((Throwable) e10);
            return null;
        }
    }

    private AccessRestriction getViolatedRestriction(String str, String str2, ClasspathEntry classpathEntry, AccessRestriction accessRestriction) {
        AccessRuleSet accessRuleSet = classpathEntry.getAccessRuleSet();
        return accessRuleSet != null ? accessRuleSet.getViolatedRestriction(CharOperation.concatWith(CharOperation.splitOn('.', str2.toCharArray()), str.toCharArray(), '/')) : accessRestriction;
    }

    private boolean isPrimaryType(String str, IType iType, boolean z10) {
        ICompilationUnit iCompilationUnit = (ICompilationUnit) iType.getParent();
        String substring = iCompilationUnit.getElementName().substring(0, iCompilationUnit.getElementName().lastIndexOf(46));
        if (substring.equals(iType.getElementName())) {
            return z10 ? substring.regionMatches(0, str, 0, str.length()) : substring.equals(str);
        }
        return false;
    }

    public static boolean lambda$2(Object[] objArr) {
        return objArr != null;
    }

    public static boolean lambda$3(boolean z10, String str, Object[] objArr) {
        return z10 || Util.concatWith((String[]) objArr, '.').toLowerCase().startsWith(str);
    }

    public void lambda$4(IJavaElementRequestor iJavaElementRequestor, IPackageFragmentRoot[] iPackageFragmentRootArr, Object[] objArr) {
        checkModulePackages(iJavaElementRequestor, iPackageFragmentRootArr, this.packageFragments.getIndex(objArr));
    }

    public static boolean lambda$5(char[] cArr, char[] cArr2, boolean z10) {
        return true;
    }

    private boolean moduleMatches(IPackageFragmentRoot iPackageFragmentRoot, IPackageFragmentRoot[] iPackageFragmentRootArr) {
        for (IPackageFragmentRoot iPackageFragmentRoot2 : iPackageFragmentRootArr) {
            if (iPackageFragmentRoot2.equals(iPackageFragmentRoot)) {
                return true;
            }
        }
        return false;
    }

    private void seekModuleAwarePartialPackageFragments(String str, final IJavaElementRequestor iJavaElementRequestor, final IPackageFragmentRoot[] iPackageFragmentRootArr) {
        final boolean equals = CharOperation.equals(str.toCharArray(), CharOperation.ALL_PREFIX);
        final String lowerCase = str.toLowerCase();
        Arrays.stream(this.packageFragments.keyTable).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$2;
                lambda$2 = NameLookup.lambda$2((Object[]) obj);
                return lambda$2;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$3;
                lambda$3 = NameLookup.lambda$3(equals, lowerCase, (Object[]) obj);
                return lambda$3;
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NameLookup.this.lambda$4(iJavaElementRequestor, iPackageFragmentRootArr, (Object[]) obj);
            }
        });
    }

    public boolean acceptType(IType iType, int i10, boolean z10) {
        int kind;
        if (i10 == 0 || i10 == 30) {
            return true;
        }
        try {
            kind = z10 ? TypeDeclaration.kind(((SourceTypeElementInfo) ((SourceType) iType).getElementInfo()).getModifiers()) : TypeDeclaration.kind(((IBinaryType) ((BinaryType) iType).getElementInfo()).getModifiers());
        } catch (JavaModelException unused) {
        }
        return kind != 1 ? kind != 2 ? kind != 3 ? (i10 & 16) != 0 : (i10 & 8) != 0 : (i10 & 4) != 0 : (i10 & 2) != 0;
    }

    public ICompilationUnit findCompilationUnit(String str) {
        String[] strArr = CharOperation.NO_STRINGS;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            strArr = Util.splitOn('.', str, 0, lastIndexOf);
            str = str.substring(lastIndexOf + 1);
        }
        int indexOf = str.indexOf(36);
        if (indexOf != -1) {
            str = str.substring(0, indexOf);
        }
        int index = this.packageFragments.getIndex(strArr);
        if (index == -1) {
            return null;
        }
        HashtableOfArrayToObject hashtableOfArrayToObject = this.packageFragments;
        Object obj = hashtableOfArrayToObject.valueTable[index];
        String[] strArr2 = (String[]) hashtableOfArrayToObject.keyTable[index];
        if (obj instanceof PackageFragmentRoot) {
            return findCompilationUnit(strArr2, str, (PackageFragmentRoot) obj);
        }
        for (IPackageFragmentRoot iPackageFragmentRoot : (IPackageFragmentRoot[]) obj) {
            ICompilationUnit findCompilationUnit = findCompilationUnit(strArr2, str, (PackageFragmentRoot) iPackageFragmentRoot);
            if (findCompilationUnit != null) {
                return findCompilationUnit;
            }
        }
        return null;
    }

    public Answer findModule(char[] cArr) {
        JavaElementRequestor javaElementRequestor = new JavaElementRequestor();
        seekModule(cArr, false, javaElementRequestor);
        IModuleDescription[] modules = javaElementRequestor.getModules();
        if (modules.length == 0) {
            try {
                JavaModelManager.getModulePathManager().seekModule(cArr, false, javaElementRequestor);
                modules = javaElementRequestor.getModules();
            } catch (JavaModelException unused) {
            }
        }
        if (modules.length > 0) {
            return new Answer(modules[0]);
        }
        return null;
    }

    public IPackageFragment findPackageFragment(IPath iPath) {
        if (!iPath.isAbsolute()) {
            throw new IllegalArgumentException(Messages.path_mustBeAbsolute);
        }
        IResource findMember = ResourcesPlugin.getWorkspace().getRoot().findMember(iPath);
        if (findMember == null) {
            int i10 = 0;
            while (true) {
                IPackageFragmentRoot[] iPackageFragmentRootArr = this.packageFragmentRoots;
                if (i10 >= iPackageFragmentRootArr.length) {
                    break;
                }
                IPackageFragmentRoot iPackageFragmentRoot = iPackageFragmentRootArr[i10];
                if (iPackageFragmentRoot.isExternal()) {
                    IPath path = iPackageFragmentRoot.getPath();
                    if (path.isPrefixOf(iPath)) {
                        String oSString = iPath.toOSString();
                        String replace = oSString.substring(path.toOSString().length() + 1, oSString.length()).replace(File.separatorChar, '.');
                        try {
                            for (IJavaElement iJavaElement : iPackageFragmentRoot.getChildren()) {
                                IPackageFragment iPackageFragment = (IPackageFragment) iJavaElement;
                                if (nameMatches(replace, (IJavaElement) iPackageFragment, false)) {
                                    return iPackageFragment;
                                }
                            }
                        } catch (JavaModelException unused) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                i10++;
            }
        } else {
            IJavaElement create = JavaCore.create(findMember);
            if (create == null) {
                return null;
            }
            int elementType = create.getElementType();
            if (elementType == 2) {
                JavaProject javaProject = (JavaProject) create;
                try {
                    if (javaProject.getClasspathEntryFor(iPath) != null) {
                        IPackageFragmentRoot packageFragmentRoot = javaProject.getPackageFragmentRoot(javaProject.getResource());
                        HashtableOfArrayToObject hashtableOfArrayToObject = this.packageFragments;
                        String[] strArr = CharOperation.NO_STRINGS;
                        Object obj = hashtableOfArrayToObject.get(strArr);
                        if (obj == null) {
                            return null;
                        }
                        if ((obj instanceof PackageFragmentRoot) && obj.equals(packageFragmentRoot)) {
                            return ((PackageFragmentRoot) packageFragmentRoot).getPackageFragment(strArr);
                        }
                        for (IPackageFragmentRoot iPackageFragmentRoot2 : (IPackageFragmentRoot[]) obj) {
                            if (iPackageFragmentRoot2.equals(packageFragmentRoot)) {
                                return ((PackageFragmentRoot) packageFragmentRoot).getPackageFragment(CharOperation.NO_STRINGS);
                            }
                        }
                    }
                } catch (JavaModelException unused2) {
                }
                return null;
            }
            if (elementType == 3) {
                return ((PackageFragmentRoot) create).getPackageFragment(CharOperation.NO_STRINGS);
            }
            if (elementType == 4) {
                return (IPackageFragment) create;
            }
        }
        return null;
    }

    public IPackageFragment[] findPackageFragments(String str, boolean z10) {
        return findPackageFragments(str, z10, false);
    }

    public Answer findType(String str, String str2, boolean z10, int i10, boolean z11, IPackageFragmentRoot[] iPackageFragmentRootArr) {
        return findType(str, str2, z10, i10, true, false, z11, null, iPackageFragmentRootArr);
    }

    public boolean hasCompilationUnit(char[][] cArr, IPackageFragmentRoot[] iPackageFragmentRootArr) {
        String charOperation = CharOperation.toString(cArr);
        if (charOperation == null || charOperation.length() == 0) {
            charOperation = "";
        }
        JavaElementRequestor javaElementRequestor = new JavaElementRequestor();
        seekPackageFragments(charOperation, false, javaElementRequestor, iPackageFragmentRootArr);
        IPackageFragment[] packageFragments = javaElementRequestor.getPackageFragments();
        for (IPackageFragment iPackageFragment : packageFragments) {
            if (iPackageFragment.containsJavaResources()) {
                return true;
            }
        }
        return false;
    }

    public boolean isPackage(String[] strArr) {
        return this.packageFragments.get(strArr) != null;
    }

    public boolean nameMatches(String str, IJavaElement iJavaElement, boolean z10) {
        if (z10) {
            return iJavaElement.getElementName().toLowerCase().startsWith(str);
        }
        return iJavaElement.getElementName().equals(str);
    }

    public void seekModule(char[] cArr, boolean z10, IJavaElementRequestor iJavaElementRequestor) {
        IPrefixMatcherCharArray iPrefixMatcherCharArray = z10 ? CharOperation.equals(cArr, CharOperation.ALL_PREFIX) ? new IPrefixMatcherCharArray() {
            @Override
            public final boolean matches(char[] cArr2, char[] cArr3, boolean z11) {
                boolean lambda$5;
                lambda$5 = NameLookup.lambda$5(cArr2, cArr3, z11);
                return lambda$5;
            }
        } : new IPrefixMatcherCharArray() {
            @Override
            public final boolean matches(char[] cArr2, char[] cArr3, boolean z11) {
                return CharOperation.prefixEquals(cArr2, cArr3, z11);
            }
        } : new IPrefixMatcherCharArray() {
            @Override
            public final boolean matches(char[] cArr2, char[] cArr3, boolean z11) {
                return CharOperation.equals(cArr2, cArr3, z11);
            }
        };
        int length = this.packageFragmentRoots.length;
        for (int i10 = 0; i10 < length && !iJavaElementRequestor.isCanceled(); i10++) {
            IPackageFragmentRoot iPackageFragmentRoot = this.packageFragmentRoots[i10];
            if (!(iPackageFragmentRoot instanceof JrtPackageFragmentRoot) || iPrefixMatcherCharArray.matches(cArr, iPackageFragmentRoot.getElementName().toCharArray(), false)) {
                JavaProject javaProject = this.rootProject;
                Map<IPackageFragmentRoot, IModuleDescription> map = this.rootToModule;
                Map<IPackageFragmentRoot, IClasspathEntry> map2 = this.rootToResolvedEntries;
                map2.getClass();
                IModuleDescription moduleDescription = getModuleDescription(javaProject, iPackageFragmentRoot, map, new y(map2));
                if (moduleDescription != null && iPrefixMatcherCharArray.matches(cArr, moduleDescription.getElementName().toCharArray(), false)) {
                    iJavaElementRequestor.acceptModule(moduleDescription);
                }
            }
        }
    }

    public void seekModuleReferences(String str, IJavaElementRequestor iJavaElementRequestor, IJavaProject iJavaProject) {
        seekModule(str.toCharArray(), true, iJavaElementRequestor);
    }

    public void seekPackageFragments(String str, boolean z10, IJavaElementRequestor iJavaElementRequestor, IPackageFragmentRoot[] iPackageFragmentRootArr) {
        if (iPackageFragmentRootArr == null) {
            seekPackageFragments(str, z10, iJavaElementRequestor);
            return;
        }
        if (z10) {
            seekModuleAwarePartialPackageFragments(str, iJavaElementRequestor, iPackageFragmentRootArr);
            return;
        }
        for (IPackageFragmentRoot iPackageFragmentRoot : iPackageFragmentRootArr) {
            IPackageFragment packageFragment = iPackageFragmentRoot.getPackageFragment(str);
            if (packageFragment.exists()) {
                iJavaElementRequestor.acceptPackageFragment(packageFragment);
            }
        }
    }

    public void seekTypes(String str, String str2, boolean z10, IJavaElementRequestor iJavaElementRequestor, int i10, IPackageFragmentRoot[] iPackageFragmentRootArr, String str3) {
        Selector selector = new Selector(str3);
        seekPackageFragments(str, true, selector, iPackageFragmentRootArr);
        if (selector.pkgFragments.size() == 0) {
            return;
        }
        Iterator<IPackageFragment> it = selector.pkgFragments.iterator();
        while (it.hasNext()) {
            seekTypes(str2, it.next(), z10, i10, iJavaElementRequestor);
        }
    }

    public void seekTypesInBinaryPackage(String str, IPackageFragment iPackageFragment, boolean z10, int i10, IJavaElementRequestor iJavaElementRequestor) {
        boolean z11;
        boolean z12;
        long currentTimeMillis = VERBOSE ? System.currentTimeMillis() : -1L;
        try {
            if (z10) {
                try {
                    IJavaElement[] children = iPackageFragment.getChildren();
                    int length = children.length;
                    int lastIndexOf = str.lastIndexOf(36);
                    String localTypeName = lastIndexOf != -1 ? Util.localTypeName(str, lastIndexOf, str.length()) : str;
                    int length2 = str.length();
                    int i11 = 0;
                    while (i11 < length) {
                        if (iJavaElementRequestor.isCanceled()) {
                            if (VERBOSE) {
                                this.timeSpentInSeekTypesInBinaryPackage += System.currentTimeMillis() - currentTimeMillis;
                                return;
                            }
                            return;
                        }
                        IJavaElement iJavaElement = children[i11];
                        int i12 = i11;
                        if (iJavaElement.getElementName().regionMatches(true, 0, str, 0, length2) && (iJavaElement instanceof IOrdinaryClassFile)) {
                            IType type = ((IOrdinaryClassFile) iJavaElement).getType();
                            String elementName = type.getElementName();
                            if (elementName.length() > 0) {
                                z11 = false;
                                if (!Character.isDigit(elementName.charAt(0)) && nameMatches(localTypeName, (IJavaElement) type, true) && acceptType(type, i10, false)) {
                                    iJavaElementRequestor.acceptType(type);
                                }
                                i11 = i12 + 1;
                            }
                        }
                        z11 = false;
                        i11 = i12 + 1;
                    }
                } catch (JavaModelException unused) {
                    if (VERBOSE) {
                        this.timeSpentInSeekTypesInBinaryPackage += System.currentTimeMillis() - currentTimeMillis;
                        return;
                    }
                    return;
                }
            } else {
                if (iJavaElementRequestor.isCanceled()) {
                    if (z12) {
                        return;
                    } else {
                        return;
                    }
                }
                ClassFile classFile = new ClassFile((PackageFragment) iPackageFragment, str);
                if (classFile.existsUsingJarTypeCache()) {
                    IType type2 = classFile.getType();
                    if (acceptType(type2, i10, false)) {
                        iJavaElementRequestor.acceptType(type2);
                    }
                }
            }
            if (VERBOSE) {
                this.timeSpentInSeekTypesInBinaryPackage += System.currentTimeMillis() - currentTimeMillis;
            }
        } finally {
            if (VERBOSE) {
                this.timeSpentInSeekTypesInBinaryPackage += System.currentTimeMillis() - currentTimeMillis;
            }
        }
    }

    public void seekTypesInSourcePackage(String str, IPackageFragment iPackageFragment, int i10, boolean z10, String str2, int i11, IJavaElementRequestor iJavaElementRequestor) {
        int i12;
        int i13;
        long currentTimeMillis = VERBOSE ? System.currentTimeMillis() : -1L;
        try {
            try {
                if (z10) {
                    String substring = i10 == -1 ? str : str.substring(0, i10);
                    IJavaElement[] children = iPackageFragment.getChildren();
                    int length = children.length;
                    int i14 = 0;
                    while (i14 < length) {
                        if (iJavaElementRequestor.isCanceled()) {
                            if (VERBOSE) {
                                this.timeSpentInSeekTypesInSourcePackage += System.currentTimeMillis() - currentTimeMillis;
                                return;
                            }
                            return;
                        }
                        IJavaElement iJavaElement = children[i14];
                        if (iJavaElement.getElementName().toLowerCase().startsWith(substring)) {
                            try {
                                IType[] types = ((ICompilationUnit) iJavaElement).getTypes();
                                int length2 = types.length;
                                int i15 = 0;
                                while (i15 < length2) {
                                    int i16 = i15;
                                    int i17 = length2;
                                    IType[] iTypeArr = types;
                                    i12 = i14;
                                    i13 = length;
                                    try {
                                        seekTypesInTopLevelType(str, i10, types[i15], iJavaElementRequestor, i11);
                                        i15 = i16 + 1;
                                        i14 = i12;
                                        length2 = i17;
                                        types = iTypeArr;
                                        length = i13;
                                    } catch (JavaModelException unused) {
                                    }
                                }
                            } catch (JavaModelException unused2) {
                            }
                        }
                        i12 = i14;
                        i13 = length;
                        i14 = i12 + 1;
                        length = i13;
                    }
                } else {
                    IJavaElement[] children2 = iPackageFragment.getChildren();
                    int length3 = children2.length;
                    int i18 = 0;
                    while (true) {
                        if (i18 < length3) {
                            if (iJavaElementRequestor.isCanceled()) {
                                if (VERBOSE) {
                                    this.timeSpentInSeekTypesInSourcePackage += System.currentTimeMillis() - currentTimeMillis;
                                    return;
                                }
                                return;
                            }
                            IJavaElement iJavaElement2 = children2[i18];
                            String elementName = iJavaElement2.getElementName();
                            int lastIndexOf = elementName.lastIndexOf(46);
                            if (lastIndexOf == str2.length() && str2.regionMatches(0, elementName, 0, lastIndexOf) && (iJavaElement2 instanceof ICompilationUnit)) {
                                IType memberType = getMemberType(((ICompilationUnit) iJavaElement2).getType(str2), str, i10);
                                if (acceptType(memberType, i11, true)) {
                                    iJavaElementRequestor.acceptType(memberType);
                                    break;
                                }
                                i18++;
                            }
                            i18++;
                        }
                    }
                }
            } catch (JavaModelException unused3) {
            }
        } finally {
            if (VERBOSE) {
                this.timeSpentInSeekTypesInSourcePackage += System.currentTimeMillis() - currentTimeMillis;
            }
        }
    }

    public boolean seekTypesInTopLevelType(String str, int i10, IType iType, IJavaElementRequestor iJavaElementRequestor, int i11) {
        if (!iType.getElementName().toLowerCase().startsWith(str)) {
            return false;
        }
        if (i10 != -1) {
            return seekTypesInType(str, i10, iType, iJavaElementRequestor, i11);
        }
        if (!acceptType(iType, i11, true)) {
            return false;
        }
        iJavaElementRequestor.acceptType(iType);
        return true;
    }

    public boolean seekTypesInType(String str, int i10, IType iType, IJavaElementRequestor iJavaElementRequestor, int i11) {
        String str2;
        boolean z10;
        try {
            IType[] types = iType.getTypes();
            int length = types.length;
            if (length == 0) {
                return false;
            }
            if (i10 != -1) {
                str2 = str.substring(0, i10);
                z10 = true;
            } else {
                str2 = str;
                z10 = false;
            }
            for (int i12 = 0; i12 < length && !iJavaElementRequestor.isCanceled(); i12++) {
                IType iType2 = types[i12];
                if (iType2.getElementName().toLowerCase().startsWith(str2)) {
                    if (z10) {
                        String substring = str.substring(i10 + 1, str.length());
                        return seekTypesInType(substring, substring.indexOf(46), iType2, iJavaElementRequestor, i11);
                    }
                    if (acceptType(iType2, i11, true)) {
                        iJavaElementRequestor.acceptMemberType(iType2);
                        return true;
                    }
                }
            }
            return false;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    public boolean seekTypesInWorkingCopies(String str, IPackageFragment iPackageFragment, int i10, boolean z10, String str2, int i11, IJavaElementRequestor iJavaElementRequestor, boolean z11) {
        if (z10) {
            HashMap hashMap = this.typesInWorkingCopies;
            HashMap hashMap2 = (HashMap) (hashMap != null ? hashMap.get(iPackageFragment) : null);
            if (hashMap2 != null) {
                Iterator it = hashMap2.values().iterator();
                while (it.hasNext() && !iJavaElementRequestor.isCanceled()) {
                    Object next = it.next();
                    if (next instanceof IType) {
                        if (z11 || isPrimaryType(str, (IType) next, true)) {
                            seekTypesInTopLevelType(str, i10, (IType) next, iJavaElementRequestor, i11);
                        }
                    } else if (next instanceof IType[]) {
                        for (IType iType : (IType[]) next) {
                            seekTypesInTopLevelType(str, i10, iType, iJavaElementRequestor, i11);
                        }
                    }
                }
                return false;
            }
        } else {
            HashMap hashMap3 = this.typesInWorkingCopies;
            HashMap hashMap4 = (HashMap) (hashMap3 != null ? hashMap3.get(iPackageFragment) : null);
            if (hashMap4 != null) {
                Object obj = hashMap4.get(str2);
                if (obj instanceof IType) {
                    IType iType2 = (IType) obj;
                    IType memberType = getMemberType(iType2, str, i10);
                    if ((z11 || isPrimaryType(str, iType2, false)) && acceptType(memberType, i11, true)) {
                        iJavaElementRequestor.acceptType(memberType);
                        return true;
                    }
                } else if (obj instanceof IType[]) {
                    if (obj == NO_TYPES) {
                        String valueOf = String.valueOf(TypeConstants.PACKAGE_INFO_NAME);
                        if (valueOf.equals(str)) {
                            iJavaElementRequestor.acceptType(iPackageFragment.getCompilationUnit(valueOf.concat(".java")).getType(str));
                        }
                        return true;
                    }
                    IType[] iTypeArr = (IType[]) obj;
                    int length = iTypeArr.length;
                    for (int i12 = 0; i12 < length && !iJavaElementRequestor.isCanceled(); i12++) {
                        IType memberType2 = getMemberType(iTypeArr[i12], str, i10);
                        if (acceptType(memberType2, i11, true)) {
                            iJavaElementRequestor.acceptType(memberType2);
                            return true;
                        }
                    }
                    return false;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v2 */
    public IPackageFragment[] findPackageFragments(String str, boolean z10, boolean z11) {
        char[] cArr;
        int i10;
        boolean z12;
        char[] cArr2;
        NameLookup nameLookup = this;
        boolean equals = str.equals("*");
        int i11 = 1;
        ?? r52 = 0;
        boolean z13 = equals || (z11 && (str.indexOf(42) >= 0 || str.indexOf(63) >= 0));
        ArrayList arrayList = null;
        if (!z10 && !z13) {
            int index = nameLookup.packageFragments.getIndex(Util.splitOn('.', str, 0, str.length()));
            if (index == -1) {
                return null;
            }
            HashtableOfArrayToObject hashtableOfArrayToObject = nameLookup.packageFragments;
            Object obj = hashtableOfArrayToObject.valueTable[index];
            String[] strArr = (String[]) hashtableOfArrayToObject.keyTable[index];
            if (obj instanceof PackageFragmentRoot) {
                return new IPackageFragment[]{((PackageFragmentRoot) obj).getPackageFragment(strArr)};
            }
            IPackageFragmentRoot[] iPackageFragmentRootArr = (IPackageFragmentRoot[]) obj;
            IPackageFragment[] iPackageFragmentArr = new IPackageFragment[iPackageFragmentRootArr.length];
            for (int i12 = 0; i12 < iPackageFragmentRootArr.length; i12++) {
                iPackageFragmentArr[i12] = ((PackageFragmentRoot) iPackageFragmentRootArr[i12]).getPackageFragment(strArr);
            }
            return iPackageFragmentArr;
        }
        String[] splitOn = Util.splitOn('.', str, 0, str.length());
        char[] charArray = (!z13 || equals) ? null : str.toLowerCase().toCharArray();
        Object[][] objArr = nameLookup.packageFragments.keyTable;
        int length = objArr.length;
        int i13 = 0;
        IPackageFragment[] iPackageFragmentArr2 = null;
        while (i13 < length) {
            String[] strArr2 = (String[]) objArr[i13];
            if (strArr2 != null && (equals || (!z13 ? Util.startsWithIgnoreCase(strArr2, splitOn, z10) : CharOperation.match(charArray, Util.concatCompoundNameToCharArray(strArr2), r52)))) {
                Object obj2 = nameLookup.packageFragments.valueTable[i13];
                if (obj2 instanceof PackageFragmentRoot) {
                    PackageFragment packageFragment = ((PackageFragmentRoot) obj2).getPackageFragment(strArr2);
                    if (iPackageFragmentArr2 == null) {
                        iPackageFragmentArr2 = new IPackageFragment[i11];
                        iPackageFragmentArr2[r52] = packageFragment;
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            arrayList.add(iPackageFragmentArr2[r52]);
                        }
                        arrayList.add(packageFragment);
                    }
                } else {
                    IPackageFragmentRoot[] iPackageFragmentRootArr2 = (IPackageFragmentRoot[]) obj2;
                    int length2 = iPackageFragmentRootArr2.length;
                    for (int i14 = r52; i14 < length2; i14++) {
                        PackageFragment packageFragment2 = ((PackageFragmentRoot) iPackageFragmentRootArr2[i14]).getPackageFragment(strArr2);
                        if (iPackageFragmentArr2 == null) {
                            iPackageFragmentArr2 = new IPackageFragment[]{packageFragment2};
                            cArr2 = charArray;
                        } else {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                cArr2 = charArray;
                                arrayList.add(iPackageFragmentArr2[0]);
                            } else {
                                cArr2 = charArray;
                            }
                            arrayList.add(packageFragment2);
                        }
                        i11 = 1;
                        charArray = cArr2;
                    }
                    cArr = charArray;
                    i10 = i11;
                    z12 = false;
                    i13 += i10;
                    r52 = z12;
                    i11 = i10;
                    charArray = cArr;
                    nameLookup = this;
                }
            }
            cArr = charArray;
            i10 = i11;
            z12 = r52;
            i13 += i10;
            r52 = z12;
            i11 = i10;
            charArray = cArr;
            nameLookup = this;
        }
        if (arrayList == null) {
            return iPackageFragmentArr2;
        }
        IPackageFragment[] iPackageFragmentArr3 = new IPackageFragment[arrayList.size()];
        arrayList.toArray(iPackageFragmentArr3);
        return iPackageFragmentArr3;
    }

    public Answer findType(String str, String str2, boolean z10, int i10, boolean z11) {
        return findType(str, str2, z10, i10, true, false, z11, null);
    }

    public boolean isPackage(String[] strArr, IPackageFragmentRoot[] iPackageFragmentRootArr) {
        if (iPackageFragmentRootArr == null) {
            return isPackage(strArr);
        }
        for (IPackageFragmentRoot iPackageFragmentRoot : iPackageFragmentRootArr) {
            if (iPackageFragmentRoot.getPackageFragment(String.join(".", strArr)).exists()) {
                return true;
            }
        }
        return false;
    }

    public Answer findType(String str, String str2, boolean z10, int i10, boolean z11, boolean z12, boolean z13, IProgressMonitor iProgressMonitor) {
        return findType(str, str2, z10, i10, z11, z12, z13, iProgressMonitor, null);
    }

    public boolean nameMatches(String str, ICompilationUnit iCompilationUnit, boolean z10) {
        if (z10) {
            return iCompilationUnit.getElementName().toLowerCase().startsWith(str);
        }
        return Util.equalsIgnoreJavaLikeExtension(iCompilationUnit.getElementName(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [org.eclipse.jdt.internal.core.NameLookup$Answer, org.eclipse.jdt.internal.compiler.env.AccessRestriction, org.eclipse.jdt.core.IClasspathEntry] */
    /* JADX WARN: Type inference failed for: r10v4 */
    public Answer findType(String str, String str2, boolean z10, int i10, boolean z11, boolean z12, boolean z13, IProgressMonitor iProgressMonitor, IPackageFragmentRoot[] iPackageFragmentRootArr) {
        ICompilationUnit compilationUnit;
        Answer answer;
        NameLookup nameLookup = this;
        String str3 = str2;
        int i11 = 0;
        ?? r10 = 0;
        if (str3 != null && str2.length() != 0) {
            if (str.length() > 0 && ScannerHelper.isLowerCase(str.charAt(0))) {
                if (nameLookup.findPackageFragments(str3 + "." + str, false) != null) {
                    return null;
                }
            }
        } else {
            str3 = "";
        }
        String str4 = str3;
        JavaElementRequestor javaElementRequestor = new JavaElementRequestor();
        nameLookup.seekPackageFragments(str4, false, javaElementRequestor, iPackageFragmentRootArr);
        IPackageFragment[] packageFragments = javaElementRequestor.getPackageFragments();
        int length = packageFragments.length;
        int i12 = 0;
        IType iType = null;
        HashSet hashSet = null;
        Answer answer2 = null;
        IJavaProject iJavaProject = null;
        NameLookup nameLookup2 = nameLookup;
        while (i12 < length) {
            HashSet hashSet2 = hashSet;
            Answer answer3 = answer2;
            iType = findType(str, packageFragments[i12], z10, i10, z12, z11);
            if (iType != null) {
                PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) iType.getAncestor(3);
                ClasspathEntry classpathEntry = (ClasspathEntry) nameLookup2.rootToResolvedEntries.get(packageFragmentRoot);
                AccessRestriction violatedRestriction = (classpathEntry == null || !z13) ? r10 : nameLookup2.getViolatedRestriction(str, str4, classpathEntry, r10);
                JavaProject javaProject = nameLookup2.rootProject;
                Map<IPackageFragmentRoot, IModuleDescription> map = nameLookup2.rootToModule;
                Map<IPackageFragmentRoot, IClasspathEntry> map2 = nameLookup2.rootToResolvedEntries;
                map2.getClass();
                answer2 = new Answer(iType, violatedRestriction, classpathEntry, getModuleDescription(javaProject, packageFragmentRoot, map, new y(map2)));
                if (!answer2.ignoreIfBetter()) {
                    answer = answer3;
                    if (answer2.isBetter(answer)) {
                        return answer2;
                    }
                } else {
                    answer = answer3;
                    if (answer2.isBetter(answer)) {
                        hashSet = hashSet2;
                        i12++;
                        i11 = 0;
                        r10 = 0;
                        nameLookup2 = this;
                    }
                }
            } else {
                answer = answer3;
                if (answer == null && z11) {
                    if (iJavaProject == null) {
                        iJavaProject = packageFragments[i12].getJavaProject();
                    } else if (hashSet2 == null) {
                        if (!iJavaProject.equals(packageFragments[i12].getJavaProject())) {
                            hashSet = new HashSet(3);
                            hashSet.add(iJavaProject);
                            hashSet.add(packageFragments[i12].getJavaProject());
                            answer2 = answer;
                            i12++;
                            i11 = 0;
                            r10 = 0;
                            nameLookup2 = this;
                        }
                    } else {
                        hashSet2.add(packageFragments[i12].getJavaProject());
                    }
                }
            }
            hashSet = hashSet2;
            answer2 = answer;
            i12++;
            i11 = 0;
            r10 = 0;
            nameLookup2 = this;
        }
        if (answer2 != null) {
            return answer2;
        }
        if (z11 && iJavaProject != null) {
            if (hashSet == null) {
                iType = findSecondaryType(str4, str, iJavaProject, z12, iProgressMonitor);
            } else {
                Iterator it = hashSet.iterator();
                while (iType == null && it.hasNext()) {
                    iType = findSecondaryType(str4, str, (IJavaProject) it.next(), z12, iProgressMonitor);
                }
            }
        }
        if (iType != null && (compilationUnit = iType.getCompilationUnit()) != null && compilationUnit.isWorkingCopy()) {
            try {
                IType[] types = compilationUnit.getTypes();
                int length2 = types == null ? i11 : types.length;
                while (true) {
                    if (i11 >= length2) {
                        iType = r10;
                        break;
                    }
                    if (types[i11].getElementName().equals(str)) {
                        break;
                    }
                    i11++;
                }
            } catch (JavaModelException unused) {
                return r10;
            }
        }
        return iType == null ? r10 : new Answer(iType, r10, r10);
    }

    public void seekTypes(String str, IPackageFragment iPackageFragment, boolean z10, int i10, IJavaElementRequestor iJavaElementRequestor) {
        seekTypes(str, iPackageFragment, z10, i10, iJavaElementRequestor, true);
    }

    public IModule getModuleDescriptionInfo(PackageFragmentRoot packageFragmentRoot) {
        JavaProject javaProject = this.rootProject;
        Map<IPackageFragmentRoot, IModuleDescription> map = this.rootToModule;
        Map<IPackageFragmentRoot, IClasspathEntry> map2 = this.rootToResolvedEntries;
        map2.getClass();
        IModuleDescription moduleDescription = getModuleDescription(javaProject, packageFragmentRoot, map, new y(map2));
        if (moduleDescription != null) {
            return getModuleDescriptionInfo(moduleDescription);
        }
        return null;
    }

    public void seekPackageFragments(String str, boolean z10, IJavaElementRequestor iJavaElementRequestor) {
        if (z10) {
            String[] splitOn = Util.splitOn('.', str, 0, str.length());
            Object[][] objArr = this.packageFragments.keyTable;
            int length = objArr.length;
            for (int i10 = 0; i10 < length && !iJavaElementRequestor.isCanceled(); i10++) {
                String[] strArr = (String[]) objArr[i10];
                if (strArr != null && Util.startsWithIgnoreCase(strArr, splitOn, z10)) {
                    Object obj = this.packageFragments.valueTable[i10];
                    if (obj instanceof PackageFragmentRoot) {
                        iJavaElementRequestor.acceptPackageFragment(((PackageFragmentRoot) obj).getPackageFragment(strArr));
                    } else {
                        for (IPackageFragmentRoot iPackageFragmentRoot : (IPackageFragmentRoot[]) obj) {
                            if (iJavaElementRequestor.isCanceled()) {
                                return;
                            }
                            iJavaElementRequestor.acceptPackageFragment(((PackageFragmentRoot) iPackageFragmentRoot).getPackageFragment(strArr));
                        }
                    }
                }
            }
            return;
        }
        int index = this.packageFragments.getIndex(Util.splitOn('.', str, 0, str.length()));
        if (index != -1) {
            HashtableOfArrayToObject hashtableOfArrayToObject = this.packageFragments;
            Object obj2 = hashtableOfArrayToObject.valueTable[index];
            String[] strArr2 = (String[]) hashtableOfArrayToObject.keyTable[index];
            if (obj2 instanceof PackageFragmentRoot) {
                iJavaElementRequestor.acceptPackageFragment(((PackageFragmentRoot) obj2).getPackageFragment(strArr2));
                return;
            }
            IPackageFragmentRoot[] iPackageFragmentRootArr = (IPackageFragmentRoot[]) obj2;
            if (iPackageFragmentRootArr != null) {
                int length2 = iPackageFragmentRootArr.length;
                for (int i11 = 0; i11 < length2 && !iJavaElementRequestor.isCanceled(); i11++) {
                    iJavaElementRequestor.acceptPackageFragment(((PackageFragmentRoot) iPackageFragmentRootArr[i11]).getPackageFragment(strArr2));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004e A[Catch: JavaModelException -> 0x00c6, TryCatch #0 {JavaModelException -> 0x00c6, blocks: (B:10:0x0022, B:15:0x004a, B:17:0x004e, B:25:0x0072, B:27:0x0086, B:29:0x009f, B:34:0x00b8, B:36:0x00af, B:40:0x0038, B:44:0x0042), top: B:9:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086 A[Catch: JavaModelException -> 0x00c6, TryCatch #0 {JavaModelException -> 0x00c6, blocks: (B:10:0x0022, B:15:0x004a, B:17:0x004e, B:25:0x0072, B:27:0x0086, B:29:0x009f, B:34:0x00b8, B:36:0x00af, B:40:0x0038, B:44:0x0042), top: B:9:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void seekTypes(String str, IPackageFragment iPackageFragment, boolean z10, int i10, IJavaElementRequestor iJavaElementRequestor, boolean z11) {
        int i11;
        String str2;
        int i12;
        String str3;
        String lowerCase = z10 ? str.toLowerCase() : str;
        if (iPackageFragment == null) {
            findAllTypes(lowerCase, z10, i10, iJavaElementRequestor);
            return;
        }
        try {
            int internalKind = ((PackageFragmentRoot) iPackageFragment.getParent()).internalKind();
            String str4 = null;
            if (this.typesInWorkingCopies == null && internalKind != 1) {
                str2 = null;
                i11 = -1;
                if (this.typesInWorkingCopies == null) {
                    i12 = 1;
                    if (seekTypesInWorkingCopies(lowerCase, iPackageFragment, i11, z10, str2, i10, iJavaElementRequestor, z11)) {
                        return;
                    }
                } else {
                    i12 = 1;
                }
                if (internalKind == i12) {
                    if (internalKind != 2) {
                        return;
                    }
                    seekTypesInBinaryPackage(lowerCase.replace('.', '$'), iPackageFragment, z10, i10, iJavaElementRequestor);
                    return;
                }
                seekTypesInSourcePackage(lowerCase, iPackageFragment, i11, z10, str2, i10, iJavaElementRequestor);
                if (lowerCase.indexOf(36) != -1) {
                    String replace = lowerCase.replace('$', '.');
                    int indexOf = replace.indexOf(46);
                    if (z10) {
                        str3 = str2;
                    } else {
                        str3 = indexOf == -1 ? replace : replace.substring(0, indexOf);
                    }
                    seekTypesInSourcePackage(replace, iPackageFragment, indexOf, z10, str3, i10, iJavaElementRequestor);
                    return;
                }
                return;
            }
            int indexOf2 = lowerCase.indexOf(46);
            if (!z10) {
                str4 = indexOf2 == -1 ? lowerCase : lowerCase.substring(0, indexOf2);
            }
            i11 = indexOf2;
            str2 = str4;
            if (this.typesInWorkingCopies == null) {
            }
            if (internalKind == i12) {
            }
        } catch (JavaModelException unused) {
        }
    }

    private ICompilationUnit findCompilationUnit(String[] strArr, String str, PackageFragmentRoot packageFragmentRoot) {
        if (packageFragmentRoot.isArchive()) {
            return null;
        }
        try {
            for (ICompilationUnit iCompilationUnit : packageFragmentRoot.getPackageFragment(strArr).getCompilationUnits()) {
                if (Util.equalsIgnoreJavaLikeExtension(iCompilationUnit.getElementName(), str)) {
                    return iCompilationUnit;
                }
            }
            return null;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public IType findType(String str, IPackageFragment iPackageFragment, boolean z10, int i10, boolean z11, boolean z12) {
        if (iPackageFragment == null) {
            return null;
        }
        SingleTypeRequestor singleTypeRequestor = new SingleTypeRequestor();
        seekTypes(str, iPackageFragment, z10, i10, singleTypeRequestor, z12);
        IType type = singleTypeRequestor.getType();
        return (type == null && z12) ? findSecondaryType(iPackageFragment.getElementName(), str, iPackageFragment.getJavaProject(), z11, null) : type;
    }

    public IType findType(String str, IPackageFragment iPackageFragment, boolean z10, int i10) {
        if (iPackageFragment == null) {
            return null;
        }
        SingleTypeRequestor singleTypeRequestor = new SingleTypeRequestor();
        seekTypes(str, iPackageFragment, z10, i10, singleTypeRequestor, false);
        return singleTypeRequestor.getType();
    }

    public IType findType(String str, boolean z10, int i10) {
        Answer findType = findType(str, z10, i10, false);
        if (findType == null) {
            return null;
        }
        return findType.type;
    }

    public Answer findType(String str, boolean z10, int i10, boolean z11) {
        return findType(str, z10, i10, true, true, z11, null);
    }

    public Answer findType(String str, boolean z10, int i10, boolean z11, boolean z12, boolean z13, IProgressMonitor iProgressMonitor) {
        String substring;
        String str2;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == 0) {
            return null;
        }
        if (lastIndexOf == -1) {
            substring = str;
            str2 = "";
        } else {
            String substring2 = str.substring(0, lastIndexOf);
            substring = str.substring(lastIndexOf + 1);
            str2 = substring2;
        }
        return findType(substring, str2, z10, i10, z11, z12, z13, iProgressMonitor);
    }
}
