package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.UndoEdit;

public interface ICompilationUnit extends ITypeRoot, IWorkingCopy, ISourceManipulation {
    public static final int ENABLE_BINDINGS_RECOVERY = 4;
    public static final int ENABLE_STATEMENTS_RECOVERY = 2;
    public static final int FORCE_PROBLEM_DETECTION = 1;
    public static final int IGNORE_METHOD_BODIES = 8;
    public static final int NO_AST = 0;

    UndoEdit applyTextEdit(TextEdit textEdit, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void becomeWorkingCopy(IProgressMonitor iProgressMonitor) throws JavaModelException;

    void becomeWorkingCopy(IProblemRequestor iProblemRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void commitWorkingCopy(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IImportDeclaration createImport(String str, IJavaElement iJavaElement, int i10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IImportDeclaration createImport(String str, IJavaElement iJavaElement, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IPackageDeclaration createPackageDeclaration(String str, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IType createType(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void discardWorkingCopy() throws JavaModelException;

    @Override
    IJavaElement[] findElements(IJavaElement iJavaElement);

    ICompilationUnit findWorkingCopy(WorkingCopyOwner workingCopyOwner);

    IType[] getAllTypes() throws JavaModelException;

    IImportDeclaration getImport(String str);

    IImportContainer getImportContainer();

    IImportDeclaration[] getImports() throws JavaModelException;

    WorkingCopyOwner getOwner();

    IPackageDeclaration getPackageDeclaration(String str);

    IPackageDeclaration[] getPackageDeclarations() throws JavaModelException;

    ICompilationUnit getPrimary();

    IType getType(String str);

    IType[] getTypes() throws JavaModelException;

    ICompilationUnit getWorkingCopy(IProgressMonitor iProgressMonitor) throws JavaModelException;

    ICompilationUnit getWorkingCopy(WorkingCopyOwner workingCopyOwner, IProblemRequestor iProblemRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException;

    boolean hasResourceChanged();

    @Override
    boolean isWorkingCopy();

    CompilationUnit reconcile(int i10, int i11, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    CompilationUnit reconcile(int i10, boolean z10, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    CompilationUnit reconcile(int i10, boolean z10, boolean z11, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    @Override
    void restore() throws JavaModelException;
}
