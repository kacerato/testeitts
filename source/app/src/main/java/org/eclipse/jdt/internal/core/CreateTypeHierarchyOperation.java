package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.core.hierarchy.RegionBasedTypeHierarchy;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;

public class CreateTypeHierarchyOperation extends JavaModelOperation {
    protected TypeHierarchy typeHierarchy;

    public CreateTypeHierarchyOperation(IRegion iRegion, ICompilationUnit[] iCompilationUnitArr, IType iType, boolean z10) {
        super(iType);
        this.typeHierarchy = new RegionBasedTypeHierarchy(iRegion, iCompilationUnitArr, iType, z10);
    }

    @Override
    public void executeOperation() throws JavaModelException {
        this.typeHierarchy.refresh(this);
    }

    public ITypeHierarchy getResult() {
        return this.typeHierarchy;
    }

    @Override
    public boolean isReadOnly() {
        return true;
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaElement elementToProcess = getElementToProcess();
        if (elementToProcess == null && !(this.typeHierarchy instanceof RegionBasedTypeHierarchy)) {
            return new JavaModelStatus(968);
        }
        if (elementToProcess != null && !elementToProcess.exists()) {
            return new JavaModelStatus(969, elementToProcess);
        }
        IJavaProject javaProject = this.typeHierarchy.javaProject();
        return (javaProject == null || javaProject.exists()) ? JavaModelStatus.VERIFIED_OK : new JavaModelStatus(969, javaProject);
    }

    public CreateTypeHierarchyOperation(IType iType, ICompilationUnit[] iCompilationUnitArr, IJavaSearchScope iJavaSearchScope, boolean z10) {
        super(iType);
        ICompilationUnit[] iCompilationUnitArr2;
        if (iCompilationUnitArr != null) {
            int length = iCompilationUnitArr.length;
            iCompilationUnitArr2 = new ICompilationUnit[length];
            System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 0, length);
        } else {
            iCompilationUnitArr2 = null;
        }
        this.typeHierarchy = new TypeHierarchy(iType, iCompilationUnitArr2, iJavaSearchScope, z10);
    }

    public CreateTypeHierarchyOperation(IType iType, ICompilationUnit[] iCompilationUnitArr, IJavaProject iJavaProject, boolean z10) {
        super(iType);
        ICompilationUnit[] iCompilationUnitArr2;
        if (iCompilationUnitArr != null) {
            int length = iCompilationUnitArr.length;
            iCompilationUnitArr2 = new ICompilationUnit[length];
            System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 0, length);
        } else {
            iCompilationUnitArr2 = null;
        }
        this.typeHierarchy = new TypeHierarchy(iType, iCompilationUnitArr2, iJavaProject, z10);
    }
}
