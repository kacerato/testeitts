package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;

public class C3096g extends X implements InterfaceC3097h {

    public byte[] f25189b;

    public byte[] f25190c;

    public byte[] f25191d;

    public byte[] f25192e;

    public int f25193f;

    public InterfaceC2374f f25194g;

    public boolean f25195h;

    public int f25196i;

    public C3096g(InterfaceC2374f interfaceC2374f, int i10) {
        super(interfaceC2374f);
        this.f25194g = null;
        if (i10 > interfaceC2374f.c() * 8 || i10 < 8 || i10 % 8 != 0) {
            throw new IllegalArgumentException("CFB" + i10 + " not supported");
        }
        this.f25194g = interfaceC2374f;
        this.f25193f = i10 / 8;
        this.f25189b = new byte[interfaceC2374f.c()];
        this.f25190c = new byte[interfaceC2374f.c()];
        this.f25191d = new byte[interfaceC2374f.c()];
        this.f25192e = new byte[this.f25193f];
    }

    public static InterfaceC3097h q(InterfaceC2374f interfaceC2374f, int i10) {
        return new C3096g(interfaceC2374f, i10);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        this.f25195h = z10;
        if (interfaceC2379k instanceof w0) {
            w0 w0Var = (w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            int length = a10.length;
            byte[] bArr = this.f25189b;
            if (length < bArr.length) {
                System.arraycopy(a10, 0, bArr, bArr.length - a10.length, a10.length);
                int i10 = 0;
                while (true) {
                    byte[] bArr2 = this.f25189b;
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
            interfaceC2374f = this.f25194g;
            interfaceC2379k = w0Var.b();
        } else {
            reset();
            if (interfaceC2379k == null) {
                return;
            } else {
                interfaceC2374f = this.f25194g;
            }
        }
        interfaceC2374f.a(true, interfaceC2379k);
    }

    @Override
    public String b() {
        return this.f25194g.b() + "/CFB" + (this.f25193f * 8);
    }

    @Override
    public int c() {
        return this.f25193f;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, this.f25193f, bArr2, i11);
        return this.f25193f;
    }

    @Override
    public byte k(byte b10) throws DataLengthException, IllegalStateException {
        return this.f25195h ? o(b10) : m(b10);
    }

    public int l(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, this.f25193f, bArr2, i11);
        return this.f25193f;
    }

    public final byte m(byte b10) {
        if (this.f25196i == 0) {
            this.f25194g.g(this.f25190c, 0, this.f25191d, 0);
        }
        byte[] bArr = this.f25192e;
        int i10 = this.f25196i;
        bArr[i10] = b10;
        byte[] bArr2 = this.f25191d;
        int i11 = i10 + 1;
        this.f25196i = i11;
        byte b11 = (byte) (b10 ^ bArr2[i10]);
        int i12 = this.f25193f;
        if (i11 == i12) {
            this.f25196i = 0;
            byte[] bArr3 = this.f25190c;
            System.arraycopy(bArr3, i12, bArr3, 0, bArr3.length - i12);
            byte[] bArr4 = this.f25192e;
            byte[] bArr5 = this.f25190c;
            int length = bArr5.length;
            int i13 = this.f25193f;
            System.arraycopy(bArr4, 0, bArr5, length - i13, i13);
        }
        return b11;
    }

    public int n(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, this.f25193f, bArr2, i11);
        return this.f25193f;
    }

    public final byte o(byte b10) {
        if (this.f25196i == 0) {
            this.f25194g.g(this.f25190c, 0, this.f25191d, 0);
        }
        byte[] bArr = this.f25191d;
        int i10 = this.f25196i;
        byte b11 = (byte) (b10 ^ bArr[i10]);
        byte[] bArr2 = this.f25192e;
        int i11 = i10 + 1;
        this.f25196i = i11;
        bArr2[i10] = b11;
        int i12 = this.f25193f;
        if (i11 == i12) {
            this.f25196i = 0;
            byte[] bArr3 = this.f25190c;
            System.arraycopy(bArr3, i12, bArr3, 0, bArr3.length - i12);
            byte[] bArr4 = this.f25192e;
            byte[] bArr5 = this.f25190c;
            int length = bArr5.length;
            int i13 = this.f25193f;
            System.arraycopy(bArr4, 0, bArr5, length - i13, i13);
        }
        return b11;
    }

    public byte[] p() {
        return org.bouncycastle.util.a.p(this.f25190c);
    }

    @Override
    public void reset() {
        byte[] bArr = this.f25189b;
        System.arraycopy(bArr, 0, this.f25190c, 0, bArr.length);
        org.bouncycastle.util.a.e0(this.f25192e, (byte) 0);
        this.f25196i = 0;
        this.f25194g.reset();
    }
}
