package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.ICompletionRequestor;

public interface IExtendedCompletionRequestor extends ICompletionRequestor {
    void acceptPotentialMethodDeclaration(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12);
}
