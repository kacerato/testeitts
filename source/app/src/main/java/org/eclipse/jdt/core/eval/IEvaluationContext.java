package org.eclipse.jdt.core.eval;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;

public interface IEvaluationContext {
    IGlobalVariable[] allVariables();

    void codeComplete(String str, int i10, CompletionRequestor completionRequestor) throws JavaModelException;

    void codeComplete(String str, int i10, CompletionRequestor completionRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void codeComplete(String str, int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    void codeComplete(String str, int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void codeComplete(String str, int i10, ICodeCompletionRequestor iCodeCompletionRequestor) throws JavaModelException;

    void codeComplete(String str, int i10, ICompletionRequestor iCompletionRequestor) throws JavaModelException;

    void codeComplete(String str, int i10, ICompletionRequestor iCompletionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    IJavaElement[] codeSelect(String str, int i10, int i11) throws JavaModelException;

    IJavaElement[] codeSelect(String str, int i10, int i11, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    void deleteVariable(IGlobalVariable iGlobalVariable);

    void evaluateCodeSnippet(String str, ICodeSnippetRequestor iCodeSnippetRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void evaluateCodeSnippet(String str, String[] strArr, String[] strArr2, int[] iArr, IType iType, boolean z10, boolean z11, ICodeSnippetRequestor iCodeSnippetRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void evaluateVariable(IGlobalVariable iGlobalVariable, ICodeSnippetRequestor iCodeSnippetRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException;

    String[] getImports();

    String getPackageName();

    IJavaProject getProject();

    IGlobalVariable newVariable(String str, String str2, String str3);

    void setImports(String[] strArr);

    void setPackageName(String str);

    void validateImports(ICodeSnippetRequestor iCodeSnippetRequestor) throws JavaModelException;
}
