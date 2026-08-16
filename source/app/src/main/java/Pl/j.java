package Pl;

import Bi.InterfaceC2392y;
import com.bumptech.glide.load.engine.GlideException;
import java.lang.reflect.Array;

public class j {

    public InterfaceC2392y f21697a;

    public int f21698b;

    public int f21699c;

    public byte[] f21700d;

    public byte[] f21701e;

    public byte[] f21702f;

    public int f21703g;

    public Ql.a f21704h;

    public int f21705i;

    public int f21706j;

    public int f21707k;

    public int f21708l;

    public int f21709m;

    public int f21710n;

    public long f21711o;

    public long f21712p;

    public int f21713q;

    public int f21714r;

    public int f21715s;

    public byte[] f21716t;

    public j(InterfaceC2392y interfaceC2392y, int i10, int i11) {
        this.f21697a = interfaceC2392y;
        this.f21704h = new Ql.a(interfaceC2392y);
        this.f21698b = this.f21697a.f();
        this.f21703g = i10;
        this.f21715s = i11;
        this.f21706j = (1 << i10) - 1;
        this.f21705i = (int) Math.ceil((r3 << 3) / i10);
    }

    public int a(int i10) {
        int i11 = 1;
        int i12 = 2;
        while (i12 < i10) {
            i12 <<= 1;
            i11++;
        }
        return i11;
    }

    public byte[] b() {
        return this.f21702f;
    }

    public byte[][] c() {
        byte[][] bArr = (byte[][]) Array.newInstance(Byte.TYPE, 5, this.f21698b);
        bArr[0] = this.f21700d;
        bArr[1] = this.f21716t;
        bArr[2] = this.f21701e;
        bArr[3] = this.f21702f;
        bArr[4] = e();
        return bArr;
    }

    public int[] d() {
        return new int[]{this.f21709m, this.f21708l, this.f21710n, this.f21707k, this.f21713q, this.f21699c, this.f21715s, this.f21703g, this.f21714r};
    }

    public byte[] e() {
        long j10 = this.f21711o;
        long j11 = this.f21712p;
        return new byte[]{(byte) (j10 & 255), (byte) ((j10 >> 8) & 255), (byte) ((j10 >> 16) & 255), (byte) ((j10 >> 24) & 255), (byte) ((j10 >> 32) & 255), (byte) ((j10 >> 40) & 255), (byte) ((j10 >> 48) & 255), (byte) ((j10 >> 56) & 255), (byte) (j11 & 255), (byte) ((j11 >> 8) & 255), (byte) ((j11 >> 16) & 255), (byte) ((j11 >> 24) & 255), (byte) ((j11 >> 32) & 255), (byte) ((j11 >> 40) & 255), (byte) ((j11 >> 48) & 255), (byte) (255 & (j11 >> 56))};
    }

