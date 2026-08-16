package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public final class C6901dI extends AbstractC6682c0 implements Serializable {

    public transient int[] f47352b;

    public transient int f47353c;

    public transient boolean f47354d;

    public transient int f47355e;

    public transient int f47356f;

    public int f47357g;

    public final float f47358h;

    public C6901dI(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("The expected number of elements must be nonnegative");
        }
        this.f47358h = 0.75f;
        int a10 = AbstractC7878jA.a(i10, 0.75f);
        this.f47355e = a10;
        this.f47353c = a10 - 1;
        this.f47356f = AbstractC7878jA.b(a10, 0.75f);
        this.f47352b = new int[this.f47355e + 1];
    }

    @Override
    public final boolean a(JH jh2) {
        if (this.f47358h <= 0.5d) {
            int a10 = AbstractC7878jA.a(jh2.size(), this.f47358h);
            if (a10 > this.f47355e) {
                k(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((jh2.size() + this.f47357g) / this.f47358h))));
            if (min > this.f47355e) {
                k(min);
            }
        }
        return super.a(jh2);
    }

    @Override
    public final boolean add(int i10) {
        int i11;
        if (i10 != 0) {
            int[] iArr = this.f47352b;
            int a10 = AbstractC7878jA.a(i10) & this.f47353c;
            int i12 = iArr[a10];
            if (i12 != 0) {
                if (i12 == i10) {
                    return false;
                }
                do {
                    a10 = (a10 + 1) & this.f47353c;
                    i11 = iArr[a10];
                    if (i11 != 0) {
                    }
                } while (i11 != i10);
                return false;
            }
            iArr[a10] = i10;
        } else {
            if (this.f47354d) {
                return false;
            }
            this.f47354d = true;
        }
        int i13 = this.f47357g;
        this.f47357g = i13 + 1;
        if (i13 >= this.f47356f) {
            k(AbstractC7878jA.a(i13 + 2, this.f47358h));
        }
        return true;
    }

    @Override
    public final boolean addAll(Collection collection) {
        if (this.f47358h <= 0.5d) {
            int a10 = AbstractC7878jA.a(collection.size(), this.f47358h);
            if (a10 > this.f47355e) {
                k(a10);
            }
        } else {
            int min = (int) Math.min(TagBits.HasDirectWildcard, Math.max(2L, AbstractC7878jA.b((long) Math.ceil((collection.size() + this.f47357g) / this.f47358h))));
            if (min > this.f47355e) {
                k(min);
            }
        }
        return super.addAll(collection);
    }

    @Override
    public final void clear() {
        if (this.f47357g == 0) {
            return;
        }
        this.f47357g = 0;
        this.f47354d = false;
        Arrays.fill(this.f47352b, 0);
    }

    public final Object clone() {
        try {
            C6901dI c6901dI = (C6901dI) super.clone();
            c6901dI.f47352b = (int[]) this.f47352b.clone();
            c6901dI.f47354d = this.f47354d;
            return c6901dI;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean h(int i10) {
        int i11;
        if (i10 == 0) {
            return this.f47354d;
        }
        int[] iArr = this.f47352b;
        int a10 = AbstractC7878jA.a(i10) & this.f47353c;
        int i12 = iArr[a10];
        if (i12 == 0) {
            return false;
        }
        if (i10 == i12) {
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f47353c;
            i11 = iArr[a10];
            if (i11 == 0) {
                return false;
            }
        } while (i10 != i11);
        return true;
    }

    @Override
    public final int hashCode() {
        int i10;
        int i11 = this.f47354d ? this.f47357g - 1 : this.f47357g;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                return i12;
            }
            while (true) {
                i10 = this.f47352b[i13];
                if (i10 == 0) {
                    i13++;
                }
            }
            i12 += i10;
            i13++;
            i11 = i14;
        }
    }

    @Override
    public final boolean isEmpty() {
        return this.f47357g == 0;
    }

    @Override
    public final PH iterator() {
        return new C6734cI(this);
    }

    public final void k(int i10) {
        int i11;
        int[] iArr = this.f47352b;
        int i12 = i10 - 1;
        int[] iArr2 = new int[i10 + 1];
        int i13 = this.f47355e;
        int i14 = this.f47354d ? this.f47357g - 1 : this.f47357g;
        while (true) {
            int i15 = i14 - 1;
            if (i14 == 0) {
                this.f47355e = i10;
                this.f47353c = i12;
                this.f47356f = AbstractC7878jA.b(i10, this.f47358h);
                this.f47352b = iArr2;
                return;
            }
            do {
                i13--;
                i11 = iArr[i13];
            } while (i11 == 0);
            int a10 = AbstractC7878jA.a(i11) & i12;
            if (iArr2[a10] == 0) {
                iArr2[a10] = iArr[i13];
                i14 = i15;
            }
            do {
                a10 = (a10 + 1) & i12;
            } while (iArr2[a10] != 0);
            iArr2[a10] = iArr[i13];
            i14 = i15;
        }
    }

    public final void l(int i10) {
        int i11;
        int i12;
        this.f47357g--;
        int[] iArr = this.f47352b;
        loop0: while (true) {
            int i13 = (i10 + 1) & this.f47353c;
            while (true) {
                i11 = iArr[i13];
                if (i11 == 0) {
                    break loop0;
                }
                int a10 = AbstractC7878jA.a(i11);
                int i14 = this.f47353c;
                int i15 = a10 & i14;
                if (i10 > i13) {
                    if (i10 >= i15 && i15 > i13) {
                        break;
                    }
                    i13 = (i13 + 1) & i14;
                } else if (i10 < i15 && i15 <= i13) {
                    i13 = (i13 + 1) & i14;
                }
            }
            iArr[i10] = i11;
            i10 = i13;
        }
        iArr[i10] = 0;
        if (this.f47357g >= this.f47356f / 4 || (i12 = this.f47355e) <= 16) {
            return;
        }
        k(i12 / 2);
    }

    @Override
    public final boolean remove(int i10) {
        int i11;
        if (i10 == 0) {
            if (!this.f47354d) {
                return false;
            }
            this.f47354d = false;
            int[] iArr = this.f47352b;
            int i12 = this.f47355e;
            iArr[i12] = 0;
            int i13 = this.f47357g - 1;
            this.f47357g = i13;
            if (i13 < this.f47356f / 4 && i12 > 16) {
                k(i12 / 2);
            }
            return true;
        }
        int[] iArr2 = this.f47352b;
        int a10 = AbstractC7878jA.a(i10) & this.f47353c;
        int i14 = iArr2[a10];
        if (i14 == 0) {
            return false;
        }
        if (i10 == i14) {
            l(a10);
            return true;
        }
        do {
            a10 = (a10 + 1) & this.f47353c;
            i11 = iArr2[a10];
            if (i11 == 0) {
                return false;
            }
        } while (i10 != i11);
        l(a10);
        return true;
    }

    @Override
    public final int size() {
        return this.f47357g;
    }

    @Override
    public final Iterator iterator() {
        return new C6734cI(this);
    }
}
