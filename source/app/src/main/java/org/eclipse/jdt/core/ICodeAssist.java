package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;

public interface ICodeAssist {
    void codeComplete(int i10, CompletionRequestor completionRequestor) throws JavaModelException;

    void codeComplete(int i10, CompletionRequestor completionRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void codeComplete(int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    void codeComplete(int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void codeComplete(int i10, ICodeCompletionRequestor iCodeCompletionRequestor) throws JavaModelException;

    void codeComplete(int i10, ICompletionRequestor iCompletionRequestor) throws JavaModelException;

    void codeComplete(int i10, ICompletionRequestor iCompletionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    IJavaElement[] codeSelect(int i10, int i11) throws JavaModelException;

    IJavaElement[] codeSelect(int i10, int i11, WorkingCopyOwner workingCopyOwner) throws JavaModelException;
}
