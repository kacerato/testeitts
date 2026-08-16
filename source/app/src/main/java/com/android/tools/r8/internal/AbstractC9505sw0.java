package com.android.tools.r8.internal;

public abstract class AbstractC9505sw0 {
    public static int a(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && bArr[i10] >= 0) {
            i10++;
        }
        if (i10 >= i11) {
            return 0;
        }
        while (i10 < i11) {
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 < 0) {
                if (b10 < -32) {
                    if (i12 >= i11) {
                        return b10;
                    }
                    if (b10 >= -62) {
                        i10 += 2;
                        if (bArr[i12] > -65) {
                        }
                    }
                    return -1;
                }
                if (b10 < -16) {
                    if (i12 < i11 - 1) {
                        int i13 = i10 + 2;
                        byte b11 = bArr[i12];
                        if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                            i10 += 3;
                            if (bArr[i13] > -65) {
                            }
                        }
                        return -1;
                    }
                    int i14 = i11 - i12;
                    if (i14 == 0) {
                        if (b10 > -12) {
                            return -1;
                        }
                        return b10;
                    }
                    if (i14 == 1) {
                        byte b12 = bArr[i12];
                        if (b10 > -12 || b12 > -65) {
                            return -1;
                        }
                        return (b12 << 8) ^ b10;
                    }
                    if (i14 != 2) {
                        throw new AssertionError();
                    }
                    byte b13 = bArr[i12];
                    byte b14 = bArr[i10 + 2];
                    if (b10 > -12 || b13 > -65 || b14 > -65) {
                        return -1;
                    }
                    return (b14 << 16) ^ ((b13 << 8) ^ b10);
                }
                if (i12 < i11 - 2) {
                    int i15 = i10 + 2;
                    byte b15 = bArr[i12];
                    if (b15 <= -65) {
                        if ((((b15 + 112) + (b10 << 28)) >> 30) == 0) {
                            int i16 = i10 + 3;
                            if (bArr[i15] <= -65) {
                                i10 += 4;
                                if (bArr[i16] > -65) {
                                }
                            }
                        }
                    }
                    return -1;
                }
                int i17 = i11 - i12;
                if (i17 == 0) {
                    if (b10 > -12) {
                        return -1;
                    }
                    return b10;
                }
                if (i17 == 1) {
                    byte b16 = bArr[i12];
                    if (b10 > -12 || b16 > -65) {
                        return -1;
                    }
                    return (b16 << 8) ^ b10;
                }
                if (i17 != 2) {
                    throw new AssertionError();
                }
                byte b17 = bArr[i12];
                byte b18 = bArr[i10 + 2];
                if (b10 > -12 || b17 > -65 || b18 > -65) {
                    return -1;
                }
                return (b18 << 16) ^ ((b17 << 8) ^ b10);
            }
            i10 = i12;
        }
        return 0;
    }
}
