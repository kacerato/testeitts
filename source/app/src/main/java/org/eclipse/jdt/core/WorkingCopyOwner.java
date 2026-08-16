package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.ExternalJavaProject;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;

public abstract class WorkingCopyOwner {
    public static void setPrimaryBufferProvider(WorkingCopyOwner workingCopyOwner) {
        DefaultWorkingCopyOwner.PRIMARY.primaryBufferProvider = workingCopyOwner;
    }

    public IBuffer createBuffer(ICompilationUnit iCompilationUnit) {
        return BufferManager.createBuffer(iCompilationUnit);
    }

    public String findSource(String str, String str2) {
        return null;
    }

    public IProblemRequestor getProblemRequestor(ICompilationUnit iCompilationUnit) {
        return null;
    }

    public boolean isPackage(String[] strArr) {
        return false;
    }

    public final ICompilationUnit newWorkingCopy(String str, IClasspathEntry[] iClasspathEntryArr, IProblemRequestor iProblemRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        ExternalJavaProject externalJavaProject = new ExternalJavaProject(iClasspathEntryArr);
        CompilationUnit compilationUnit = new CompilationUnit(((PackageFragmentRoot) externalJavaProject.getPackageFragmentRoot((IResource) externalJavaProject.getProject())).getPackageFragment(CharOperation.NO_STRINGS), str, this);
        compilationUnit.becomeWorkingCopy(iProblemRequestor, iProgressMonitor);
        return compilationUnit;
    }

    public final ICompilationUnit newWorkingCopy(String str, IClasspathEntry[] iClasspathEntryArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        ExternalJavaProject externalJavaProject = new ExternalJavaProject(iClasspathEntryArr);
        CompilationUnit compilationUnit = new CompilationUnit(((PackageFragmentRoot) externalJavaProject.getPackageFragmentRoot((IResource) externalJavaProject.getProject())).getPackageFragment(CharOperation.NO_STRINGS), str, this);
        compilationUnit.becomeWorkingCopy(getProblemRequestor(compilationUnit), iProgressMonitor);
        return compilationUnit;
    }
}
