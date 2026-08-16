package com.threed.jpct;

public class IntList {
    private int[] store = new int[10];
    private int cnt = 0;

    public void add(int i10) {
        int i11 = this.cnt;
        if (i11 >= this.store.length) {
            int[] iArr = new int[i11 + Math.min(32768, i11)];
            System.arraycopy(this.store, 0, iArr, 0, this.cnt);
            this.store = iArr;
        }
        int[] iArr2 = this.store;
        int i12 = this.cnt;
        iArr2[i12] = i10;
        this.cnt = i12 + 1;
    }

    public void clear() {
        this.cnt = 0;
        this.store = new int[10];
    }

    public void compact() {
        int i10 = this.cnt;
        int[] iArr = new int[i10];
        System.arraycopy(this.store, 0, iArr, 0, i10);
        this.store = iArr;
    }

    public int get(int i10) {
        if (i10 < this.cnt) {
            return this.store[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    public int size() {
        return this.cnt;
    }
}
