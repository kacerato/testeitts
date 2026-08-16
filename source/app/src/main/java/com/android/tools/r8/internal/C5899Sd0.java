package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C5899Sd0 extends AbstractC6685c1 {

    public int f44253b;

    public int f44254c = -1;

    public int f44255d;

    public boolean f44256e;

    public C5494Ld0 f44257f;

    public final C5957Td0 f44258g;

    public C5899Sd0(C5957Td0 c5957Td0) {
        this.f44258g = c5957Td0;
        this.f44253b = c5957Td0.f44516e;
        this.f44255d = c5957Td0.f44518g;
        this.f44256e = c5957Td0.f44515d;
    }

    @Override
    public final boolean hasNext() {
        return this.f44255d != 0;
    }

    @Override
    public final Object next() {
        int i10;
        Object obj;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f44255d--;
        if (this.f44256e) {
            this.f44256e = false;
            C5957Td0 c5957Td0 = this.f44258g;
            int i11 = c5957Td0.f44516e;
            this.f44254c = i11;
            return c5957Td0.f44513b[i11];
        }
        Object[] objArr = this.f44258g.f44513b;
        do {
            i10 = this.f44253b - 1;
            this.f44253b = i10;
            if (i10 < 0) {
                this.f44254c = Integer.MIN_VALUE;
                return this.f44257f.get((-i10) - 1);
            }
            obj = objArr[i10];
        } while (obj == null);
        this.f44254c = i10;
        return obj;
    }

    @Override
    public final void remove() {
        Object obj;
        int i10 = this.f44254c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        C5957Td0 c5957Td0 = this.f44258g;
        int i11 = c5957Td0.f44516e;
        if (i10 == i11) {
            c5957Td0.f44515d = false;
            c5957Td0.f44513b[i11] = null;
        } else {
            if (this.f44253b < 0) {
                c5957Td0.remove(this.f44257f.set((-r3) - 1, null));
                this.f44254c = -1;
                return;
            }
            Object[] objArr = c5957Td0.f44513b;
            loop0: while (true) {
                int i12 = (i10 + 1) & this.f44258g.f44514c;
                while (true) {
                    obj = objArr[i12];
                    if (obj == null) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(System.identityHashCode(obj));
                    int i13 = this.f44258g.f44514c;
                    int i14 = a10 & i13;
                    if (i10 > i12) {
                        if (i10 >= i14 && i14 > i12) {
                            break;
                        }
                        i12 = (i12 + 1) & i13;
                    } else if (i10 >= i14 || i14 > i12) {
                        break;
                    } else {
                        i12 = (i12 + 1) & i13;
                    }
                }
                if (i12 < i10) {
                    if (this.f44257f == null) {
                        this.f44257f = new C5494Ld0(2);
                    }
                    this.f44257f.add(objArr[i12]);
                }
                objArr[i10] = obj;
                i10 = i12;
            }
            objArr[i10] = null;
        }
        C5957Td0 c5957Td02 = this.f44258g;
        c5957Td02.f44518g--;
        this.f44254c = -1;
    }
}
