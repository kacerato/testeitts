package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;

public class n extends X {

    public final int f25247b;

    public int f25248c;

    public int f25249d;

    public byte[] f25250e;

    public byte[] f25251f;

    public InterfaceC2374f f25252g;

    public boolean f25253h;

    public boolean f25254i;

    public byte[] f25255j;

    public byte[] f25256k;

    public int f25257l;

    public n(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, interfaceC2374f.c() * 8);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        this.f25253h = z10;
        if (!(interfaceC2379k instanceof w0)) {
            o();
            n();
            byte[] bArr = this.f25251f;
            System.arraycopy(bArr, 0, this.f25250e, 0, bArr.length);
            if (interfaceC2379k != null) {
                interfaceC2374f = this.f25252g;
                interfaceC2374f.a(true, interfaceC2379k);
            }
            this.f25254i = true;
        }
        w0 w0Var = (w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        if (a10.length < this.f25249d) {
            throw new IllegalArgumentException("Parameter m must blockSize <= m");
        }
        this.f25248c = a10.length;
        n();
        byte[] p10 = org.bouncycastle.util.a.p(a10);
        this.f25251f = p10;
        System.arraycopy(p10, 0, this.f25250e, 0, p10.length);
        if (w0Var.b() != null) {
            interfaceC2374f = this.f25252g;
            interfaceC2379k = w0Var.b();
            interfaceC2374f.a(true, interfaceC2379k);
        }
        this.f25254i = true;
    }

    @Override
    public String b() {
        return this.f25252g.b() + "/CFB" + (this.f25249d * 8);
    }

    @Override
    public int c() {
        return this.f25247b;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, c(), bArr2, i11);
        return c();
    }

    @Override
    public byte k(byte b10) {
        if (this.f25257l == 0) {
            this.f25255j = l();
        }
        byte[] bArr = this.f25255j;
        int i10 = this.f25257l;
        byte b11 = (byte) (bArr[i10] ^ b10);
        byte[] bArr2 = this.f25256k;
        int i11 = i10 + 1;
        this.f25257l = i11;
        if (this.f25253h) {
            b10 = b11;
        }
        bArr2[i10] = b10;
        if (i11 == c()) {
            this.f25257l = 0;
            m(this.f25256k);
        }
        return b11;
    }

    public byte[] l() {
        byte[] b10 = v.b(this.f25250e, this.f25249d);
        byte[] bArr = new byte[b10.length];
        this.f25252g.g(b10, 0, bArr, 0);
        return v.b(bArr, this.f25247b);
    }

    public void m(byte[] bArr) {
        byte[] a10 = v.a(this.f25250e, this.f25248c - this.f25247b);
        System.arraycopy(a10, 0, this.f25250e, 0, a10.length);
        System.arraycopy(bArr, 0, this.f25250e, a10.length, this.f25248c - a10.length);
    }

    public final void n() {
        int i10 = this.f25248c;
        this.f25250e = new byte[i10];
        this.f25251f = new byte[i10];
    }

    public final void o() {
        this.f25248c = this.f25249d * 2;
    }

    @Override
    public void reset() {
        this.f25257l = 0;
        org.bouncycastle.util.a.n(this.f25256k);
        org.bouncycastle.util.a.n(this.f25255j);
        if (this.f25254i) {
            byte[] bArr = this.f25251f;
            System.arraycopy(bArr, 0, this.f25250e, 0, bArr.length);
            this.f25252g.reset();
        }
    }

    public n(InterfaceC2374f interfaceC2374f, int i10) {
        super(interfaceC2374f);
        this.f25254i = false;
        if (i10 < 0 || i10 > interfaceC2374f.c() * 8) {
            throw new IllegalArgumentException("Parameter bitBlockSize must be in range 0 < bitBlockSize <= " + (interfaceC2374f.c() * 8));
        }
        this.f25249d = interfaceC2374f.c();
        this.f25252g = interfaceC2374f;
        this.f25247b = i10 / 8;
        this.f25256k = new byte[c()];
    }
}
