package com.google.common.collect;

import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.util.Arrays;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public class C12510d2<K> {

    public static final int f66533i = 1073741824;

    public static final float f66534j = 1.0f;

    public static final long f66535k = 4294967295L;

    public static final long f66536l = -4294967296L;

    public static final int f66537m = 3;

    public static final int f66538n = -1;

    public transient Object[] f66539a;

    public transient int[] f66540b;

    public transient int f66541c;

    public transient int f66542d;

    public transient int[] f66543e;

    @v2.d
    public transient long[] f66544f;

    public transient float f66545g;

    public transient int f66546h;

    public class a extends W1.f<K> {

        @InterfaceC12518f2
        public final K f66547b;

        public int f66548c;

        public a(int i10) {
            this.f66547b = (K) C12510d2.this.f66539a[i10];
            this.f66548c = i10;
        }

        @I2.a
        public int a(int i10) {
            b();
            int i11 = this.f66548c;
            if (i11 == -1) {
                C12510d2.this.v(this.f66547b, i10);
                return 0;
            }
            int[] iArr = C12510d2.this.f66540b;
            int i12 = iArr[i11];
            iArr[i11] = i10;
            return i12;
        }

        public void b() {
            int i10 = this.f66548c;
            if (i10 == -1 || i10 >= C12510d2.this.D() || !w2.B.a(this.f66547b, C12510d2.this.f66539a[this.f66548c])) {
                this.f66548c = C12510d2.this.n(this.f66547b);
            }
        }

        @Override
        public int getCount() {
            b();
            int i10 = this.f66548c;
            if (i10 == -1) {
                return 0;
            }
            return C12510d2.this.f66540b[i10];
        }

        @Override
        @InterfaceC12518f2
        public K getElement() {
            return this.f66547b;
        }
    }

    public C12510d2() {
        o(3, 1.0f);
    }

    public static long E(long j10, int i10) {
        return (j10 & f66536l) | (4294967295L & i10);
    }

    public static <K> C12510d2<K> c() {
        return new C12510d2<>();
    }

    public static <K> C12510d2<K> d(int i10) {
        return new C12510d2<>(i10);
    }

    public static int i(long j10) {
        return (int) (j10 >>> 32);
    }

    public static int k(long j10) {
        return (int) j10;
    }

    public static long[] r(int i10) {
        long[] jArr = new long[i10];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    public static int[] s(int i10) {
        int[] iArr = new int[i10];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    public final void A(int i10) {
        int length = this.f66544f.length;
        if (i10 > length) {
            int max = Math.max(1, length >>> 1) + length;
            if (max < 0) {
                max = Integer.MAX_VALUE;
            }
            if (max != length) {
                z(max);
            }
        }
    }

    public final void B(int i10) {
        if (this.f66543e.length >= 1073741824) {
            this.f66546h = Integer.MAX_VALUE;
            return;
        }
        int i11 = ((int) (i10 * this.f66545g)) + 1;
        int[] s10 = s(i10);
        long[] jArr = this.f66544f;
        int length = s10.length - 1;
        for (int i12 = 0; i12 < this.f66541c; i12++) {
            int i13 = i(jArr[i12]);
            int i14 = i13 & length;
            int i15 = s10[i14];
            s10[i14] = i12;
            jArr[i12] = (i13 << 32) | (i15 & 4294967295L);
        }
        this.f66546h = i11;
        this.f66543e = s10;
    }

    public void C(int i10, int i11) {
        w2.H.C(i10, this.f66541c);
        this.f66540b[i10] = i11;
    }

    public int D() {
        return this.f66541c;
    }

    public void a() {
        this.f66542d++;
        Arrays.fill(this.f66539a, 0, this.f66541c, (Object) null);
        Arrays.fill(this.f66540b, 0, this.f66541c, 0);
        Arrays.fill(this.f66543e, -1);
        Arrays.fill(this.f66544f, -1L);
        this.f66541c = 0;
    }

    public boolean b(@CheckForNull Object obj) {
        return n(obj) != -1;
    }

    public void e(int i10) {
        if (i10 > this.f66544f.length) {
            z(i10);
        }
        if (i10 >= this.f66546h) {
            B(Math.max(2, Integer.highestOneBit(i10 - 1) << 1));
        }
    }

    public int f() {
        return this.f66541c == 0 ? -1 : 0;
    }

    public int g(@CheckForNull Object obj) {
        int n10 = n(obj);
        if (n10 == -1) {
            return 0;
        }
        return this.f66540b[n10];
    }

    public V1.a<K> h(int i10) {
        w2.H.C(i10, this.f66541c);
        return new a(i10);
    }

    @InterfaceC12518f2
    public K j(int i10) {
        w2.H.C(i10, this.f66541c);
        return (K) this.f66539a[i10];
    }

    public int l(int i10) {
        w2.H.C(i10, this.f66541c);
        return this.f66540b[i10];
    }

    public final int m() {
        return this.f66543e.length - 1;
    }

    public int n(@CheckForNull Object obj) {
        int d10 = Y0.d(obj);
        int i10 = this.f66543e[m() & d10];
        while (i10 != -1) {
            long j10 = this.f66544f[i10];
            if (i(j10) == d10 && w2.B.a(obj, this.f66539a[i10])) {
                return i10;
            }
            i10 = k(j10);
        }
        return -1;
    }

    public void o(int i10, float f10) {
        w2.H.e(i10 >= 0, "Initial capacity must be non-negative");
        w2.H.e(f10 > 0.0f, "Illegal load factor");
        int a10 = Y0.a(i10, f10);
        this.f66543e = s(a10);
        this.f66545g = f10;
        this.f66539a = new Object[i10];
        this.f66540b = new int[i10];
        this.f66544f = r(i10);
        this.f66546h = Math.max(1, (int) (a10 * f10));
    }

    public void p(int i10, @InterfaceC12518f2 K k10, int i11, int i12) {
        this.f66544f[i10] = (i12 << 32) | 4294967295L;
        this.f66539a[i10] = k10;
        this.f66540b[i10] = i11;
    }

    public void q(int i10) {
        int D10 = D() - 1;
        if (i10 >= D10) {
            this.f66539a[i10] = null;
            this.f66540b[i10] = 0;
            this.f66544f[i10] = -1;
            return;
        }
        Object[] objArr = this.f66539a;
        objArr[i10] = objArr[D10];
        int[] iArr = this.f66540b;
        iArr[i10] = iArr[D10];
        objArr[D10] = null;
        iArr[D10] = 0;
        long[] jArr = this.f66544f;
        long j10 = jArr[D10];
        jArr[i10] = j10;
        jArr[D10] = -1;
        int i11 = i(j10) & m();
        int[] iArr2 = this.f66543e;
        int i12 = iArr2[i11];
        if (i12 == D10) {
            iArr2[i11] = i10;
            return;
        }
        while (true) {
            long j11 = this.f66544f[i12];
            int k10 = k(j11);
            if (k10 == D10) {
                this.f66544f[i12] = E(j11, i10);
                return;
            }
            i12 = k10;
        }
    }

    public int t(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.f66541c) {
            return i11;
        }
        return -1;
    }

    public int u(int i10, int i11) {
        return i10 - 1;
    }

    @I2.a
    public int v(@InterfaceC12518f2 K k10, int i10) {
        B.d(i10, oc.c.f98682m);
        long[] jArr = this.f66544f;
        Object[] objArr = this.f66539a;
        int[] iArr = this.f66540b;
        int d10 = Y0.d(k10);
        int m10 = m() & d10;
        int i11 = this.f66541c;
        int[] iArr2 = this.f66543e;
        int i12 = iArr2[m10];
        if (i12 == -1) {
            iArr2[m10] = i11;
        } else {
            while (true) {
                long j10 = jArr[i12];
                if (i(j10) == d10 && w2.B.a(k10, objArr[i12])) {
                    int i13 = iArr[i12];
                    iArr[i12] = i10;
                    return i13;
                }
                int k11 = k(j10);
                if (k11 == -1) {
                    jArr[i12] = E(j10, i11);
                    break;
                }
                i12 = k11;
            }
        }
        if (i11 == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i14 = i11 + 1;
        A(i14);
        p(i11, k10, i10, d10);
        this.f66541c = i14;
        if (i11 >= this.f66546h) {
            B(this.f66543e.length * 2);
        }
        this.f66542d++;
        return 0;
    }

    @I2.a
    public int w(@CheckForNull Object obj) {
        return x(obj, Y0.d(obj));
    }

    public final int x(@CheckForNull Object obj, int i10) {
        int m10 = m() & i10;
        int i11 = this.f66543e[m10];
        if (i11 == -1) {
            return 0;
        }
        int i12 = -1;
        while (true) {
            if (i(this.f66544f[i11]) == i10 && w2.B.a(obj, this.f66539a[i11])) {
                int i13 = this.f66540b[i11];
                if (i12 == -1) {
                    this.f66543e[m10] = k(this.f66544f[i11]);
                } else {
                    long[] jArr = this.f66544f;
                    jArr[i12] = E(jArr[i12], k(jArr[i11]));
                }
                q(i11);
                this.f66541c--;
                this.f66542d++;
                return i13;
            }
            int k10 = k(this.f66544f[i11]);
            if (k10 == -1) {
                return 0;
            }
            i12 = i11;
            i11 = k10;
        }
    }

    @I2.a
    public int y(int i10) {
        return x(this.f66539a[i10], i(this.f66544f[i10]));
    }

    public void z(int i10) {
        this.f66539a = Arrays.copyOf(this.f66539a, i10);
        this.f66540b = Arrays.copyOf(this.f66540b, i10);
        long[] jArr = this.f66544f;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i10);
        if (i10 > length) {
            Arrays.fill(copyOf, length, i10, -1L);
        }
        this.f66544f = copyOf;
    }

    public C12510d2(C12510d2<? extends K> c12510d2) {
        o(c12510d2.D(), 1.0f);
        int f10 = c12510d2.f();
        while (f10 != -1) {
            v(c12510d2.j(f10), c12510d2.l(f10));
            f10 = c12510d2.t(f10);
        }
    }

    public C12510d2(int i10) {
        this(i10, 1.0f);
    }

    public C12510d2(int i10, float f10) {
        o(i10, f10);
    }
}
