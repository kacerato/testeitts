package org.eclipse.jdt.internal.core.search;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.ResolvedSourceType;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;

public class HierarchyScope extends AbstractSearchScope implements SuffixConstants {
    private boolean allowMemberAndEnclosingTypes;
    protected int elementCount;
    protected IResource[] elements;
    private IPath[] enclosingProjectsAndJars;
    private String focusPath;
    public IType focusType;
    private ITypeHierarchy hierarchy;
    private boolean includeFocusType;
    private IJavaProject javaProject;
    public boolean needsRefresh;
    private WorkingCopyOwner owner;
    private HashSet resourcePaths;
    private HashSet subTypes;

    public HierarchyScope(IJavaProject iJavaProject, IType iType, WorkingCopyOwner workingCopyOwner, boolean z10, boolean z11, boolean z12) throws JavaModelException {
        this(iType, workingCopyOwner);
        this.javaProject = iJavaProject;
        if (z10) {
            this.subTypes = new HashSet();
        }
        this.includeFocusType = z12;
        this.allowMemberAndEnclosingTypes = !z11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void buildResourceVector() {
        Object[] objArr;
        String path;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        int i10 = 0;
        if (this.subTypes != null) {
            IType[] allSubtypes = this.hierarchy.getAllSubtypes(this.focusType);
            objArr = allSubtypes;
            if (this.includeFocusType) {
                int length = allSubtypes.length;
                IType[] iTypeArr = new IType[length + 1];
                System.arraycopy(allSubtypes, 0, iTypeArr, 0, length);
                iTypeArr[length] = this.focusType;
                objArr = iTypeArr;
            }
        } else {
            objArr = this.hierarchy.getAllTypes();
        }
        for (ResolvedSourceType resolvedSourceType : objArr) {
            HashSet hashSet = this.subTypes;
            if (hashSet != null) {
                hashSet.add(resolvedSourceType);
            }
            IResource resource = resolvedSourceType.resource();
            if (resource != null && hashMap.get(resource) == null) {
                hashMap.put(resource, resource);
                add(resource);
            }
            IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) resolvedSourceType.getPackageFragment().getParent();
            if (iPackageFragmentRoot instanceof JarPackageFragmentRoot) {
                IPath path2 = ((JarPackageFragmentRoot) iPackageFragmentRoot).getPath();
                Object target = JavaModel.getTarget(path2, true);
                if (target instanceof IFile) {
                    path = path2.toString();
                } else if (target instanceof File) {
                    path = ((File) target).getPath();
                }
                IModuleDescription moduleDescription = iPackageFragmentRoot.getModuleDescription();
                this.resourcePaths.add(moduleDescription != null ? String.valueOf(path) + "|" + moduleDescription.getElementName() + "|" + resolvedSourceType.getFullyQualifiedName().replace('.', '/') + ".class" : String.valueOf(path) + "|" + resolvedSourceType.getFullyQualifiedName().replace('.', '/') + ".class");
                hashMap2.put(path2, resolvedSourceType);
            } else {
                hashMap2.put(resolvedSourceType.getJavaProject().getProject().getFullPath(), resolvedSourceType);
            }
        }
        this.enclosingProjectsAndJars = new IPath[hashMap2.size()];
        Iterator it = hashMap2.o().iterator();
        while (it.hasNext()) {
            this.enclosingProjectsAndJars[i10] = (IPath) it.next();
            i10++;
        }
    }

    private void computeDependents(IJavaProject iJavaProject, HashSet hashSet, HashSet hashSet2) {
        if (hashSet2.contains(iJavaProject)) {
            return;
        }
        hashSet2.add(iJavaProject);
        for (IProject iProject : iJavaProject.getProject().getReferencingProjects()) {
            try {
                IJavaProject create = JavaCore.create(iProject);
                IPackageFragmentRoot[] packageFragmentRoots = create.getPackageFragmentRoots();
                hashSet.add(create.getPath());
                for (IPackageFragmentRoot iPackageFragmentRoot : packageFragmentRoots) {
                    if (iPackageFragmentRoot.isArchive()) {
                        hashSet.add(iPackageFragmentRoot.getPath());
                    }
                }
                computeDependents(create, hashSet, hashSet2);
            } catch (JavaModelException unused) {
            }
        }
    }

