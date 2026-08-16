package org.eclipse.jdt.internal.compiler.ast;

public abstract class NumberLiteral extends Literal {
    char[] source;

    public NumberLiteral(char[] cArr, int i10, int i11) {
        this(i10, i11);
        this.source = cArr;
    }

    public static char[] removePrefixZerosAndUnderscores(char[] cArr, boolean z10) {
        int i10;
        char c10;
        char c11;
        int length = cArr.length;
        int i11 = length - 1;
        if (z10) {
            i11 = length - 2;
        }
        boolean z11 = true;
        if (length <= 1 || cArr[0] != '0') {
            i10 = 0;
        } else {
            i10 = 2;
            if ((length <= 2 || ((c11 = cArr[1]) != 'x' && c11 != 'X')) && (length <= 2 || ((c10 = cArr[1]) != 'b' && c10 != 'B'))) {
                i10 = 1;
            }
        }
        boolean z12 = false;
        boolean z13 = true;
        int i12 = i10;
        while (true) {
            if (i12 >= length) {
                break;
            }
            char c12 = cArr[i12];
            if (c12 != '0') {
                if (c12 == '_') {
                    z12 = true;
                    break;
                }
                z13 = false;
            } else if (z13 && !z12 && i12 < i11) {
                z12 = true;
            }
            i12++;
        }
        if (!z12) {
            return cArr;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cArr, 0, i10);
        while (i10 < length) {
            char c13 = cArr[i10];
            if (c13 == '0') {
                if (z11 && i10 < i11) {
                    i10++;
                }
                stringBuffer.append(c13);
                i10++;
            } else if (c13 != '_') {
                z11 = false;
                stringBuffer.append(c13);
                i10++;
            } else {
                i10++;
            }
        }
        return stringBuffer.toString().toCharArray();
    }

    @Override
    public boolean isValidJavaStatement() {
        return false;
    }

    @Override
    public char[] source() {
        return this.source;
    }

    public NumberLiteral(int i10, int i11) {
        super(i10, i11);
    }
}
