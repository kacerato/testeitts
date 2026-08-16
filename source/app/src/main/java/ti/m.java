package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;

public class m implements InterfaceC2374f {

    public int f25240a;

    public int f25241b;

    public byte[] f25242c;

    public byte[] f25243d;

    public InterfaceC2374f f25244e;

    public boolean f25245f = false;

    public boolean f25246g;

    public m(InterfaceC2374f interfaceC2374f) {
        this.f25241b = interfaceC2374f.c();
        this.f25244e = interfaceC2374f;
    }

    private void j(byte[] bArr) {
        byte[] a10 = v.a(this.f25242c, this.f25240a - this.f25241b);
        System.arraycopy(a10, 0, this.f25242c, 0, a10.length);
        System.arraycopy(bArr, 0, this.f25242c, a10.length, this.f25240a - a10.length);
    }

    private void k() {
        int i10 = this.f25240a;
        this.f25242c = new byte[i10];
        this.f25243d = new byte[i10];
    }

    private void l() {
        this.f25240a = this.f25241b;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        this.f25246g = z10;
        if (!(interfaceC2379k instanceof w0)) {
            l();
            k();
            byte[] bArr = this.f25243d;
            System.arraycopy(bArr, 0, this.f25242c, 0, bArr.length);
            if (interfaceC2379k != null) {
                interfaceC2374f = this.f25244e;
                interfaceC2374f.a(z10, interfaceC2379k);
            }
            this.f25245f = true;
        }
        w0 w0Var = (w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        if (a10.length < this.f25241b) {
            throw new IllegalArgumentException("Parameter m must blockSize <= m");
        }
        this.f25240a = a10.length;
        k();
        byte[] p10 = org.bouncycastle.util.a.p(a10);
        this.f25243d = p10;
        System.arraycopy(p10, 0, this.f25242c, 0, p10.length);
        if (w0Var.b() != null) {
            interfaceC2374f = this.f25244e;
            interfaceC2379k = w0Var.b();
            interfaceC2374f.a(z10, interfaceC2379k);
        }
        this.f25245f = true;
    }

    @Override
    public String b() {
        return this.f25244e.b() + "/CBC";
    }

    @Override
    public int c() {
        return this.f25241b;
    }

    public final int f(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte[] b10 = v.b(this.f25242c, this.f25241b);
        byte[] c10 = v.c(bArr, this.f25241b, i10);
        byte[] bArr3 = new byte[c10.length];
        this.f25244e.g(c10, 0, bArr3, 0);
        byte[] d10 = v.d(bArr3, b10);
        System.arraycopy(d10, 0, bArr2, i11, d10.length);
        if (bArr2.length > i11 + d10.length) {
            j(c10);
        }
        return d10.length;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        return this.f25246g ? i(bArr, i10, bArr2, i11) : f(bArr, i10, bArr2, i11);
    }

    public final int i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        byte[] d10 = v.d(v.c(bArr, this.f25241b, i10), v.b(this.f25242c, this.f25241b));
        int length = d10.length;
        byte[] bArr3 = new byte[length];
        this.f25244e.g(d10, 0, bArr3, 0);
        System.arraycopy(bArr3, 0, bArr2, i11, length);
        if (bArr2.length > i11 + d10.length) {
            j(bArr3);
        }
        return length;
    }

    @Override
    public void reset() {
        if (this.f25245f) {
            byte[] bArr = this.f25243d;
            System.arraycopy(bArr, 0, this.f25242c, 0, bArr.length);
            this.f25244e.reset();
        }
    }
}
