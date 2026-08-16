package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.compiler.CategorizedProblem;

public interface ISelectionRequestor {
    void acceptError(CategorizedProblem categorizedProblem);

    void acceptField(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, char[] cArr4, int i10, int i11);

    void acceptMethod(char[] cArr, char[] cArr2, String str, char[] cArr3, char[][] cArr4, char[][] cArr5, String[] strArr, char[][] cArr6, char[][][] cArr7, boolean z10, boolean z11, char[] cArr8, int i10, int i11);

    void acceptMethodTypeParameter(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, char[] cArr4, boolean z10, int i12, int i13);

    void acceptModule(char[] cArr, char[] cArr2, int i10, int i11);

    void acceptPackage(char[] cArr);

    void acceptType(char[] cArr, char[] cArr2, int i10, boolean z10, char[] cArr3, int i11, int i12);

    void acceptTypeParameter(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, int i10, int i11);
}
