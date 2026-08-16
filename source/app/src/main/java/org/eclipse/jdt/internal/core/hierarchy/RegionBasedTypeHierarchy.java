package org.eclipse.jdt.internal.core.hierarchy;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.Region;
import org.eclipse.jdt.internal.core.TypeVector;

public class RegionBasedTypeHierarchy extends TypeHierarchy {
    protected IRegion region;

    public RegionBasedTypeHierarchy(IRegion iRegion, ICompilationUnit[] iCompilationUnitArr, IType iType, boolean z10) {
        super(iType, iCompilationUnitArr, (IJavaSearchScope) null, z10);
        Region region = new Region();
        IJavaElement[] elements = iRegion.getElements();
        for (IJavaElement iJavaElement : elements) {
            region.add(iJavaElement);
        }
        this.region = region;
        if (elements.length > 0) {
            this.project = elements[0].getJavaProject();
        }
    }

    @Override
    public void compute() throws JavaModelException, CoreException {
        new RegionBasedHierarchyBuilder(this).build(this.computeSubtypes);
    }

    @Override
    public void initializeRegions() {
        super.initializeRegions();
        for (IJavaElement iJavaElement : this.region.getElements()) {
            if (iJavaElement instanceof IOpenable) {
                this.files.put((IOpenable) iJavaElement, new ArrayList<>());
            } else {
                Openable openable = (Openable) ((JavaElement) iJavaElement).getOpenableParent();
                if (openable != null) {
                    this.files.put(openable, new ArrayList<>());
                }
            }
            checkCanceled();
        }
    }

    @Override
    public boolean isAffectedByOpenable(IJavaElementDelta iJavaElementDelta, IJavaElement iJavaElement, int i10) {
        if ((!(iJavaElement instanceof CompilationUnit) || !((CompilationUnit) iJavaElement).isWorkingCopy()) && this.focusType == null) {
            return this.region.contains(iJavaElement);
        }
        return super.isAffectedByOpenable(iJavaElementDelta, iJavaElement, i10);
    }

    @Override
    public IJavaProject javaProject() {
        return this.project;
    }

    public void pruneDeadBranches() {
        pruneDeadBranches(getRootClasses());
        pruneDeadBranches(getRootInterfaces());
    }

    public void removeType(IType iType) {
        TypeVector typeVector;
        IType[] subtypes = getSubtypes(iType);
        this.typeToSubtypes.remove(iType);
        if (subtypes != null) {
            for (IType iType2 : subtypes) {
                removeType(iType2);
            }
        }
        IType remove = this.classToSuperclass.remove(iType);
        if (remove != null && (typeVector = this.typeToSubtypes.get(remove)) != null) {
            typeVector.remove(iType);
        }
        IType[] remove2 = this.typeToSuperInterfaces.remove(iType);
        if (remove2 != null) {
            for (IType iType3 : remove2) {
                TypeVector typeVector2 = this.typeToSubtypes.get(iType3);
                if (typeVector2 != null) {
                    typeVector2.remove(iType);
                }
            }
        }
        this.interfaces.remove(iType);
    }

    private boolean pruneDeadBranches(IType iType) {
        TypeVector typeVector = this.typeToSubtypes.get(iType);
        if (typeVector == null) {
            return true;
        }
        pruneDeadBranches(typeVector.copy().elements());
        TypeVector typeVector2 = this.typeToSubtypes.get(iType);
        return typeVector2 == null || typeVector2.size == 0;
    }

    private void pruneDeadBranches(IType[] iTypeArr) {
        for (IType iType : iTypeArr) {
            if (pruneDeadBranches(iType) && !this.region.contains(iType)) {
                removeType(iType);
            }
        }
    }
}
