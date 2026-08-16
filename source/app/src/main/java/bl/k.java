package bl;

import Ii.Q;
import dalvik.bytecode.Opcodes;

public class k {

    public final int f33491a;

    public final C3900a f33493c;

    public final q f33495e;

    public final int f33494d = 256;

    public int[] f33492b = new int[256];

    public k(C3900a c3900a) {
        this.f33493c = c3900a;
        q a10 = c3900a.a();
        this.f33495e = a10;
        int i10 = a10.f33511a;
        this.f33491a = (i10 + Opcodes.OP_INSTANCE_OF_JUMBO) / i10;
    }

    public static int v(k kVar, int i10, int i11, byte[] bArr, int i12, int i13) {
        int i14 = 0;
        int i15 = 0;
        while (i14 < i11 && i15 < i12) {
            byte b10 = bArr[i15];
            int i16 = b10 & 15;
            i15++;
            int i17 = (b10 & 255) >> 4;
            if (i13 == 2) {
                if (i16 < 15) {
                    kVar.x(i10 + i14, 2 - (i16 - (((i16 * 205) >> 10) * 5)));
                    i14++;
                }
                if (i17 < 15 && i14 < i11) {
                    kVar.x(i10 + i14, 2 - (i17 - (((i17 * 205) >> 10) * 5)));
                    i14++;
                }
            } else if (i13 == 4) {
                if (i16 < 9) {
                    kVar.x(i10 + i14, 4 - i16);
                    i14++;
                }
                if (i17 < 9 && i14 < i11) {
                    kVar.x(i10 + i14, 4 - i17);
                    i14++;
                }
            }
        }
        return i14;
    }

