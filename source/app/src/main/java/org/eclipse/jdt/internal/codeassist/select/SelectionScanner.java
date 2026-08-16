package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class SelectionScanner extends Scanner {
    public int selectionEnd;
    public char[] selectionIdentifier;
    public int selectionStart;

    public SelectionScanner(long j10) {
        super(false, false, false, j10, null, null, true);
    }

    @Override
    public char[] getCurrentIdentifierSource() {
        if (this.selectionIdentifier == null) {
            int i10 = this.selectionStart;
            int i11 = this.startPosition;
            if (i10 == i11) {
                int i12 = this.selectionEnd;
                int i13 = this.currentPosition;
                if (i12 == i13 - 1) {
                    int i14 = this.withoutUnicodePtr;
                    if (i14 != 0) {
                        char[] cArr = this.withoutUnicodeBuffer;
                        char[] cArr2 = new char[i14];
                        this.selectionIdentifier = cArr2;
                        System.arraycopy(cArr, 1, cArr2, 0, i14);
                    } else {
                        int i15 = i13 - i11;
                        char[] cArr3 = this.source;
                        char[] cArr4 = new char[i15];
                        this.selectionIdentifier = cArr4;
                        System.arraycopy(cArr3, i11, cArr4, 0, i15);
                    }
                    return this.selectionIdentifier;
                }
            }
        }
        return super.getCurrentIdentifierSource();
    }

    @Override
    public boolean isAtAssistIdentifier() {
        return this.selectionStart == this.startPosition && this.selectionEnd == this.currentPosition - 1;
    }

    @Override
    public int scanIdentifierOrKeyword() {
        int scanIdentifierOrKeyword = super.scanIdentifierOrKeyword();
        if (scanIdentifierOrKeyword != 22 && this.startPosition == this.selectionStart && this.currentPosition == this.selectionEnd + 1) {
            return 22;
        }
        return scanIdentifierOrKeyword;
    }
}
