package com.google.common.collect;

import com.google.common.collect.V1;
import java.util.Comparator;
import javax.annotation.CheckForNull;

@X
@v2.c
public final class C12577u2<E> extends AbstractC12580v1<E> {

    public static final long[] f66912j = {0};

    public static final AbstractC12580v1<Comparable> f66913k = new C12577u2(Ordering.A());

    @v2.d
    public final transient C12581v2<E> f66914f;

    public final transient long[] f66915g;

    public final transient int f66916h;

    public final transient int f66917i;

    public C12577u2(Comparator<? super E> comparator) {
        this.f66914f = AbstractC12588x1.c0(comparator);
        this.f66915g = f66912j;
        this.f66916h = 0;
        this.f66917i = 0;
    }

    @Override
    public int Ad(@CheckForNull Object obj) {
        int indexOf = this.f66914f.indexOf(obj);
        if (indexOf >= 0) {
            return j0(indexOf);
        }
        return 0;
    }

    @Override
    public AbstractC12588x1<E> S1() {
        return this.f66914f;
    }

    @Override
    public AbstractC12580v1<E> B7(E e10, EnumC12586x enumC12586x) {
        return k0(0, this.f66914f.B0(e10, w2.H.E(enumC12586x) == EnumC12586x.CLOSED));
    }

    @Override
    @CheckForNull
    public V1.a<E> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return v(0);
    }

    @Override
    public boolean h() {
        return this.f66916h > 0 || this.f66917i < this.f66915g.length - 1;
    }

    @Override
    public AbstractC12580v1<E> Jd(E e10, EnumC12586x enumC12586x) {
        return k0(this.f66914f.C0(e10, w2.H.E(enumC12586x) == EnumC12586x.CLOSED), this.f66917i);
    }

    public final int j0(int i10) {
        long[] jArr = this.f66915g;
        int i11 = this.f66916h;
        return (int) (jArr[(i11 + i10) + 1] - jArr[i11 + i10]);
    }

    public AbstractC12580v1<E> k0(int i10, int i11) {
        w2.H.f0(i10, i11, this.f66917i);
        return i10 == i11 ? AbstractC12580v1.V(comparator()) : (i10 == 0 && i11 == this.f66917i) ? this : new C12577u2(this.f66914f.z0(i10, i11), this.f66915g, this.f66916h + i10, i11 - i10);
    }

    @Override
    @CheckForNull
    public V1.a<E> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return v(this.f66917i - 1);
    }

    @Override
    public int size() {
        long[] jArr = this.f66915g;
        int i10 = this.f66916h;
        return com.google.common.primitives.l.x(jArr[this.f66917i + i10] - jArr[i10]);
    }

    @Override
    public V1.a<E> v(int i10) {
        return W1.k(this.f66914f.a().get(i10), j0(i10));
    }

    public C12577u2(C12581v2<E> c12581v2, long[] jArr, int i10, int i11) {
        this.f66914f = c12581v2;
        this.f66915g = jArr;
        this.f66916h = i10;
        this.f66917i = i11;
    }
}
