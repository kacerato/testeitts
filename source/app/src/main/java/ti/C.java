package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;

public class C extends X {

    public int f25144b;

    public byte[] f25145c;

    public byte[] f25146d;

    public byte[] f25147e;

    public final int f25148f;

    public final InterfaceC2374f f25149g;

    public C(InterfaceC2374f interfaceC2374f, int i10) {
        super(interfaceC2374f);
        if (i10 > interfaceC2374f.c() * 8 || i10 < 8 || i10 % 8 != 0) {
            throw new IllegalArgumentException("0FB" + i10 + " not supported");
        }
        this.f25149g = interfaceC2374f;
        this.f25148f = i10 / 8;
        this.f25145c = new byte[interfaceC2374f.c()];
        this.f25146d = new byte[interfaceC2374f.c()];
        this.f25147e = new byte[interfaceC2374f.c()];
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        if (interfaceC2379k instanceof w0) {
            w0 w0Var = (w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            int length = a10.length;
            byte[] bArr = this.f25145c;
            if (length < bArr.length) {
                System.arraycopy(a10, 0, bArr, bArr.length - a10.length, a10.length);
                int i10 = 0;
                while (true) {
                    byte[] bArr2 = this.f25145c;
                    if (i10 >= bArr2.length - a10.length) {
                        break;
                    }
                    bArr2[i10] = 0;
                    i10++;
                }
            } else {
                System.arraycopy(a10, 0, bArr, 0, bArr.length);
            }
            reset();
            if (w0Var.b() == null) {
                return;
            }
            interfaceC2374f = this.f25149g;
            interfaceC2379k = w0Var.b();
        } else {
            reset();
            if (interfaceC2379k == null) {
                return;
            } else {
                interfaceC2374f = this.f25149g;
            }
        }
        interfaceC2374f.a(true, interfaceC2379k);
    }

    @Override
    public String b() {
        return this.f25149g.b() + "/OFB" + (this.f25148f * 8);
    }

    @Override
    public int c() {
        return this.f25148f;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, this.f25148f, bArr2, i11);
        return this.f25148f;
    }

    @Override
    public byte k(byte b10) throws DataLengthException, IllegalStateException {
        if (this.f25144b == 0) {
            this.f25149g.g(this.f25146d, 0, this.f25147e, 0);
        }
        byte[] bArr = this.f25147e;
        int i10 = this.f25144b;
        int i11 = i10 + 1;
        this.f25144b = i11;
        byte b11 = (byte) (b10 ^ bArr[i10]);
        int i12 = this.f25148f;
        if (i11 == i12) {
            this.f25144b = 0;
            byte[] bArr2 = this.f25146d;
            System.arraycopy(bArr2, i12, bArr2, 0, bArr2.length - i12);
            byte[] bArr3 = this.f25147e;
            byte[] bArr4 = this.f25146d;
            int length = bArr4.length;
            int i13 = this.f25148f;
            System.arraycopy(bArr3, 0, bArr4, length - i13, i13);
        }
        return b11;
    }

    @Override
    public void reset() {
        byte[] bArr = this.f25145c;
        System.arraycopy(bArr, 0, this.f25146d, 0, bArr.length);
        this.f25144b = 0;
        this.f25149g.reset();
    }
}