    public void f(byte[] bArr, byte[] bArr2) {
        int i10;
        int i11;
        this.f21701e = new byte[this.f21698b];
        this.f21697a.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.f21697a.f()];
        this.f21701e = bArr3;
        this.f21697a.c(bArr3, 0);
        int i12 = this.f21698b;
        byte[] bArr4 = new byte[i12];
        System.arraycopy(this.f21701e, 0, bArr4, 0, i12);
        int a10 = a((this.f21705i << this.f21703g) + 1);
        int i13 = this.f21703g;
        int i14 = 8;
        if (8 % i13 == 0) {
            int i15 = 8 / i13;
            i10 = 0;
            for (int i16 = 0; i16 < this.f21698b; i16++) {
                for (int i17 = 0; i17 < i15; i17++) {
                    byte b10 = bArr4[i16];
                    i10 += this.f21706j & b10;
                    bArr4[i16] = (byte) (b10 >>> this.f21703g);
                }
            }
            int i18 = (this.f21705i << this.f21703g) - i10;
            this.f21714r = i18;
            int i19 = 0;
            while (i19 < a10) {
                i10 += this.f21706j & i18;
                int i20 = this.f21703g;
                i18 >>>= i20;
                i19 += i20;
            }
        } else if (i13 < 8) {
            int i21 = this.f21698b / i13;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i22 < i21) {
                long j10 = 0;
                for (int i25 = 0; i25 < this.f21703g; i25++) {
                    j10 ^= (bArr4[i23] & 255) << (i25 << 3);
                    i23++;
                }
                int i26 = 0;
                while (i26 < i14) {
                    i24 += (int) (this.f21706j & j10);
                    j10 >>>= this.f21703g;
                    i26++;
                    i21 = i21;
                    i14 = 8;
                }
                i22++;
                i14 = 8;
            }
            int i27 = this.f21698b % this.f21703g;
            long j11 = 0;
            for (int i28 = 0; i28 < i27; i28++) {
                j11 ^= (bArr4[i23] & 255) << (i28 << 3);
                i23++;
            }
            int i29 = i27 << 3;
            int i30 = 0;
            while (i30 < i29) {
                i24 += (int) (this.f21706j & j11);
                int i31 = this.f21703g;
                j11 >>>= i31;
                i30 += i31;
            }
            int i32 = (this.f21705i << this.f21703g) - i24;
            this.f21714r = i32;
            int i33 = 0;
            i10 = i24;
            while (i33 < a10) {
                i10 += this.f21706j & i32;
                int i34 = this.f21703g;
                i32 >>>= i34;
                i33 += i34;
            }
        } else if (i13 < 57) {
            int i35 = 0;
            int i36 = 0;
            while (true) {
                i11 = this.f21698b;
                int i37 = this.f21703g;
                if (i35 > (i11 << 3) - i37) {
                    break;
                }
                int i38 = i35 % 8;
                i35 += i37;
                int i39 = 0;
                long j12 = 0;
                for (int i40 = i35 >>> 3; i40 < ((i35 + 7) >>> 3); i40++) {
                    j12 ^= (bArr4[i40] & 255) << (i39 << 3);
                    i39++;
                }
                i36 = (int) (i36 + ((j12 >>> i38) & this.f21706j));
            }
            int i41 = i35 >>> 3;
            if (i41 < i11) {
                int i42 = i35 % 8;
                int i43 = 0;
                long j13 = 0;
                while (i41 < this.f21698b) {
                    j13 ^= (bArr4[i41] & 255) << (i43 << 3);
                    i43++;
                    i41++;
                }
                i36 = (int) (i36 + ((j13 >>> i42) & this.f21706j));
            }
            int i44 = (this.f21705i << this.f21703g) - i36;
            this.f21714r = i44;
            int i45 = 0;
            i10 = i36;
            while (i45 < a10) {
                i10 += this.f21706j & i44;
                int i46 = this.f21703g;
                i44 >>>= i46;
                i45 += i46;
            }
        } else {
            i10 = 0;
        }
        this.f21699c = this.f21705i + ((int) Math.ceil(a10 / this.f21703g));
        this.f21713q = (int) Math.ceil((r2 + i10) / (1 << this.f21715s));
        int i47 = this.f21699c;
        int i48 = this.f21698b;
        this.f21702f = new byte[i47 * i48];
        this.f21709m = 0;
        this.f21708l = 0;
        this.f21710n = 0;
        this.f21711o = 0L;
        this.f21707k = 0;
        this.f21700d = new byte[i48];
        byte[] bArr5 = new byte[i48];
        this.f21716t = bArr5;
        System.arraycopy(bArr, 0, bArr5, 0, i48);
    }

    public final void g() {
        long j10;
        int i10 = this.f21703g;
        if (8 % i10 == 0) {
            int i11 = this.f21708l;
            if (i11 == 0) {
                this.f21700d = this.f21704h.c(this.f21716t);
                int i12 = this.f21710n;
                if (i12 < this.f21698b) {
                    byte[] bArr = this.f21701e;
                    byte b10 = bArr[i12];
                    this.f21708l = this.f21706j & b10;
                    bArr[i12] = (byte) (b10 >>> this.f21703g);
                } else {
                    int i13 = this.f21714r;
                    this.f21708l = this.f21706j & i13;
                    this.f21714r = i13 >>> this.f21703g;
                }
            } else if (i11 > 0) {
                InterfaceC2392y interfaceC2392y = this.f21697a;
                byte[] bArr2 = this.f21700d;
                interfaceC2392y.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.f21697a.f()];
                this.f21700d = bArr3;
                this.f21697a.c(bArr3, 0);
                this.f21708l--;
            }
            if (this.f21708l == 0) {
                byte[] bArr4 = this.f21700d;
                byte[] bArr5 = this.f21702f;
                int i14 = this.f21709m;
                int i15 = this.f21698b;
                System.arraycopy(bArr4, 0, bArr5, i14 * i15, i15);
                int i16 = this.f21709m + 1;
                this.f21709m = i16;
                if (i16 % (8 / this.f21703g) == 0) {
                    this.f21710n++;
                    return;
                }
                return;
            }
            return;
        }
        if (i10 < 8) {
            int i17 = this.f21708l;
            if (i17 == 0) {
                int i18 = this.f21709m;
                if (i18 % 8 == 0) {
                    int i19 = this.f21710n;
                    int i20 = this.f21698b;
                    if (i19 < i20) {
                        this.f21712p = 0L;
                        if (i18 < ((i20 / i10) << 3)) {
                            for (int i21 = 0; i21 < this.f21703g; i21++) {
                                long j11 = this.f21712p;
                                byte[] bArr6 = this.f21701e;
                                int i22 = this.f21710n;
                                this.f21712p = j11 ^ ((bArr6[i22] & 255) << (i21 << 3));
                                this.f21710n = i22 + 1;
                            }
                        } else {
                            for (int i23 = 0; i23 < this.f21698b % this.f21703g; i23++) {
                                long j12 = this.f21712p;
                                byte[] bArr7 = this.f21701e;
                                int i24 = this.f21710n;
                                this.f21712p = j12 ^ ((bArr7[i24] & 255) << (i23 << 3));
                                this.f21710n = i24 + 1;
                            }
                        }
                    }
                }
                if (this.f21709m == this.f21705i) {
                    this.f21712p = this.f21714r;
                }
                this.f21708l = (int) (this.f21712p & this.f21706j);
                this.f21700d = this.f21704h.c(this.f21716t);
            } else if (i17 > 0) {
                InterfaceC2392y interfaceC2392y2 = this.f21697a;
                byte[] bArr8 = this.f21700d;
                interfaceC2392y2.update(bArr8, 0, bArr8.length);
                byte[] bArr9 = new byte[this.f21697a.f()];
                this.f21700d = bArr9;
                this.f21697a.c(bArr9, 0);
                this.f21708l--;
            }
            if (this.f21708l != 0) {
                return;
            }
            byte[] bArr10 = this.f21700d;
            byte[] bArr11 = this.f21702f;
            int i25 = this.f21709m;
            int i26 = this.f21698b;
            System.arraycopy(bArr10, 0, bArr11, i25 * i26, i26);
            this.f21712p >>>= this.f21703g;
        } else {
            if (i10 >= 57) {
                return;
            }
            long j13 = this.f21711o;
            if (j13 == 0) {
                this.f21712p = 0L;
                this.f21710n = 0;
                int i27 = this.f21707k;
                int i28 = i27 % 8;
                int i29 = i27 >>> 3;
                int i30 = this.f21698b;
                if (i29 < i30) {
                    if (i27 <= (i30 << 3) - i10) {
                        int i31 = i27 + i10;
                        this.f21707k = i31;
                        i30 = (i31 + 7) >>> 3;
                    } else {
                        this.f21707k = i27 + i10;
                    }
                    while (true) {
                        j10 = this.f21712p;
                        if (i29 >= i30) {
                            break;
                        }
                        int i32 = this.f21701e[i29] & 255;
                        int i33 = this.f21710n;
                        this.f21712p = j10 ^ (i32 << (i33 << 3));
                        this.f21710n = i33 + 1;
                        i29++;
                    }
                    long j14 = j10 >>> i28;
                    this.f21712p = j14;
                    this.f21711o = j14 & this.f21706j;
                } else {
                    int i34 = this.f21714r;
                    this.f21711o = this.f21706j & i34;
                    this.f21714r = i34 >>> i10;
                }
                this.f21700d = this.f21704h.c(this.f21716t);
            } else if (j13 > 0) {
                InterfaceC2392y interfaceC2392y3 = this.f21697a;
                byte[] bArr12 = this.f21700d;
                interfaceC2392y3.update(bArr12, 0, bArr12.length);
                byte[] bArr13 = new byte[this.f21697a.f()];
                this.f21700d = bArr13;
                this.f21697a.c(bArr13, 0);
                this.f21711o--;
            }
            if (this.f21711o != 0) {
                return;
            }
            byte[] bArr14 = this.f21700d;
            byte[] bArr15 = this.f21702f;
            int i35 = this.f21709m;
            int i36 = this.f21698b;
            System.arraycopy(bArr14, 0, bArr15, i35 * i36, i36);
        }
        this.f21709m++;
    }

    public boolean h() {
        for (int i10 = 0; i10 < this.f21713q; i10++) {
            if (this.f21709m < this.f21699c) {
                g();
            }
            if (this.f21709m == this.f21699c) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        String str = "" + this.f21712p + GlideException.a.f59088e;
        int[] d10 = d();
        byte[][] c10 = c();
        for (int i10 = 0; i10 < 9; i10++) {
            str = str + d10[i10] + " ";
        }
        for (int i11 = 0; i11 < 5; i11++) {
            str = str + new String(em.h.h(c10[i11])) + " ";
        }
        return str;
    }

    public j(InterfaceC2392y interfaceC2392y, byte[][] bArr, int[] iArr) {
        this.f21697a = interfaceC2392y;
        this.f21704h = new Ql.a(interfaceC2392y);
        this.f21709m = iArr[0];
        this.f21708l = iArr[1];
        this.f21710n = iArr[2];
        this.f21707k = iArr[3];
        this.f21713q = iArr[4];
        this.f21699c = iArr[5];
        this.f21715s = iArr[6];
        this.f21703g = iArr[7];
        this.f21714r = iArr[8];
        this.f21698b = this.f21697a.f();
        int i10 = this.f21703g;
        this.f21706j = (1 << i10) - 1;
        this.f21705i = (int) Math.ceil((r10 << 3) / i10);
        this.f21700d = bArr[0];
        this.f21716t = bArr[1];
        this.f21701e = bArr[2];
        this.f21702f = bArr[3];
        byte[] bArr2 = bArr[4];
        this.f21711o = ((bArr2[1] & 255) << 8) | (bArr2[0] & 255) | ((bArr2[2] & 255) << 16) | ((bArr2[3] & 255) << 24) | ((bArr2[4] & 255) << 32) | ((bArr2[5] & 255) << 40) | ((bArr2[6] & 255) << 48) | ((bArr2[7] & 255) << 56);
        this.f21712p = (bArr2[8] & 255) | ((bArr2[9] & 255) << 8) | ((bArr2[10] & 255) << 16) | ((bArr2[11] & 255) << 24) | ((bArr2[12] & 255) << 32) | ((bArr2[13] & 255) << 40) | ((bArr2[14] & 255) << 48) | ((bArr2[15] & 255) << 56);
    }
}
