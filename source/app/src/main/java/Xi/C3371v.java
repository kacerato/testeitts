package Xi;

public class C3371v {

    public byte[] f29427a;

    public int f29428b;

    public C3371v(byte[] bArr, int i10) {
        this.f29427a = org.bouncycastle.util.a.p(bArr);
        this.f29428b = i10;
    }

    public int a() {
        return this.f29428b;
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f29427a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3371v)) {
            return false;
        }
        C3371v c3371v = (C3371v) obj;
        if (c3371v.f29428b != this.f29428b) {
            return false;
        }
        return org.bouncycastle.util.a.g(this.f29427a, c3371v.f29427a);
    }

    public int hashCode() {
        return this.f29428b ^ org.bouncycastle.util.a.t0(this.f29427a);
    }
}
