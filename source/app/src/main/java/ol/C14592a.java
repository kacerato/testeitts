package ol;

public class C14592a {

    public static final int f99560b = 0;

    public static final int f99561c = 1;

    public static final int f99562d = 2;

    public static final int f99563e = 3;

    public static final int f99564f = 4;

    public static final int f99565g = 5;

    public static final int f99566h = 6;

    public static final int f99567i = 0;

    public static final int f99568j = 4;

    public static final int f99569k = 24;

    public static final int f99570l = 28;

    public static final int f99571m = 16;

    public static final int f99572n = 20;

    public static final int f99573o = 24;

    public static final int f99574p = 28;

    public final byte[] f99575a;

    public C14592a() {
        this.f99575a = new byte[32];
    }

    public void a(int i10) {
        org.bouncycastle.util.p.h(i10, this.f99575a, 16);
    }

    public int b() {
        return org.bouncycastle.util.p.a(this.f99575a, 20);
    }

    public int c() {
        return org.bouncycastle.util.p.a(this.f99575a, 0);
    }

    public long d() {
        return org.bouncycastle.util.p.d(this.f99575a, 8);
    }

    public int e() {
        return org.bouncycastle.util.p.a(this.f99575a, 24);
    }

    public int f() {
        return org.bouncycastle.util.p.a(this.f99575a, 28);
    }

    public int g() {
        return org.bouncycastle.util.p.a(this.f99575a, 16);
    }

    public void h(int i10) {
        org.bouncycastle.util.p.h(i10, this.f99575a, 24);
    }

    public void i(int i10) {
        org.bouncycastle.util.p.h(i10, this.f99575a, 28);
    }

    public void j(int i10) {
        org.bouncycastle.util.p.h(i10, this.f99575a, 20);
    }

    public void k(int i10) {
        org.bouncycastle.util.p.h(i10, this.f99575a, 0);
    }

    public void l(long j10) {
        org.bouncycastle.util.p.D(j10, this.f99575a, 8);
    }

    public void m(int i10) {
        org.bouncycastle.util.p.h(i10, this.f99575a, 24);
    }

    public void n(int i10) {
        org.bouncycastle.util.p.h(i10, this.f99575a, 28);
    }

    public void o(int i10) {
        org.bouncycastle.util.p.h(i10, this.f99575a, 16);
        byte[] bArr = this.f99575a;
        org.bouncycastle.util.a.f0(bArr, 20, bArr.length, (byte) 0);
    }

    public C14592a(C14592a c14592a) {
        byte[] bArr = new byte[32];
        this.f99575a = bArr;
        byte[] bArr2 = c14592a.f99575a;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
    }
}
