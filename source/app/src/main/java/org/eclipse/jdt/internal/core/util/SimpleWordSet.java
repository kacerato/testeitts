package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class SimpleWordSet {
    public int elementSize = 0;
    public int threshold;
    public char[][] words;

    public SimpleWordSet(int i10) {
        this.threshold = i10;
        int i11 = (int) (i10 * 1.5f);
        this.words = new char[i10 == i11 ? i11 + 1 : i11];
    }

    private void rehash() {
        SimpleWordSet simpleWordSet = new SimpleWordSet(this.elementSize * 2);
        int length = this.words.length;
        while (true) {
            length--;
            if (length < 0) {
                this.words = simpleWordSet.words;
                this.elementSize = simpleWordSet.elementSize;
                this.threshold = simpleWordSet.threshold;
                return;
            } else {
                char[] cArr = this.words[length];
                if (cArr != null) {
                    simpleWordSet.add(cArr);
                }
            }
        }
    }

    public char[] add(char[] cArr) {
        int length = this.words.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            char[][] cArr2 = this.words;
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

    public boolean includes(char[] cArr) {
        int length = this.words.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            char[] cArr2 = this.words[hashCode];
            if (cArr2 == null) {
                return false;
            }
            if (CharOperation.equals(cArr2, cArr)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }
}
