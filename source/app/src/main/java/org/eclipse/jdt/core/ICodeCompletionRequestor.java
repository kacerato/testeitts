package org.eclipse.jdt.core;

import org.eclipse.core.resources.IMarker;

public interface ICodeCompletionRequestor {
    void acceptClass(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12);

    void acceptError(IMarker iMarker);

    void acceptField(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, char[] cArr6, int i10, int i11, int i12);

    void acceptInterface(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12);

    void acceptKeyword(char[] cArr, int i10, int i11);

    void acceptLabel(char[] cArr, int i10, int i11);

    void acceptLocalVariable(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12);

    void acceptMethod(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char[][] cArr5, char[] cArr6, char[] cArr7, char[] cArr8, int i10, int i11, int i12);

    void acceptModifier(char[] cArr, int i10, int i11);

    void acceptPackage(char[] cArr, char[] cArr2, int i10, int i11);

    void acceptType(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11);
}
