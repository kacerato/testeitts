package org.eclipse.jdt.internal.compiler.util;

public final class HashtableOfInt {
    public int elementSize;
    public int[] keyTable;
    int threshold;
    public Object[] valueTable;

    public HashtableOfInt() {
        this(13);
    }

    private void rehash() {
        HashtableOfInt hashtableOfInt = new HashtableOfInt(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfInt.keyTable;
                this.valueTable = hashtableOfInt.valueTable;
                this.threshold = hashtableOfInt.threshold;
                return;
            } else {
                int i10 = this.keyTable[length];
                if (i10 != 0) {
                    hashtableOfInt.put(i10, this.valueTable[length]);
                }
            }
        }
    }

    public boolean containsKey(int i10) {
        int length = this.keyTable.length;
        int i11 = i10 % length;
        while (true) {
            int i12 = this.keyTable[i11];
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

    public Object get(int i10) {
        int length = this.keyTable.length;
        int i11 = i10 % length;
        while (true) {
            int i12 = this.keyTable[i11];
            if (i12 == 0) {
                return null;
            }
            if (i12 == i10) {
                return this.valueTable[i11];
            }
            i11++;
            if (i11 == length) {
                i11 = 0;
            }
        }
    }

    public Object put(int i10, Object obj) {
        int length = this.keyTable.length;
        int i11 = i10 % length;
        while (true) {
            int[] iArr = this.keyTable;
            int i12 = iArr[i11];
            if (i12 == 0) {
                iArr[i11] = i10;
                this.valueTable[i11] = obj;
                int i13 = this.elementSize + 1;
                this.elementSize = i13;
                if (i13 > this.threshold) {
                    rehash();
                }
                return obj;
            }
            if (i12 == i10) {
                this.valueTable[i11] = obj;
                return obj;
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
        int length = this.valueTable.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = this.valueTable[i10];
            if (obj != null) {
                str = String.valueOf(str) + this.keyTable[i10] + " -> " + obj.toString() + "\n";
            }
        }
        return str;
    }

    public HashtableOfInt(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new int[i11];
        this.valueTable = new Object[i11];
    }
}
