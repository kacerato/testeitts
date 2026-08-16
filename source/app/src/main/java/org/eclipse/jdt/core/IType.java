package org.eclipse.jdt.core;

import java.io.InputStream;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IType extends IMember, IAnnotatable {
    void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, CompletionRequestor completionRequestor) throws JavaModelException;

    void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, CompletionRequestor completionRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, ICompletionRequestor iCompletionRequestor) throws JavaModelException;

    void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, ICompletionRequestor iCompletionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    IField createField(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IInitializer createInitializer(String str, IJavaElement iJavaElement, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IMethod createMethod(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IType createType(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IMethod[] findMethods(IMethod iMethod);

    IJavaElement[] getChildrenForCategory(String str) throws JavaModelException;

    @Override
    IOrdinaryClassFile getClassFile();

    @Override
    String getElementName();

    IField getField(String str);

    IField[] getFields() throws JavaModelException;

    String getFullyQualifiedName();

    String getFullyQualifiedName(char c10);

    String getFullyQualifiedParameterizedName() throws JavaModelException;

    IInitializer getInitializer(int i10);

    IInitializer[] getInitializers() throws JavaModelException;

    String getKey();

    IMethod getMethod(String str, String[] strArr);

    IMethod[] getMethods() throws JavaModelException;

    IPackageFragment getPackageFragment();

    String[] getSuperInterfaceNames() throws JavaModelException;

    String[] getSuperInterfaceTypeSignatures() throws JavaModelException;

    String getSuperclassName() throws JavaModelException;

    String getSuperclassTypeSignature() throws JavaModelException;

    IType getType(String str);

    ITypeParameter getTypeParameter(String str);

    String[] getTypeParameterSignatures() throws JavaModelException;

    ITypeParameter[] getTypeParameters() throws JavaModelException;

    String getTypeQualifiedName();

    String getTypeQualifiedName(char c10);

    IType[] getTypes() throws JavaModelException;

    boolean isAnnotation() throws JavaModelException;

    boolean isAnonymous() throws JavaModelException;

    boolean isClass() throws JavaModelException;

    boolean isEnum() throws JavaModelException;

    boolean isInterface() throws JavaModelException;

    boolean isLambda();

    boolean isLocal() throws JavaModelException;

    boolean isMember() throws JavaModelException;

    boolean isResolved();

    ITypeHierarchy loadTypeHierachy(InputStream inputStream, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newSupertypeHierarchy(IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newSupertypeHierarchy(WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newSupertypeHierarchy(ICompilationUnit[] iCompilationUnitArr, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newSupertypeHierarchy(IWorkingCopy[] iWorkingCopyArr, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(IJavaProject iJavaProject, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(IJavaProject iJavaProject, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(ICompilationUnit[] iCompilationUnitArr, IProgressMonitor iProgressMonitor) throws JavaModelException;

    ITypeHierarchy newTypeHierarchy(IWorkingCopy[] iWorkingCopyArr, IProgressMonitor iProgressMonitor) throws JavaModelException;

    String[][] resolveType(String str) throws JavaModelException;

    String[][] resolveType(String str, WorkingCopyOwner workingCopyOwner) throws JavaModelException;
}