    public static int w(k kVar, int i10, int i11, byte[] bArr, int i12) {
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11 && i14 + 3 <= i12) {
            int i15 = i14 + 2;
            int i16 = ((bArr[i14 + 1] & 255) << 8) | (bArr[i14] & 255);
            i14 += 3;
            int i17 = (i16 | ((bArr[i15] & 255) << 16)) & 8388607;
            if (i17 < 8380417) {
                kVar.x(i10 + i13, i17);
                i13++;
            }
        }
        return i13;
    }

    public void A(k kVar) {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            x(i10, f(i10) - kVar.f(i10));
        }
    }

    public void B(byte[] bArr, short s10) {
        int i10 = this.f33491a;
        q qVar = this.f33495e;
        int i11 = i10 * qVar.f33511a;
        byte[] bArr2 = new byte[i11 + 2];
        qVar.a(bArr, s10);
        this.f33495e.b(bArr2, 0, i11);
        int w10 = w(this, 0, this.f33494d, bArr2, i11);
        while (w10 < this.f33494d) {
            int i12 = i11 % 3;
            for (int i13 = 0; i13 < i12; i13++) {
                bArr2[i13] = bArr2[(i11 - i12) + i13];
            }
            q qVar2 = this.f33495e;
            qVar2.b(bArr2, i12, qVar2.f33511a);
            i11 = this.f33495e.f33511a + i12;
            w10 += w(this, w10, this.f33494d - w10, bArr2, i11);
        }
    }

    public void C(byte[] bArr, short s10) {
        int i10;
        int i11;
        int h10 = this.f33493c.h();
        if (this.f33493c.h() == 2) {
            i10 = this.f33495e.f33512b;
            i11 = i10 + 135;
        } else {
            if (this.f33493c.h() != 4) {
                throw new RuntimeException("Wrong Dilithium Eta!");
            }
            i10 = this.f33495e.f33512b;
            i11 = i10 + 226;
        }
        int i12 = i11 / i10;
        q qVar = this.f33495e;
        int i13 = i12 * qVar.f33512b;
        byte[] bArr2 = new byte[i13];
        qVar.c(bArr, s10);
        this.f33495e.d(bArr2, 0, i13);
        int v10 = v(this, 0, this.f33494d, bArr2, i13, h10);
        while (v10 < 256) {
            q qVar2 = this.f33495e;
            qVar2.d(bArr2, 0, qVar2.f33512b);
            v10 += v(this, v10, this.f33494d - v10, bArr2, this.f33495e.f33512b, h10);
        }
    }

    public void D(byte[] bArr, short s10) {
        int t10 = this.f33493c.t();
        q qVar = this.f33495e;
        byte[] bArr2 = new byte[t10 * qVar.f33512b];
        qVar.c(bArr, s10);
        this.f33495e.d(bArr2, 0, this.f33493c.t() * this.f33495e.f33512b);
        E(bArr2);
    }

    public final void E(byte[] bArr) {
        int i10 = 0;
        if (this.f33493c.i() != 131072) {
            if (this.f33493c.i() != 524288) {
                throw new RuntimeException("Wrong Dilithiumn Gamma1!");
            }
            while (i10 < this.f33494d / 2) {
                int i11 = i10 * 2;
                int i12 = i10 * 5;
                int i13 = i12 + 2;
                x(i11, ((bArr[i12] & 255) | ((bArr[i12 + 1] & 255) << 8) | ((bArr[i13] & 255) << 16)) & 1048575);
                int i14 = i11 + 1;
                x(i14, (((bArr[i12 + 4] & 255) << 12) | ((bArr[i13] & 255) >> 4) | ((bArr[i12 + 3] & 255) << 4)) & 1048575);
                x(i11, this.f33493c.i() - f(i11));
                x(i14, this.f33493c.i() - f(i14));
                i10++;
            }
            return;
        }
        while (i10 < this.f33494d / 4) {
            int i15 = i10 * 4;
            int i16 = i10 * 9;
            int i17 = i16 + 2;
            x(i15, ((bArr[i16] & 255) | ((bArr[i16 + 1] & 255) << 8) | ((bArr[i17] & 255) << 16)) & 262143);
            int i18 = i15 + 1;
            int i19 = i16 + 4;
            x(i18, (((bArr[i17] & 255) >> 2) | ((bArr[i16 + 3] & 255) << 6) | ((bArr[i19] & 255) << 14)) & 262143);
            int i20 = i15 + 2;
            int i21 = i16 + 6;
            x(i20, (((bArr[i19] & 255) >> 4) | ((bArr[i16 + 5] & 255) << 4) | ((bArr[i21] & 255) << 12)) & 262143);
            int i22 = i15 + 3;
            x(i22, (((bArr[i16 + 8] & 255) << 10) | ((bArr[i21] & 255) >> 6) | ((bArr[i16 + 7] & 255) << 2)) & 262143);
            x(i15, this.f33493c.i() - f(i15));
            x(i18, this.f33493c.i() - f(i18));
            x(i20, this.f33493c.i() - f(i20));
            x(i22, this.f33493c.i() - f(i22));
            i10++;
        }
    }

    public byte[] F() {
        byte[] bArr = new byte[this.f33493c.q()];
        int i10 = 0;
        if (this.f33493c.j() == 95232) {
            while (i10 < this.f33494d / 4) {
                int i11 = i10 * 3;
                int i12 = i10 * 4;
                int i13 = i12 + 1;
                bArr[i11] = (byte) (((byte) f(i12)) | (f(i13) << 6));
                int i14 = i12 + 2;
                bArr[i11 + 1] = (byte) (((byte) (f(i13) >> 2)) | (f(i14) << 4));
                bArr[i11 + 2] = (byte) ((f(i12 + 3) << 2) | ((byte) (f(i14) >> 4)));
                i10++;
            }
        } else if (this.f33493c.j() == 261888) {
            while (i10 < this.f33494d / 2) {
                int i15 = i10 * 2;
                bArr[i10] = (byte) ((f(i15 + 1) << 4) | f(i15));
                i10++;
            }
        }
        return bArr;
    }

    public byte[] G() {
        byte[] bArr = new byte[this.f33493c.r()];
        int[] iArr = new int[4];
        if (this.f33493c.i() == 131072) {
            for (int i10 = 0; i10 < this.f33494d / 4; i10++) {
                int i11 = i10 * 4;
                iArr[0] = this.f33493c.i() - f(i11);
                iArr[1] = this.f33493c.i() - f(i11 + 1);
                iArr[2] = this.f33493c.i() - f(i11 + 2);
                int i12 = this.f33493c.i() - f(i11 + 3);
                iArr[3] = i12;
                int i13 = i10 * 9;
                int i14 = iArr[0];
                bArr[i13] = (byte) i14;
                bArr[i13 + 1] = (byte) (i14 >> 8);
                int i15 = iArr[1];
                bArr[i13 + 2] = (byte) (((byte) (i14 >> 16)) | (i15 << 2));
                bArr[i13 + 3] = (byte) (i15 >> 6);
                byte b10 = (byte) (i15 >> 14);
                int i16 = iArr[2];
                bArr[i13 + 4] = (byte) (b10 | (i16 << 4));
                bArr[i13 + 5] = (byte) (i16 >> 4);
                bArr[i13 + 6] = (byte) (((byte) (i16 >> 12)) | (i12 << 6));
                bArr[i13 + 7] = (byte) (i12 >> 2);
                bArr[i13 + 8] = (byte) (i12 >> 10);
            }
        } else {
            if (this.f33493c.i() != 524288) {
                throw new RuntimeException("Wrong Dilithium Gamma1!");
            }
            for (int i17 = 0; i17 < this.f33494d / 2; i17++) {
                int i18 = i17 * 2;
                iArr[0] = this.f33493c.i() - f(i18);
                int i19 = this.f33493c.i() - f(i18 + 1);
                iArr[1] = i19;
                int i20 = i17 * 5;
                int i21 = iArr[0];
                bArr[i20] = (byte) i21;
                bArr[i20 + 1] = (byte) (i21 >> 8);
                bArr[i20 + 2] = (byte) (((byte) (i21 >> 16)) | (i19 << 4));
                bArr[i20 + 3] = (byte) (i19 >> 4);
                bArr[i20 + 4] = (byte) (i19 >> 12);
            }
        }
        return bArr;
    }

    public void H(byte[] bArr) {
        int i10 = 0;
        if (this.f33493c.i() != 131072) {
            if (this.f33493c.i() != 524288) {
                throw new RuntimeException("Wrong Dilithium Gamma1!");
            }
            while (i10 < this.f33494d / 2) {
                int i11 = i10 * 2;
                int i12 = i10 * 5;
                int i13 = i12 + 2;
                x(i11, ((bArr[i12] & 255) | ((bArr[i12 + 1] & 255) << 8) | ((bArr[i13] & 255) << 16)) & 1048575);
                int i14 = i11 + 1;
                x(i14, (((bArr[i12 + 4] & 255) << 12) | ((bArr[i13] & 255) >>> 4) | ((bArr[i12 + 3] & 255) << 4)) & 1048575);
                x(i11, this.f33493c.i() - f(i11));
                x(i14, this.f33493c.i() - f(i14));
                i10++;
            }
            return;
        }
        while (i10 < this.f33494d / 4) {
            int i15 = i10 * 4;
            int i16 = i10 * 9;
            int i17 = i16 + 2;
            x(i15, ((bArr[i16] & 255) | ((bArr[i16 + 1] & 255) << 8) | ((bArr[i17] & 255) << 16)) & 262143);
            int i18 = i15 + 1;
            int i19 = i16 + 4;
            x(i18, (((bArr[i17] & 255) >>> 2) | ((bArr[i16 + 3] & 255) << 6) | ((bArr[i19] & 255) << 14)) & 262143);
            int i20 = i15 + 2;
            int i21 = i16 + 6;
            x(i20, (((bArr[i19] & 255) >>> 4) | ((bArr[i16 + 5] & 255) << 4) | ((bArr[i21] & 255) << 12)) & 262143);
            int i22 = i15 + 3;
            x(i22, (((bArr[i16 + 8] & 255) << 10) | ((bArr[i21] & 255) >>> 6) | ((bArr[i16 + 7] & 255) << 2)) & 262143);
            x(i15, this.f33493c.i() - f(i15));
            x(i18, this.f33493c.i() - f(i18));
            x(i20, this.f33493c.i() - f(i20));
            x(i22, this.f33493c.i() - f(i22));
            i10++;
        }
    }

    public void a(k kVar) {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            x(i10, f(i10) + kVar.f(i10));
        }
    }

    public void b(byte[] bArr) {
        int i10;
        int i11;
        int i12;
        int i13;
        byte[] bArr2 = new byte[this.f33495e.f33512b];
        Q q10 = new Q(256);
        q10.update(bArr, 0, 32);
        q10.h(bArr2, 0, this.f33495e.f33512b);
        long j10 = 0;
        int i14 = 0;
        while (true) {
            i10 = 8;
            if (i14 >= 8) {
                break;
            }
            j10 |= (bArr2[i14] & 255) << (i14 * 8);
            i14++;
        }
        int i15 = 0;
        while (true) {
            i11 = this.f33494d;
            if (i15 >= i11) {
                break;
            }
            x(i15, 0);
            i15++;
        }
        int s10 = i11 - this.f33493c.s();
        while (s10 < this.f33494d) {
            while (true) {
                int i16 = this.f33495e.f33512b;
                if (i10 >= i16) {
                    q10.h(bArr2, 0, i16);
                    i10 = 0;
                }
                i12 = i10 + 1;
                i13 = bArr2[i10] & 255;
                if (i13 <= s10) {
                    break;
                } else {
                    i10 = i12;
                }
            }
            x(s10, f(i13));
            x(i13, (int) (1 - ((j10 & 1) * 2)));
            j10 >>= 1;
            s10++;
            i10 = i12;
        }
    }

    public boolean c(int i10) {
        if (i10 > 1047552) {
            return true;
        }
        for (int i11 = 0; i11 < this.f33494d; i11++) {
            if (f(i11) - ((f(i11) >> 31) & (f(i11) * 2)) >= i10) {
                return true;
            }
        }
        return false;
    }

    public void d() {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            x(i10, o.a(f(i10)));
        }
    }

    public void e(k kVar) {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            int[] a10 = p.a(f(i10), this.f33493c.j());
            x(i10, a10[1]);
            kVar.x(i10, a10[0]);
        }
    }

    public int f(int i10) {
        return this.f33492b[i10];
    }

    public int[] g() {
        return this.f33492b;
    }

    public void h() {
        y(i.a(g()));
    }

    public void i(m mVar, m mVar2) {
        k kVar = new k(this.f33493c);
        j(mVar.e(0), mVar2.e(0));
        for (int i10 = 1; i10 < this.f33493c.l(); i10++) {
            kVar.j(mVar.e(i10), mVar2.e(i10));
            a(kVar);
        }
    }

    public void j(k kVar, k kVar2) {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            x(i10, o.b(kVar.f(i10) * kVar2.f(i10)));
        }
    }

    public byte[] k(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[8];
        if (this.f33493c.h() == 2) {
            for (int i11 = 0; i11 < this.f33494d / 8; i11++) {
                int i12 = i11 * 8;
                bArr2[0] = (byte) (this.f33493c.h() - f(i12));
                bArr2[1] = (byte) (this.f33493c.h() - f(i12 + 1));
                bArr2[2] = (byte) (this.f33493c.h() - f(i12 + 2));
                bArr2[3] = (byte) (this.f33493c.h() - f(i12 + 3));
                bArr2[4] = (byte) (this.f33493c.h() - f(i12 + 4));
                bArr2[5] = (byte) (this.f33493c.h() - f(i12 + 5));
                bArr2[6] = (byte) (this.f33493c.h() - f(i12 + 6));
                bArr2[7] = (byte) (this.f33493c.h() - f(i12 + 7));
                int i13 = i10 + (i11 * 3);
                bArr[i13] = (byte) (bArr2[0] | (bArr2[1] << 3) | (bArr2[2] << 6));
                bArr[i13 + 1] = (byte) ((bArr2[3] << 1) | (bArr2[2] >> 2) | (bArr2[4] << 4) | (bArr2[5] << 7));
                bArr[i13 + 2] = (byte) ((bArr2[5] >> 1) | (bArr2[6] << 2) | (bArr2[7] << 5));
            }
        } else {
            if (this.f33493c.h() != 4) {
                throw new RuntimeException("Eta needs to be 2 or 4!");
            }
            for (int i14 = 0; i14 < this.f33494d / 2; i14++) {
                int i15 = i14 * 2;
                bArr2[0] = (byte) (this.f33493c.h() - f(i15));
                byte h10 = (byte) (this.f33493c.h() - f(i15 + 1));
                bArr2[1] = h10;
                bArr[i10 + i14] = (byte) ((h10 << 4) | bArr2[0]);
            }
        }
        return bArr;
    }

    public void l(byte[] bArr, int i10) {
        int h10 = this.f33493c.h();
        int i11 = 0;
        if (this.f33493c.h() != 2) {
            if (this.f33493c.h() == 4) {
                while (i11 < this.f33494d / 2) {
                    int i12 = i11 * 2;
                    int i13 = i10 + i11;
                    x(i12, bArr[i13] & 15);
                    int i14 = i12 + 1;
                    x(i14, (bArr[i13] & 255) >> 4);
                    x(i12, h10 - f(i12));
                    x(i14, h10 - f(i14));
                    i11++;
                }
                return;
            }
            return;
        }
        while (i11 < this.f33494d / 8) {
            int i15 = (i11 * 3) + i10;
            int i16 = i11 * 8;
            x(i16, bArr[i15] & 7);
            int i17 = i16 + 1;
            x(i17, ((bArr[i15] & 255) >> 3) & 7);
            int i18 = i16 + 2;
            int i19 = i15 + 1;
            x(i18, ((bArr[i15] & 255) >> 6) | (((bArr[i19] & 255) << 2) & 7));
            int i20 = i16 + 3;
            x(i20, ((bArr[i19] & 255) >> 1) & 7);
            int i21 = i16 + 4;
            x(i21, ((bArr[i19] & 255) >> 4) & 7);
            int i22 = i16 + 5;
            int i23 = i15 + 2;
            x(i22, ((bArr[i19] & 255) >> 7) | (((bArr[i23] & 255) << 1) & 7));
            int i24 = i16 + 6;
            x(i24, ((bArr[i23] & 255) >> 2) & 7);
            int i25 = i16 + 7;
            x(i25, ((bArr[i23] & 255) >> 5) & 7);
            x(i16, h10 - f(i16));
            x(i17, h10 - f(i17));
            x(i18, h10 - f(i18));
            x(i20, h10 - f(i20));
            x(i21, h10 - f(i21));
            x(i22, h10 - f(i22));
            x(i24, h10 - f(i24));
            x(i25, h10 - f(i25));
            i11++;
        }
    }

    public int m(k kVar, k kVar2) {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f33494d; i11++) {
            x(i11, p.b(kVar.f(i11), kVar2.f(i11), this.f33493c));
            i10 += f(i11);
        }
        return i10;
    }

    public void n() {
        y(i.b(this.f33492b));
    }

    public void o(k kVar, k kVar2) {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            x(i10, p.d(kVar.f(i10), kVar2.f(i10), this.f33493c.j()));
        }
    }

    public byte[] p(byte[] bArr, int i10) {
        for (int i11 = 0; i11 < this.f33494d / 8; i11++) {
            int i12 = i11 * 8;
            int[] iArr = {4096 - f(i12), 4096 - f(i12 + 1), 4096 - f(i12 + 2), 4096 - f(i12 + 3), 4096 - f(i12 + 4), 4096 - f(i12 + 5), 4096 - f(i12 + 6), 4096 - f(i12 + 7)};
            int i13 = (i11 * 13) + i10;
            int i14 = iArr[0];
            bArr[i13] = (byte) i14;
            int i15 = i13 + 1;
            byte b10 = (byte) (i14 >> 8);
            bArr[i15] = b10;
            int i16 = iArr[1];
            bArr[i15] = (byte) (b10 | ((byte) (i16 << 5)));
            bArr[i13 + 2] = (byte) (i16 >> 3);
            int i17 = i13 + 3;
            byte b11 = (byte) (i16 >> 11);
            bArr[i17] = b11;
            int i18 = iArr[2];
            bArr[i17] = (byte) (b11 | ((byte) (i18 << 2)));
            int i19 = i13 + 4;
            byte b12 = (byte) (i18 >> 6);
            bArr[i19] = b12;
            int i20 = iArr[3];
            bArr[i19] = (byte) (b12 | ((byte) (i20 << 7)));
            bArr[i13 + 5] = (byte) (i20 >> 1);
            int i21 = i13 + 6;
            byte b13 = (byte) (i20 >> 9);
            bArr[i21] = b13;
            int i22 = iArr[4];
            bArr[i21] = (byte) (b13 | ((byte) (i22 << 4)));
            bArr[i13 + 7] = (byte) (i22 >> 4);
            int i23 = i13 + 8;
            byte b14 = (byte) (i22 >> 12);
            bArr[i23] = b14;
            int i24 = iArr[5];
            bArr[i23] = (byte) (b14 | ((byte) (i24 << 1)));
            int i25 = i13 + 9;
            byte b15 = (byte) (i24 >> 7);
            bArr[i25] = b15;
            int i26 = iArr[6];
            bArr[i25] = (byte) (b15 | ((byte) (i26 << 6)));
            bArr[i13 + 10] = (byte) (i26 >> 2);
            int i27 = i13 + 11;
            byte b16 = (byte) (i26 >> 10);
            bArr[i27] = b16;
            int i28 = iArr[7];
            bArr[i27] = (byte) (((byte) (i28 << 3)) | b16);
            bArr[i13 + 12] = (byte) (i28 >> 5);
        }
        return bArr;
    }

    public void q(byte[] bArr, int i10) {
        for (int i11 = 0; i11 < this.f33494d / 8; i11++) {
            int i12 = (i11 * 13) + i10;
            int i13 = i11 * 8;
            int i14 = i12 + 1;
            x(i13, ((bArr[i12] & 255) | ((bArr[i14] & 255) << 8)) & 8191);
            int i15 = i13 + 1;
            int i16 = i12 + 3;
            x(i15, (((bArr[i14] & 255) >> 5) | ((bArr[i12 + 2] & 255) << 3) | ((bArr[i16] & 255) << 11)) & 8191);
            int i17 = i13 + 2;
            int i18 = i12 + 4;
            x(i17, (((bArr[i16] & 255) >> 2) | ((bArr[i18] & 255) << 6)) & 8191);
            int i19 = i13 + 3;
            int i20 = i12 + 6;
            x(i19, (((bArr[i18] & 255) >> 7) | ((bArr[i12 + 5] & 255) << 1) | ((bArr[i20] & 255) << 9)) & 8191);
            int i21 = i13 + 4;
            int i22 = i12 + 8;
            x(i21, (((bArr[i20] & 255) >> 4) | ((bArr[i12 + 7] & 255) << 4) | ((bArr[i22] & 255) << 12)) & 8191);
            int i23 = i13 + 5;
            int i24 = i12 + 9;
            x(i23, (((bArr[i22] & 255) >> 1) | ((bArr[i24] & 255) << 7)) & 8191);
            int i25 = i13 + 6;
            int i26 = i12 + 11;
            x(i25, (((bArr[i24] & 255) >> 6) | ((bArr[i12 + 10] & 255) << 2) | ((bArr[i26] & 255) << 10)) & 8191);
            int i27 = i13 + 7;
            x(i27, (((bArr[i12 + 12] & 255) << 5) | ((bArr[i26] & 255) >> 3)) & 8191);
            x(i13, 4096 - f(i13));
            x(i15, 4096 - f(i15));
            x(i17, 4096 - f(i17));
            x(i19, 4096 - f(i19));
            x(i21, 4096 - f(i21));
            x(i23, 4096 - f(i23));
            x(i25, 4096 - f(i25));
            x(i27, 4096 - f(i27));
        }
    }

    public byte[] r() {
        byte[] bArr = new byte[320];
        for (int i10 = 0; i10 < this.f33494d / 4; i10++) {
            int i11 = i10 * 5;
            int[] iArr = this.f33492b;
            int i12 = i10 * 4;
            int i13 = iArr[i12];
            bArr[i11] = (byte) i13;
            int i14 = iArr[i12 + 1];
            bArr[i11 + 1] = (byte) ((i13 >> 8) | (i14 << 2));
            int i15 = i14 >> 6;
            int i16 = iArr[i12 + 2];
            bArr[i11 + 2] = (byte) (i15 | (i16 << 4));
            int i17 = iArr[i12 + 3];
            bArr[i11 + 3] = (byte) ((i17 << 6) | (i16 >> 4));
            bArr[i11 + 4] = (byte) (i17 >> 2);
        }
        return bArr;
    }

    public void s(byte[] bArr) {
        for (int i10 = 0; i10 < this.f33494d / 4; i10++) {
            int i11 = i10 * 4;
            int i12 = i10 * 5;
            int i13 = i12 + 1;
            x(i11, ((bArr[i12] & 255) | ((bArr[i13] & 255) << 8)) & 1023);
            int i14 = i12 + 2;
            x(i11 + 1, (((bArr[i13] & 255) >> 2) | ((bArr[i14] & 255) << 6)) & 1023);
            int i15 = (bArr[i14] & 255) >> 4;
            int i16 = i12 + 3;
            x(i11 + 2, (i15 | ((bArr[i16] & 255) << 4)) & 1023);
            x(i11 + 3, (((bArr[i12 + 4] & 255) << 2) | ((bArr[i16] & 255) >> 6)) & 1023);
        }
    }

    public void t(k kVar) {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            int[] c10 = p.c(f(i10));
            x(i10, c10[0]);
            kVar.x(i10, c10[1]);
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        int i10 = 0;
        while (true) {
            int[] iArr = this.f33492b;
            if (i10 >= iArr.length) {
                stringBuffer.append("]");
                return stringBuffer.toString();
            }
            stringBuffer.append(iArr[i10]);
            if (i10 != this.f33492b.length - 1) {
                stringBuffer.append(", ");
            }
            i10++;
        }
    }

    public void u() {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            x(i10, o.c(f(i10)));
        }
    }

    public void x(int i10, int i11) {
        this.f33492b[i10] = i11;
    }

    public void y(int[] iArr) {
        this.f33492b = iArr;
    }

    public void z() {
        for (int i10 = 0; i10 < this.f33494d; i10++) {
            x(i10, f(i10) << 13);
        }
    }
}
