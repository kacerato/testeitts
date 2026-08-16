package org.eclipse.jdt.internal.compiler.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class SimpleSetOfCharArray implements Cloneable {
    public int elementSize;
    public int threshold;
    public char[][] values;

    public SimpleSetOfCharArray() {
        this(13);
    }

    private void rehash() {
        SimpleSetOfCharArray simpleSetOfCharArray = new SimpleSetOfCharArray(this.elementSize * 2);
        int length = this.values.length;
        while (true) {
            length--;
            if (length < 0) {
                this.values = simpleSetOfCharArray.values;
                this.elementSize = simpleSetOfCharArray.elementSize;
                this.threshold = simpleSetOfCharArray.threshold;
                return;
            } else {
                char[] cArr = this.values[length];
                if (cArr != null) {
                    simpleSetOfCharArray.add(cArr);
                }
            }
        }
    }

    public Object add(char[] cArr) {
        int length = this.values.length;
        int hashCode = (CharOperation.hashCode(cArr) & Integer.MAX_VALUE) % length;
        while (true) {
            char[][] cArr2 = this.values;
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
                this.values[hashCode] = cArr;
                return cArr;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public void asArray(Object[] objArr) {
        int i10 = this.elementSize;
        if (i10 != objArr.length) {
            throw new IllegalArgumentException();
        }
        int length = this.values.length;
        for (int i11 = 0; i11 < length && i10 > 0; i11++) {
            char[] cArr = this.values[i11];
            if (cArr != null) {
                i10--;
                objArr[i10] = cArr;
            }
        }
    }

    public void clear() {
        int length = this.values.length;
        while (true) {
            length--;
            if (length < 0) {
                this.elementSize = 0;
                return;
            }
            this.values[length] = null;
        }
    }

    public Object clone() throws CloneNotSupportedException {
        SimpleSetOfCharArray simpleSetOfCharArray = (SimpleSetOfCharArray) super.clone();
        simpleSetOfCharArray.elementSize = this.elementSize;
        simpleSetOfCharArray.threshold = this.threshold;
        int length = this.values.length;
        char[][] cArr = new char[length];
        simpleSetOfCharArray.values = cArr;
        System.arraycopy(this.values, 0, cArr, 0, length);
        return simpleSetOfCharArray;
    }

    public char[] get(char[] cArr) {
        int length = this.values.length;
        int hashCode = (CharOperation.hashCode(cArr) & Integer.MAX_VALUE) % length;
        while (true) {
            char[][] cArr2 = this.values;
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
        int length = this.values.length;
        int hashCode = (CharOperation.hashCode(cArr) & Integer.MAX_VALUE) % length;
        while (true) {
            char[] cArr2 = this.values[hashCode];
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

    public char[] remove(char[] cArr) {
        int length = this.values.length;
        int hashCode = (CharOperation.hashCode(cArr) & Integer.MAX_VALUE) % length;
        while (true) {
            char[] cArr2 = this.values[hashCode];
            if (cArr2 == null) {
                return null;
            }
            if (CharOperation.equals(cArr2, cArr)) {
                this.elementSize--;
                char[][] cArr3 = this.values;
                char[] cArr4 = cArr3[hashCode];
                cArr3[hashCode] = null;
                int i10 = hashCode + 1;
                if (cArr3[i10 != length ? i10 : 0] != null) {
                    rehash();
                }
                return cArr4;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public String toString() {
        int length = this.values.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            char[] cArr = this.values[i10];
            if (cArr != null) {
                str = String.valueOf(str) + new String(cArr) + "\n";
            }
        }
        return str;
    }

    public SimpleSetOfCharArray(int i10) {
        i10 = i10 < 3 ? 3 : i10;
        this.elementSize = 0;
        this.threshold = i10 + 1;
        this.values = new char[(i10 * 2) + 1];
    }
}
