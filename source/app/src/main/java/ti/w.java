package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3331a;
import Xi.w0;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class w implements InterfaceC3090a {

    public static final int f25341o = 4;

    public static final int f25342p = 8;

    public static final int f25343q = 512;

    public static final int f25344r = 64;

    public InterfaceC2374f f25345a;

    public int f25346b;

    public boolean f25347c;

    public byte[] f25348d;

    public byte[] f25349e;

    public byte[] f25350f;

    public byte[] f25351g;

    public byte[] f25352h;

    public byte[] f25353i;

    public byte[] f25354j;

    public byte[] f25355k;

    public a f25356l;

    public a f25357m;

    public int f25358n;

    public static class a extends ByteArrayOutputStream {
        public byte[] c() {
            return this.buf;
        }
    }

    public w(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, 4);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2379k b10;
        if (interfaceC2379k instanceof C3331a) {
            C3331a c3331a = (C3331a) interfaceC2379k;
            if (c3331a.c() > 512 || c3331a.c() < 64 || c3331a.c() % 8 != 0) {
                throw new IllegalArgumentException("Invalid mac size specified");
            }
            this.f25351g = c3331a.d();
            this.f25346b = c3331a.c() / 8;
            this.f25348d = c3331a.a();
            b10 = c3331a.b();
        } else {
            if (!(interfaceC2379k instanceof w0)) {
                throw new IllegalArgumentException("Invalid parameters specified");
            }
            w0 w0Var = (w0) interfaceC2379k;
            this.f25351g = w0Var.a();
            this.f25346b = this.f25345a.c();
            this.f25348d = null;
            b10 = w0Var.b();
        }
        this.f25349e = new byte[this.f25346b];
        this.f25347c = z10;
        this.f25345a.a(true, b10);
        this.f25355k[0] = 1;
        byte[] bArr = this.f25348d;
        if (bArr != null) {
            j(bArr, 0, bArr.length);
        }
    }

    @Override
    public String b() {
        return this.f25345a.b() + "/KCCM";
    }

    @Override
    public int c(byte[] bArr, int i10) throws IllegalStateException, InvalidCipherTextException {
        int q10 = q(this.f25357m.c(), 0, this.f25357m.size(), bArr, i10);
        reset();
        return q10;
    }

    @Override
    public InterfaceC2374f d() {
        return this.f25345a;
    }

    @Override
    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f25349e);
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException, IllegalStateException {
        if (bArr.length < i10 + i11) {
            throw new DataLengthException("input buffer too short");
        }
        this.f25357m.write(bArr, i10, i11);
        return 0;
    }

    @Override
    public int g(int i10) {
        return i10;
    }

    @Override
    public int h(int i10) {
        return i10 + this.f25346b;
    }

    @Override
    public int i(byte b10, byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        this.f25357m.write(b10);
        return 0;
    }

    @Override
    public void j(byte[] bArr, int i10, int i11) {
        this.f25356l.write(bArr, i10, i11);
    }

    @Override
    public void k(byte b10) {
        this.f25356l.write(b10);
    }

    public final void l(byte[] bArr, int i10, int i11) {
        while (i11 > 0) {
            for (int i12 = 0; i12 < this.f25345a.c(); i12++) {
                byte[] bArr2 = this.f25350f;
                bArr2[i12] = (byte) (bArr2[i12] ^ bArr[i10 + i12]);
            }
            InterfaceC2374f interfaceC2374f = this.f25345a;
            byte[] bArr3 = this.f25350f;
            interfaceC2374f.g(bArr3, 0, bArr3, 0);
            i11 -= this.f25345a.c();
            i10 += this.f25345a.c();
        }
    }

    public final void m(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        int i13 = 0;
        while (true) {
            byte[] bArr3 = this.f25355k;
            if (i13 >= bArr3.length) {
                break;
            }
            byte[] bArr4 = this.f25354j;
            bArr4[i13] = (byte) (bArr4[i13] + bArr3[i13]);
            i13++;
        }
        this.f25345a.g(this.f25354j, 0, this.f25353i, 0);
        for (int i14 = 0; i14 < this.f25345a.c(); i14++) {
            bArr2[i12 + i14] = (byte) (this.f25353i[i14] ^ bArr[i10 + i14]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048 A[LOOP:0: B:17:0x0041->B:19:0x0048, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte n(boolean z10, int i10) {
        String str;
        String binaryString;
        StringBuffer stringBuffer = new StringBuffer();
        if (z10) {
            stringBuffer.append("1");
        } else {
            stringBuffer.append("0");
        }
        if (i10 == 8) {
            str = "010";
        } else if (i10 == 16) {
            str = "011";
        } else if (i10 == 32) {
            str = Dd.c.f5131w;
        } else {
            if (i10 != 48) {
                if (i10 == 64) {
                    str = "110";
                }
                binaryString = Integer.toBinaryString(this.f25358n - 1);
                while (binaryString.length() < 4) {
                    binaryString = new StringBuffer(binaryString).insert(0, "0").toString();
                }
                stringBuffer.append(binaryString);
                return (byte) Integer.parseInt(stringBuffer.toString(), 2);
            }
            str = Dd.c.f5132x;
        }
        stringBuffer.append(str);
        binaryString = Integer.toBinaryString(this.f25358n - 1);
        while (binaryString.length() < 4) {
        }
        stringBuffer.append(binaryString);
        return (byte) Integer.parseInt(stringBuffer.toString(), 2);
    }

    public final void o(int i10, byte[] bArr, int i11) {
        bArr[i11 + 3] = (byte) (i10 >> 24);
        bArr[i11 + 2] = (byte) (i10 >> 16);
        bArr[i11 + 1] = (byte) (i10 >> 8);
        bArr[i11] = (byte) i10;
    }

    public final void p(byte[] bArr, int i10, int i11, int i12) {
        if (i11 - i10 < this.f25345a.c()) {
            throw new IllegalArgumentException("authText buffer too short");
        }
        if (i11 % this.f25345a.c() != 0) {
            throw new IllegalArgumentException("padding not supported");
        }
        byte[] bArr2 = this.f25351g;
        System.arraycopy(bArr2, 0, this.f25352h, 0, (bArr2.length - this.f25358n) - 1);
        o(i12, this.f25353i, 0);
        System.arraycopy(this.f25353i, 0, this.f25352h, (this.f25351g.length - this.f25358n) - 1, 4);
        byte[] bArr3 = this.f25352h;
        bArr3[bArr3.length - 1] = n(true, this.f25346b);
        this.f25345a.g(this.f25352h, 0, this.f25350f, 0);
        o(i11, this.f25353i, 0);
        if (i11 <= this.f25345a.c() - this.f25358n) {
            for (int i13 = 0; i13 < i11; i13++) {
                byte[] bArr4 = this.f25353i;
                int i14 = this.f25358n + i13;
                bArr4[i14] = (byte) (bArr4[i14] ^ bArr[i10 + i13]);
            }
            for (int i15 = 0; i15 < this.f25345a.c(); i15++) {
                byte[] bArr5 = this.f25350f;
                bArr5[i15] = (byte) (bArr5[i15] ^ this.f25353i[i15]);
            }
            InterfaceC2374f interfaceC2374f = this.f25345a;
            byte[] bArr6 = this.f25350f;
            interfaceC2374f.g(bArr6, 0, bArr6, 0);
            return;
        }
        for (int i16 = 0; i16 < this.f25345a.c(); i16++) {
            byte[] bArr7 = this.f25350f;
            bArr7[i16] = (byte) (bArr7[i16] ^ this.f25353i[i16]);
        }
        InterfaceC2374f interfaceC2374f2 = this.f25345a;
        byte[] bArr8 = this.f25350f;
        interfaceC2374f2.g(bArr8, 0, bArr8, 0);
        while (i11 != 0) {
            for (int i17 = 0; i17 < this.f25345a.c(); i17++) {
                byte[] bArr9 = this.f25350f;
                bArr9[i17] = (byte) (bArr9[i17] ^ bArr[i17 + i10]);
            }
            InterfaceC2374f interfaceC2374f3 = this.f25345a;
            byte[] bArr10 = this.f25350f;
            interfaceC2374f3.g(bArr10, 0, bArr10, 0);
            i10 += this.f25345a.c();
            i11 -= this.f25345a.c();
        }
    }

    public int q(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IllegalStateException, InvalidCipherTextException {
        int i13;
        if (bArr.length - i10 < i11) {
            throw new DataLengthException("input buffer too short");
        }
        if (bArr2.length - i12 < i11) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f25356l.size() > 0) {
            if (this.f25347c) {
                p(this.f25356l.c(), 0, this.f25356l.size(), this.f25357m.size());
            } else {
                p(this.f25356l.c(), 0, this.f25356l.size(), this.f25357m.size() - this.f25346b);
            }
        }
        if (!this.f25347c) {
            if ((i11 - this.f25346b) % this.f25345a.c() != 0) {
                throw new DataLengthException("partial blocks not supported");
            }
            this.f25345a.g(this.f25351g, 0, this.f25354j, 0);
            int c10 = i11 / this.f25345a.c();
            for (int i14 = 0; i14 < c10; i14++) {
                m(bArr, i10, i11, bArr2, i12);
                i10 += this.f25345a.c();
                i12 += this.f25345a.c();
            }
            if (i11 > i10) {
                int i15 = 0;
                while (true) {
                    byte[] bArr3 = this.f25355k;
                    if (i15 >= bArr3.length) {
                        break;
                    }
                    byte[] bArr4 = this.f25354j;
                    bArr4[i15] = (byte) (bArr4[i15] + bArr3[i15]);
                    i15++;
                }
                this.f25345a.g(this.f25354j, 0, this.f25353i, 0);
                int i16 = 0;
                while (true) {
                    i13 = this.f25346b;
                    if (i16 >= i13) {
                        break;
                    }
                    bArr2[i12 + i16] = (byte) (this.f25353i[i16] ^ bArr[i10 + i16]);
                    i16++;
                }
                i12 += i13;
            }
            int i17 = 0;
            while (true) {
                byte[] bArr5 = this.f25355k;
                if (i17 >= bArr5.length) {
                    break;
                }
                byte[] bArr6 = this.f25354j;
                bArr6[i17] = (byte) (bArr6[i17] + bArr5[i17]);
                i17++;
            }
            this.f25345a.g(this.f25354j, 0, this.f25353i, 0);
            int i18 = this.f25346b;
            System.arraycopy(bArr2, i12 - i18, this.f25353i, 0, i18);
            l(bArr2, 0, i12 - this.f25346b);
            System.arraycopy(this.f25350f, 0, this.f25349e, 0, this.f25346b);
            int i19 = this.f25346b;
            byte[] bArr7 = new byte[i19];
            System.arraycopy(this.f25353i, 0, bArr7, 0, i19);
            if (!org.bouncycastle.util.a.I(this.f25349e, bArr7)) {
                throw new InvalidCipherTextException("mac check failed");
            }
            reset();
            return i11 - this.f25346b;
        }
        if (i11 % this.f25345a.c() != 0) {
            throw new DataLengthException("partial blocks not supported");
        }
        l(bArr, i10, i11);
        this.f25345a.g(this.f25351g, 0, this.f25354j, 0);
        int i20 = i11;
        while (i20 > 0) {
            m(bArr, i10, i11, bArr2, i12);
            i20 -= this.f25345a.c();
            i10 += this.f25345a.c();
            i12 += this.f25345a.c();
        }
        int i21 = 0;
        while (true) {
            byte[] bArr8 = this.f25355k;
            if (i21 >= bArr8.length) {
                break;
            }
            byte[] bArr9 = this.f25354j;
            bArr9[i21] = (byte) (bArr9[i21] + bArr8[i21]);
            i21++;
        }
        this.f25345a.g(this.f25354j, 0, this.f25353i, 0);
        int i22 = 0;
        while (true) {
            int i23 = this.f25346b;
            if (i22 >= i23) {
                System.arraycopy(this.f25350f, 0, this.f25349e, 0, i23);
                reset();
                return i11 + this.f25346b;
            }
            bArr2[i12 + i22] = (byte) (this.f25353i[i22] ^ this.f25350f[i22]);
            i22++;
        }
    }

    public final void r(int i10) {
        if (i10 != 4 && i10 != 6 && i10 != 8) {
            throw new IllegalArgumentException("Nb = 4 is recommended by DSTU7624 but can be changed to only 6 or 8 in this implementation");
        }
        this.f25358n = i10;
    }

    @Override
    public void reset() {
        org.bouncycastle.util.a.e0(this.f25352h, (byte) 0);
        org.bouncycastle.util.a.e0(this.f25353i, (byte) 0);
        org.bouncycastle.util.a.e0(this.f25355k, (byte) 0);
        org.bouncycastle.util.a.e0(this.f25350f, (byte) 0);
        this.f25355k[0] = 1;
        this.f25357m.reset();
        this.f25356l.reset();
        byte[] bArr = this.f25348d;
        if (bArr != null) {
            j(bArr, 0, bArr.length);
        }
    }

    public w(InterfaceC2374f interfaceC2374f, int i10) {
        this.f25356l = new a();
        this.f25357m = new a();
        this.f25358n = 4;
        this.f25345a = interfaceC2374f;
        this.f25346b = interfaceC2374f.c();
        this.f25351g = new byte[interfaceC2374f.c()];
        this.f25348d = new byte[interfaceC2374f.c()];
        this.f25349e = new byte[interfaceC2374f.c()];
        this.f25350f = new byte[interfaceC2374f.c()];
        this.f25352h = new byte[interfaceC2374f.c()];
        this.f25353i = new byte[interfaceC2374f.c()];
        this.f25354j = new byte[interfaceC2374f.c()];
        this.f25355k = new byte[interfaceC2374f.c()];
        r(i10);
    }
}
