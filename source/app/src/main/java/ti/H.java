package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class H extends X implements i {

    public final InterfaceC2374f f25167b;

    public final int f25168c;

    public byte[] f25169d;

    public byte[] f25170e;

    public byte[] f25171f;

    public int f25172g;

    public H(InterfaceC2374f interfaceC2374f) {
        super(interfaceC2374f);
        this.f25167b = interfaceC2374f;
        int c10 = interfaceC2374f.c();
        this.f25168c = c10;
        this.f25169d = new byte[c10];
        this.f25170e = new byte[c10];
        this.f25171f = new byte[c10];
        this.f25172g = 0;
    }

    public static i s(InterfaceC2374f interfaceC2374f) {
        return new H(interfaceC2374f);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof w0)) {
            throw new IllegalArgumentException("CTR/SIC mode requires ParametersWithIV");
        }
        w0 w0Var = (w0) interfaceC2379k;
        byte[] p10 = org.bouncycastle.util.a.p(w0Var.a());
        this.f25169d = p10;
        int i10 = this.f25168c;
        if (i10 < p10.length) {
            throw new IllegalArgumentException("CTR/SIC mode requires IV no greater than: " + this.f25168c + " bytes.");
        }
        int i11 = 8 > i10 / 2 ? i10 / 2 : 8;
        if (i10 - p10.length <= i11) {
            if (w0Var.b() != null) {
                this.f25167b.a(true, w0Var.b());
            }
            reset();
        } else {
            throw new IllegalArgumentException("CTR/SIC mode requires IV of at least: " + (this.f25168c - i11) + " bytes.");
        }
    }

    @Override
    public String b() {
        return this.f25167b.b() + "/SIC";
    }

    @Override
    public int c() {
        return this.f25167b.c();
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        byte b10;
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too small");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = this.f25172g;
            if (i14 == 0) {
                n();
                this.f25167b.g(this.f25170e, 0, this.f25171f, 0);
                byte b11 = bArr[i10 + i13];
                byte[] bArr3 = this.f25171f;
                int i15 = this.f25172g;
                this.f25172g = i15 + 1;
                b10 = (byte) (b11 ^ bArr3[i15]);
            } else {
                byte b12 = bArr[i10 + i13];
                byte[] bArr4 = this.f25171f;
                int i16 = i14 + 1;
                this.f25172g = i16;
                b10 = (byte) (bArr4[i14] ^ b12);
                if (i16 == this.f25170e.length) {
                    this.f25172g = 0;
                    p();
                }
            }
            bArr2[i12 + i13] = b10;
        }
        return i11;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        if (this.f25172g != 0) {
            f(bArr, i10, this.f25168c, bArr2, i11);
        } else {
            int i12 = this.f25168c;
            if (i10 + i12 > bArr.length) {
                throw new DataLengthException("input buffer too small");
            }
            if (i12 + i11 > bArr2.length) {
                throw new OutputLengthException("output buffer too short");
            }
            this.f25167b.g(this.f25170e, 0, this.f25171f, 0);
            for (int i13 = 0; i13 < this.f25168c; i13++) {
                bArr2[i11 + i13] = (byte) (bArr[i10 + i13] ^ this.f25171f[i13]);
            }
            p();
        }
        return this.f25168c;
    }

    @Override
    public long getPosition() {
        byte[] bArr = this.f25170e;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        int i10 = length - 1;
        while (i10 >= 1) {
            byte[] bArr3 = this.f25169d;
            int i11 = i10 < bArr3.length ? (bArr2[i10] & 255) - (bArr3[i10] & 255) : bArr2[i10] & 255;
            if (i11 < 0) {
                int i12 = i10 - 1;
                bArr2[i12] = (byte) (bArr2[i12] - 1);
                i11 += 256;
            }
            bArr2[i10] = (byte) i11;
            i10--;
        }
        return (org.bouncycastle.util.p.d(bArr2, length - 8) * this.f25168c) + this.f25172g;
    }

    @Override
    public long j(long j10) {
        reset();
        return skip(j10);
    }

    @Override
    public byte k(byte b10) throws DataLengthException, IllegalStateException {
        int i10 = this.f25172g;
        if (i10 == 0) {
            n();
            this.f25167b.g(this.f25170e, 0, this.f25171f, 0);
            byte[] bArr = this.f25171f;
            int i11 = this.f25172g;
            this.f25172g = i11 + 1;
            return (byte) (b10 ^ bArr[i11]);
        }
        byte[] bArr2 = this.f25171f;
        int i12 = i10 + 1;
        this.f25172g = i12;
        byte b11 = (byte) (b10 ^ bArr2[i10]);
        if (i12 == this.f25170e.length) {
            this.f25172g = 0;
            p();
        }
        return b11;
    }

    public final void l(long j10) {
        int i10 = 5;
        if (j10 >= 0) {
            long j11 = (this.f25172g + j10) / this.f25168c;
            long j12 = j11;
            if (j11 > 255) {
                while (i10 >= 1) {
                    long j13 = 1 << (i10 * 8);
                    while (j12 >= j13) {
                        r(i10);
                        j12 -= j13;
                    }
                    i10--;
                }
            }
            q((int) j12);
            this.f25172g = (int) ((j10 + this.f25172g) - (this.f25168c * j11));
            return;
        }
        long j14 = ((-j10) - this.f25172g) / this.f25168c;
        long j15 = j14;
        if (j14 > 255) {
            while (i10 >= 1) {
                long j16 = 1 << (i10 * 8);
                while (j15 > j16) {
                    o(i10);
                    j15 -= j16;
                }
                i10--;
            }
        }
        for (long j17 = 0; j17 != j15; j17++) {
            o(0);
        }
        int i11 = (int) (this.f25172g + j10 + (this.f25168c * j14));
        if (i11 >= 0) {
            this.f25172g = 0;
        } else {
            o(0);
            this.f25172g = this.f25168c + i11;
        }
    }

    public final void m() {
        byte[] bArr = this.f25169d;
        if (bArr.length < this.f25168c) {
            for (int length = bArr.length - 1; length >= 0; length--) {
                if (this.f25170e[length] != this.f25169d[length]) {
                    throw new IllegalStateException("Counter in CTR/SIC mode out of range.");
                }
            }
        }
    }

    public final void n() {
        byte[] bArr = this.f25169d;
        if (bArr.length < this.f25168c && this.f25170e[bArr.length - 1] != bArr[bArr.length - 1]) {
            throw new IllegalStateException("Counter in CTR/SIC mode out of range.");
        }
    }

    public final void o(int i10) {
        byte b10;
        int length = this.f25170e.length - i10;
        do {
            length--;
            if (length < 0) {
                return;
            }
            b10 = (byte) (r1[length] - 1);
            this.f25170e[length] = b10;
        } while (b10 == -1);
    }

    public final void p() {
        byte b10;
        int length = this.f25170e.length;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.f25170e;
            b10 = (byte) (bArr[length] + 1);
            bArr[length] = b10;
        } while (b10 == 0);
    }

    public final void q(int i10) {
        byte[] bArr = this.f25170e;
        byte b10 = bArr[bArr.length - 1];
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] + i10);
        if (b10 == 0 || bArr[bArr.length - 1] >= b10) {
            return;
        }
        r(1);
    }

    public final void r(int i10) {
        byte b10;
        int length = this.f25170e.length - i10;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.f25170e;
            b10 = (byte) (bArr[length] + 1);
            bArr[length] = b10;
        } while (b10 == 0);
    }

    @Override
    public void reset() {
        org.bouncycastle.util.a.e0(this.f25170e, (byte) 0);
        byte[] bArr = this.f25169d;
        System.arraycopy(bArr, 0, this.f25170e, 0, bArr.length);
        this.f25167b.reset();
        this.f25172g = 0;
    }

    @Override
    public long skip(long j10) {
        l(j10);
        m();
        this.f25167b.g(this.f25170e, 0, this.f25171f, 0);
        return j10;
    }
}
