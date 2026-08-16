package sn;

public final class a {

    public static final int f109672a = 8191;

    public static final int f109673b = 73725;

    public static final int f109674c = 13;

    public static final int f109675d = 8192;

    public static final int f109676e = 8191;

    public static final int f109677f = 32;

    public static final int f109678g = 264;

    public static final int f109679h = 65536;

    public static final int f109680i = 4607066;

    public static final byte f109681j = 0;

    public static final byte f109682k = 1;

    public static final byte f109683l = 0;

    public static final byte f109684m = 16;

    public static final int f109685n = 3;

    public static final int f109686o = 4;

    public static final int f109687p = 65535;

    public static final int f109688q = 32;

    public static final int f109689r = 0;

    public static final int f109690s = 1;

    public static final int f109691t = 2;

    public static int a(int inputLength) {
        return Math.max((int) (inputLength * 1.06d), 66);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0127 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b(final byte[] input, final int inOffset, final int inLength, final byte[] output, final int outOffset, final int proposedLevel) {
        int i10;
        long j10;
        int i11;
        int i12;
        int i13;
        long j11;
        int i14;
        int i15;
        int i16;
        int i17;
        char c10;
        int i18 = 2;
        int i19 = 1;
        int i20 = proposedLevel == 0 ? inLength < 65536 ? 1 : 2 : proposedLevel;
        int i21 = inLength - 2;
        int i22 = inLength - 12;
        int[] iArr = new int[8192];
        if (inLength < 4) {
            if (inLength == 0) {
                return 0;
            }
            output[outOffset] = (byte) (inLength - 1);
            int i23 = inLength - 1;
            int i24 = 1;
            for (int i25 = 0; i25 <= i23; i25++) {
                output[outOffset + i24] = input[inOffset + i25];
                i24++;
            }
            return inLength + 1;
        }
        for (int i26 = 0; i26 < 8192; i26++) {
            iArr[i26] = 0;
        }
        output[outOffset] = 31;
        output[outOffset + 1] = input[inOffset];
        output[outOffset + 2] = input[inOffset + 1];
        int i27 = 2;
        int i28 = 2;
        int i29 = 3;
        while (i27 < i22) {
            if (i20 == i18) {
                int i30 = inOffset + i27;
                int i31 = i30 - 1;
                if (input[i30] == input[i31] && e(input, i31) == e(input, i30 + 1)) {
                    i10 = i27 + 3;
                    i11 = i27 + 2;
                    i12 = i19;
                    j10 = 1;
                    if (i12 != 0) {
                        int i32 = inOffset + i10;
                        int d10 = d(input, i32);
                        int i33 = iArr[d10];
                        long j12 = i27 - i33;
                        iArr[d10] = i27;
                        if (j12 != 0) {
                            if (i20 == 1) {
                                if (j12 >= 8191) {
                                }
                                int i34 = i33 + 1;
                                int i35 = i10 + 1;
                                if (input[inOffset + i33] != input[i32]) {
                                    int i36 = i33 + 2;
                                    int i37 = i10 + 2;
                                    if (input[inOffset + i34] == input[inOffset + i35]) {
                                        int i38 = i33 + 3;
                                        int i39 = i10 + 3;
                                        if (input[inOffset + i36] == input[inOffset + i37]) {
                                            if (i20 != 2 || j12 < 8191) {
                                                j10 = j12;
                                                i11 = i38;
                                            } else {
                                                int i40 = i10 + 4;
                                                byte b10 = input[inOffset + i39];
                                                int i41 = i33 + 4;
                                                if (b10 == input[inOffset + i38]) {
                                                    i11 = i33 + 5;
                                                    if (input[inOffset + i40] == input[inOffset + i41]) {
                                                        i13 = 5;
                                                        j10 = j12;
                                                        int i42 = i13 + i27;
                                                        j11 = j10 - 1;
                                                        if (j11 == 0) {
                                                            byte b11 = input[(inOffset + i42) - 1];
                                                            while (i42 < i21) {
                                                                int i43 = i11 + 1;
                                                                if (input[inOffset + i11] != b11) {
                                                                    break;
                                                                }
                                                                i42++;
                                                                i11 = i43;
                                                            }
                                                            i14 = i22;
                                                        } else {
                                                            int i44 = i11 + 1;
                                                            int i45 = i42 + 1;
                                                            i14 = i22;
                                                            if (input[inOffset + i11] == input[inOffset + i42]) {
                                                                int i46 = i11 + 2;
                                                                int i47 = i42 + 2;
                                                                if (input[inOffset + i44] == input[inOffset + i45]) {
                                                                    int i48 = i11 + 3;
                                                                    i45 = i42 + 3;
                                                                    if (input[inOffset + i46] == input[inOffset + i47]) {
                                                                        int i49 = i11 + 4;
                                                                        i47 = i42 + 4;
                                                                        if (input[inOffset + i48] == input[inOffset + i45]) {
                                                                            int i50 = i11 + 5;
                                                                            i45 = i42 + 5;
                                                                            if (input[inOffset + i49] == input[inOffset + i47]) {
                                                                                int i51 = i11 + 6;
                                                                                i47 = i42 + 6;
                                                                                if (input[inOffset + i50] == input[inOffset + i45]) {
                                                                                    int i52 = i11 + 7;
                                                                                    i45 = i42 + 7;
                                                                                    if (input[inOffset + i51] == input[inOffset + i47]) {
                                                                                        int i53 = i11 + 8;
                                                                                        i42 += 8;
                                                                                        if (input[inOffset + i52] == input[inOffset + i45]) {
                                                                                            while (true) {
                                                                                                if (i42 >= i21) {
                                                                                                    break;
                                                                                                }
                                                                                                int i54 = i53 + 1;
                                                                                                byte b12 = input[inOffset + i53];
                                                                                                int i55 = i42 + 1;
                                                                                                if (b12 != input[inOffset + i42]) {
                                                                                                    i42 = i55;
                                                                                                    break;
                                                                                                }
                                                                                                i42 = i55;
                                                                                                i53 = i54;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                i42 = i47;
                                                            }
                                                            i42 = i45;
                                                        }
                                                        if (i28 != 0) {
                                                            output[((outOffset + i29) - i28) - 1] = (byte) (i28 - 1);
                                                        } else {
                                                            i29--;
                                                        }
                                                        int i56 = i42 - 3;
                                                        int i57 = i56 - i27;
                                                        if (i20 != 2) {
                                                            if (i57 > 262) {
                                                                while (i57 > 262) {
                                                                    output[outOffset + i29] = (byte) ((j11 >>> 8) + 224);
                                                                    output[outOffset + i29 + 1] = -3;
                                                                    output[outOffset + i29 + 2] = (byte) (j11 & 255);
                                                                    i57 -= 262;
                                                                    i29 += 3;
                                                                }
                                                            }
                                                            if (i57 < 7) {
                                                                int i58 = i29 + 1;
                                                                output[outOffset + i29] = (byte) ((i57 << 5) + (j11 >>> 8));
                                                                i15 = i29 + 2;
                                                                output[outOffset + i58] = (byte) (j11 & 255);
                                                            } else {
                                                                output[outOffset + i29] = (byte) ((j11 >>> 8) + 224);
                                                                int i59 = i29 + 2;
                                                                output[outOffset + i29 + 1] = (byte) (i57 - 7);
                                                                i15 = i29 + 3;
                                                                output[outOffset + i59] = (byte) (j11 & 255);
                                                            }
                                                        } else if (j11 < 8191) {
                                                            if (i57 < 7) {
                                                                int i60 = i29 + 1;
                                                                output[outOffset + i29] = (byte) ((i57 << 5) + (j11 >>> 8));
                                                                i15 = i29 + 2;
                                                                output[outOffset + i60] = (byte) (j11 & 255);
                                                            } else {
                                                                int i61 = i29 + 1;
                                                                output[outOffset + i29] = (byte) ((j11 >>> 8) + 224);
                                                                int i62 = i57 - 7;
                                                                while (i62 >= 255) {
                                                                    output[outOffset + i61] = -1;
                                                                    i62 -= 255;
                                                                    i61++;
                                                                }
                                                                output[outOffset + i61] = (byte) i62;
                                                                i15 = i61 + 2;
                                                                output[outOffset + i61 + 1] = (byte) (j11 & 255);
                                                            }
                                                        } else if (i57 < 7) {
                                                            long j13 = j10 - 8192;
                                                            output[outOffset + i29] = (byte) ((i57 << 5) + 31);
                                                            output[outOffset + i29 + 1] = -1;
                                                            int i63 = i29 + 3;
                                                            output[outOffset + i29 + 2] = (byte) (j13 >>> 8);
                                                            i15 = i29 + 4;
                                                            output[outOffset + i63] = (byte) (j13 & 255);
                                                        } else {
                                                            long j14 = j10 - 8192;
                                                            int i64 = i29 + 1;
                                                            output[outOffset + i29] = -1;
                                                            int i65 = i57 - 7;
                                                            while (i65 >= 255) {
                                                                output[outOffset + i64] = -1;
                                                                i65 -= 255;
                                                                i64++;
                                                            }
                                                            output[outOffset + i64] = (byte) i65;
                                                            output[outOffset + i64 + 1] = -1;
                                                            output[outOffset + i64 + 2] = (byte) (j14 >>> 8);
                                                            i15 = i64 + 4;
                                                            output[outOffset + i64 + 3] = (byte) (j14 & 255);
                                                        }
                                                        int i66 = i42 - 2;
                                                        iArr[d(input, inOffset + i56)] = i56;
                                                        i27 = i42 - 1;
                                                        iArr[d(input, inOffset + i66)] = i66;
                                                        output[outOffset + i15] = 31;
                                                        i29 = i15 + 1;
                                                        i22 = i14;
                                                        i18 = 2;
                                                        i19 = 1;
                                                        i28 = 0;
                                                    }
                                                }
                                                i16 = i29 + 1;
                                                i17 = i27 + 1;
                                                output[outOffset + i29] = input[inOffset + i27];
                                                i28++;
                                                if (i28 == 32) {
                                                    i29 += 2;
                                                    c10 = H2.c.f7959b;
                                                    output[outOffset + i16] = 31;
                                                    i27 = i17;
                                                    i18 = 2;
                                                    i28 = 0;
                                                    i19 = 1;
                                                } else {
                                                    i29 = i16;
                                                    i27 = i17;
                                                    i18 = 2;
                                                    i19 = 1;
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                if (j12 >= 73725) {
                                }
                                int i342 = i33 + 1;
                                int i352 = i10 + 1;
                                if (input[inOffset + i33] != input[i32]) {
                                }
                            }
                        }
                        i16 = i29 + 1;
                        i17 = i27 + 1;
                        output[outOffset + i29] = input[inOffset + i27];
                        i28++;
                        if (i28 == 32) {
                            i29 += 2;
                            c10 = H2.c.f7959b;
                            output[outOffset + i16] = 31;
                            i27 = i17;
                            i18 = 2;
                            i28 = 0;
                            i19 = 1;
                        } else {
                            i29 = i16;
                            i27 = i17;
                            i18 = 2;
                            i19 = 1;
                        }
                    }
                    i13 = 3;
                    int i422 = i13 + i27;
                    j11 = j10 - 1;
                    if (j11 == 0) {
                    }
                    if (i28 != 0) {
                    }
                    int i562 = i422 - 3;
                    int i572 = i562 - i27;
                    if (i20 != 2) {
                    }
                    int i662 = i422 - 2;
                    iArr[d(input, inOffset + i562)] = i562;
                    i27 = i422 - 1;
                    iArr[d(input, inOffset + i662)] = i662;
                    output[outOffset + i15] = 31;
                    i29 = i15 + 1;
                    i22 = i14;
                    i18 = 2;
                    i19 = 1;
                    i28 = 0;
                }
            }
            i10 = i27;
            j10 = 0;
            i11 = 0;
            i12 = 0;
            if (i12 != 0) {
            }
            i13 = 3;
            int i4222 = i13 + i27;
            j11 = j10 - 1;
            if (j11 == 0) {
            }
            if (i28 != 0) {
            }
            int i5622 = i4222 - 3;
            int i5722 = i5622 - i27;
            if (i20 != 2) {
            }
            int i6622 = i4222 - 2;
            iArr[d(input, inOffset + i5622)] = i5622;
            i27 = i4222 - 1;
            iArr[d(input, inOffset + i6622)] = i6622;
            output[outOffset + i15] = 31;
            i29 = i15 + 1;
            i22 = i14;
            i18 = 2;
            i19 = 1;
            i28 = 0;
        }
        int i67 = inLength - i19;
        while (i27 <= i67) {
            int i68 = i29 + 1;
            int i69 = i27 + 1;
            output[outOffset + i29] = input[inOffset + i27];
            i28++;
            if (i28 == 32) {
                i29 += 2;
                output[outOffset + i68] = 31;
                i27 = i69;
                i28 = 0;
            } else {
                i29 = i68;
                i27 = i69;
            }
        }
        if (i28 != 0) {
            output[((outOffset + i29) - i28) - 1] = (byte) (i28 - 1);
        } else {
            i29--;
        }
        if (i20 == 2) {
            output[outOffset] = (byte) (output[outOffset] | 32);
        }
        return i29;
    }

    public static int c(final byte[] input, final int inOffset, final int inLength, final byte[] output, final int outOffset, final int outLength) {
        boolean z10;
        int i10;
        long j10;
        byte b10;
        int i11;
        int i12;
        int i13;
        int i14;
        char c10 = 5;
        boolean z11 = true;
        int i15 = (input[inOffset] >> 5) + 1;
        if (i15 != 1 && i15 != 2) {
            throw new RuntimeException(String.format("invalid level: %d (expected: %d or %d)", Integer.valueOf(i15), 1, 2));
        }
        long j11 = input[inOffset] & 31;
        int i16 = 1;
        boolean z12 = true;
        int i17 = 0;
        while (true) {
            long j12 = j11 >> c10;
            long j13 = (31 & j11) << 8;
            if (j11 >= 32) {
                long j14 = j12 - 1;
                long j15 = i17;
                int i18 = i17;
                int i19 = (int) (j15 - j13);
                if (j14 != 6) {
                    j10 = j11;
                    b10 = 255;
                } else if (i15 == 1) {
                    b10 = 255;
                    j14 += input[inOffset + i16] & 255;
                    j10 = j11;
                    i16++;
                } else {
                    b10 = 255;
                    while (true) {
                        i14 = i16 + 1;
                        int i20 = input[inOffset + i16] & 255;
                        j10 = j11;
                        j14 += i20;
                        if (i20 != 255) {
                            break;
                        }
                        i16 = i14;
                        j11 = j10;
                    }
                    i16 = i14;
                }
                if (i15 == 1) {
                    i11 = i16 + 1;
                    i12 = i19 - (input[inOffset + i16] & b10);
                } else {
                    i11 = i16 + 1;
                    int i21 = input[inOffset + i16] & b10;
                    i12 = i19 - i21;
                    if (i21 == b10 && j13 == 7936) {
                        long j16 = (input[inOffset + i11] & b10) << 8;
                        i11 = i16 + 3;
                        i12 = (int) ((j15 - (j16 + (input[inOffset + (i16 + 2)] & b10))) - 8191);
                    }
                }
                if (j15 + j14 + 3 > outLength || i12 - 1 < 0) {
                    return 0;
                }
                if (i11 < inLength) {
                    j10 = input[inOffset + i11] & 255;
                    i11++;
                    i13 = i18;
                } else {
                    i13 = i18;
                    z12 = false;
                }
                if (i12 == i13) {
                    z10 = true;
                    byte b11 = output[(outOffset + i12) - 1];
                    output[outOffset + i13] = b11;
                    int i22 = i13 + 2;
                    output[outOffset + i13 + 1] = b11;
                    i10 = i13 + 3;
                    output[outOffset + i22] = b11;
                    while (j14 != 0) {
                        output[outOffset + i10] = b11;
                        j14--;
                        i10++;
                    }
                } else {
                    z10 = true;
                    output[outOffset + i13] = output[outOffset + (i12 - 1)];
                    int i23 = i13 + 2;
                    int i24 = i12 + 1;
                    output[outOffset + i13 + 1] = output[outOffset + i12];
                    i10 = i13 + 3;
                    int i25 = i12 + 2;
                    output[outOffset + i23] = output[outOffset + i24];
                    while (j14 != 0) {
                        output[outOffset + i10] = output[outOffset + i25];
                        j14--;
                        i10++;
                        i25++;
                    }
                }
                i16 = i11;
                j11 = j10;
            } else {
                long j17 = j11;
                int i26 = i17;
                z10 = z11;
                long j18 = j17 + 1;
                if (i26 + j18 > outLength || i16 + j18 > inLength) {
                    return 0;
                }
                output[outOffset + i26] = input[inOffset + i16];
                i10 = i26 + 1;
                int i27 = i16 + 1;
                j11 = j17;
                while (j11 != 0) {
                    output[outOffset + i10] = input[inOffset + i27];
                    j11--;
                    i10++;
                    i27++;
                }
                boolean z13 = i27 < inLength ? z10 : false;
                if (z13) {
                    z12 = z13;
                    i16 = i27 + 1;
                    j11 = input[inOffset + i27] & 255;
                } else {
                    z12 = z13;
                    i16 = i27;
                }
            }
            if (!z12) {
                return i10;
            }
            z11 = z10;
            i17 = i10;
            c10 = 5;
        }
    }

    public static int d(byte[] p10, int offset) {
        int e10 = e(p10, offset);
        return ((e(p10, offset + 1) ^ (e10 >> 3)) ^ e10) & 8191;
    }

    public static int e(byte[] data, int offset) {
        int i10 = offset + 1;
        if (i10 >= data.length) {
            return data[offset] & 255;
        }
        return (data[offset] & 255) | ((data[i10] & 255) << 8);
    }
}
