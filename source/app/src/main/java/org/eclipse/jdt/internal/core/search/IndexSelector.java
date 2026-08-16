package org.eclipse.jdt.internal.core.search;

import java.util.LinkedHashSet;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.builder.ReferenceCollection;
import org.eclipse.jdt.internal.core.builder.State;
import org.eclipse.jdt.internal.core.index.IndexLocation;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.ModulePattern;

public class IndexSelector {
    public static final int PROJECT_CAN_NOT_SEE_FOCUS = 2;
    public static final int PROJECT_CAN_SEE_FOCUS = 0;
    public static final int PROJECT_SOURCE_CAN_NOT_SEE_FOCUS = 1;
    IndexLocation[] indexLocations;
    SearchPattern pattern;
    IJavaSearchScope searchScope;

    public IndexSelector(IJavaSearchScope iJavaSearchScope, SearchPattern searchPattern) {
        this.searchScope = iJavaSearchScope;
        this.pattern = searchPattern;
    }

    public static int canSeeFocus(SearchPattern searchPattern, IPath iPath) {
        try {
            JavaModel javaModel = JavaModelManager.getJavaModelManager().getJavaModel();
            IJavaProject javaProject = getJavaProject(iPath, javaModel);
            IJavaElement[] focusedElementsAndTypes = getFocusedElementsAndTypes(searchPattern, javaProject, null);
            if (focusedElementsAndTypes.length == 0) {
                return 2;
            }
            if (javaProject != null) {
                return canSeeFocus(focusedElementsAndTypes, (JavaProject) javaProject, (char[][][]) null);
            }
            int i10 = 2;
            for (IJavaProject iJavaProject : javaModel.getJavaProjects()) {
                JavaProject javaProject2 = (JavaProject) iJavaProject;
                IClasspathEntry classpathEntryFor = javaProject2.getClasspathEntryFor(iPath);
                if (classpathEntryFor != null && classpathEntryFor.getEntryKind() == 1) {
                    int canSeeFocus = canSeeFocus(focusedElementsAndTypes, javaProject2, (char[][][]) null);
                    if (canSeeFocus == 0) {
                        return 0;
                    }
                    if (canSeeFocus == 1) {
                        i10 = 1;
                    }
                }
            }
            return i10;
        } catch (JavaModelException unused) {
            return 2;
        }
    }

