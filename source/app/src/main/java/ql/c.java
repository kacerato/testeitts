package Ql;

import Bi.InterfaceC2392y;

public class c {

    public InterfaceC2392y f22485a;

    public int f22486b;

    public int f22487c;

    public c(InterfaceC2392y interfaceC2392y, int i10) {
        this.f22487c = i10;
        this.f22485a = interfaceC2392y;
        this.f22486b = interfaceC2392y.f();
    }

    public byte[] a(byte[] bArr, byte[] bArr2) {
        int i10;
        int i11;
        int i12;
        c cVar = this;
        int i13 = cVar.f22486b;
        byte[] bArr3 = new byte[i13];
        int i14 = 0;
        cVar.f22485a.update(bArr, 0, bArr.length);
        cVar.f22485a.c(bArr3, 0);
        int i15 = cVar.f22486b << 3;
        int i16 = cVar.f22487c;
        int i17 = (i15 + (i16 - 1)) / i16;
        int b10 = cVar.b((i17 << i16) + 1);
        int i18 = cVar.f22487c;
        int i19 = cVar.f22486b;
        int i20 = i19 * ((((b10 + i18) - 1) / i18) + i17);
        if (i20 != bArr2.length) {
            return null;
        }
        byte[] bArr4 = new byte[i20];
        int i21 = 8;
        if (8 % i18 == 0) {
            int i22 = 8 / i18;
            int i23 = (1 << i18) - 1;
            int i24 = 0;
            int i25 = 0;
            int i26 = 0;
            while (i26 < i13) {
                int i27 = i25;
                int i28 = 0;
                while (i28 < i22) {
                    int i29 = bArr3[i26] & i23;
                    int i30 = i24 + i29;
                    int i31 = cVar.f22486b;
                    int i32 = i26;
                    d(bArr2, i27 * i31, i23 - i29, bArr4, i27 * i31);
                    bArr3[i32] = (byte) (bArr3[i32] >>> cVar.f22487c);
                    i27++;
                    i28++;
                    i24 = i30;
                    i26 = i32;
                    i22 = i22;
                }
                i26++;
                i25 = i27;
            }
            int i33 = i25;
            int i34 = (i17 << cVar.f22487c) - i24;
            int i35 = 0;
            while (i35 < b10) {
                int i36 = cVar.f22486b;
                d(bArr2, i33 * i36, i23 - (i34 & i23), bArr4, i33 * i36);
                int i37 = cVar.f22487c;
                i34 >>>= i37;
                i33++;
                i35 += i37;
            }
            i12 = 0;
            i10 = i20;
        } else {
            long j10 = 0;
            if (i18 < 8) {
                int i38 = i19 / i18;
                int i39 = (1 << i18) - 1;
                int i40 = 0;
                int i41 = 0;
                int i42 = 0;
                int i43 = 0;
                while (i43 < i38) {
                    int i44 = i40;
                    int i45 = i14;
                    long j11 = 0;
                    while (i45 < cVar.f22487c) {
                        j11 ^= (bArr3[i44] & 255) << (i45 << 3);
                        i44++;
                        i45++;
                        b10 = b10;
                    }
                    int i46 = b10;
                    int i47 = i42;
                    int i48 = 0;
                    while (i48 < i21) {
                        int i49 = (int) (j11 & i39);
                        int i50 = i41 + i49;
                        int i51 = this.f22486b;
                        cVar = this;
                        d(bArr2, i47 * i51, i39 - i49, bArr4, i47 * i51);
                        j11 >>>= cVar.f22487c;
                        i47++;
                        i48++;
                        i39 = i39;
                        i21 = 8;
                        i43 = i43;
                        i41 = i50;
                    }
                    i43++;
                    i42 = i47;
                    i40 = i44;
                    b10 = i46;
                    i14 = 0;
                }
                int i52 = b10;
                int i53 = i39;
                int i54 = cVar.f22486b % cVar.f22487c;
                int i55 = 0;
                while (i55 < i54) {
                    j10 ^= (bArr3[i40] & 255) << (i55 << 3);
                    i40++;
                    i55++;
                    i41 = i41;
                    i42 = i42;
                }
                int i56 = i42;
                int i57 = i54 << 3;
                int i58 = 0;
                while (i58 < i57) {
                    int i59 = (int) (j10 & i53);
                    int i60 = i41 + i59;
                    int i61 = cVar.f22486b;
                    d(bArr2, i56 * i61, i53 - i59, bArr4, i56 * i61);
                    int i62 = cVar.f22487c;
                    j10 >>>= i62;
                    i56++;
                    i58 += i62;
                    i41 = i60;
                }
                int i63 = (i17 << cVar.f22487c) - i41;
                int i64 = 0;
                while (i64 < i52) {
                    int i65 = cVar.f22486b;
                    d(bArr2, i56 * i65, i53 - (i63 & i53), bArr4, i56 * i65);
                    int i66 = cVar.f22487c;
                    i63 >>>= i66;
                    i56++;
                    i64 += i66;
                }
            } else if (i18 < 57) {
                int i67 = (i19 << 3) - i18;
                int i68 = (1 << i18) - 1;
                byte[] bArr5 = new byte[i19];
                int i69 = 0;
                int i70 = 0;
                int i71 = 0;
                while (i69 <= i67) {
                    int i72 = i69 >>> 3;
                    int i73 = i69 % 8;
                    int i74 = i67;
                    int i75 = i69 + cVar.f22487c;
                    int i76 = (i75 + 7) >>> 3;
                    long j12 = 0;
                    int i77 = 0;
                    while (i72 < i76) {
                        j12 ^= (bArr3[i72] & 255) << (i77 << 3);
                        i77++;
                        i72++;
                        i76 = i76;
                        i75 = i75;
                    }
                    int i78 = i75;
                    long j13 = j12 >>> i73;
                    int i79 = i20;
                    long j14 = i68;
                    long j15 = j13 & j14;
                    int i80 = i17;
                    i70 = (int) (i70 + j15);
                    int i81 = cVar.f22486b;
                    System.arraycopy(bArr2, i71 * i81, bArr5, 0, i81);
                    for (long j16 = j15; j16 < j14; j16++) {
                        cVar.f22485a.update(bArr5, 0, i19);
                        cVar.f22485a.c(bArr5, 0);
                    }
                    int i82 = cVar.f22486b;
                    System.arraycopy(bArr5, 0, bArr4, i71 * i82, i82);
                    i71++;
                    i67 = i74;
                    i17 = i80;
                    i20 = i79;
                    i69 = i78;
                }
                int i83 = i17;
                i10 = i20;
                int i84 = i69 >>> 3;
                if (i84 < cVar.f22486b) {
                    int i85 = i69 % 8;
                    int i86 = 0;
                    while (true) {
                        i11 = cVar.f22486b;
                        if (i84 >= i11) {
                            break;
                        }
                        j10 ^= (bArr3[i84] & 255) << (i86 << 3);
                        i86++;
                        i84++;
                    }
                    long j17 = i68;
                    long j18 = (j10 >>> i85) & j17;
                    i70 = (int) (i70 + j18);
                    System.arraycopy(bArr2, i71 * i11, bArr5, 0, i11);
                    while (j18 < j17) {
                        cVar.f22485a.update(bArr5, 0, i19);
                        cVar.f22485a.c(bArr5, 0);
                        j18++;
                    }
                    int i87 = cVar.f22486b;
                    System.arraycopy(bArr5, 0, bArr4, i71 * i87, i87);
                    i71++;
                }
                int i88 = (i83 << cVar.f22487c) - i70;
                int i89 = 0;
                while (i89 < b10) {
                    int i90 = cVar.f22486b;
                    System.arraycopy(bArr2, i71 * i90, bArr5, 0, i90);
                    for (long j19 = i88 & i68; j19 < i68; j19++) {
                        cVar.f22485a.update(bArr5, 0, i19);
                        cVar.f22485a.c(bArr5, 0);
                    }
                    int i91 = cVar.f22486b;
                    System.arraycopy(bArr5, 0, bArr4, i71 * i91, i91);
                    int i92 = cVar.f22487c;
                    i88 >>>= i92;
                    i71++;
                    i89 += i92;
                }
                i12 = 0;
            }
            i10 = i20;
            i12 = 0;
        }
        cVar.f22485a.update(bArr4, i12, i10);
        byte[] bArr6 = new byte[cVar.f22486b];
        cVar.f22485a.c(bArr6, i12);
        return bArr6;
    }

    public int b(int i10) {
        int i11 = 1;
        int i12 = 2;
        while (i12 < i10) {
            i12 <<= 1;
            i11++;
        }
        return i11;
    }

    public int c() {
        int f10 = this.f22485a.f();
        int i10 = this.f22487c;
        int i11 = ((f10 << 3) + (i10 - 1)) / i10;
        int b10 = b((i11 << i10) + 1);
        return f10 * (i11 + (((b10 + r3) - 1) / this.f22487c));
    }

    public final void d(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (i11 < 1) {
            System.arraycopy(bArr, i10, bArr2, i12, this.f22486b);
            return;
        }
        this.f22485a.update(bArr, i10, this.f22486b);
        while (true) {
            this.f22485a.c(bArr2, i12);
            i11--;
            if (i11 <= 0) {
                return;
            } else {
                this.f22485a.update(bArr2, i12, this.f22486b);
            }
        }
    }
}
