package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;

public class SignatureWrapper {
    public int bracket;
    public int end;
    public char[] signature;
    public int start;
    private boolean use15specifics;
    private boolean useExternalAnnotations;

    public SignatureWrapper(char[] cArr, boolean z10) {
        this.signature = cArr;
        this.start = 0;
        this.bracket = -1;
        this.end = -1;
        this.use15specifics = z10;
        if (z10) {
            return;
        }
        removeTypeArguments();
    }

    private void removeTypeArguments() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = this.start;
        if (this.signature[0] == '<') {
            i10++;
        }
        int i11 = 0;
        while (true) {
            char[] cArr = this.signature;
            if (i10 >= cArr.length) {
                sb2.append(cArr, i11, i10 - i11);
                char[] cArr2 = new char[sb2.length()];
                this.signature = cArr2;
                sb2.getChars(0, cArr2.length, cArr2, 0);
                return;
            }
            if (cArr[i10] == '<') {
                sb2.append(cArr, i11, i10 - i11);
                i10 = skipAngleContents(i10);
                i11 = i10;
            }
            i10++;
        }
    }

    public boolean atEnd() {
        int i10 = this.start;
        return i10 < 0 || i10 >= this.signature.length;
    }

    public char charAtStart() {
        return this.signature[this.start];
    }

    public int computeEnd() {
        int i10;
        int i11 = this.start;
        if (this.useExternalAnnotations) {
            while (true) {
                char c10 = this.signature[i11];
                if (c10 == '0' || c10 == '1' || c10 == '@') {
                    if (i11 == this.start) {
                        break;
                    }
                    i11++;
                } else {
                    if (c10 != '[') {
                        break;
                    }
                    i11++;
                }
            }
        } else {
            while (this.signature[i11] == '[') {
                i11++;
            }
        }
        char[] cArr = this.signature;
        char c11 = cArr[i11];
        if (c11 == 'L' || c11 == 'T') {
            this.end = CharOperation.indexOf(';', cArr, this.start);
            int i12 = this.bracket;
            int i13 = this.start;
            if (i12 <= i13) {
                this.bracket = CharOperation.indexOf('<', this.signature, i13);
            }
            int i14 = this.bracket;
            if (i14 > this.start && i14 < this.end) {
                this.end = i14;
            } else if (this.end == -1) {
                this.end = this.signature.length + 1;
            }
        } else {
            this.end = i11;
        }
        if (this.use15specifics || (i10 = this.end) != this.bracket) {
            this.start = this.end + 1;
        } else {
            this.start = skipAngleContents(i10) + 1;
            this.bracket = -1;
        }
        return this.end;
    }

    public char[] getFrom(int i10) {
        int i11 = this.end;
        int i12 = this.bracket;
        if (i11 == i12) {
            int skipAngleContents = skipAngleContents(i12);
            this.end = skipAngleContents;
            this.start = skipAngleContents + 1;
        }
        return CharOperation.subarray(this.signature, i10, this.end + 1);
    }

    public boolean isParameterized() {
        return this.bracket == this.end;
    }

    public char[] nextName() {
        this.end = CharOperation.indexOf(';', this.signature, this.start);
        int i10 = this.bracket;
        int i11 = this.start;
        if (i10 <= i11) {
            this.bracket = CharOperation.indexOf('<', this.signature, i11);
        }
        int i12 = this.bracket;
        int i13 = this.start;
        if (i12 > i13 && i12 < this.end) {
            this.end = i12;
        }
        char[] cArr = this.signature;
        int i14 = this.end;
        this.start = i14;
        return CharOperation.subarray(cArr, i13, i14);
    }

    public char[] nextWord() {
        this.end = CharOperation.indexOf(';', this.signature, this.start);
        int i10 = this.bracket;
        int i11 = this.start;
        if (i10 <= i11) {
            this.bracket = CharOperation.indexOf('<', this.signature, i11);
        }
        int indexOf = CharOperation.indexOf('.', this.signature, this.start);
        int i12 = this.bracket;
        int i13 = this.start;
        if (i12 > i13 && i12 < this.end) {
            this.end = i12;
        }
        if (indexOf > i13 && indexOf < this.end) {
            this.end = indexOf;
        }
        char[] cArr = this.signature;
        int i14 = this.end;
        this.start = i14;
        return CharOperation.subarray(cArr, i13, i14);
    }

    public char[] peekFullType() {
        int i10 = this.start;
        int i11 = this.bracket;
        int i12 = this.end;
        int skipAngleContents = skipAngleContents(computeEnd());
        this.start = i10;
        this.bracket = i11;
        this.end = i12;
        return CharOperation.subarray(this.signature, i10, skipAngleContents + 1);
    }

    public int skipAngleContents(int i10) {
        char[] cArr = this.signature;
        if (cArr[i10] != '<') {
            return i10;
        }
        int length = cArr.length;
        int i11 = i10 + 1;
        int i12 = 0;
        while (i11 < length) {
            char c10 = this.signature[i11];
            if (c10 == '<') {
                i12++;
            } else if (c10 == '>' && i12 - 1 < 0) {
                return i11 + 1;
            }
            i11++;
        }
        return i11;
    }

    public char[] tail() {
        char[] cArr = this.signature;
        return CharOperation.subarray(cArr, this.start, cArr.length);
    }

    public String toString() {
        int i10 = this.start;
        if (i10 >= 0) {
            char[] cArr = this.signature;
            if (i10 <= cArr.length) {
                StringBuilder sb2 = new StringBuilder(new String(CharOperation.subarray(cArr, 0, i10)));
                sb2.append(" ^ ");
                char[] cArr2 = this.signature;
                sb2.append(new String(CharOperation.subarray(cArr2, this.start, cArr2.length)));
                return sb2.toString();
            }
        }
        return new String(this.signature) + " @ " + this.start;
    }

    public SignatureWrapper(char[] cArr, boolean z10, boolean z11) {
        this.signature = cArr;
        this.start = 0;
        this.bracket = -1;
        this.end = -1;
        this.use15specifics = z10;
        this.useExternalAnnotations = z11;
        if (z10) {
            return;
        }
        removeTypeArguments();
    }

    public SignatureWrapper(char[] cArr) {
        this(cArr, true);
    }
}