    private IPath[] computeProjectsAndJars(IType iType) throws JavaModelException {
        HashSet hashSet = new HashSet();
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) iType.getPackageFragment().getParent();
        if (iPackageFragmentRoot.isArchive()) {
            hashSet.add(iPackageFragmentRoot.getPath());
            IPath path = iPackageFragmentRoot.getPath();
            IJavaProject[] javaProjects = JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects();
            HashSet hashSet2 = new HashSet();
            for (IJavaProject iJavaProject : javaProjects) {
                JavaProject javaProject = (JavaProject) iJavaProject;
                if (javaProject.getClasspathEntryFor(path) != null) {
                    IPackageFragmentRoot[] allPackageFragmentRoots = javaProject.getAllPackageFragmentRoots();
                    hashSet.add(javaProject.getPath());
                    for (IPackageFragmentRoot iPackageFragmentRoot2 : allPackageFragmentRoots) {
                        if (iPackageFragmentRoot2.getKind() == 2) {
                            hashSet.add(iPackageFragmentRoot2.getPath());
                        }
                    }
                    computeDependents(javaProject, hashSet, hashSet2);
                }
            }
        } else {
            IJavaProject iJavaProject2 = (IJavaProject) iPackageFragmentRoot.getParent();
            for (IPackageFragmentRoot iPackageFragmentRoot3 : iJavaProject2.getAllPackageFragmentRoots()) {
                if (iPackageFragmentRoot3.getKind() == 2) {
                    hashSet.add(iPackageFragmentRoot3.getPath());
                } else {
                    hashSet.add(iPackageFragmentRoot3.getParent().getPath());
                }
            }
            computeDependents(iJavaProject2, hashSet, new HashSet());
        }
        IPath[] iPathArr = new IPath[hashSet.size()];
        hashSet.toArray(iPathArr);
        return iPathArr;
    }

    private boolean enclosesType(IType iType, boolean z10) {
        IType iType2;
        HashSet hashSet = this.subTypes;
        if (hashSet != null) {
            if (hashSet.contains(iType)) {
                return true;
            }
            IType iType3 = iType.isBinary() ? null : (IType) iType.getPrimaryElement();
            if (iType3 != iType && this.subTypes.contains(iType3)) {
                return true;
            }
        } else {
            if (this.hierarchy.contains(iType)) {
                return true;
            }
            if (!iType.isBinary() && (iType2 = (IType) iType.getPrimaryElement()) != null && this.hierarchy.contains(iType2)) {
                return true;
            }
        }
        if (z10) {
            try {
                for (IType iType4 : iType.getTypes()) {
                    if (enclosesType(iType4, z10)) {
                        return true;
                    }
                }
            } catch (JavaModelException unused) {
            }
        }
        return false;
    }

    public void add(IResource iResource) {
        int i10 = this.elementCount;
        IResource[] iResourceArr = this.elements;
        if (i10 == iResourceArr.length) {
            IResource[] iResourceArr2 = new IResource[i10 * 2];
            this.elements = iResourceArr2;
            System.arraycopy(iResourceArr, 0, iResourceArr2, 0, i10);
        }
        IResource[] iResourceArr3 = this.elements;
        int i11 = this.elementCount;
        this.elementCount = i11 + 1;
        iResourceArr3[i11] = iResource;
    }

    @Override
    public boolean encloses(String str) {
        return encloses(str, (IProgressMonitor) null);
    }

    public boolean enclosesFineGrained(IJavaElement iJavaElement) {
        if (this.subTypes == null && this.allowMemberAndEnclosingTypes) {
            return true;
        }
        return encloses(iJavaElement, (IProgressMonitor) null);
    }

    @Override
    public IPath[] enclosingProjectsAndJars() {
        if (this.needsRefresh) {
            try {
                refresh(null);
            } catch (JavaModelException unused) {
                return new IPath[0];
            }
        }
        return this.enclosingProjectsAndJars;
    }

    public void initialize() throws JavaModelException {
        initialize(null);
    }

    @Override
    public void processDelta(IJavaElementDelta iJavaElementDelta, int i10) {
        if (this.needsRefresh) {
            return;
        }
        ITypeHierarchy iTypeHierarchy = this.hierarchy;
        this.needsRefresh = iTypeHierarchy == null ? false : ((TypeHierarchy) iTypeHierarchy).isAffected(iJavaElementDelta, i10);
    }

    public void refresh() throws JavaModelException {
        refresh(null);
    }

    public String toString() {
        return "HierarchyScope on " + ((JavaElement) this.focusType).toStringWithAncestors();
    }

    public boolean encloses(String str, IProgressMonitor iProgressMonitor) {
        if (this.hierarchy == null) {
            if (str.equals(this.focusPath) || !this.needsRefresh) {
                return true;
            }
            try {
                initialize(iProgressMonitor);
            } catch (JavaModelException unused) {
                return false;
            }
        }
        if (this.needsRefresh) {
            try {
                refresh(iProgressMonitor);
            } catch (JavaModelException unused2) {
                return false;
            }
        }
        if (str.indexOf("|") != -1) {
            return this.resourcePaths.contains(str);
        }
        for (int i10 = 0; i10 < this.elementCount; i10++) {
            if (str.startsWith(this.elements[i10].getFullPath().toString())) {
                return true;
            }
        }
        return false;
    }

    public void initialize(IProgressMonitor iProgressMonitor) throws JavaModelException {
        this.resourcePaths = new HashSet();
        this.elements = new IResource[5];
        this.elementCount = 0;
        this.needsRefresh = false;
        ITypeHierarchy iTypeHierarchy = this.hierarchy;
        if (iTypeHierarchy == null) {
            IJavaProject iJavaProject = this.javaProject;
            if (iJavaProject != null) {
                this.hierarchy = this.focusType.newTypeHierarchy(iJavaProject, this.owner, iProgressMonitor);
            } else {
                this.hierarchy = this.focusType.newTypeHierarchy(this.owner, iProgressMonitor);
            }
        } else {
            iTypeHierarchy.refresh(iProgressMonitor);
        }
        buildResourceVector();
    }

    public void refresh(IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (this.hierarchy != null) {
            initialize(iProgressMonitor);
        }
    }

    public HierarchyScope(IType iType, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        String path;
        this.subTypes = null;
        this.javaProject = null;
        this.allowMemberAndEnclosingTypes = true;
        this.includeFocusType = true;
        this.focusType = iType;
        this.owner = workingCopyOwner;
        this.enclosingProjectsAndJars = computeProjectsAndJars(iType);
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) iType.getPackageFragment().getParent();
        if (iPackageFragmentRoot.isArchive()) {
            IPath path2 = iPackageFragmentRoot.getPath();
            Object target = JavaModel.getTarget(path2, true);
            if (target instanceof IFile) {
                path = path2.toString();
            } else if (!(target instanceof File)) {
                return;
            } else {
                path = ((File) target).getPath();
            }
            IModuleDescription moduleDescription = iPackageFragmentRoot.getModuleDescription();
            if (moduleDescription != null) {
                this.focusPath = String.valueOf(path) + "|" + moduleDescription.getElementName() + "|" + iType.getFullyQualifiedName().replace('.', '/') + ".class";
            } else {
                this.focusPath = String.valueOf(path) + "|" + iType.getFullyQualifiedName().replace('.', '/') + ".class";
            }
        } else {
            this.focusPath = iType.getPath().toString();
        }
        this.needsRefresh = true;
    }

    @Override
    public boolean encloses(IJavaElement iJavaElement) {
        return encloses(iJavaElement, (IProgressMonitor) null);
    }

    public boolean encloses(IJavaElement iJavaElement, IProgressMonitor iProgressMonitor) {
        IType declaringType;
        if (this.hierarchy == null) {
            if ((this.includeFocusType && this.focusType.equals(iJavaElement.getAncestor(7))) || !this.needsRefresh) {
                return true;
            }
            try {
                initialize(iProgressMonitor);
            } catch (JavaModelException unused) {
                return false;
            }
        }
        if (this.needsRefresh) {
            try {
                refresh(iProgressMonitor);
            } catch (JavaModelException unused2) {
                return false;
            }
        }
        if (iJavaElement instanceof IType) {
            declaringType = (IType) iJavaElement;
        } else {
            declaringType = iJavaElement instanceof IMember ? ((IMember) iJavaElement).getDeclaringType() : null;
        }
        if (declaringType != null) {
            if (this.focusType.equals(declaringType)) {
                return this.includeFocusType;
            }
            if (enclosesType(declaringType, this.allowMemberAndEnclosingTypes)) {
                return true;
            }
            if (this.allowMemberAndEnclosingTypes) {
                for (IType declaringType2 = declaringType.getDeclaringType(); declaringType2 != null; declaringType2 = declaringType2.getDeclaringType()) {
                    if (enclosesType(declaringType2, false)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
