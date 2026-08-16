package Ii;

public class A implements Bi.D {

    public Bi.D f9450a;

    public A(Bi.D d10) {
        if (d10 == null) {
            throw new IllegalArgumentException("baseDigest must not be null");
        }
        this.f9450a = d10;
    }

    @Override
    public String b() {
        return this.f9450a.b();
    }

    @Override
    public int c(byte[] bArr, int i10) {
        return this.f9450a.c(bArr, i10);
    }

    @Override
    public int f() {
        return this.f9450a.f();
    }

    @Override
    public int i() {
        return this.f9450a.i();
    }

    @Override
    public void reset() {
        this.f9450a.reset();
    }

    @Override
    public void update(byte b10) {
        this.f9450a.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f9450a.update(bArr, i10, i11);
    }
}
