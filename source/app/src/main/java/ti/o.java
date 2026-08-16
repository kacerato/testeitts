package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;

public class o extends X {

    public final int f25258b;

    public byte[] f25259c;

    public byte[] f25260d;

    public byte[] f25261e;

    public final int f25262f;

    public final InterfaceC2374f f25263g;

    public int f25264h;

    public boolean f25265i;

    public o(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, interfaceC2374f.c() * 8);
    }

    private void n() {
        int i10 = this.f25262f;
        this.f25260d = new byte[i10 / 2];
        this.f25259c = new byte[i10];
        this.f25261e = new byte[this.f25258b];
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        if (!(interfaceC2379k instanceof w0)) {
            n();
            if (interfaceC2379k != null) {
                interfaceC2374f = this.f25263g;
                interfaceC2374f.a(true, interfaceC2379k);
            }
            this.f25265i = true;
        }
        w0 w0Var = (w0) interfaceC2379k;
        n();
        byte[] p10 = org.bouncycastle.util.a.p(w0Var.a());
        this.f25260d = p10;
        if (p10.length != this.f25262f / 2) {
            throw new IllegalArgumentException("Parameter IV length must be == blockSize/2");
        }
        System.arraycopy(p10, 0, this.f25259c, 0, p10.length);
        for (int length = this.f25260d.length; length < this.f25262f; length++) {
            this.f25259c[length] = 0;
        }
        if (w0Var.b() != null) {
            interfaceC2374f = this.f25263g;
            interfaceC2379k = w0Var.b();
            interfaceC2374f.a(true, interfaceC2379k);
        }
        this.f25265i = true;
    }

    @Override
    public String b() {
        return this.f25263g.b() + "/GCTR";
    }

    @Override
    public int c() {
        return this.f25258b;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, this.f25258b, bArr2, i11);
        return this.f25258b;
    }

    @Override
    public byte k(byte b10) {
        if (this.f25264h == 0) {
            this.f25261e = l();
        }
        byte[] bArr = this.f25261e;
        int i10 = this.f25264h;
        byte b11 = (byte) (b10 ^ bArr[i10]);
        int i11 = i10 + 1;
        this.f25264h = i11;
        if (i11 == this.f25258b) {
            this.f25264h = 0;
            m();
        }
        return b11;
    }

    public final byte[] l() {
        byte[] bArr = this.f25259c;
        byte[] bArr2 = new byte[bArr.length];
        this.f25263g.g(bArr, 0, bArr2, 0);
        return v.b(bArr2, this.f25258b);
    }

    public final void m() {
        byte[] bArr = this.f25259c;
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] + 1);
    }

    @Override
    public void reset() {
        if (this.f25265i) {
            byte[] bArr = this.f25260d;
            System.arraycopy(bArr, 0, this.f25259c, 0, bArr.length);
            for (int length = this.f25260d.length; length < this.f25262f; length++) {
                this.f25259c[length] = 0;
            }
            this.f25264h = 0;
            this.f25263g.reset();
        }
    }

    public o(InterfaceC2374f interfaceC2374f, int i10) {
        super(interfaceC2374f);
        this.f25264h = 0;
        if (i10 < 0 || i10 > interfaceC2374f.c() * 8) {
            throw new IllegalArgumentException("Parameter bitBlockSize must be in range 0 < bitBlockSize <= " + (interfaceC2374f.c() * 8));
        }
        this.f25263g = interfaceC2374f;
        int c10 = interfaceC2374f.c();
        this.f25262f = c10;
        this.f25258b = i10 / 8;
        this.f25259c = new byte[c10];
    }
}
