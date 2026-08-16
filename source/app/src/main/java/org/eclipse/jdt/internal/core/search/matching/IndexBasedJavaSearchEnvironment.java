package org.eclipse.jdt.internal.core.search.matching;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.field.FieldSearchIndex;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.nd.java.JavaNames;
import org.eclipse.jdt.internal.core.nd.java.NdType;
import org.eclipse.jdt.internal.core.nd.java.NdTypeId;
import org.eclipse.jdt.internal.core.nd.java.TypeRef;
import org.eclipse.jdt.internal.core.nd.java.model.IndexBinaryType;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;
import org.eclipse.jdt.internal.core.nd.util.PathMap;

public class IndexBasedJavaSearchEnvironment implements INameEnvironment, SuffixConstants {
    private IPackageFragmentRoot[] roots;
    private int sourceEntryPosition;
    private Map<String, ICompilationUnit> workingCopies;
    private PathMap<Integer> mapPathsToRoots = new PathMap<>();
    private List<ClasspathLocation> unindexedEntries = new ArrayList();

    public IndexBasedJavaSearchEnvironment(List<IJavaProject> list, ICompilationUnit[] iCompilationUnitArr) {
        Object target;
        this.workingCopies = JavaSearchNameEnvironment.getWorkingCopyMap(iCompilationUnitArr);
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<IJavaProject> it = list.iterator();
            while (it.hasNext()) {
                for (IPackageFragmentRoot iPackageFragmentRoot : it.next().getAllPackageFragmentRoots()) {
                    IPath path = iPackageFragmentRoot.getPath();
                    if (!iPackageFragmentRoot.isArchive() && (target = JavaModel.getTarget(path, true)) != null && iPackageFragmentRoot.getKind() == 1) {
                        PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) iPackageFragmentRoot;
                        this.unindexedEntries.add(new ClasspathSourceDirectory((IContainer) target, packageFragmentRoot.fullExclusionPatternChars(), packageFragmentRoot.fullInclusionPatternChars()));
                    }
                    arrayList.add(iPackageFragmentRoot);
                }
            }
            this.roots = (IPackageFragmentRoot[]) arrayList.toArray(new IPackageFragmentRoot[0]);
        } catch (JavaModelException unused) {
            this.roots = new IPackageFragmentRoot[0];
        }
        int length = this.roots.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.mapPathsToRoots.put(JavaIndex.getLocationForElement(this.roots[i10]), Integer.valueOf(i10));
        }
        this.sourceEntryPosition = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.roots[i11].getKind() == 1) {
                this.sourceEntryPosition = i11;
                return;
            }
            continue;
        }
    }

    public static INameEnvironment create(List<IJavaProject> list, ICompilationUnit[] iCompilationUnitArr) {
        if (JavaIndex.isEnabled() && isEnabled()) {
            return new IndexBasedJavaSearchEnvironment(list, iCompilationUnitArr);
        }
        Iterator<IJavaProject> it = list.iterator();
        JavaSearchNameEnvironment javaSearchNameEnvironment = new JavaSearchNameEnvironment(it.next(), iCompilationUnitArr);
        while (it.hasNext()) {
            javaSearchNameEnvironment.addProjectClassPath((JavaProject) it.next());
        }
        return javaSearchNameEnvironment;
    }

    private NameEnvironmentAnswer findClassInUnindexedLocations(String str, char[] cArr) {
        NameEnvironmentAnswer findClass;
        NameEnvironmentAnswer nameEnvironmentAnswer = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        for (ClasspathLocation classpathLocation : this.unindexedEntries) {
            if (classpathLocation instanceof ClasspathSourceDirectory) {
                if (str3 == null) {
                    if (str.length() > cArr.length) {
                        int length = str.length() - cArr.length;
                        str5 = str.substring(0, length - 1);
                        str3 = str.substring(length);
                        str6 = str;
                    } else {
                        str3 = str;
                        str6 = str3;
                        str5 = "";
                    }
                }
                org.eclipse.jdt.internal.compiler.env.ICompilationUnit iCompilationUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) this.workingCopies.get(str);
                findClass = iCompilationUnit != null ? new NameEnvironmentAnswer(iCompilationUnit, (AccessRestriction) null) : classpathLocation.findClass(str3, str5, (String) null, str6, false, (Predicate<String>) null);
            } else {
                if (str2 == null) {
                    str2 = String.valueOf(str) + ".class";
                    if (str.length() > cArr.length) {
                        int length2 = str2.length() - cArr.length;
                        int i10 = length2 - 6;
                        String substring = str2.substring(0, length2 - 7);
                        str4 = str2;
                        str2 = str2.substring(i10);
                        str5 = substring;
                    } else {
                        str4 = str2;
                        str5 = "";
                    }
                }
                findClass = classpathLocation.findClass(str2, str5, (String) null, str4, false, (Predicate<String>) null);
            }
            if (findClass != null) {
                if (!findClass.ignoreIfBetter()) {
                    if (findClass.isBetter(nameEnvironmentAnswer)) {
                        return findClass;
                    }
                } else if (findClass.isBetter(nameEnvironmentAnswer)) {
                    nameEnvironmentAnswer = findClass;
                }
            }
        }
        if (nameEnvironmentAnswer != null) {
            return nameEnvironmentAnswer;
        }
        return null;
    }

    public static boolean isEnabled() {
        return Platform.getPreferencesService().getBoolean(JavaCore.PLUGIN_ID, "useIndexBasedSearchEnvironment", false, (IScopeContext[]) null);
    }

    @Override
    public void cleanup() {
    }

    public boolean containsPrefixOf(IPath iPath) {
        return this.mapPathsToRoots.containsPrefixOf(iPath);
    }

    @Override
    public NameEnvironmentAnswer findType(char[][] cArr) {
        char[] concatWith = CharOperation.concatWith(cArr, '/');
        NameEnvironmentAnswer findClassInUnindexedLocations = findClassInUnindexedLocations(new String(concatWith), cArr[cArr.length - 1]);
        int i10 = findClassInUnindexedLocations != null ? this.sourceEntryPosition : Integer.MAX_VALUE;
        char[] binaryNameToFieldDescriptor = JavaNames.binaryNameToFieldDescriptor(concatWith);
        JavaIndex index = JavaIndex.getIndex();
        Throwable th2 = null;
        try {
            IReader acquireReadLock = index.getNd().acquireReadLock();
            try {
                NdTypeId findType = index.findType(binaryNameToFieldDescriptor);
                if (findType != null) {
                    for (NdType ndType : findType.getTypes()) {
                        Integer mostSpecific = this.mapPathsToRoots.getMostSpecific(ndType.getFile().getPath());
                        if (mostSpecific != null) {
                            AccessRuleSet accessRuleSet = ((ClasspathEntry) this.roots[mostSpecific.intValue()].getRawClasspathEntry()).getAccessRuleSet();
                            AccessRestriction violatedRestriction = accessRuleSet == null ? null : accessRuleSet.getViolatedRestriction(concatWith);
                            NameEnvironmentAnswer nameEnvironmentAnswer = new NameEnvironmentAnswer(new IndexBinaryType(TypeRef.create(ndType), (new String(concatWith) + ".class").toCharArray()), violatedRestriction);
                            if (isBetter(findClassInUnindexedLocations, i10, nameEnvironmentAnswer, mostSpecific.intValue())) {
                                i10 = mostSpecific.intValue();
                                findClassInUnindexedLocations = nameEnvironmentAnswer;
                            }
                        }
                    }
                }
                if (acquireReadLock != null) {
                    acquireReadLock.close();
                }
                return findClassInUnindexedLocations;
            } catch (Throwable th3) {
                if (acquireReadLock == null) {
                    throw th3;
                }
                acquireReadLock.close();
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null != th4) {
                try {
                    th2.addSuppressed(th4);
                } catch (JavaModelException unused) {
                }
            }
            throw null;
        }
    }

    public boolean isBetter(NameEnvironmentAnswer nameEnvironmentAnswer, int i10, NameEnvironmentAnswer nameEnvironmentAnswer2, int i11) {
        if (nameEnvironmentAnswer == null || nameEnvironmentAnswer2.isBetter(nameEnvironmentAnswer)) {
            return true;
        }
        return !nameEnvironmentAnswer.isBetter(nameEnvironmentAnswer2) && i11 < i10;
    }

    @Override
    public boolean isPackage(char[][] cArr, char[] cArr2) {
        final char[] concat = (cArr == null || cArr.length == 0) ? CharArrayUtils.concat(JavaNames.FIELD_DESCRIPTOR_PREFIX, cArr2, new char[]{'/'}) : CharArrayUtils.concat(JavaNames.FIELD_DESCRIPTOR_PREFIX, CharOperation.concatWith(cArr, '/'), new char[]{'/'}, cArr2, new char[]{'/'});
        JavaIndex index = JavaIndex.getIndex();
        try {
            IReader acquireReadLock = index.getNd().acquireReadLock();
            try {
                boolean z10 = !index.visitFieldDescriptorsStartingWith(concat, new FieldSearchIndex.Visitor<NdTypeId>() {
                    @Override
                    public boolean visit(NdTypeId ndTypeId) {
                        if (ndTypeId.getFieldDescriptor().length() <= concat.length + 1) {
                            return true;
                        }
                        for (NdType ndType : ndTypeId.getTypes()) {
                            if (!ndType.isMember() && !ndType.isLocal() && !ndType.isAnonymous()) {
                                if (IndexBasedJavaSearchEnvironment.this.containsPrefixOf(ndType.getFile().getPath())) {
                                    return false;
                                }
                            }
                        }
                        return true;
                    }
                });
                if (acquireReadLock != null) {
                    acquireReadLock.close();
                }
                return z10;
            } finally {
            }
        } finally {
        }
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2) {
        char[][] cArr3 = new char[cArr2.length + 1];
        for (int i10 = 0; i10 < cArr2.length; i10++) {
            cArr3[i10] = cArr2[i10];
        }
        cArr3[cArr2.length] = cArr;
        return findType(cArr3);
    }
}
