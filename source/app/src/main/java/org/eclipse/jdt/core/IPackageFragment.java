package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;

public interface IPackageFragment extends IParent, IJavaElement, IOpenable, ISourceManipulation {
    public static final String DEFAULT_PACKAGE_NAME = "";

    boolean containsJavaResources() throws JavaModelException;

    ICompilationUnit createCompilationUnit(String str, String str2, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IClassFile[] getAllClassFiles() throws JavaModelException;

    IClassFile getClassFile(String str);

    @Deprecated
    IClassFile[] getClassFiles() throws JavaModelException;

    ICompilationUnit getCompilationUnit(String str);

    ICompilationUnit[] getCompilationUnits() throws JavaModelException;

    ICompilationUnit[] getCompilationUnits(WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    @Override
    String getElementName();

    int getKind() throws JavaModelException;

    IModularClassFile getModularClassFile();

    Object[] getNonJavaResources() throws JavaModelException;

    IOrdinaryClassFile getOrdinaryClassFile(String str);

    IOrdinaryClassFile[] getOrdinaryClassFiles() throws JavaModelException;

    boolean hasSubpackages() throws JavaModelException;

    boolean isDefaultPackage();
}
