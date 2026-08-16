package com.google.common.collect;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.annotation.CheckForNull;

@X
@v2.b
public final class U2<T> {

    public final int f66308a;

    public final Comparator<? super T> f66309b;

    public final T[] f66310c;

    public int f66311d;

    @CheckForNull
    public T f66312e;

    public U2(Comparator<? super T> comparator, int i10) {
        this.f66309b = (Comparator) w2.H.F(comparator, "comparator");
        this.f66308a = i10;
        w2.H.k(i10 >= 0, "k (%s) must be >= 0", i10);
        w2.H.k(i10 <= 1073741823, "k (%s) must be <= Integer.MAX_VALUE / 2", i10);
        this.f66310c = (T[]) new Object[E2.f.d(i10, 2)];
        this.f66311d = 0;
        this.f66312e = null;
    }

    public static <T extends Comparable<? super T>> U2<T> a(int i10) {
        return b(i10, Ordering.A());
    }

    public static <T> U2<T> b(int i10, Comparator<? super T> comparator) {
        return new U2<>(Ordering.i(comparator).F(), i10);
    }

    public static <T extends Comparable<? super T>> U2<T> c(int i10) {
        return d(i10, Ordering.A());
    }

    public static <T> U2<T> d(int i10, Comparator<? super T> comparator) {
        return new U2<>(comparator, i10);
    }

    public void e(@InterfaceC12518f2 T t10) {
        int i10 = this.f66308a;
        if (i10 == 0) {
            return;
        }
        int i11 = this.f66311d;
        if (i11 == 0) {
            this.f66310c[0] = t10;
            this.f66312e = t10;
            this.f66311d = 1;
            return;
        }
        if (i11 < i10) {
            T[] tArr = this.f66310c;
            this.f66311d = i11 + 1;
            tArr[i11] = t10;
            if (this.f66309b.compare(t10, (Object) Z1.a(this.f66312e)) > 0) {
                this.f66312e = t10;
                return;
            }
            return;
        }
        if (this.f66309b.compare(t10, (Object) Z1.a(this.f66312e)) < 0) {
            T[] tArr2 = this.f66310c;
            int i12 = this.f66311d;
            int i13 = i12 + 1;
            this.f66311d = i13;
            tArr2[i12] = t10;
            if (i13 == this.f66308a * 2) {
                k();
            }
        }
    }

    public void f(Iterable<? extends T> iterable) {
        g(iterable.iterator());
    }

    public void g(Iterator<? extends T> it) {
        while (it.hasNext()) {
            e(it.next());
        }
    }

    public final int h(int i10, int i11, int i12) {
        Object a10 = Z1.a(this.f66310c[i12]);
        T[] tArr = this.f66310c;
        tArr[i12] = tArr[i11];
        int i13 = i10;
        while (i10 < i11) {
            if (this.f66309b.compare((Object) Z1.a(this.f66310c[i10]), a10) < 0) {
                i(i13, i10);
                i13++;
            }
            i10++;
        }
        T[] tArr2 = this.f66310c;
        tArr2[i11] = tArr2[i13];
        tArr2[i13] = a10;
        return i13;
    }

    public final void i(int i10, int i11) {
        T[] tArr = this.f66310c;
        T t10 = tArr[i10];
        tArr[i10] = tArr[i11];
        tArr[i11] = t10;
    }

    public List<T> j() {
        Arrays.sort(this.f66310c, 0, this.f66311d, this.f66309b);
        int i10 = this.f66311d;
        int i11 = this.f66308a;
        if (i10 > i11) {
            T[] tArr = this.f66310c;
            Arrays.fill(tArr, i11, tArr.length, (Object) null);
            int i12 = this.f66308a;
            this.f66311d = i12;
            this.f66312e = this.f66310c[i12 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(this.f66310c, this.f66311d)));
    }

    public final void k() {
        int i10 = (this.f66308a * 2) - 1;
        int p10 = E2.f.p(i10, RoundingMode.CEILING) * 3;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            int h10 = h(i11, i10, ((i11 + i10) + 1) >>> 1);
            int i14 = this.f66308a;
            if (h10 <= i14) {
                if (h10 >= i14) {
                    break;
                }
                i11 = Math.max(h10, i11 + 1);
                i13 = h10;
            } else {
                i10 = h10 - 1;
            }
            i12++;
            if (i12 >= p10) {
                Arrays.sort(this.f66310c, i11, i10 + 1, this.f66309b);
                break;
            }
        }
        this.f66311d = this.f66308a;
        this.f66312e = (T) Z1.a(this.f66310c[i13]);
        while (true) {
            i13++;
            if (i13 >= this.f66308a) {
                return;
            }
            if (this.f66309b.compare((Object) Z1.a(this.f66310c[i13]), (Object) Z1.a(this.f66312e)) > 0) {
                this.f66312e = this.f66310c[i13];
            }
        }
    }
}
