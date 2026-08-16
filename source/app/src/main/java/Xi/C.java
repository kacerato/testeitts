package Xi;

public class C {

    public int f29197a;

    public byte[] f29198b;

    public int f29199c;

    public C(byte[] bArr, int i10) {
        this(bArr, i10, -1);
    }

    public int a() {
        return this.f29199c;
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f29198b);
    }

    public int c() {
        return this.f29197a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C)) {
            return false;
        }
        C c10 = (C) obj;
        if (c10.f29199c != this.f29199c) {
            return false;
        }
        return org.bouncycastle.util.a.g(this.f29198b, c10.f29198b);
    }

    public int hashCode() {
        return this.f29199c ^ org.bouncycastle.util.a.t0(this.f29198b);
    }

    public C(byte[] bArr, int i10, int i11) {
        this.f29198b = org.bouncycastle.util.a.p(bArr);
        this.f29199c = i10;
        this.f29197a = i11;
    }
}
