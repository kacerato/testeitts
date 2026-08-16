package Ii;

public class T implements Bi.D {

    public Bi.D f9578a;

    public int f9579b;

    public T(Bi.D d10, int i10) {
        if (d10 == null) {
            throw new IllegalArgumentException("baseDigest must not be null");
        }
        if (i10 > d10.f()) {
            throw new IllegalArgumentException("baseDigest output not large enough to support length");
        }
        this.f9578a = d10;
        this.f9579b = i10;
    }

    @Override
    public String b() {
        return this.f9578a.b() + "(" + (this.f9579b * 8) + ")";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[this.f9578a.f()];
        this.f9578a.c(bArr2, 0);
        System.arraycopy(bArr2, 0, bArr, i10, this.f9579b);
        return this.f9579b;
    }

    @Override
    public int f() {
        return this.f9579b;
    }

    @Override
    public int i() {
        return this.f9578a.i();
    }

    @Override
    public void reset() {
        this.f9578a.reset();
    }

    @Override
    public void update(byte b10) {
        this.f9578a.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f9578a.update(bArr, i10, i11);
    }
}
