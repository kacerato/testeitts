package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class x extends X {

    public byte[] f25359b;

    public byte[] f25360c;

    public byte[] f25361d;

    public int f25362e;

    public boolean f25363f;

    public InterfaceC2374f f25364g;

    public x(InterfaceC2374f interfaceC2374f) {
        super(interfaceC2374f);
        this.f25364g = interfaceC2374f;
        this.f25359b = new byte[interfaceC2374f.c()];
        this.f25360c = new byte[interfaceC2374f.c()];
        this.f25361d = new byte[interfaceC2374f.c()];
    }

    private void l() {
    }

    private void m(int i10) {
        while (true) {
            byte[] bArr = this.f25360c;
            if (i10 >= bArr.length) {
                return;
            }
            int i11 = i10 + 1;
            byte b10 = (byte) (bArr[i10] + 1);
            bArr[i10] = b10;
            if (b10 != 0) {
                return;
            } else {
                i10 = i11;
            }
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f25363f = true;
        if (!(interfaceC2379k instanceof w0)) {
            throw new IllegalArgumentException("invalid parameter passed");
        }
        w0 w0Var = (w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        byte[] bArr = this.f25359b;
        int length = bArr.length - a10.length;
        org.bouncycastle.util.a.e0(bArr, (byte) 0);
        System.arraycopy(a10, 0, this.f25359b, length, a10.length);
        InterfaceC2379k b10 = w0Var.b();
        if (b10 != null) {
            this.f25364g.a(true, b10);
        }
        reset();
    }

    @Override
    public String b() {
        return this.f25364g.b() + "/KCTR";
    }

    @Override
    public int c() {
        return this.f25364g.c();
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        if (bArr.length - i10 < c()) {
            throw new DataLengthException("input buffer too short");
        }
        if (bArr2.length - i11 < c()) {
            throw new OutputLengthException("output buffer too short");
        }
        f(bArr, i10, c(), bArr2, i11);
        return c();
    }

    @Override
    public byte k(byte b10) {
        int i10 = this.f25362e;
        if (i10 == 0) {
            m(0);
            l();
            this.f25364g.g(this.f25360c, 0, this.f25361d, 0);
            byte[] bArr = this.f25361d;
            int i11 = this.f25362e;
            this.f25362e = i11 + 1;
            return (byte) (b10 ^ bArr[i11]);
        }
        byte[] bArr2 = this.f25361d;
        int i12 = i10 + 1;
        this.f25362e = i12;
        byte b11 = (byte) (b10 ^ bArr2[i10]);
        if (i12 == this.f25360c.length) {
            this.f25362e = 0;
        }
        return b11;
    }

    @Override
    public void reset() {
        if (this.f25363f) {
            this.f25364g.g(this.f25359b, 0, this.f25360c, 0);
        }
        this.f25364g.reset();
        this.f25362e = 0;
    }
}
