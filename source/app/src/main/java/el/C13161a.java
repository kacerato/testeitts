package el;

import Bi.a0;
import java.security.SecureRandom;
import org.bouncycastle.util.p;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C13161a {

    public static final int f85823A = 16;

    public static final int f85824B = 16;

    public static final int f85825C = 16;

    public static final int f85826D = 2;

    public static final int f85827w = 8;

    public static final int f85828x = 8;

    public static final int f85829y = 128;

    public static final int f85830z = 128;

    public final int f85831a;

    public final int f85832b;

    public final int f85833c;

    public final int f85834d;

    public final int f85835e;

    public final int f85836f;

    public final int f85837g;

    public final short[] f85838h;

    public final int f85839i;

    public final int f85840j;

    public final int f85841k;

    public final int f85842l;

    public final int f85843m;

    public final int f85844n;

    public final int f85845o;

    public final int f85846p;

    public final int f85847q;

    public final int f85848r;

    public final int f85849s;

    public final int f85850t;

    public final a0 f85851u;

    public final g f85852v;

    public C13161a(int i10, int i11, int i12, short[] sArr, a0 a0Var, g gVar) {
        this.f85833c = i10;
        this.f85831a = i11;
        this.f85832b = 1 << i11;
        this.f85834d = i12;
        int i13 = i12 * 64;
        this.f85839i = i13;
        this.f85840j = i13;
        this.f85841k = i13;
        this.f85842l = i13;
        this.f85843m = i13;
        this.f85844n = i13;
        this.f85845o = i13 / 8;
        this.f85846p = i13 / 8;
        int i14 = i13 / 8;
        this.f85847q = i14;
        this.f85848r = i13 / 8;
        int i15 = i13 / 8;
        this.f85849s = i15;
        this.f85850t = i13 / 8;
        int i16 = ((i11 * i10) * 8) / 8;
        this.f85837g = ((i11 * 64) / 8) + i16;
        int i17 = i16 + 16;
        this.f85836f = i17;
        this.f85835e = i14 + i17 + (i10 * 16) + i15;
        this.f85838h = sArr;
        this.f85851u = a0Var;
        this.f85852v = gVar;
    }

    public final byte[] a(byte[] bArr, byte[] bArr2, short s10) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr3[i10] = (byte) (((~s10) & bArr[i10] & 255) | (bArr2[i10] & s10 & 255));
        }
        return bArr3;
    }

    public final short b(short[] sArr, short[] sArr2, short[] sArr3, short[] sArr4) {
        short s10 = 0;
        for (short s11 = 0; s11 < sArr.length; s11 = (short) (s11 + 1)) {
            s10 = (short) (s10 | (sArr[s11] ^ sArr3[s11]));
        }
        for (short s12 = 0; s12 < sArr2.length; s12 = (short) (s12 + 1)) {
            s10 = (short) ((sArr2[s12] ^ sArr4[s12]) | s10);
        }
        return s10 == 0 ? (short) 0 : (short) -1;
    }

    public final byte[] c(short[] sArr) {
        int i10 = this.f85834d;
        short s10 = (short) ((1 << i10) - 1);
        short s11 = (short) ((1 << this.f85831a) - 1);
        byte[] bArr = new byte[i10 * 8];
        int i11 = 0;
        for (int i12 = 0; i12 < 8; i12++) {
            long j10 = 0;
            for (int i13 = 0; i13 < 8; i13++) {
                int i14 = sArr[i11] & s11;
                int i15 = this.f85831a;
                j10 |= (((short) ((i14 + (1 << ((i15 - r14) - 1))) >> (i15 - r14))) & s10) << (this.f85834d * i13);
                i11++;
            }
            int i16 = 0;
            while (true) {
                int i17 = this.f85834d;
                if (i16 < i17) {
                    bArr[(i17 * i12) + i16] = (byte) ((j10 >> (i16 * 8)) & 255);
                    i16++;
                }
            }
        }
        return bArr;
    }

    public final short[] d(byte[] bArr) {
        int i10;
        short[] sArr = new short[64];
        int i11 = 0;
        byte b10 = 1;
        for (int i12 = 0; i12 < 8; i12++) {
            for (int i13 = 0; i13 < 8; i13++) {
                int i14 = 0;
                int i15 = 0;
                while (true) {
                    i10 = this.f85834d;
                    if (i14 < i10) {
                        i15 += (1 << i14) * ((bArr[i11] & b10) == b10 ? 1 : 0);
                        b10 = (byte) (b10 << 1);
                        if (b10 == 0) {
                            i11++;
                            b10 = 1;
                        }
                        i14++;
                    }
                }
                sArr[(i12 * 8) + i13] = (short) (i15 * (this.f85832b / (1 << i10)));
            }
        }
        return sArr;
    }

    public int e() {
        return this.f85837g;
    }

    public int f() {
        return this.f85835e;
    }

    public int g() {
        return this.f85836f;
    }

    public int h() {
        return this.f85850t;
    }

    public void i(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10 = ((this.f85833c * 8) * this.f85831a) / 8;
        byte[] X10 = org.bouncycastle.util.a.X(bArr2, 0, i10);
        byte[] X11 = org.bouncycastle.util.a.X(bArr2, i10, ((this.f85831a * 64) / 8) + i10);
        int i11 = this.f85847q;
        byte[] X12 = org.bouncycastle.util.a.X(bArr3, 0, i11);
        int i12 = i11 + 16;
        byte[] X13 = org.bouncycastle.util.a.X(bArr3, i11, i12);
        int i13 = (((this.f85831a * this.f85833c) * 8) / 8) + i12;
        byte[] X14 = org.bouncycastle.util.a.X(bArr3, i12, i13);
        int i14 = ((this.f85833c * 128) / 8) + i13;
        byte[] X15 = org.bouncycastle.util.a.X(bArr3, i13, i14);
        short[] sArr = new short[this.f85833c * 8];
        for (int i15 = 0; i15 < 8; i15++) {
            int i16 = 0;
            while (true) {
                int i17 = this.f85833c;
                if (i16 < i17) {
                    sArr[(i15 * i17) + i16] = p.C(X15, (i17 * i15 * 2) + (i16 * 2));
                    i16++;
                }
            }
        }
        short[] o10 = o(sArr, 8, this.f85833c);
        byte[] X16 = org.bouncycastle.util.a.X(bArr3, i14, this.f85849s + i14);
        short[] s10 = s(X10, 8, this.f85833c);
        short[] s11 = s(X11, 8, 8);
        int i18 = this.f85833c;
        byte[] c10 = c(n(s11, m(s10, 8, i18, o10, i18, 8), 8, 8));
        byte[] bArr4 = new byte[this.f85846p + this.f85848r];
        this.f85851u.update(X16, 0, this.f85849s);
        this.f85851u.update(c10, 0, this.f85845o);
        this.f85851u.e(bArr4, 0, this.f85846p + this.f85848r);
        int i19 = this.f85846p;
        byte[] X17 = org.bouncycastle.util.a.X(bArr4, i19, this.f85848r + i19);
        int i20 = ((this.f85833c * 16) + 64) * 2;
        byte[] bArr5 = new byte[i20];
        this.f85851u.update(Opcodes.OPC_fcmpg);
        this.f85851u.update(bArr4, 0, this.f85846p);
        this.f85851u.e(bArr5, 0, i20);
        int i21 = (this.f85833c * 16) + 64;
        short[] sArr2 = new short[i21];
        for (int i22 = 0; i22 < i21; i22++) {
            sArr2[i22] = p.C(bArr5, i22 * 2);
        }
        short[] r10 = r(sArr2, 0, 8, this.f85833c);
        int i23 = this.f85833c;
        short[] r11 = r(sArr2, i23 * 8, 8, i23);
        short[] a10 = this.f85852v.a(X13);
        int i24 = this.f85833c;
        short[] l10 = l(m(r10, 8, i24, a10, i24, i24), r11, 8, this.f85833c);
        short[] r12 = r(sArr2, this.f85833c * 16, 8, 8);
        short[] s12 = s(X14, this.f85833c, 8);
        int i25 = this.f85833c;
        byte[] a11 = a(X17, X12, b(s10, s11, l10, l(l(m(r10, 8, i25, s12, i25, 8), r12, 8, 8), d(c10), 8, 8)));
        this.f85851u.update(X10, 0, X10.length);
        this.f85851u.update(X11, 0, X11.length);
        this.f85851u.update(a11, 0, a11.length);
        this.f85851u.e(bArr, 0, this.f85850t);
    }

    public void j(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        byte[] X10 = org.bouncycastle.util.a.X(bArr3, 0, 16);
        byte[] X11 = org.bouncycastle.util.a.X(bArr3, 16, this.f85836f);
        byte[] bArr4 = new byte[this.f85845o];
        secureRandom.nextBytes(bArr4);
        byte[] bArr5 = new byte[this.f85849s];
        this.f85851u.update(bArr3, 0, this.f85836f);
        this.f85851u.e(bArr5, 0, this.f85849s);
        byte[] bArr6 = new byte[this.f85840j + this.f85842l];
        this.f85851u.update(bArr5, 0, this.f85849s);
        this.f85851u.update(bArr4, 0, this.f85845o);
        this.f85851u.e(bArr6, 0, this.f85846p + this.f85848r);
        byte[] X12 = org.bouncycastle.util.a.X(bArr6, 0, this.f85846p);
        int i10 = this.f85846p;
        byte[] X13 = org.bouncycastle.util.a.X(bArr6, i10, this.f85848r + i10);
        int i11 = ((this.f85833c * 16) + 64) * 2;
        byte[] bArr7 = new byte[i11];
        this.f85851u.update(Opcodes.OPC_fcmpg);
        this.f85851u.update(X12, 0, X12.length);
        this.f85851u.e(bArr7, 0, i11);
        int i12 = i11 / 2;
        short[] sArr = new short[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            sArr[i13] = p.C(bArr7, i13 * 2);
        }
        short[] r10 = r(sArr, 0, 8, this.f85833c);
        int i14 = this.f85833c;
        short[] r11 = r(sArr, i14 * 8, 8, i14);
        short[] a10 = this.f85852v.a(X10);
        int i15 = this.f85833c;
        byte[] p10 = p(l(m(r10, 8, i15, a10, i15, i15), r11, 8, this.f85833c));
        short[] r12 = r(sArr, this.f85833c * 16, 8, 8);
        short[] s10 = s(X11, this.f85833c, 8);
        int i16 = this.f85833c;
        byte[] p11 = p(l(l(m(r10, 8, i16, s10, i16, 8), r12, 8, 8), d(bArr4), 8, 8));
        System.arraycopy(org.bouncycastle.util.a.B(p10, p11), 0, bArr, 0, this.f85837g);
        this.f85851u.update(p10, 0, p10.length);
        this.f85851u.update(p11, 0, p11.length);
        this.f85851u.update(X13, 0, this.f85848r);
        this.f85851u.e(bArr2, 0, this.f85847q);
    }

    public void k(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        byte[] bArr3 = new byte[this.f85847q + this.f85846p + 16];
        secureRandom.nextBytes(bArr3);
        byte[] X10 = org.bouncycastle.util.a.X(bArr3, 0, this.f85847q);
        int i10 = this.f85847q;
        byte[] X11 = org.bouncycastle.util.a.X(bArr3, i10, this.f85846p + i10);
        int i11 = this.f85847q;
        int i12 = this.f85846p;
        byte[] X12 = org.bouncycastle.util.a.X(bArr3, i11 + i12, i11 + i12 + 16);
        byte[] bArr4 = new byte[16];
        this.f85851u.update(X12, 0, X12.length);
        this.f85851u.e(bArr4, 0, 16);
        short[] a10 = this.f85852v.a(bArr4);
        int i13 = this.f85833c * 32;
        byte[] bArr5 = new byte[i13];
        this.f85851u.update(Opcodes.OPC_swap);
        this.f85851u.update(X11, 0, X11.length);
        this.f85851u.e(bArr5, 0, i13);
        int i14 = this.f85833c * 16;
        short[] sArr = new short[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            sArr[i15] = p.C(bArr5, i15 * 2);
        }
        short[] r10 = r(sArr, 0, 8, this.f85833c);
        short[] o10 = o(r10, 8, this.f85833c);
        int i16 = this.f85833c;
        short[] r11 = r(sArr, i16 * 8, i16, 8);
        int i17 = this.f85833c;
        System.arraycopy(org.bouncycastle.util.a.B(bArr4, p(l(m(a10, i17, i17, o10, i17, 8), r11, this.f85833c, 8))), 0, bArr, 0, this.f85836f);
        int i18 = this.f85849s;
        byte[] bArr6 = new byte[i18];
        this.f85851u.update(bArr, 0, bArr.length);
        this.f85851u.e(bArr6, 0, i18);
        System.arraycopy(org.bouncycastle.util.a.B(X10, bArr), 0, bArr2, 0, this.f85847q + this.f85836f);
        for (int i19 = 0; i19 < 8; i19++) {
            int i20 = 0;
            while (true) {
                int i21 = this.f85833c;
                if (i20 < i21) {
                    System.arraycopy(p.S(r10[(i21 * i19) + i20]), 0, bArr2, this.f85847q + this.f85836f + (this.f85833c * i19 * 2) + (i20 * 2), 2);
                    i20++;
                }
            }
        }
        int i22 = this.f85835e;
        int i23 = this.f85849s;
        System.arraycopy(bArr6, 0, bArr2, i22 - i23, i23);
    }

    public final short[] l(short[] sArr, short[] sArr2, int i10, int i11) {
        int i12 = this.f85832b - 1;
        short[] sArr3 = new short[i10 * i11];
        for (int i13 = 0; i13 < i10; i13++) {
            for (int i14 = 0; i14 < i11; i14++) {
                int i15 = (i13 * i11) + i14;
                sArr3[i15] = (short) ((sArr[i15] + sArr2[i15]) & i12);
            }
        }
        return sArr3;
    }

    public final short[] m(short[] sArr, int i10, int i11, short[] sArr2, int i12, int i13) {
        int i14 = this.f85832b - 1;
        short[] sArr3 = new short[i10 * i13];
        for (int i15 = 0; i15 < i10; i15++) {
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = 0;
                for (int i18 = 0; i18 < i11; i18++) {
                    i17 += sArr[(i15 * i11) + i18] * sArr2[(i18 * i13) + i16];
                }
                sArr3[(i15 * i13) + i16] = (short) (i17 & i14);
            }
        }
        return sArr3;
    }

    public final short[] n(short[] sArr, short[] sArr2, int i10, int i11) {
        int i12 = this.f85832b - 1;
        short[] sArr3 = new short[i10 * i11];
        for (int i13 = 0; i13 < i10; i13++) {
            for (int i14 = 0; i14 < i11; i14++) {
                int i15 = (i13 * i11) + i14;
                sArr3[i15] = (short) ((sArr[i15] - sArr2[i15]) & i12);
            }
        }
        return sArr3;
    }

    public final short[] o(short[] sArr, int i10, int i11) {
        short[] sArr2 = new short[i10 * i11];
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                sArr2[(i12 * i10) + i13] = sArr[(i13 * i11) + i12];
            }
        }
        return sArr2;
    }

    public final byte[] p(short[] sArr) {
        int length = sArr.length;
        int i10 = (this.f85831a * length) / 8;
        byte[] bArr = new byte[i10];
        short s10 = 0;
        short s11 = 0;
        byte b10 = 0;
        short s12 = 0;
        while (s10 < i10 && (s11 < length || (s11 == length && b10 > 0))) {
            byte b11 = 0;
            while (b11 < 8) {
                int i11 = 8 - b11;
                int min = Math.min(i11, (int) b10);
                int i12 = b10 - min;
                bArr[s10] = (byte) (bArr[s10] + (((byte) (((short) ((1 << min) - 1)) & (s12 >> i12))) << (i11 - min)));
                b11 = (byte) (b11 + min);
                b10 = (byte) i12;
                if (b10 == 0) {
                    if (s11 >= length) {
                        break;
                    }
                    short s13 = sArr[s11];
                    s11 = (short) (s11 + 1);
                    s12 = s13;
                    b10 = (byte) this.f85831a;
                }
            }
            if (b11 == 8) {
                s10 = (short) (s10 + 1);
            }
        }
        return bArr;
    }

    public final short q(short s10) {
        int i10 = s10 & 65535;
        short s11 = (short) (i10 >>> 1);
        int i11 = 0;
        short s12 = 0;
        while (true) {
            short[] sArr = this.f85838h;
            if (i11 >= sArr.length) {
                break;
            }
            if (s11 > sArr[i11]) {
                s12 = (short) (s12 + 1);
            }
            i11++;
        }
        return i10 % 2 == 1 ? (short) ((s12 * (-1)) & 65535) : s12;
    }

    public final short[] r(short[] sArr, int i10, int i11, int i12) {
        short[] sArr2 = new short[i11 * i12];
        for (int i13 = 0; i13 < i11; i13++) {
            for (int i14 = 0; i14 < i12; i14++) {
                int i15 = (i13 * i12) + i14;
                sArr2[i15] = q(sArr[i15 + i10]);
            }
        }
        return sArr2;
    }

    public final short[] s(byte[] bArr, int i10, int i11) {
        int i12 = i10 * i11;
        short[] sArr = new short[i12];
        short s10 = 0;
        short s11 = 0;
        byte b10 = 0;
        byte b11 = 0;
        while (s10 < i12 && (s11 < bArr.length || (s11 == bArr.length && b10 > 0))) {
            byte b12 = 0;
            while (true) {
                int i13 = this.f85831a;
                if (b12 >= i13) {
                    break;
                }
                int min = Math.min(i13 - b12, (int) b10);
                short s12 = (short) (((1 << min) - 1) & 65535);
                sArr[s10] = (short) (((sArr[s10] & 65535) + ((((byte) ((((b11 & 255) >>> ((b10 & 255) - min)) & (s12 & 65535)) & 255)) & 255) << ((this.f85831a - (b12 & 255)) - min))) & 65535);
                b12 = (byte) (b12 + min);
                byte b13 = (byte) (b10 - min);
                byte b14 = (byte) ((~(s12 << b13)) & b11);
                if (b13 != 0) {
                    b11 = b14;
                    b10 = b13;
                } else {
                    if (s11 >= bArr.length) {
                        b11 = b14;
                        b10 = b13;
                        break;
                    }
                    byte b15 = bArr[s11];
                    s11 = (short) (s11 + 1);
                    b10 = 8;
                    b11 = b15;
                }
            }
            if (b12 == this.f85831a) {
                s10 = (short) (s10 + 1);
            }
        }
        return sArr;
    }
}
