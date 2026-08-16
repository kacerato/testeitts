package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;

public final class C6993dt implements T5 {

    public static final boolean f47533f = true;

    public final W5[] f47534a;

    public final W5[] f47535b;

    public final W5 f47536c;

    public final int f47537d;

    public boolean f47538e = false;

    public C6993dt(C7215fB c7215fB, int i10) {
        W5[] w5Arr;
        boolean z10 = f47533f;
        if (!z10 && i10 == 0) {
            throw new AssertionError();
        }
        if (!z10 && i10 != 2 && !c7215fB.n().isEmpty()) {
            throw new AssertionError();
        }
        this.f47536c = new W5(c7215fB.f47902i);
        AbstractC7552hC B10 = c7215fB.B();
        AbstractC4895Av0 it = B10.iterator();
        while (it.hasNext()) {
            W5 w52 = (W5) it.next();
            if (w52.i().g2()) {
                this.f47536c.m().add(w52);
            }
        }
        int size = c7215fB.f47897d.size();
        if (i10 == 2) {
            this.f47534a = new W5[size + 1];
            int y10 = c7215fB.y();
            AbstractC4895Av0 it2 = B10.iterator();
            int i11 = 0;
            while (it2.hasNext()) {
                W5 w53 = (W5) it2.next();
                this.f47534a[i11] = w53;
                w53.c(y10);
                i11++;
            }
            this.f47534a[i11] = this.f47536c;
            int i12 = i11 + 1;
            this.f47537d = i12;
            Iterator<W5> it3 = c7215fB.f47897d.iterator();
            while (it3.hasNext()) {
                W5 next = it3.next();
                if (!next.a(y10)) {
                    this.f47534a[i12] = next;
                    i12++;
                }
            }
            c7215fB.a(y10);
        } else {
            int i13 = size + 1;
            W5[] w5Arr2 = (W5[]) B10.toArray(new W5[i13]);
            this.f47534a = w5Arr2;
            w5Arr2[size] = this.f47536c;
            this.f47537d = i13;
        }
        int i14 = 0;
        while (true) {
            w5Arr = this.f47534a;
            if (i14 >= w5Arr.length) {
                break;
            }
            w5Arr[i14].d(i14);
            i14++;
        }
        W5[] w5Arr3 = new W5[w5Arr.length];
        this.f47535b = w5Arr3;
        w5Arr3[0] = w5Arr[0];
        boolean z11 = true;
        while (z11) {
            z11 = false;
            int i15 = 1;
            while (true) {
                W5[] w5Arr4 = this.f47534a;
                if (i15 < w5Arr4.length) {
                    W5 w54 = w5Arr4[i15];
                    W5 w55 = null;
                    int i16 = -1;
                    for (int i17 = 0; w55 == null && i17 < w54.u().size(); i17++) {
                        W5 w56 = w54.u().get(i17);
                        if (this.f47535b[w56.q()] != null) {
                            i16 = i17;
                            w55 = w56;
                        }
                    }
                    for (int i18 = 0; i18 < w54.u().size(); i18++) {
                        W5 w57 = w54.u().get(i18);
                        if (i18 != i16) {
                            if (this.f47535b[w57.q()] == null) {
                            }
                            while (w57 != w55) {
                                while (w57.q() > w55.q()) {
                                    w57 = this.f47535b[w57.q()];
                                }
                                while (w55.q() > w57.q()) {
                                    w55 = this.f47535b[w55.q()];
                                }
                            }
                            w55 = w57;
                        }
                    }
                    if (this.f47535b[w54.q()] != w55) {
                        this.f47535b[w54.q()] = w55;
                        z11 = true;
                    }
                    i15++;
                }
            }
        }
        if (f47533f) {
            return;
        }
        Iterator<W5> it4 = c7215fB.f47897d.iterator();
        while (it4.hasNext()) {
            it4.next().a(this);
        }
    }

    public final boolean a(W5 w52, W5 w53) {
        boolean z10 = f47533f;
        if (!z10 && this.f47538e) {
            throw new AssertionError();
        }
        if (w52 == w53) {
            return true;
        }
        if (!z10 && this.f47538e) {
            throw new AssertionError();
        }
        if (w52.q() == 0 || w52 == this.f47536c) {
            return false;
        }
        do {
            if (!f47533f && this.f47538e) {
                throw new AssertionError();
            }
            w52 = this.f47535b[w52.q()];
            if (w52.q() < w53.q()) {
                return false;
            }
        } while (w52 != w53);
        return true;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Dominators\n");
        for (W5 w52 : this.f47534a) {
            sb2.append(w52.q());
            sb2.append(": ");
            sb2.append(this.f47535b[w52.q()].q());
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public final Collection a(W5 w52, Collection collection) {
        if (!f47533f && this.f47538e) {
            throw new AssertionError();
        }
        for (int q10 = w52.q(); q10 < this.f47537d; q10++) {
            W5 w53 = this.f47534a[q10];
            if (a(w53, w52)) {
                collection.add(w53);
            }
        }
        return collection;
    }

    public final Iterable a(final W5 w52) {
        final EnumC6827ct enumC6827ct = EnumC6827ct.f47195b;
        if (f47533f || !this.f47538e) {
            return new Iterable() {
                @Override
                public final Iterator iterator() {
                    return C6993dt.this.a(w52, enumC6827ct);
                }
            };
        }
        throw new AssertionError();
    }

    public final Iterator a(W5 w52, EnumC6827ct enumC6827ct) {
        C6661bt c6661bt = new C6661bt(this, w52);
        if (enumC6827ct == EnumC6827ct.f47195b) {
            W5 w53 = (W5) c6661bt.next();
            if (!f47533f && w53 != w52) {
                throw new AssertionError();
            }
        }
        return c6661bt;
    }
}
