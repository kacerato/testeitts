package org.eclipse.jdt.internal.core.hierarchy;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.IPathRequestor;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.indexer.Indexer;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.nd.java.JavaNames;
import org.eclipse.jdt.internal.core.nd.java.NdType;
import org.eclipse.jdt.internal.core.nd.java.NdTypeId;
import org.eclipse.jdt.internal.core.nd.java.NdTypeInterface;
import org.eclipse.jdt.internal.core.nd.java.NdTypeSignature;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchParticipant;
import org.eclipse.jdt.internal.core.search.SubTypeSearchJob;
import org.eclipse.jdt.internal.core.search.UnindexedSearchScope;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;
import org.eclipse.jdt.internal.core.util.Util;

public class IndexBasedHierarchyBuilder extends HierarchyBuilder implements SuffixConstants {
    public static final int MAXTICKS = 800;
    protected Map binariesFromIndexMatches;
    protected Map cuToHandle;
    protected IJavaSearchScope scope;

    public class C1PathCollector implements IPathRequestor {
        HashSet paths = new HashSet(10);
        private final HashSet val$localTypes;

        public C1PathCollector(HashSet hashSet) {
            this.val$localTypes = hashSet;
        }

        @Override
        public void acceptPath(String str, boolean z10) {
            this.paths.add(str);
            if (z10) {
                this.val$localTypes.add(str);
            }
        }
    }

    public static class Queue {
        public char[][] names = new char[10];
        public int start = 0;
        public int end = -1;

        public void add(char[] cArr) {
            int i10 = this.end + 1;
            this.end = i10;
            char[][] cArr2 = this.names;
            if (i10 == cArr2.length) {
                int i11 = this.start;
                int i12 = i10 - i11;
                this.end = i12;
                char[][] cArr3 = new char[i12 * 2];
                this.names = cArr3;
                System.arraycopy(cArr2, i11, cArr3, 0, i12);
                this.start = 0;
            }
            this.names[this.end] = cArr;
        }

        public char[] retrieve() {
            int i10 = this.start;
            int i11 = this.end;
            if (i10 > i11) {
                return null;
            }
            char[][] cArr = this.names;
            int i12 = i10 + 1;
            this.start = i12;
            char[] cArr2 = cArr[i10];
            if (i12 > i11) {
                this.start = 0;
                this.end = -1;
            }
            return cArr2;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer("Queue:\n");
            for (int i10 = this.start; i10 <= this.end; i10++) {
                stringBuffer.append(this.names[i10]);
                stringBuffer.append('\n');
            }
            return stringBuffer.toString();
        }
    }

