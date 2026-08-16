package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;

public class p extends X {

    public int f25266b;

    public int f25267c;

    public byte[] f25268d;

    public byte[] f25269e;

    public byte[] f25270f;

    public InterfaceC2374f f25271g;

    public int f25272h;

    public boolean f25273i;

    public p(InterfaceC2374f interfaceC2374f) {
        super(interfaceC2374f);
        this.f25273i = false;
        int c10 = interfaceC2374f.c();
        this.f25267c = c10;
        this.f25271g = interfaceC2374f;
        this.f25270f = new byte[c10];
    }

    private void n() {
        int i10 = this.f25266b;
        this.f25268d = new byte[i10];
        this.f25269e = new byte[i10];
    }

    private void o() {
        this.f25266b = this.f25267c * 2;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        if (!(interfaceC2379k instanceof w0)) {
            o();
            n();
            byte[] bArr = this.f25269e;
            System.arraycopy(bArr, 0, this.f25268d, 0, bArr.length);
            if (interfaceC2379k != null) {
                interfaceC2374f = this.f25271g;
                interfaceC2374f.a(true, interfaceC2379k);
            }
            this.f25273i = true;
        }
        w0 w0Var = (w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        if (a10.length < this.f25267c) {
            throw new IllegalArgumentException("Parameter m must blockSize <= m");
        }
        this.f25266b = a10.length;
        n();
        byte[] p10 = org.bouncycastle.util.a.p(a10);
        this.f25269e = p10;
        System.arraycopy(p10, 0, this.f25268d, 0, p10.length);
        if (w0Var.b() != null) {
            interfaceC2374f = this.f25271g;
            interfaceC2379k = w0Var.b();
            interfaceC2374f.a(true, interfaceC2379k);
        }
        this.f25273i = true;
    }

    @Override
    public String b() {
        return this.f25271g.b() + "/OFB";
    }

    @Override
    public int c() {
        return this.f25267c;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, this.f25267c, bArr2, i11);
        return this.f25267c;
    }

    @Override
    public byte k(byte b10) {
        if (this.f25272h == 0) {
            m();
        }
        byte[] bArr = this.f25270f;
        int i10 = this.f25272h;
        byte b11 = (byte) (b10 ^ bArr[i10]);
        int i11 = i10 + 1;
        this.f25272h = i11;
        if (i11 == c()) {
            this.f25272h = 0;
            l();
        }
        return b11;
    }

    public final void l() {
        byte[] a10 = v.a(this.f25268d, this.f25266b - this.f25267c);
        System.arraycopy(a10, 0, this.f25268d, 0, a10.length);
        System.arraycopy(this.f25270f, 0, this.f25268d, a10.length, this.f25266b - a10.length);
    }

    public final void m() {
        this.f25271g.g(v.b(this.f25268d, this.f25267c), 0, this.f25270f, 0);
    }

    @Override
    public void reset() {
        if (this.f25273i) {
            byte[] bArr = this.f25269e;
            System.arraycopy(bArr, 0, this.f25268d, 0, bArr.length);
            org.bouncycastle.util.a.n(this.f25270f);
            this.f25272h = 0;
            this.f25271g.reset();
        }
    }
}
