package org.eclipse.jdt.core;

public interface ICorrectionRequestor {
    void acceptClass(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12);

    void acceptField(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, char[] cArr6, int i10, int i11, int i12);

    void acceptInterface(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12);

    void acceptLocalVariable(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, int i12);

    void acceptMethod(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, char[] cArr8, char[] cArr9, int i10, int i11, int i12);

    void acceptPackage(char[] cArr, char[] cArr2, int i10, int i11);
}
