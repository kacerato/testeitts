package com.google.common.collect;

import java.util.Arrays;

@X
@v2.b(emulated = true, serializable = true)
public class C12514e2<K> extends C12510d2<K> {

    public static final int f66607r = -2;

    @v2.d
    public transient long[] f66608o;

    public transient int f66609p;

    public transient int f66610q;

    public C12514e2() {
        this(3);
    }

    public static <K> C12514e2<K> F() {
        return new C12514e2<>();
    }

    public static <K> C12514e2<K> G(int i10) {
        return new C12514e2<>(i10);
    }

    public final int H(int i10) {
        return (int) (this.f66608o[i10] >>> 32);
    }

    public final int I(int i10) {
        return (int) this.f66608o[i10];
    }

    public final void J(int i10, int i11) {
        long[] jArr = this.f66608o;
        jArr[i10] = (jArr[i10] & 4294967295L) | (i11 << 32);
    }

    public final void K(int i10, int i11) {
        if (i10 == -2) {
            this.f66609p = i11;
        } else {
            L(i10, i11);
        }
        if (i11 == -2) {
            this.f66610q = i10;
        } else {
            J(i11, i10);
        }
    }

    public final void L(int i10, int i11) {
        long[] jArr = this.f66608o;
        jArr[i10] = (jArr[i10] & C12510d2.f66536l) | (i11 & 4294967295L);
    }

    @Override
    public void a() {
        super.a();
        this.f66609p = -2;
        this.f66610q = -2;
    }

    @Override
    public int f() {
        int i10 = this.f66609p;
        if (i10 == -2) {
            return -1;
        }
        return i10;
    }

    @Override
    public void o(int i10, float f10) {
        super.o(i10, f10);
        this.f66609p = -2;
        this.f66610q = -2;
        long[] jArr = new long[i10];
        this.f66608o = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override
    public void p(int i10, @InterfaceC12518f2 K k10, int i11, int i12) {
        super.p(i10, k10, i11, i12);
        K(this.f66610q, i10);
        K(i10, -2);
    }

    @Override
    public void q(int i10) {
        int D10 = D() - 1;
        K(H(i10), I(i10));
        if (i10 < D10) {
            K(H(D10), i10);
            K(i10, I(D10));
        }
        super.q(i10);
    }

    @Override
    public int t(int i10) {
        int I10 = I(i10);
        if (I10 == -2) {
            return -1;
        }
        return I10;
    }

    @Override
    public int u(int i10, int i11) {
        return i10 == D() ? i11 : i10;
    }

    @Override
    public void z(int i10) {
        super.z(i10);
        long[] jArr = this.f66608o;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i10);
        this.f66608o = copyOf;
        Arrays.fill(copyOf, length, i10, -1L);
    }

    public C12514e2(int i10) {
        this(i10, 1.0f);
    }

    public C12514e2(int i10, float f10) {
        super(i10, f10);
    }

    public C12514e2(C12510d2<K> c12510d2) {
        o(c12510d2.D(), 1.0f);
        int f10 = c12510d2.f();
        while (f10 != -1) {
            v(c12510d2.j(f10), c12510d2.l(f10));
            f10 = c12510d2.t(f10);
        }
    }
}
