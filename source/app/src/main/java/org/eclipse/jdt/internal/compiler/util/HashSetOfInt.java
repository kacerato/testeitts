package org.eclipse.jdt.internal.compiler.util;

public final class HashSetOfInt implements Cloneable {
    public int elementSize;
    public int[] set;
    int threshold;

    public HashSetOfInt() {
        this(13);
    }

    private void rehash() {
        HashSetOfInt hashSetOfInt = new HashSetOfInt(this.elementSize * 2);
        int length = this.set.length;
        while (true) {
            length--;
            if (length < 0) {
                this.set = hashSetOfInt.set;
                this.threshold = hashSetOfInt.threshold;
                return;
            } else {
                int i10 = this.set[length];
                if (i10 != 0) {
                    hashSetOfInt.add(i10);
                }
            }
        }
    }

    public int add(int i10) {
        int length = this.set.length;
        int i11 = i10 % length;
        while (true) {
            int[] iArr = this.set;
            int i12 = iArr[i11];
            if (i12 == 0) {
                iArr[i11] = i10;
                int i13 = this.elementSize + 1;
                this.elementSize = i13;
                if (i13 > this.threshold) {
                    rehash();
                }
                return i10;
            }
            if (i12 == i10) {
                iArr[i11] = i10;
                return i10;
            }
            i11++;
            if (i11 == length) {
                i11 = 0;
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashSetOfInt hashSetOfInt = (HashSetOfInt) super.clone();
        hashSetOfInt.elementSize = this.elementSize;
        hashSetOfInt.threshold = this.threshold;
        int length = this.set.length;
        int[] iArr = new int[length];
        hashSetOfInt.set = iArr;
        System.arraycopy(this.set, 0, iArr, 0, length);
        return hashSetOfInt;
    }

    public boolean contains(int i10) {
        int length = this.set.length;
        int i11 = i10 % length;
        while (true) {
            int i12 = this.set[i11];
            if (i12 == 0) {
                return false;
            }
            if (i12 == i10) {
                return true;
            }
            i11++;
            if (i11 == length) {
                i11 = 0;
            }
        }
    }

    public int remove(int i10) {
        int length = this.set.length;
        int i11 = i10 % length;
        while (true) {
            int[] iArr = this.set;
            int i12 = iArr[i11];
            if (i12 == 0) {
                return 0;
            }
            if (i12 == i10) {
                this.elementSize--;
                iArr[i11] = 0;
                rehash();
                return i12;
            }
            i11++;
            if (i11 == length) {
                i11 = 0;
            }
        }
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int length = this.set.length;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = this.set[i10];
            if (i11 != 0) {
                stringBuffer.append(i11);
                if (i10 != length - 1) {
                    stringBuffer.append('\n');
                }
            }
        }
        return stringBuffer.toString();
    }

    public HashSetOfInt(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        this.set = new int[i10 == i11 ? i11 + 1 : i11];
    }
}
