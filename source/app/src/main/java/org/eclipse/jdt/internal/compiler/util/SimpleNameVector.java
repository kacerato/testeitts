package org.eclipse.jdt.internal.compiler.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class SimpleNameVector {
    static int INITIAL_SIZE = 10;
    char[][] elements;
    int maxSize;
    public int size;

    public SimpleNameVector() {
        int i10 = INITIAL_SIZE;
        this.maxSize = i10;
        this.size = 0;
        this.elements = new char[i10];
    }

    public void add(char[] cArr) {
        int i10 = this.size;
        int i11 = this.maxSize;
        if (i10 == i11) {
            char[][] cArr2 = this.elements;
            int i12 = i11 * 2;
            this.maxSize = i12;
            char[][] cArr3 = new char[i12];
            this.elements = cArr3;
            System.arraycopy(cArr2, 0, cArr3, 0, i10);
        }
        char[][] cArr4 = this.elements;
        int i13 = this.size;
        this.size = i13 + 1;
        cArr4[i13] = cArr;
    }

    public void addAll(char[][] cArr) {
        int i10 = this.size;
        if (cArr.length + i10 >= this.maxSize) {
            int length = cArr.length + i10;
            this.maxSize = length;
            char[][] cArr2 = this.elements;
            char[][] cArr3 = new char[length];
            this.elements = cArr3;
            System.arraycopy(cArr2, 0, cArr3, 0, i10);
        }
        System.arraycopy(cArr, 0, this.elements, this.size, cArr.length);
        this.size += cArr.length;
    }

    public boolean contains(char[] cArr) {
        int i10 = this.size;
        do {
            i10--;
            if (i10 < 0) {
                return false;
            }
        } while (!CharOperation.equals(cArr, this.elements[i10]));
        return true;
    }

    public void copyInto(Object[] objArr) {
        System.arraycopy(this.elements, 0, objArr, 0, this.size);
    }

    public char[] elementAt(int i10) {
        return this.elements[i10];
    }

    public char[] remove(char[] cArr) {
        int i10 = this.size;
        while (true) {
            int i11 = i10 - 1;
            if (i11 < 0) {
                return null;
            }
            char[][] cArr2 = this.elements;
            if (cArr == cArr2[i11]) {
                int i12 = this.size - 1;
                this.size = i12;
                System.arraycopy(cArr2, i10, cArr2, i11, i12 - i11);
                this.elements[this.size] = null;
                return cArr;
            }
            i10 = i11;
        }
    }

    public void removeAll() {
        int i10 = this.size;
        while (true) {
            i10--;
            if (i10 < 0) {
                this.size = 0;
                return;
            }
            this.elements[i10] = null;
        }
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < this.size; i10++) {
            stringBuffer.append(this.elements[i10]);
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }
}