    private static IJavaElement[] getFocusedElementsAndTypes(SearchPattern searchPattern, IJavaElement iJavaElement, ObjectVector objectVector) throws JavaModelException {
        int i10 = 0;
        if (!(searchPattern instanceof MethodPattern)) {
            return iJavaElement == null ? new IJavaElement[0] : new IJavaElement[]{iJavaElement};
        }
        IType iType = (IType) searchPattern.focus.getAncestor(7);
        MethodPattern methodPattern = (MethodPattern) searchPattern;
        String str = new String(methodPattern.selector);
        int i11 = methodPattern.parameterCount;
        IType[] allSupertypes = iType.newSupertypeHierarchy(null).getAllSupertypes(iType);
        int length = allSupertypes.length;
        SimpleSet simpleSet = new SimpleSet(length + 1);
        if (iJavaElement != null) {
            simpleSet.add(iJavaElement);
        }
        for (int i12 = 0; i12 < length; i12++) {
            IMethod[] methods = allSupertypes[i12].getMethods();
            int length2 = methods.length;
            int i13 = 0;
            while (true) {
                if (i13 < length2) {
                    if (i11 == methods[i13].getNumberOfParameters() && methods[i13].getElementName().equals(str)) {
                        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) allSupertypes[i12].getAncestor(3);
                        boolean isArchive = iPackageFragmentRoot.isArchive();
                        IJavaElement iJavaElement2 = iPackageFragmentRoot;
                        if (!isArchive) {
                            iJavaElement2 = iPackageFragmentRoot.getParent();
                        }
                        simpleSet.add(iJavaElement2);
                        if (objectVector != null) {
                            objectVector.add(allSupertypes[i12]);
                        }
                    } else {
                        i13++;
                    }
                }
            }
        }
        IJavaElement[] iJavaElementArr = new IJavaElement[simpleSet.elementSize];
        Object[] objArr = simpleSet.values;
        int length3 = objArr.length;
        while (true) {
            length3--;
            if (length3 < 0) {
                return iJavaElementArr;
            }
            Object obj = objArr[length3];
            if (obj != null) {
                iJavaElementArr[i10] = (IJavaElement) obj;
                i10++;
            }
        }
    }

    private static IJavaProject getJavaProject(IPath iPath, IJavaModel iJavaModel) {
        String lastSegment = iPath.lastSegment();
        if (lastSegment == null) {
            lastSegment = iPath.toOSString();
        }
        IJavaProject javaProject = iJavaModel.getJavaProject(lastSegment);
        if (javaProject.exists()) {
            return javaProject;
        }
        return null;
    }

    private char[][][] getQualifiedNames(ObjectVector objectVector) {
        char[][][] cArr;
        int i10;
        IType findPrimaryType;
        int i11 = objectVector.size;
        IJavaElement iJavaElement = this.pattern.focus;
        while (iJavaElement != null && !(iJavaElement instanceof ITypeRoot)) {
            iJavaElement = iJavaElement.getParent();
        }
        int i12 = 0;
        if (iJavaElement == null || (findPrimaryType = ((ITypeRoot) iJavaElement).findPrimaryType()) == null) {
            cArr = null;
            i10 = 0;
        } else {
            cArr = new char[i11 + 1][];
            cArr[0] = CharOperation.splitOn('.', findPrimaryType.getFullyQualifiedName().toCharArray());
            i10 = 1;
        }
        if (cArr == null) {
            cArr = new char[i11][];
        }
        while (i12 < i11) {
            cArr[i10] = CharOperation.splitOn('.', ((IType) objectVector.elementAt(i12)).getFullyQualifiedName().toCharArray());
            i12++;
            i10++;
        }
        if (cArr.length == 0) {
            return null;
        }
        return ReferenceCollection.internQualifiedNames(cArr, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    private void initializeIndexLocations() {
        IPath[] enclosingProjectsAndJars = this.searchScope.enclosingProjectsAndJars();
        IndexManager indexManager = JavaModelManager.getIndexManager();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        SearchPattern searchPattern = this.pattern;
        IJavaElement projectOrJarFocus = searchPattern instanceof ModulePattern ? null : MatchLocator.projectOrJarFocus(searchPattern);
        boolean z10 = false;
        if (projectOrJarFocus == null) {
            for (IPath iPath : enclosingProjectsAndJars) {
                Object target = JavaModel.getTarget(iPath, false);
                if (target instanceof IFolder) {
                    iPath = ((IFolder) target).getFullPath();
                }
                linkedHashSet.add(indexManager.computeIndexLocation(iPath));
            }
        } else {
            try {
                int length = enclosingProjectsAndJars.length;
                JavaProject[] javaProjectArr = new JavaProject[length];
                SimpleSet simpleSet = new SimpleSet(length);
                SimpleSet simpleSet2 = new SimpleSet(length);
                ObjectVector objectVector = new ObjectVector();
                IJavaElement[] focusedElementsAndTypes = getFocusedElementsAndTypes(this.pattern, projectOrJarFocus, objectVector);
                char[][][] qualifiedNames = (ResourcesPlugin.getWorkspace().getDescription().isAutoBuilding() && (projectOrJarFocus instanceof IJavaProject)) ? getQualifiedNames(objectVector) : null;
                JavaModel javaModel = JavaModelManager.getJavaModelManager().getJavaModel();
                int i10 = 0;
                int i11 = 0;
                while (i10 < length) {
                    IPath iPath2 = enclosingProjectsAndJars[i10];
                    JavaProject javaProject = (JavaProject) getJavaProject(iPath2, javaModel);
                    if (javaProject != null) {
                        simpleSet.add(javaProject);
                        int canSeeFocus = canSeeFocus(focusedElementsAndTypes, javaProject, qualifiedNames);
                        if (canSeeFocus == 0) {
                            linkedHashSet.add(indexManager.computeIndexLocation(iPath2));
                        }
                        if (canSeeFocus != 2) {
                            javaProjectArr[i11] = javaProject;
                            i11++;
                        }
                    } else {
                        simpleSet2.add(iPath2);
                    }
                    i10++;
                    z10 = false;
                }
                for (?? r12 = z10; r12 < i11 && simpleSet2.elementSize > 0; r12++) {
                    IClasspathEntry[] resolvedClasspath = javaProjectArr[r12].getResolvedClasspath();
                    int length2 = resolvedClasspath.length;
                    while (true) {
                        length2--;
                        if (length2 < 0) {
                            break;
                        }
                        IClasspathEntry iClasspathEntry = resolvedClasspath[length2];
                        if (iClasspathEntry.getEntryKind() == 1) {
                            IPath path = iClasspathEntry.getPath();
                            if (simpleSet2.remove(path) != null) {
                                Object target2 = JavaModel.getTarget(path, z10);
                                if (target2 instanceof IFolder) {
                                    path = ((IFolder) target2).getFullPath();
                                }
                                linkedHashSet.add(indexManager.computeIndexLocation(path));
                            }
                        }
                    }
                }
                if (simpleSet2.elementSize > 0) {
                    IJavaProject[] javaProjects = javaModel.getJavaProjects();
                    int length3 = javaProjects.length;
                    for (?? r72 = z10; r72 < length3; r72++) {
                        if (simpleSet2.elementSize <= 0) {
                            break;
                        }
                        JavaProject javaProject2 = (JavaProject) javaProjects[r72];
                        if (!simpleSet.includes(javaProject2)) {
                            IClasspathEntry[] resolvedClasspath2 = javaProject2.getResolvedClasspath();
                            int length4 = resolvedClasspath2.length;
                            while (true) {
                                length4--;
                                if (length4 < 0) {
                                    break;
                                }
                                IClasspathEntry iClasspathEntry2 = resolvedClasspath2[length4];
                                if (iClasspathEntry2.getEntryKind() == 1) {
                                    IPath path2 = iClasspathEntry2.getPath();
                                    if (simpleSet2.remove(path2) != null) {
                                        Object target3 = JavaModel.getTarget(path2, z10);
                                        if (target3 instanceof IFolder) {
                                            path2 = ((IFolder) target3).getFullPath();
                                        }
                                        linkedHashSet.add(indexManager.computeIndexLocation(path2));
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (JavaModelException unused) {
            }
        }
        linkedHashSet.remove(null);
        this.indexLocations = (IndexLocation[]) linkedHashSet.toArray(new IndexLocation[linkedHashSet.size()]);
    }

    public IndexLocation[] getIndexLocations() {
        if (this.indexLocations == null) {
            initializeIndexLocations();
        }
        return this.indexLocations;
    }

    private static int canSeeFocus(IJavaElement[] iJavaElementArr, JavaProject javaProject, char[][][] cArr) {
        int i10 = 2;
        for (IJavaElement iJavaElement : iJavaElementArr) {
            int canSeeFocus = canSeeFocus(iJavaElement, javaProject, cArr);
            if (canSeeFocus == 0) {
                return 0;
            }
            if (canSeeFocus == 1) {
                i10 = 1;
            }
        }
        return i10;
    }

    private static int canSeeFocus(IJavaElement iJavaElement, JavaProject javaProject, char[][][] cArr) {
        State state;
        if (iJavaElement == null) {
            return 2;
        }
        try {
            if (iJavaElement.equals(javaProject)) {
                return 0;
            }
            if (iJavaElement instanceof JarPackageFragmentRoot) {
                IPath path = iJavaElement.getPath();
                for (IClasspathEntry iClasspathEntry : javaProject.getExpandedClasspath()) {
                    if (iClasspathEntry.getEntryKind() == 1 && iClasspathEntry.getPath().equals(path)) {
                        return 0;
                    }
                }
                return 2;
            }
            IPath fullPath = ((JavaProject) iJavaElement).getProject().getFullPath();
            for (IClasspathEntry iClasspathEntry2 : javaProject.getExpandedClasspath()) {
                if (iClasspathEntry2.getEntryKind() == 2 && iClasspathEntry2.getPath().equals(fullPath)) {
                    if (cArr == null || (state = (State) JavaModelManager.getJavaModelManager().getLastBuiltState(javaProject.getProject(), null)) == null) {
                        return 0;
                    }
                    for (Object obj : state.getReferences().valueTable) {
                        if (obj != null && ((ReferenceCollection) obj).includes(cArr, null, null)) {
                            return 0;
                        }
                    }
                    return 1;
                }
            }
            return 2;
        } catch (JavaModelException unused) {
            return 2;
        }
    }
}
