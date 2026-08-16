package org.eclipse.jdt.internal.core.builder;

import org.eclipse.jdt.core.compiler.CharOperation;

public class QualifiedNameSet {
    public int elementSize = 0;
    public char[][][] qualifiedNames;
    public int threshold;

    public QualifiedNameSet(int i10) {
        this.threshold = i10;
        int i11 = (int) (i10 * 1.5f);
        this.qualifiedNames = new char[i10 == i11 ? i11 + 1 : i11][];
    }

    private void rehash() {
        QualifiedNameSet qualifiedNameSet = new QualifiedNameSet(this.elementSize * 2);
        int length = this.qualifiedNames.length;
        while (true) {
            length--;
            if (length < 0) {
                this.qualifiedNames = qualifiedNameSet.qualifiedNames;
                this.elementSize = qualifiedNameSet.elementSize;
                this.threshold = qualifiedNameSet.threshold;
                return;
            } else {
                char[][] cArr = this.qualifiedNames[length];
                if (cArr != null) {
                    qualifiedNameSet.add(cArr);
                }
            }
        }
    }

    public char[][] add(char[][] cArr) {
        int length = cArr.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int length2 = this.qualifiedNames.length;
        int hashCode = CharOperation.hashCode(cArr[length - 1]) % length2;
        while (true) {
            char[][][] cArr2 = this.qualifiedNames;
            char[][] cArr3 = cArr2[hashCode];
            if (cArr3 == null) {
                cArr2[hashCode] = cArr;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return cArr;
            }
            if (CharOperation.equals(cArr3, cArr)) {
                return cArr3;
            }
            hashCode++;
            if (hashCode == length2) {
                hashCode = 0;
            }
        }
    }

    public String toString() {
        int length = this.qualifiedNames.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            char[][] cArr = this.qualifiedNames[i10];
            if (cArr != null) {
                str = String.valueOf(str) + CharOperation.toString(cArr) + "\n";
            }
        }
        return str;
    }
}
