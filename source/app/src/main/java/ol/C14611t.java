package ol;

import java.util.HashMap;
import java.util.Map;
import ol.AbstractC14606o;

public class C14611t {

    public static final C14611t f99634A;

    @Deprecated
    public static final C14611t f99635B;

    @Deprecated
    public static final C14611t f99636C;

    @Deprecated
    public static final C14611t f99637D;

    @Deprecated
    public static final C14611t f99638E;

    @Deprecated
    public static final C14611t f99639F;

    @Deprecated
    public static final C14611t f99640G;

    public static final C14611t f99641H;

    public static final C14611t f99642I;

    public static final C14611t f99643J;

    public static final C14611t f99644K;

    public static final C14611t f99645L;

    public static final C14611t f99646M;

    public static final Map<Integer, C14611t> f99647N;

    public static final C14611t f99648d;

    public static final C14611t f99649e;

    public static final C14611t f99650f;

    public static final C14611t f99651g;

    public static final C14611t f99652h;

    public static final C14611t f99653i;

    public static final C14611t f99654j;

    public static final C14611t f99655k;

    public static final C14611t f99656l;

    public static final C14611t f99657m;

    public static final C14611t f99658n;

    public static final C14611t f99659o;

    public static final C14611t f99660p;

    public static final C14611t f99661q;

    public static final C14611t f99662r;

    public static final C14611t f99663s;

    public static final C14611t f99664t;

    public static final C14611t f99665u;

    public static final C14611t f99666v;

    public static final C14611t f99667w;

    public static final C14611t f99668x;

    public static final C14611t f99669y;

    public static final C14611t f99670z;

    public final Integer f99671a;

    public final String f99672b;

    public final InterfaceC14607p f99673c;

    public static class a implements InterfaceC14607p {

        public final boolean f99674a;

        public final int f99675b;

        public final int f99676c;

        public final int f99677d;

        public final int f99678e;

        public final int f99679f;

        public final int f99680g;

        public a(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f99674a = z10;
            this.f99675b = i10;
            this.f99676c = i11;
            this.f99677d = i12;
            this.f99678e = i13;
            this.f99679f = i14;
            this.f99680g = i15;
        }

        @Override
        public AbstractC14606o get() {
            return new AbstractC14606o.a(this.f99674a, this.f99675b, this.f99676c, this.f99677d, this.f99678e, this.f99679f, this.f99680g);
        }

        @Override
        public int getN() {
            return this.f99675b;
        }
    }

    public static class b implements InterfaceC14607p {

        public final boolean f99681a;

        public final int f99682b;

        public final int f99683c;

        public final int f99684d;

        public final int f99685e;

        public final int f99686f;

        public final int f99687g;

        public b(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f99681a = z10;
            this.f99682b = i10;
            this.f99683c = i11;
            this.f99684d = i12;
            this.f99685e = i13;
            this.f99686f = i14;
            this.f99687g = i15;
        }

        @Override
        public AbstractC14606o get() {
            return new AbstractC14606o.b(this.f99681a, this.f99682b, this.f99683c, this.f99684d, this.f99685e, this.f99686f, this.f99687g);
        }

        @Override
        public int getN() {
            return this.f99682b;
        }
    }

    public static class c implements InterfaceC14607p {

        public final boolean f99688a;

        public final int f99689b;

        public final int f99690c;

        public final int f99691d;

        public final int f99692e;

        public final int f99693f;

        public final int f99694g;

        public c(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f99688a = z10;
            this.f99689b = i10;
            this.f99690c = i11;
            this.f99691d = i12;
            this.f99692e = i13;
            this.f99693f = i14;
            this.f99694g = i15;
        }

        @Override
        public AbstractC14606o get() {
            return new AbstractC14606o.c(this.f99688a, this.f99689b, this.f99690c, this.f99691d, this.f99692e, this.f99693f, this.f99694g);
        }

        @Override
        public int getN() {
            return this.f99689b;
        }
    }

