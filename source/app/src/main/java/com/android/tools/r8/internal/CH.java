package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class CH extends AbstractC6349a0 implements RandomAccess, Cloneable, Serializable {

    public transient int[] f39176b;

    public int f39177c;

    public CH(int[] iArr, int i10) {
        this.f39176b = iArr;
    }

    @Override
    public final void a(int i10, int[] iArr, int i11, int i12) {
        int length = iArr.length;
        if (i11 < 0) {
            throw new ArrayIndexOutOfBoundsException(HC.a(i11, "Offset (", ") is negative"));
        }
        if (i12 < 0) {
            throw new IllegalArgumentException(HC.a(i12, "Length (", ") is negative"));
        }
        int i13 = i11 + i12;
        if (i13 <= length) {
            System.arraycopy(this.f39176b, i10, iArr, i11, i12);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Last index (" + i13 + ") is greater than array length (" + length + ")");
    }

    @Override
    public final boolean add(int i10) {
        p(this.f39177c + 1);
        int[] iArr = this.f39176b;
        int i11 = this.f39177c;
        this.f39177c = i11 + 1;
        iArr[i11] = i10;
        return true;
    }

    @Override
    public final void b(int i10, int i11) {
        k(i10);
        p(this.f39177c + 1);
        int i12 = this.f39177c;
        if (i10 != i12) {
            int[] iArr = this.f39176b;
            System.arraycopy(iArr, i10, iArr, i10 + 1, i12 - i10);
        }
        this.f39176b[i10] = i11;
        this.f39177c++;
    }

    @Override
    public final int c(int i10) {
        if (i10 < this.f39177c) {
            return this.f39176b[i10];
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f39177c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final void clear() {
        this.f39177c = 0;
    }

    public final Object clone() {
        CH ch2 = new CH(this.f39177c);
        System.arraycopy(this.f39176b, 0, ch2.f39176b, 0, this.f39177c);
        ch2.f39177c = this.f39177c;
        return ch2;
    }

    @Override
    public final int i(int i10) {
        int i11 = this.f39177c;
        if (i10 >= i11) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
            a10.append(this.f39177c);
            a10.append(")");
            throw new IndexOutOfBoundsException(a10.toString());
        }
        int[] iArr = this.f39176b;
        int i12 = iArr[i10];
        int i13 = i11 - 1;
        this.f39177c = i13;
        if (i10 != i13) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, i13 - i10);
        }
        return i12;
    }

    @Override
    public final boolean isEmpty() {
        return this.f39177c == 0;
    }

    @Override
    public final boolean j(int i10) {
        int m10 = m(i10);
        if (m10 == -1) {
            return false;
        }
        i(m10);
        return true;
    }

    @Override
    public final ListIterator listIterator(int i10) {
        k(i10);
        return new BH(this, i10);
    }

    @Override
    public final int m(int i10) {
        for (int i11 = 0; i11 < this.f39177c; i11++) {
            if (i10 == this.f39176b[i11]) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public final int n(int i10) {
        int i11 = this.f39177c;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return -1;
            }
            if (i10 == this.f39176b[i12]) {
                return i12;
            }
            i11 = i12;
        }
    }

    @Override
    public final UH o(int i10) {
        k(i10);
        return new BH(this, i10);
    }

    public final void p(int i10) {
        int[] iArr = this.f39176b;
        int i11 = this.f39177c;
        if (i10 > iArr.length) {
            int[] iArr2 = new int[(int) Math.max(Math.min(iArr.length * 2, 2147483639L), i10)];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            iArr = iArr2;
        }
        this.f39176b = iArr;
    }

    @Override
    public final boolean removeAll(Collection collection) {
        int i10;
        int[] iArr = this.f39176b;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.f39177c;
            if (i11 >= i10) {
                break;
            }
            if (!collection.contains(Integer.valueOf(iArr[i11]))) {
                iArr[i12] = iArr[i11];
                i12++;
            }
            i11++;
        }
        boolean z10 = i10 != i12;
        this.f39177c = i12;
        return z10;
    }

    @Override
    public final int size() {
        return this.f39177c;
    }

    public CH(int i10) {
        if (i10 >= 0) {
            this.f39176b = new int[i10];
            return;
        }
        throw new IllegalArgumentException(HC.a(i10, "Initial capacity (", ") is negative"));
    }

    @Override
    public final int c(int i10, int i11) {
        if (i10 < this.f39177c) {
            int[] iArr = this.f39176b;
            int i12 = iArr[i10];
            iArr[i10] = i11;
            return i12;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f39177c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final void a(int i10, int i11) {
        Y3.a(this.f39177c, i10, i11);
        int[] iArr = this.f39176b;
        System.arraycopy(iArr, i11, iArr, i10, this.f39177c - i11);
        this.f39177c -= i11 - i10;
    }

    @Override
    public final int[] a(int[] iArr) {
        if (iArr == null || iArr.length < this.f39177c) {
            iArr = new int[this.f39177c];
        }
        System.arraycopy(this.f39176b, 0, iArr, 0, this.f39177c);
        return iArr;
    }

    @Override
    public final boolean a(int i10, TH th2) {
        k(i10);
        int size = th2.size();
        if (size == 0) {
            return false;
        }
        p(this.f39177c + size);
        int i11 = this.f39177c;
        if (i10 != i11) {
            int[] iArr = this.f39176b;
            System.arraycopy(iArr, i10, iArr, i10 + size, i11 - i10);
        }
        th2.a(0, this.f39176b, i10, size);
        this.f39177c += size;
        return true;
    }
}
