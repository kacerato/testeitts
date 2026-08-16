package org.eclipse.jdt.internal.compiler.util;

public final class HashtableOfLong {
    public int elementSize;
    public long[] keyTable;
    int threshold;
    public Object[] valueTable;

    public HashtableOfLong() {
        this(13);
    }

    private void rehash() {
        HashtableOfLong hashtableOfLong = new HashtableOfLong(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfLong.keyTable;
                this.valueTable = hashtableOfLong.valueTable;
                this.threshold = hashtableOfLong.threshold;
                return;
            } else {
                long j10 = this.keyTable[length];
                if (j10 != 0) {
                    hashtableOfLong.put(j10, this.valueTable[length]);
                }
            }
        }
    }

    public boolean containsKey(long j10) {
        int length = this.keyTable.length;
        int i10 = ((int) (j10 >>> 32)) % length;
        while (true) {
            long j11 = this.keyTable[i10];
            if (j11 == 0) {
                return false;
            }
            if (j11 == j10) {
                return true;
            }
            i10++;
            if (i10 == length) {
                i10 = 0;
            }
        }
    }

    public Object get(long j10) {
        int length = this.keyTable.length;
        int i10 = ((int) (j10 >>> 32)) % length;
        while (true) {
            long j11 = this.keyTable[i10];
            if (j11 == 0) {
                return null;
            }
            if (j11 == j10) {
                return this.valueTable[i10];
            }
            i10++;
            if (i10 == length) {
                i10 = 0;
            }
        }
    }

    public Object put(long j10, Object obj) {
        int length = this.keyTable.length;
        int i10 = ((int) (j10 >>> 32)) % length;
        while (true) {
            long[] jArr = this.keyTable;
            long j11 = jArr[i10];
            if (j11 == 0) {
                jArr[i10] = j10;
                this.valueTable[i10] = obj;
                int i11 = this.elementSize + 1;
                this.elementSize = i11;
                if (i11 > this.threshold) {
                    rehash();
                }
                return obj;
            }
            if (j11 == j10) {
                this.valueTable[i10] = obj;
                return obj;
            }
            i10++;
            if (i10 == length) {
                i10 = 0;
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

    public HashtableOfLong(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new long[i11];
        this.valueTable = new Object[i11];
    }
}