    public IndexBasedHierarchyBuilder(TypeHierarchy typeHierarchy, IJavaSearchScope iJavaSearchScope) throws JavaModelException {
        super(typeHierarchy);
        this.cuToHandle = new HashMap(5);
        this.binariesFromIndexMatches = new HashMap(10);
        this.scope = iJavaSearchScope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void buildForProject(JavaProject javaProject, ArrayList arrayList, ICompilationUnit[] iCompilationUnitArr, HashSet hashSet, IProgressMonitor iProgressMonitor) throws JavaModelException {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 10);
        int size = arrayList.size();
        if (size > 0) {
            Openable[] openableArr = new Openable[size];
            arrayList.toArray(openableArr);
            IPackageFragmentRoot[] packageFragmentRoots = javaProject.getPackageFragmentRoots();
            int length = packageFragmentRoots.length;
            final HashtableOfObjectToInt hashtableOfObjectToInt = new HashtableOfObjectToInt(size);
            for (int i10 = 0; i10 < size; i10++) {
                IJavaElement ancestor = openableArr[i10].getAncestor(3);
                int i11 = 0;
                while (i11 < length && !packageFragmentRoots[i11].equals(ancestor)) {
                    i11++;
                }
                hashtableOfObjectToInt.put(openableArr[i10], i11);
            }
            convert.split(1);
            Arrays.sort(openableArr, new Comparator() {
                @Override
                public int compare(Object obj, Object obj2) {
                    int i12 = hashtableOfObjectToInt.get(obj);
                    int i13 = hashtableOfObjectToInt.get(obj2);
                    return i12 != i13 ? i12 - i13 : ((Openable) obj2).getElementName().compareTo(((Openable) obj).getElementName());
                }
            });
            IType type = getType();
            boolean z10 = type != 0 && type.getJavaProject().equals(javaProject);
            if (z10) {
                ICompilationUnit compilationUnit = type.getCompilationUnit();
                if (compilationUnit != null) {
                    int length2 = iCompilationUnitArr == null ? 0 : iCompilationUnitArr.length;
                    if (length2 == 0) {
                        iCompilationUnitArr = new ICompilationUnit[]{compilationUnit};
                    } else {
                        ICompilationUnit[] iCompilationUnitArr2 = new ICompilationUnit[length2 + 1];
                        iCompilationUnitArr2[0] = compilationUnit;
                        System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 1, length2);
                        iCompilationUnitArr = iCompilationUnitArr2;
                    }
                }
            } else {
                iCompilationUnitArr = null;
            }
            SearchableEnvironment newSearchableNameEnvironment = javaProject.newSearchableNameEnvironment(iCompilationUnitArr);
            this.nameLookup = newSearchableNameEnvironment.nameLookup;
            Map<String, String> options = javaProject.getOptions(true);
            options.put("org.eclipse.jdt.core.compiler.taskTags", "");
            this.hierarchyResolver = new HierarchyResolver(newSearchableNameEnvironment, options, this, new DefaultProblemFactory());
            if (type != 0) {
                Member outerMostLocalContext = ((Member) type).getOuterMostLocalContext();
                if (outerMostLocalContext != null) {
                    Openable openable = outerMostLocalContext.isBinary() ? (Openable) outerMostLocalContext.getClassFile() : (Openable) outerMostLocalContext.getCompilationUnit();
                    HashSet hashSet2 = new HashSet();
                    hashSet2.add(openable.getPath().toString());
                    this.hierarchyResolver.resolve(new Openable[]{openable}, hashSet2, convert.split(9));
                    return;
                }
                if (!z10 && newSearchableNameEnvironment.findType(type.getTypeQualifiedName('.').toCharArray(), Util.toCharArrays(((PackageFragment) type.getPackageFragment()).names)) == null) {
                    return;
                }
            }
            this.hierarchyResolver.resolve(openableArr, hashSet, convert.split(9));
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r14v8 org.eclipse.jdt.internal.core.Openable, still in use, count: 2, list:
          (r14v8 org.eclipse.jdt.internal.core.Openable) from 0x0150: IF  (r14v8 org.eclipse.jdt.internal.core.Openable) == (null org.eclipse.jdt.internal.core.Openable)  -> B:28:0x0152 A[HIDDEN]
          (r14v8 org.eclipse.jdt.internal.core.Openable) from 0x0161: PHI (r14v10 org.eclipse.jdt.internal.core.Openable) = (r14v8 org.eclipse.jdt.internal.core.Openable) binds: [B:76:0x0150] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.visitRegion(TernaryMod.java:53)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
        */
    /* JADX WARN: Can't wrap try/catch for region: R(11:31|(1:33)(2:73|(1:75)(1:77))|34|(3:67|68|69)(2:36|(15:50|51|52|53|54|55|56|57|58|40|41|(2:45|30)|43|44|30)(1:38))|39|40|41|(0)|43|44|30) */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void buildFromPotentialSubtypes(java.lang.String[] r26, java.util.HashSet r27, org.eclipse.core.runtime.IProgressMonitor r28) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jdt.internal.core.hierarchy.IndexBasedHierarchyBuilder.buildFromPotentialSubtypes(java.lang.String[], java.util.HashSet, org.eclipse.core.runtime.IProgressMonitor):void");
    }

