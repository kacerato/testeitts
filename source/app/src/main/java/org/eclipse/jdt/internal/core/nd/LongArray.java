package org.eclipse.jdt.internal.core.nd;

public class LongArray {
    private static final int MIN_CAPACITY = 8;
    private long[] contents;
    private int size;

    private void ensureCapacity(int i10) {
        if (this.contents == null) {
            this.contents = new long[Math.max(8, i10)];
        }
        long[] jArr = this.contents;
        if (jArr.length >= i10) {
            return;
        }
        long[] jArr2 = new long[i10 * 2];
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        this.contents = jArr2;
    }

    public void addLast(long j10) {
        ensureCapacity(this.size + 1);
        long[] jArr = this.contents;
        int i10 = this.size;
        this.size = i10 + 1;
        jArr[i10] = j10;
    }

    public long get(int i10) {
        if (i10 < this.size) {
            return this.contents[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public long removeLast() {
        long[] jArr = this.contents;
        int i10 = this.size - 1;
        this.size = i10;
        return jArr[i10];
    }

    public int size() {
        return this.size;
    }
}
