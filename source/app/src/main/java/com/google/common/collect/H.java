package com.google.common.collect;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.c
public class H<E> extends E<E> {

    public static final int f65778m = -2;

    @CheckForNull
    public transient int[] f65779i;

    @CheckForNull
    public transient int[] f65780j;

    public transient int f65781k;

    public transient int f65782l;

    public H() {
    }

    public static <E> H<E> N() {
        return new H<>();
    }

    public static <E> H<E> O(Collection<? extends E> collection) {
        H<E> Q10 = Q(collection.size());
        Q10.addAll(collection);
        return Q10;
    }

    @SafeVarargs
    public static <E> H<E> P(E... eArr) {
        H<E> Q10 = Q(eArr.length);
        Collections.addAll(Q10, eArr);
        return Q10;
    }

    public static <E> H<E> Q(int i10) {
        return new H<>(i10);
    }

    @Override
    public void F(int i10) {
        super.F(i10);
        this.f65779i = Arrays.copyOf(S(), i10);
        this.f65780j = Arrays.copyOf(T(), i10);
    }

    public final int R(int i10) {
        return S()[i10] - 1;
    }

    public final int[] S() {
        int[] iArr = this.f65779i;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final int[] T() {
        int[] iArr = this.f65780j;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final void U(int i10, int i11) {
        S()[i10] = i11 + 1;
    }

    public final void V(int i10, int i11) {
        if (i10 == -2) {
            this.f65781k = i11;
        } else {
            W(i10, i11);
        }
        if (i11 == -2) {
            this.f65782l = i10;
        } else {
            U(i11, i10);
        }
    }

    public final void W(int i10, int i11) {
        T()[i10] = i11 + 1;
    }

    @Override
    public void clear() {
        if (A()) {
            return;
        }
        this.f65781k = -2;
        this.f65782l = -2;
        int[] iArr = this.f65779i;
        if (iArr != null && this.f65780j != null) {
            Arrays.fill(iArr, 0, size(), 0);
            Arrays.fill(this.f65780j, 0, size(), 0);
        }
        super.clear();
    }

    @Override
    public int e(int i10, int i11) {
        return i10 >= size() ? i11 : i10;
    }

    @Override
    public int g() {
        int g10 = super.g();
        this.f65779i = new int[g10];
        this.f65780j = new int[g10];
        return g10;
    }

    @Override
    @I2.a
    public Set<E> h() {
        Set<E> h10 = super.h();
        this.f65779i = null;
        this.f65780j = null;
        return h10;
    }

    @Override
    public int r() {
        return this.f65781k;
    }

    @Override
    public int s(int i10) {
        return T()[i10] - 1;
    }

    @Override
    public Object[] toArray() {
        return C12506c2.l(this);
    }

    @Override
    public void w(int i10) {
        super.w(i10);
        this.f65781k = -2;
        this.f65782l = -2;
    }

    @Override
    public void x(int i10, @InterfaceC12518f2 E e10, int i11, int i12) {
        super.x(i10, e10, i11, i12);
        V(this.f65782l, i10);
        V(i10, -2);
    }

    @Override
    public void z(int i10, int i11) {
        int size = size() - 1;
        super.z(i10, i11);
        V(R(i10), s(i10));
        if (i10 < size) {
            V(R(size), i10);
            V(i10, s(size));
        }
        S()[size] = 0;
        T()[size] = 0;
    }

    public H(int i10) {
        super(i10);
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) C12506c2.m(this, tArr);
    }
}