    private static HierarchyBinaryType createBinaryTypeFrom(NdType ndType) {
        NdTypeId declaringType = ndType.getDeclaringType();
        char[] binaryName = declaringType != null ? declaringType.getRawType().getBinaryName() : null;
        char[][] typeParameterSignatures = ndType.getTypeParameterSignatures();
        HierarchyBinaryType hierarchyBinaryType = new HierarchyBinaryType(ndType.getModifiers(), ndType.getTypeId().getBinaryName(), ndType.getSourceName(), binaryName, typeParameterSignatures.length == 0 ? null : typeParameterSignatures);
        NdTypeSignature superclass = ndType.getSuperclass();
        if (superclass != null) {
            hierarchyBinaryType.recordSuperclass(superclass.getRawType().getBinaryName());
        }
        Iterator<NdTypeInterface> it = ndType.getInterfaces().iterator();
        while (it.hasNext()) {
            hierarchyBinaryType.recordInterface(it.next().getInterface().getRawType().getBinaryName());
        }
        return hierarchyBinaryType;
    }

    private String[] determinePossibleSubTypes(HashSet hashSet, IProgressMonitor iProgressMonitor) {
        C1PathCollector c1PathCollector = new C1PathCollector(hashSet);
        searchAllPossibleSubTypes(getType(), this.scope, this.binariesFromIndexMatches, c1PathCollector, 3, iProgressMonitor);
        HashSet hashSet2 = c1PathCollector.paths;
        String[] strArr = new String[hashSet2.size()];
        Iterator it = hashSet2.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            strArr[i10] = (String) it.next();
            i10++;
        }
        return strArr;
    }

    private static void legacySearchAllPossibleSubTypes(IType iType, IJavaSearchScope iJavaSearchScope, final Map map, final IPathRequestor iPathRequestor, int i10, IProgressMonitor iProgressMonitor) {
        char[] retrieve;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 100);
        final Queue queue = new Queue();
        final HashtableOfObject hashtableOfObject = new HashtableOfObject(5);
        IndexManager indexManager = JavaModelManager.getIndexManager();
        IndexQueryRequestor indexQueryRequestor = new IndexQueryRequestor() {
            @Override
            public boolean acceptIndexMatch(String str, SearchPattern searchPattern, SearchParticipant searchParticipant, AccessRuleSet accessRuleSet) {
                char[] cArr;
                SuperTypeReferencePattern superTypeReferencePattern = (SuperTypeReferencePattern) searchPattern;
                boolean z10 = superTypeReferencePattern.enclosingTypeName == IIndexConstants.ONE_ZERO;
                IPathRequestor.this.acceptPath(str, z10);
                char[] cArr2 = superTypeReferencePattern.simpleName;
                if (str.toLowerCase().endsWith(".class")) {
                    int length = str.length() - 6;
                    HierarchyBinaryType hierarchyBinaryType = (HierarchyBinaryType) map.get(str);
                    if (hierarchyBinaryType == null) {
                        char[] cArr3 = superTypeReferencePattern.enclosingTypeName;
                        if (z10) {
                            int lastIndexOf = str.lastIndexOf(47);
                            int lastIndexOf2 = str.lastIndexOf(36);
                            if (lastIndexOf2 == -1) {
                                cArr2 = str.substring(lastIndexOf + 1, length).toCharArray();
                                cArr3 = null;
                            } else {
                                cArr = str.substring(lastIndexOf + 1, lastIndexOf2).toCharArray();
                                cArr2 = str.substring(lastIndexOf2 + 1, length).toCharArray();
                                HierarchyBinaryType hierarchyBinaryType2 = new HierarchyBinaryType(superTypeReferencePattern.modifiers, superTypeReferencePattern.pkgName, cArr2, cArr, superTypeReferencePattern.typeParameterSignatures, superTypeReferencePattern.classOrInterface);
                                map.put(str, hierarchyBinaryType2);
                                hierarchyBinaryType = hierarchyBinaryType2;
                            }
                        }
                        cArr = cArr3;
                        HierarchyBinaryType hierarchyBinaryType22 = new HierarchyBinaryType(superTypeReferencePattern.modifiers, superTypeReferencePattern.pkgName, cArr2, cArr, superTypeReferencePattern.typeParameterSignatures, superTypeReferencePattern.classOrInterface);
                        map.put(str, hierarchyBinaryType22);
                        hierarchyBinaryType = hierarchyBinaryType22;
                    }
                    hierarchyBinaryType.recordSuperType(superTypeReferencePattern.superSimpleName, superTypeReferencePattern.superQualification, superTypeReferencePattern.superClassOrInterface);
                }
                if (!z10 && !hashtableOfObject.containsKey(cArr2)) {
                    hashtableOfObject.put(cArr2, cArr2);
                    queue.add(cArr2);
                }
                return true;
            }
        };
        int i11 = 0;
        try {
            if (iType.isClass()) {
                i11 = 2;
            }
        } catch (JavaModelException unused) {
        }
        SuperTypeReferencePattern superTypeReferencePattern = new SuperTypeReferencePattern(null, null, i11, 8);
        MatchLocator.setFocus(superTypeReferencePattern, iType);
        SubTypeSearchJob subTypeSearchJob = new SubTypeSearchJob(superTypeReferencePattern, new JavaSearchParticipant(), iJavaSearchScope, indexQueryRequestor);
        queue.add(iType.getElementName().toCharArray());
        do {
            try {
                int i12 = queue.start;
                int i13 = queue.end;
                if (i12 > i13) {
                    break;
                }
                convert.setWorkRemaining(Math.max((i13 - i12) + 1, 100));
                retrieve = queue.retrieve();
                if (CharOperation.equals(retrieve, IIndexConstants.OBJECT)) {
                    retrieve = null;
                }
                superTypeReferencePattern.superSimpleName = retrieve;
                indexManager.performConcurrentJob(subTypeSearchJob, i10, convert.split(1));
            } finally {
                subTypeSearchJob.finished();
            }
        } while (retrieve != null);
    }

    private static void newSearchAllPossibleSubTypes(IType iType, IJavaSearchScope iJavaSearchScope, Map map, IPathRequestor iPathRequestor, int i10, IProgressMonitor iProgressMonitor) {
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 2);
        JavaIndex index = JavaIndex.getIndex();
        Indexer.getInstance().waitForIndex(i10, convert.split(1));
        Nd nd2 = index.getNd();
        char[] fullyQualifiedNameToFieldDescriptor = JavaNames.fullyQualifiedNameToFieldDescriptor(iType.getFullyQualifiedName().toCharArray());
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        try {
            IReader acquireReadLock = nd2.acquireReadLock();
            try {
                NdTypeId findType = index.findType(fullyQualifiedNameToFieldDescriptor);
                if (findType == null) {
                    if (acquireReadLock != null) {
                        acquireReadLock.close();
                        return;
                    }
                    return;
                }
                ArrayDeque arrayDeque = new ArrayDeque();
                HashSet hashSet = new HashSet();
                arrayDeque.addAll(findType.getTypes());
                hashSet.addAll(arrayDeque);
                while (!arrayDeque.isEmpty()) {
                    NdType ndType = (NdType) arrayDeque.removeFirst();
                    NdTypeId typeId = ndType.getTypeId();
                    String str = new String(JavaNames.getIndexPathFor(ndType, root));
                    if (iJavaSearchScope.encloses(str)) {
                        convert.setWorkRemaining(Math.max(arrayDeque.size(), 3000)).split(1);
                        iPathRequestor.acceptPath(str, ndType.isLocal() || ndType.isAnonymous());
                        if (((HierarchyBinaryType) map.get(str)) == null) {
                            map.put(str, createBinaryTypeFrom(ndType));
                        }
                        for (NdType ndType2 : typeId.getSubTypes()) {
                            if (hashSet.add(ndType2)) {
                                arrayDeque.add(ndType2);
                            }
                        }
                    }
                }
                if (acquireReadLock != null) {
                    acquireReadLock.close();
                }
            } finally {
            }
        } finally {
        }
    }

    public static void searchAllPossibleSubTypes(IType iType, IJavaSearchScope iJavaSearchScope, Map map, IPathRequestor iPathRequestor, int i10, IProgressMonitor iProgressMonitor) {
        if (!JavaIndex.isEnabled()) {
            legacySearchAllPossibleSubTypes(iType, iJavaSearchScope, map, iPathRequestor, i10, iProgressMonitor);
            return;
        }
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 2);
        newSearchAllPossibleSubTypes(iType, iJavaSearchScope, map, iPathRequestor, i10, convert.split(1));
        legacySearchAllPossibleSubTypes(iType, UnindexedSearchScope.filterEntriesCoveredByTheNewIndex(iJavaSearchScope), map, iPathRequestor, i10, convert.split(1));
    }

    @Override
    public void build(boolean z10) {
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        try {
            javaModelManager.cacheZipFiles(this);
            if (z10) {
                IJavaElement type = getType();
                int i10 = type.getElementName().equals(new String(IIndexConstants.OBJECT)) ? 5 : 80;
                SubMonitor split = this.hierarchy.progressMonitor.split(i10);
                HashSet hashSet = new HashSet(10);
                String[] determinePossibleSubTypes = ((Member) type).getOuterMostLocalContext() == null ? determinePossibleSubTypes(hashSet, split) : CharOperation.NO_STRINGS;
                if (determinePossibleSubTypes != null) {
                    SubMonitor split2 = this.hierarchy.progressMonitor.split(100 - i10);
                    this.hierarchy.initialize(determinePossibleSubTypes.length);
                    buildFromPotentialSubtypes(determinePossibleSubTypes, hashSet, split2);
                }
            } else {
                this.hierarchy.initialize(1);
                buildSupertypes();
            }
            javaModelManager.flushZipFiles(this);
        } catch (Throwable th2) {
            javaModelManager.flushZipFiles(this);
            throw th2;
        }
    }

    @Override
    public org.eclipse.jdt.internal.compiler.env.ICompilationUnit createCompilationUnitFromPath(Openable openable, IFile iFile, char[] cArr) {
        org.eclipse.jdt.internal.compiler.env.ICompilationUnit createCompilationUnitFromPath = super.createCompilationUnitFromPath(openable, iFile, cArr);
        this.cuToHandle.put(createCompilationUnitFromPath, openable);
        return createCompilationUnitFromPath;
    }

    @Override
    public IBinaryType createInfoFromClassFile(Openable openable, IResource iResource) {
        IBinaryType iBinaryType = (IBinaryType) this.binariesFromIndexMatches.get(openable.getPath().toString());
        if (iBinaryType == null) {
            return super.createInfoFromClassFile(openable, iResource);
        }
        this.infoToHandle.put(iBinaryType, openable);
        return iBinaryType;
    }

    @Override
    public IBinaryType createInfoFromClassFileInJar(Openable openable) {
        String str;
        String str2 = String.valueOf(((ClassFile) openable).getType().getFullyQualifiedName('$').replace('.', '/')) + ".class";
        PackageFragmentRoot packageFragmentRoot = openable.getPackageFragmentRoot();
        IPath path = packageFragmentRoot.getPath();
        String obj = path.getDevice() == null ? path.toString() : path.toOSString();
        IModuleDescription moduleDescription = packageFragmentRoot.getModuleDescription();
        if (moduleDescription != null) {
            str = String.valueOf(obj) + "|" + moduleDescription.getElementName() + "|" + str2;
        } else {
            str = String.valueOf(obj) + "|" + str2;
        }
        IBinaryType iBinaryType = (IBinaryType) this.binariesFromIndexMatches.get(str);
        if (iBinaryType == null) {
            return super.createInfoFromClassFileInJar(openable);
        }
        this.infoToHandle.put(iBinaryType, openable);
        return iBinaryType;
    }
}
