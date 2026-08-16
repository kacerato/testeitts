package org.eclipse.jdt.internal.core.builder;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class NameSet {
    public int elementSize = 0;
    public char[][] names;
    public int threshold;

    public NameSet(int i10) {
        this.threshold = i10;
        int i11 = (int) (i10 * 1.5f);
        this.names = new char[i10 == i11 ? i11 + 1 : i11];
    }

    private void rehash() {
        NameSet nameSet = new NameSet(this.elementSize * 2);
        int length = this.names.length;
        while (true) {
            length--;
            if (length < 0) {
                this.names = nameSet.names;
                this.elementSize = nameSet.elementSize;
                this.threshold = nameSet.threshold;
                return;
            } else {
                char[] cArr = this.names[length];
                if (cArr != null) {
                    nameSet.add(cArr);
                }
            }
        }
    }

    public char[] add(char[] cArr) {
        int length = this.names.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            char[][] cArr2 = this.names;
            char[] cArr3 = cArr2[hashCode];
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
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public String toString() {
        int length = this.names.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            char[] cArr = this.names[i10];
            if (cArr != null) {
                str = String.valueOf(str) + new String(cArr) + "\n";
            }
        }
        return str;
    }
}
