package org.eclipse.jdt.internal.core.hierarchy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;

public class RegionBasedHierarchyBuilder extends HierarchyBuilder {
    public RegionBasedHierarchyBuilder(TypeHierarchy typeHierarchy) throws JavaModelException {
        super(typeHierarchy);
    }

    private void createTypeHierarchyBasedOnRegion(HashMap hashMap, IProgressMonitor iProgressMonitor) {
        try {
            int size = hashMap.size();
            if (iProgressMonitor != null) {
                iProgressMonitor.beginTask("", size * 2);
            }
            this.infoToHandle = new HashMap(size);
            for (Map.Entry entry : hashMap.entrySet()) {
                JavaProject javaProject = (JavaProject) entry.getKey();
                ArrayList arrayList = (ArrayList) entry.getValue();
                Openable[] openableArr = new Openable[arrayList.size()];
                arrayList.toArray(openableArr);
                try {
                    this.nameLookup = javaProject.newSearchableNameEnvironment(this.hierarchy.workingCopies).nameLookup;
                    this.hierarchyResolver.resolve(openableArr, null, iProgressMonitor);
                } catch (JavaModelException unused) {
                }
            }
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
        } catch (Throwable th2) {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
            throw th2;
        }
    }

    private HashMap determineOpenablesInRegion(IProgressMonitor iProgressMonitor) {
        try {
            HashMap hashMap = new HashMap();
            IJavaElement[] elements = ((RegionBasedTypeHierarchy) this.hierarchy).region.getElements();
            int length = elements.length;
            if (iProgressMonitor != null) {
                iProgressMonitor.beginTask("", length);
            }
            for (IJavaElement iJavaElement : elements) {
                IJavaProject javaProject = iJavaElement.getJavaProject();
                ArrayList arrayList = (ArrayList) hashMap.get(javaProject);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    hashMap.put(javaProject, arrayList);
                }
                switch (iJavaElement.getElementType()) {
                    case 2:
                        injectAllOpenablesForJavaProject((IJavaProject) iJavaElement, arrayList);
                        break;
                    case 3:
                        injectAllOpenablesForPackageFragmentRoot((IPackageFragmentRoot) iJavaElement, arrayList);
                        break;
                    case 4:
                        injectAllOpenablesForPackageFragment((IPackageFragment) iJavaElement, arrayList);
                        break;
                    case 5:
                    case 6:
                        arrayList.add(iJavaElement);
                        break;
                    case 7:
                        IType iType = (IType) iJavaElement;
                        if (iType.isBinary()) {
                            arrayList.add(iType.getClassFile());
                            break;
                        } else {
                            arrayList.add(iType.getCompilationUnit());
                            break;
                        }
                }
                worked(iProgressMonitor, 1);
            }
            return hashMap;
        } finally {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
        }
    }

    private void injectAllOpenablesForJavaProject(IJavaProject iJavaProject, ArrayList arrayList) {
        try {
            IPackageFragmentRoot[] packageFragmentRoots = ((JavaProject) iJavaProject).getPackageFragmentRoots();
            if (packageFragmentRoots == null) {
                return;
            }
            for (IPackageFragmentRoot iPackageFragmentRoot : packageFragmentRoots) {
                injectAllOpenablesForPackageFragmentRoot(iPackageFragmentRoot, arrayList);
            }
        } catch (JavaModelException unused) {
        }
    }

    private void injectAllOpenablesForPackageFragment(IPackageFragment iPackageFragment, ArrayList arrayList) {
        try {
            int kind = ((IPackageFragmentRoot) iPackageFragment.getParent()).getKind();
            if (kind != 0) {
                int i10 = 0;
                if (kind == 1) {
                    ICompilationUnit[] compilationUnits = iPackageFragment.getCompilationUnits();
                    int length = compilationUnits.length;
                    while (i10 < length) {
                        arrayList.add(compilationUnits[i10]);
                        i10++;
                    }
                    return;
                }
                IOrdinaryClassFile[] ordinaryClassFiles = iPackageFragment.getOrdinaryClassFiles();
                int length2 = ordinaryClassFiles.length;
                while (i10 < length2) {
                    arrayList.add(ordinaryClassFiles[i10]);
                    i10++;
                }
            }
        } catch (JavaModelException unused) {
        }
    }

    private void injectAllOpenablesForPackageFragmentRoot(IPackageFragmentRoot iPackageFragmentRoot, ArrayList arrayList) {
        try {
            for (IJavaElement iJavaElement : iPackageFragmentRoot.getChildren()) {
                injectAllOpenablesForPackageFragment((IPackageFragment) iJavaElement, arrayList);
            }
        } catch (JavaModelException unused) {
        }
    }

    @Override
    public void build(boolean z10) {
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        try {
            javaModelManager.cacheZipFiles(this);
            TypeHierarchy typeHierarchy = this.hierarchy;
            if (typeHierarchy.focusType != null && !z10) {
                typeHierarchy.initialize(1);
                buildSupertypes();
                javaModelManager.flushZipFiles(this);
            }
            HashMap determineOpenablesInRegion = determineOpenablesInRegion(typeHierarchy.progressMonitor.split(30));
            this.hierarchy.initialize(determineOpenablesInRegion.size());
            createTypeHierarchyBasedOnRegion(determineOpenablesInRegion, this.hierarchy.progressMonitor.split(70));
            ((RegionBasedTypeHierarchy) this.hierarchy).pruneDeadBranches();
            javaModelManager.flushZipFiles(this);
        } catch (Throwable th2) {
            javaModelManager.flushZipFiles(this);
            throw th2;
        }
    }
}