    static {
        C14611t c14611t = new C14611t(org.bouncycastle.util.k.j(65793), "sha2-128f-robust", new b(true, 16, 16, 22, 6, 33, 66));
        f99648d = c14611t;
        C14611t c14611t2 = new C14611t(org.bouncycastle.util.k.j(65794), "sha2-128s-robust", new b(true, 16, 16, 7, 12, 14, 63));
        f99649e = c14611t2;
        C14611t c14611t3 = new C14611t(org.bouncycastle.util.k.j(65795), "sha2-192f-robust", new b(true, 24, 16, 22, 8, 33, 66));
        f99650f = c14611t3;
        C14611t c14611t4 = new C14611t(org.bouncycastle.util.k.j(65796), "sha2-192s-robust", new b(true, 24, 16, 7, 14, 17, 63));
        f99651g = c14611t4;
        C14611t c14611t5 = new C14611t(org.bouncycastle.util.k.j(65797), "sha2-256f-robust", new b(true, 32, 16, 17, 9, 35, 68));
        f99652h = c14611t5;
        C14611t c14611t6 = new C14611t(org.bouncycastle.util.k.j(65798), "sha2-256s-robust", new b(true, 32, 16, 8, 14, 22, 64));
        f99653i = c14611t6;
        C14611t c14611t7 = new C14611t(org.bouncycastle.util.k.j(66049), "sha2-128f", new b(false, 16, 16, 22, 6, 33, 66));
        f99654j = c14611t7;
        C14611t c14611t8 = new C14611t(org.bouncycastle.util.k.j(66050), "sha2-128s", new b(false, 16, 16, 7, 12, 14, 63));
        f99655k = c14611t8;
        C14611t c14611t9 = new C14611t(org.bouncycastle.util.k.j(66051), "sha2-192f", new b(false, 24, 16, 22, 8, 33, 66));
        f99656l = c14611t9;
        C14611t c14611t10 = new C14611t(org.bouncycastle.util.k.j(66052), "sha2-192s", new b(false, 24, 16, 7, 14, 17, 63));
        f99657m = c14611t10;
        C14611t c14611t11 = new C14611t(org.bouncycastle.util.k.j(66053), "sha2-256f", new b(false, 32, 16, 17, 9, 35, 68));
        f99658n = c14611t11;
        C14611t c14611t12 = new C14611t(org.bouncycastle.util.k.j(66054), "sha2-256s", new b(false, 32, 16, 8, 14, 22, 64));
        f99659o = c14611t12;
        C14611t c14611t13 = new C14611t(org.bouncycastle.util.k.j(131329), "shake-128f-robust", new c(true, 16, 16, 22, 6, 33, 66));
        f99660p = c14611t13;
        C14611t c14611t14 = new C14611t(org.bouncycastle.util.k.j(131330), "shake-128s-robust", new c(true, 16, 16, 7, 12, 14, 63));
        f99661q = c14611t14;
        C14611t c14611t15 = new C14611t(org.bouncycastle.util.k.j(131331), "shake-192f-robust", new c(true, 24, 16, 22, 8, 33, 66));
        f99662r = c14611t15;
        C14611t c14611t16 = new C14611t(org.bouncycastle.util.k.j(131332), "shake-192s-robust", new c(true, 24, 16, 7, 14, 17, 63));
        f99663s = c14611t16;
        C14611t c14611t17 = new C14611t(org.bouncycastle.util.k.j(131333), "shake-256f-robust", new c(true, 32, 16, 17, 9, 35, 68));
        f99664t = c14611t17;
        C14611t c14611t18 = new C14611t(org.bouncycastle.util.k.j(131334), "shake-256s-robust", new c(true, 32, 16, 8, 14, 22, 64));
        f99665u = c14611t18;
        C14611t c14611t19 = new C14611t(org.bouncycastle.util.k.j(131585), "shake-128f", new c(false, 16, 16, 22, 6, 33, 66));
        f99666v = c14611t19;
        C14611t c14611t20 = new C14611t(org.bouncycastle.util.k.j(131586), "shake-128s", new c(false, 16, 16, 7, 12, 14, 63));
        f99667w = c14611t20;
        C14611t c14611t21 = new C14611t(org.bouncycastle.util.k.j(131587), "shake-192f", new c(false, 24, 16, 22, 8, 33, 66));
        f99668x = c14611t21;
        C14611t c14611t22 = new C14611t(org.bouncycastle.util.k.j(131588), "shake-192s", new c(false, 24, 16, 7, 14, 17, 63));
        f99669y = c14611t22;
        C14611t c14611t23 = new C14611t(org.bouncycastle.util.k.j(131589), "shake-256f", new c(false, 32, 16, 17, 9, 35, 68));
        f99670z = c14611t23;
        C14611t c14611t24 = new C14611t(org.bouncycastle.util.k.j(131590), "shake-256s", new c(false, 32, 16, 8, 14, 22, 64));
        f99634A = c14611t24;
        C14611t c14611t25 = new C14611t(org.bouncycastle.util.k.j(196865), "haraka-128f-robust", new a(true, 16, 16, 22, 6, 33, 66));
        f99635B = c14611t25;
        C14611t c14611t26 = new C14611t(org.bouncycastle.util.k.j(196866), "haraka-128s-robust", new a(true, 16, 16, 7, 12, 14, 63));
        f99636C = c14611t26;
        C14611t c14611t27 = new C14611t(org.bouncycastle.util.k.j(196867), "haraka-192f-robust", new a(true, 24, 16, 22, 8, 33, 66));
        f99637D = c14611t27;
        C14611t c14611t28 = new C14611t(org.bouncycastle.util.k.j(196868), "haraka-192s-robust", new a(true, 24, 16, 7, 14, 17, 63));
        f99638E = c14611t28;
        C14611t c14611t29 = new C14611t(org.bouncycastle.util.k.j(196869), "haraka-256f-robust", new a(true, 32, 16, 17, 9, 35, 68));
        f99639F = c14611t29;
        C14611t c14611t30 = new C14611t(org.bouncycastle.util.k.j(196870), "haraka-256s-robust", new a(true, 32, 16, 8, 14, 22, 64));
        f99640G = c14611t30;
        C14611t c14611t31 = new C14611t(org.bouncycastle.util.k.j(197121), "haraka-128f-simple", new a(false, 16, 16, 22, 6, 33, 66));
        f99641H = c14611t31;
        C14611t c14611t32 = new C14611t(org.bouncycastle.util.k.j(197122), "haraka-128s-simple", new a(false, 16, 16, 7, 12, 14, 63));
        f99642I = c14611t32;
        C14611t c14611t33 = new C14611t(org.bouncycastle.util.k.j(197123), "haraka-192f-simple", new a(false, 24, 16, 22, 8, 33, 66));
        f99643J = c14611t33;
        C14611t c14611t34 = new C14611t(org.bouncycastle.util.k.j(197124), "haraka-192s-simple", new a(false, 24, 16, 7, 14, 17, 63));
        f99644K = c14611t34;
        C14611t c14611t35 = new C14611t(org.bouncycastle.util.k.j(197125), "haraka-256f-simple", new a(false, 32, 16, 17, 9, 35, 68));
        f99645L = c14611t35;
        C14611t c14611t36 = new C14611t(org.bouncycastle.util.k.j(197126), "haraka-256s-simple", new a(false, 32, 16, 8, 14, 22, 64));
        f99646M = c14611t36;
        f99647N = new HashMap();
        C14611t[] c14611tArr = {c14611t, c14611t2, c14611t3, c14611t4, c14611t5, c14611t6, c14611t7, c14611t8, c14611t9, c14611t10, c14611t11, c14611t12, c14611t13, c14611t14, c14611t15, c14611t16, c14611t17, c14611t18, c14611t19, c14611t20, c14611t21, c14611t22, c14611t23, c14611t24, c14611t25, c14611t26, c14611t27, c14611t28, c14611t29, c14611t30, c14611t31, c14611t32, c14611t33, c14611t34, c14611t35, c14611t36};
        for (int i10 = 0; i10 < 36; i10++) {
            C14611t c14611t37 = c14611tArr[i10];
            f99647N.put(c14611t37.c(), c14611t37);
        }
    }

    public C14611t(Integer num, String str, InterfaceC14607p interfaceC14607p) {
        this.f99671a = num;
        this.f99672b = str;
        this.f99673c = interfaceC14607p;
    }

    public static Integer d(C14611t c14611t) {
        return c14611t.c();
    }

    public static C14611t g(Integer num) {
        return f99647N.get(num);
    }

    public byte[] a() {
        return org.bouncycastle.util.p.k(c().intValue());
    }

    public AbstractC14606o b() {
        return this.f99673c.get();
    }

    public Integer c() {
        return this.f99671a;
    }

    public int e() {
        return this.f99673c.getN();
    }

    public String f() {
        return this.f99672b;
    }
}
