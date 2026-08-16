package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public abstract class AbstractC6758cU {

    public int f47054b;

    public int f47055c = -1;

    public int f47056d;

    public boolean f47057e;

    public C7425gU f47058f;

    public final C7091eU f47059g;

    public AbstractC6758cU(C7091eU c7091eU) {
        this.f47059g = c7091eU;
        this.f47054b = c7091eU.f47695f;
        this.f47056d = c7091eU.f47697h;
        this.f47057e = c7091eU.f47694e;
    }

    public final int a() {
        int i10;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f47056d--;
        if (this.f47057e) {
            this.f47057e = false;
            int i11 = this.f47059g.f47695f;
            this.f47055c = i11;
            return i11;
        }
        long[] jArr = this.f47059g.f47691b;
        do {
            i10 = this.f47054b - 1;
            this.f47054b = i10;
            if (i10 < 0) {
                this.f47055c = Integer.MIN_VALUE;
                long d10 = this.f47058f.d((-i10) - 1);
                int a10 = (int) AbstractC7878jA.a(d10);
                int i12 = this.f47059g.f47693d;
                while (true) {
                    int i13 = a10 & i12;
                    if (d10 == jArr[i13]) {
                        return i13;
                    }
                    a10 = i13 + 1;
                    i12 = this.f47059g.f47693d;
                }
            }
        } while (jArr[i10] == 0);
        this.f47055c = i10;
        return i10;
    }

    public final boolean hasNext() {
        return this.f47056d != 0;
    }

    public void remove() {
        long j10;
        int i10 = this.f47055c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        C7091eU c7091eU = this.f47059g;
        int i11 = c7091eU.f47695f;
        if (i10 == i11) {
            c7091eU.f47694e = false;
            c7091eU.f47692c[i11] = null;
        } else {
            if (this.f47054b < 0) {
                c7091eU.c(this.f47058f.d((-r3) - 1));
                this.f47055c = -1;
                return;
            }
            long[] jArr = c7091eU.f47691b;
            loop0: while (true) {
                int i12 = (i10 + 1) & this.f47059g.f47693d;
                while (true) {
                    j10 = jArr[i12];
                    if (j10 == 0) {
                        break loop0;
                    }
                    int a10 = (int) AbstractC7878jA.a(j10);
                    int i13 = this.f47059g.f47693d;
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
                    if (this.f47058f == null) {
                        this.f47058f = new C7425gU(2);
                    }
                    this.f47058f.a(jArr[i12]);
                }
                jArr[i10] = j10;
                Object[] objArr = this.f47059g.f47692c;
                objArr[i10] = objArr[i12];
                i10 = i12;
            }
            jArr[i10] = 0;
            this.f47059g.f47692c[i10] = null;
        }
        C7091eU c7091eU2 = this.f47059g;
        c7091eU2.f47697h--;
        this.f47055c = -1;
    }
}
