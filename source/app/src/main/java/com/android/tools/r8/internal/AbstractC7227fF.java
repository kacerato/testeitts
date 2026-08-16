package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC7227fF {

    public int f47912b;

    public int f47913c = -1;

    public int f47914d;

    public boolean f47915e;

    public CH f47916f;

    public final C7561hF f47917g;

    public AbstractC7227fF(C7561hF c7561hF) {
        this.f47917g = c7561hF;
        this.f47912b = c7561hF.f48512g;
        this.f47914d = c7561hF.f48514i;
        this.f47915e = c7561hF.f48511f;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f47914d--;
        if (this.f47915e) {
            this.f47915e = false;
            int i11 = this.f47917g.f48512g;
            this.f47913c = i11;
            return i11;
        }
        int[] iArr = this.f47917g.f48508c;
        do {
            i10 = this.f47912b - 1;
            this.f47912b = i10;
            if (i10 < 0) {
                this.f47913c = Integer.MIN_VALUE;
                int c10 = this.f47916f.c((-i10) - 1);
                int a10 = AbstractC7878jA.a(c10);
                int i12 = this.f47917g.f48510e;
                while (true) {
                    int i13 = a10 & i12;
                    if (c10 == iArr[i13]) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f47917g.f48510e;
                }
            }
        } while (iArr[i10] == 0);
        this.f47913c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f47914d != 0;
    }

    public void remove() {
        int i10;
        int i11 = this.f47913c;
        if (i11 == -1) {
            throw new IllegalStateException();
        }
        C7561hF c7561hF = this.f47917g;
        if (i11 == c7561hF.f48512g) {
            c7561hF.f48511f = false;
        } else {
            if (this.f47912b < 0) {
                c7561hF.remove(this.f47916f.c((-r3) - 1));
                this.f47913c = -1;
                return;
            }
            int[] iArr = c7561hF.f48508c;
            loop0: while (true) {
                int i12 = (i11 + 1) & this.f47917g.f48510e;
                while (true) {
                    i10 = iArr[i12];
                    if (i10 == 0) {
                        break loop0;
                    }
                    int a10 = AbstractC7878jA.a(i10);
                    int i13 = this.f47917g.f48510e;
                    int i14 = a10 & i13;
                    if (i11 > i12) {
                        if (i11 >= i14 && i14 > i12) {
                            break;
                        }
                        i12 = (i12 + 1) & i13;
                    } else if (i11 >= i14 || i14 > i12) {
                        break;
                    } else {
                        i12 = (i12 + 1) & i13;
                    }
                }
                if (i12 < i11) {
                    if (this.f47916f == null) {
                        this.f47916f = new CH(2);
                    }
                    this.f47916f.add(iArr[i12]);
                }
                iArr[i11] = i10;
                int[] iArr2 = this.f47917g.f48509d;
                iArr2[i11] = iArr2[i12];
                i11 = i12;
            }
            iArr[i11] = 0;
        }
        C7561hF c7561hF2 = this.f47917g;
        c7561hF2.f48514i--;
        this.f47913c = -1;
    }
}
