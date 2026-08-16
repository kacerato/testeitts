package Xi;

import Bi.InterfaceC2377i;

public class C3333b {

    public static final int f29300j = 0;

    public static final int f29301k = 1;

    public static final int f29302l = 2;

    public static final int f29303m = 16;

    public static final int f29304n = 19;

    public static final int f29305o = 3;

    public static final int f29306p = 12;

    public static final int f29307q = 1;

    public static final int f29308r = 1;

    public static final int f29309s = 19;

    public final byte[] f29310a;

    public final byte[] f29311b;

    public final byte[] f29312c;

    public final int f29313d;

    public final int f29314e;

    public final int f29315f;

    public final int f29316g;

    public final int f29317h;

    public final InterfaceC2377i f29318i;

    public static class C0786b {

        public byte[] f29319a;

        public byte[] f29320b;

        public byte[] f29321c;

        public int f29322d;

        public int f29323e;

        public int f29324f;

        public int f29325g;

        public final int f29326h;

        public InterfaceC2377i f29327i;

        public C0786b() {
            this(1);
        }

        public C3333b a() {
            return new C3333b(this.f29326h, this.f29319a, this.f29320b, this.f29321c, this.f29322d, this.f29323e, this.f29324f, this.f29325g, this.f29327i);
        }

        public void b() {
            org.bouncycastle.util.a.n(this.f29319a);
            org.bouncycastle.util.a.n(this.f29320b);
            org.bouncycastle.util.a.n(this.f29321c);
        }

        public C0786b c(byte[] bArr) {
            this.f29321c = org.bouncycastle.util.a.p(bArr);
            return this;
        }

        public C0786b d(InterfaceC2377i interfaceC2377i) {
            this.f29327i = interfaceC2377i;
            return this;
        }

        public C0786b e(int i10) {
            this.f29322d = i10;
            return this;
        }

        public C0786b f(int i10) {
            this.f29323e = i10;
            return this;
        }

        public C0786b g(int i10) {
            this.f29323e = 1 << i10;
            return this;
        }

        public C0786b h(int i10) {
            this.f29324f = i10;
            return this;
        }

        public C0786b i(byte[] bArr) {
            this.f29319a = org.bouncycastle.util.a.p(bArr);
            return this;
        }

        public C0786b j(byte[] bArr) {
            this.f29320b = org.bouncycastle.util.a.p(bArr);
            return this;
        }

        public C0786b k(int i10) {
            this.f29325g = i10;
            return this;
        }

        public C0786b(int i10) {
            this.f29327i = Bi.M.UTF8;
            this.f29326h = i10;
            this.f29324f = 1;
            this.f29323e = 4096;
            this.f29322d = 3;
            this.f29325g = 19;
        }
    }

    public C3333b(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, int i11, int i12, int i13, int i14, InterfaceC2377i interfaceC2377i) {
        this.f29310a = org.bouncycastle.util.a.p(bArr);
        this.f29311b = org.bouncycastle.util.a.p(bArr2);
        this.f29312c = org.bouncycastle.util.a.p(bArr3);
        this.f29313d = i11;
        this.f29314e = i12;
        this.f29315f = i13;
        this.f29316g = i14;
        this.f29317h = i10;
        this.f29318i = interfaceC2377i;
    }

    public void a() {
        org.bouncycastle.util.a.n(this.f29310a);
        org.bouncycastle.util.a.n(this.f29311b);
        org.bouncycastle.util.a.n(this.f29312c);
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f29312c);
    }

    public InterfaceC2377i c() {
        return this.f29318i;
    }

    public int d() {
        return this.f29313d;
    }

    public int e() {
        return this.f29315f;
    }

    public int f() {
        return this.f29314e;
    }

    public byte[] g() {
        return org.bouncycastle.util.a.p(this.f29310a);
    }

    public byte[] h() {
        return org.bouncycastle.util.a.p(this.f29311b);
    }

    public int i() {
        return this.f29317h;
    }

    public int j() {
        return this.f29316g;
    }
}
