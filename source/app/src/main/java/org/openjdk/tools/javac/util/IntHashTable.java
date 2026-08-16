package org.openjdk.tools.javac.util;

public class IntHashTable {
    private static final int DEFAULT_INITIAL_SIZE = 64;
    private static final Object DELETED = new Object();
    protected int[] ints;
    protected int mask;
    protected int num_bindings;
    protected Object[] objs;

    public IntHashTable() {
        this.objs = new Object[64];
        this.ints = new int[64];
        this.mask = 63;
    }

    public void clear() {
        int length = this.objs.length;
        while (true) {
            length--;
            if (length < 0) {
                this.num_bindings = 0;
                return;
            }
            this.objs[length] = null;
        }
    }

    public int getFromIndex(int i10) {
        Object obj = this.objs[i10];
        if (obj == null || obj == DELETED) {
            return -1;
        }
        return this.ints[i10];
    }

    public int hash(Object obj) {
        return System.identityHashCode(obj);
    }

    public int lookup(Object obj, int i10) {
        int i11 = (i10 >>> 15) ^ i10;
        int i12 = (i10 ^ (i10 << 6)) | 1;
        int i13 = i11 & this.mask;
        int i14 = -1;
        while (true) {
            Object obj2 = this.objs[i13];
            if (obj2 == obj) {
                return i13;
            }
            if (obj2 == null) {
                return i14 >= 0 ? i14 : i13;
            }
            if (obj2 == DELETED && i14 < 0) {
                i14 = i13;
            }
            i13 = (i13 + i12) & this.mask;
        }
    }

    public int putAtIndex(Object obj, int i10, int i11) {
        Object[] objArr = this.objs;
        Object obj2 = objArr[i11];
        if (obj2 != null && obj2 != DELETED) {
            int[] iArr = this.ints;
            int i12 = iArr[i11];
            iArr[i11] = i10;
            return i12;
        }
        objArr[i11] = obj;
        this.ints[i11] = i10;
        if (obj2 != DELETED) {
            this.num_bindings++;
        }
        if (this.num_bindings * 3 < objArr.length * 2) {
            return -1;
        }
        rehash();
        return -1;
    }

    public void rehash() {
        Object[] objArr = this.objs;
        int[] iArr = this.ints;
        int length = objArr.length << 1;
        this.objs = new Object[length];
        this.ints = new int[length];
        this.mask = length - 1;
        this.num_bindings = 0;
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return;
            }
            Object obj = objArr[length2];
            if (obj != null && obj != DELETED) {
                putAtIndex(obj, iArr[length2], lookup(obj, hash(obj)));
            }
        }
    }

    public int remove(Object obj) {
        Object obj2;
        int lookup = lookup(obj);
        Object[] objArr = this.objs;
        Object obj3 = objArr[lookup];
        if (obj3 == null || obj3 == (obj2 = DELETED)) {
            return -1;
        }
        objArr[lookup] = obj2;
        return this.ints[lookup];
    }

    public IntHashTable(int i10) {
        int i11 = 4;
        while (true) {
            int i12 = 1 << i11;
            if (i10 <= i12) {
                this.objs = new Object[i12];
                this.ints = new int[i12];
                this.mask = i12 - 1;
                return;
            }
            i11++;
        }
    }

    public int lookup(Object obj) {
        return lookup(obj, hash(obj));
    }
}
