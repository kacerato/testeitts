package org.eclipse.jdt.core;

import org.eclipse.jdt.core.compiler.IProblem;

public interface ICompletionRequestor {
    void acceptAnonymousType(char[] cArr, char[] cArr2, char[][] cArr3, char[][] cArr4, char[][] cArr5, char[] cArr6, int i10, int i11, int i12, int i13);

    void acceptClass(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12, int i13);

    void acceptError(IProblem iProblem);

    void acceptField(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, char[] cArr6, int i10, int i11, int i12, int i13);

    void acceptInterface(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12, int i13);

    void acceptKeyword(char[] cArr, int i10, int i11, int i12);

    void acceptLabel(char[] cArr, int i10, int i11, int i12);

    void acceptLocalVariable(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12, int i13);

    void acceptMethod(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, char[] cArr8, char[] cArr9, int i10, int i11, int i12, int i13);

    void acceptMethodDeclaration(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, char[] cArr8, char[] cArr9, int i10, int i11, int i12, int i13);

    void acceptModifier(char[] cArr, int i10, int i11, int i12);

    void acceptPackage(char[] cArr, char[] cArr2, int i10, int i11, int i12);

    void acceptType(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12);

    void acceptVariableName(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, int i10, int i11, int i12);
}
