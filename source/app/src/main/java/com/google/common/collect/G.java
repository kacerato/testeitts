package com.google.common.collect;

import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

@X
@v2.c
public class G<K, V> extends D<K, V> {

    public static final int f65767r = -2;

    @v2.d
    @CheckForNull
    public transient long[] f65768n;

    public transient int f65769o;

    public transient int f65770p;

    public final boolean f65771q;

    public G() {
        this(3);
    }

    public static <K, V> G<K, V> g0() {
        return new G<>();
    }

    public static <K, V> G<K, V> h0(int i10) {
        return new G<>(i10);
    }

    @Override
    public int C() {
        return this.f65769o;
    }

    @Override
    public int D(int i10) {
        return ((int) j0(i10)) - 1;
    }

    @Override
    public void I(int i10) {
        super.I(i10);
        this.f65769o = -2;
        this.f65770p = -2;
    }

    @Override
    public void J(int i10, @InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10, int i11, int i12) {
        super.J(i10, k10, v10, i11, i12);
        n0(this.f65770p, i10);
        n0(i10, -2);
    }

    @Override
    public void M(int i10, int i11) {
        int size = size() - 1;
        super.M(i10, i11);
        n0(i0(i10), D(i10));
        if (i10 < size) {
            n0(i0(size), i10);
            n0(i10, D(size));
        }
        l0(size, 0L);
    }

    @Override
    public void V(int i10) {
        super.V(i10);
        this.f65768n = Arrays.copyOf(k0(), i10);
    }

    @Override
    public void clear() {
        if (N()) {
            return;
        }
        this.f65769o = -2;
        this.f65770p = -2;
        long[] jArr = this.f65768n;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    public final int i0(int i10) {
        return ((int) (j0(i10) >>> 32)) - 1;
    }

    public final long j0(int i10) {
        return k0()[i10];
    }

    public final long[] k0() {
        long[] jArr = this.f65768n;
        Objects.requireNonNull(jArr);
        return jArr;
    }

    public final void l0(int i10, long j10) {
        k0()[i10] = j10;
    }

    public final void m0(int i10, int i11) {
        l0(i10, (j0(i10) & 4294967295L) | ((i11 + 1) << 32));
    }

    public final void n0(int i10, int i11) {
        if (i10 == -2) {
            this.f65769o = i11;
        } else {
            o0(i10, i11);
        }
        if (i11 == -2) {
            this.f65770p = i10;
        } else {
            m0(i11, i10);
        }
    }

    @Override
    public void o(int i10) {
        if (this.f65771q) {
            n0(i0(i10), D(i10));
            n0(this.f65770p, i10);
            n0(i10, -2);
            F();
        }
    }

    public final void o0(int i10, int i11) {
        l0(i10, (j0(i10) & C12510d2.f66536l) | ((i11 + 1) & 4294967295L));
    }

    @Override
    public int p(int i10, int i11) {
        return i10 >= size() ? i11 : i10;
    }

    @Override
    public int q() {
        int q10 = super.q();
        this.f65768n = new long[q10];
        return q10;
    }

    @Override
    @I2.a
    public Map<K, V> r() {
        Map<K, V> r10 = super.r();
        this.f65768n = null;
        return r10;
    }

    @Override
    public Map<K, V> v(int i10) {
        return new LinkedHashMap(i10, 1.0f, this.f65771q);
    }

    public G(int i10) {
        this(i10, false);
    }

    public G(int i10, boolean z10) {
        super(i10);
        this.f65771q = z10;
    }
}
