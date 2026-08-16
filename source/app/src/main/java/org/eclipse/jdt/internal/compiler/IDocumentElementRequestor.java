package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.compiler.CategorizedProblem;

public interface IDocumentElementRequestor {
    void acceptImport(int i10, int i11, int[] iArr, char[] cArr, int i12, boolean z10, int i13);

    void acceptInitializer(int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15);

    void acceptLineSeparatorPositions(int[] iArr);

    void acceptPackage(int i10, int i11, int[] iArr, char[] cArr, int i12);

    void acceptProblem(CategorizedProblem categorizedProblem);

    void enterClass(int i10, int[] iArr, int i11, int i12, int i13, char[] cArr, int i14, int i15, char[] cArr2, int i16, int i17, char[][] cArr3, int[] iArr2, int[] iArr3, int i18);

    void enterCompilationUnit();

    void enterConstructor(int i10, int[] iArr, int i11, int i12, char[] cArr, int i13, int i14, char[][] cArr2, int[] iArr2, int[] iArr3, char[][] cArr3, int[] iArr4, int[] iArr5, int i15, char[][] cArr4, int[] iArr6, int[] iArr7, int i16);

    void enterField(int i10, int[] iArr, int i11, int i12, char[] cArr, int i13, int i14, int i15, char[] cArr2, int i16, int i17, int i18, int i19);

    void enterInterface(int i10, int[] iArr, int i11, int i12, int i13, char[] cArr, int i14, int i15, char[][] cArr2, int[] iArr2, int[] iArr3, int i16);

    void enterMethod(int i10, int[] iArr, int i11, int i12, char[] cArr, int i13, int i14, int i15, char[] cArr2, int i16, int i17, char[][] cArr3, int[] iArr2, int[] iArr3, char[][] cArr4, int[] iArr4, int[] iArr5, int i18, int i19, int i20, char[][] cArr5, int[] iArr6, int[] iArr7, int i21);

    void exitClass(int i10, int i11);

    void exitCompilationUnit(int i10);

    void exitConstructor(int i10, int i11);

    void exitField(int i10, int i11);

    void exitInterface(int i10, int i11);

    void exitMethod(int i10, int i11);
}
