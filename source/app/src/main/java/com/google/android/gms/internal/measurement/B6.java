package com.google.android.gms.internal.measurement;

import android.util.DisplayMetrics;

public final class B6 {

    public static final int f61893a = 0;

    static {
        if (C12244z6.f() && C12244z6.g()) {
            int i10 = F4.f61913a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0076 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && bArr[i10] >= 0) {
            i10++;
        }
        if (i10 >= i11) {
            return true;
        }
        while (i10 < i11) {
            int i12 = i10 + 1;
            int i13 = bArr[i10];
            if (i13 >= 0) {
                i10 = i12;
            } else if (i13 < -32) {
                if (i12 >= i11) {
                    return i13 == 0;
                }
                if (i13 < -62) {
                    return false;
                }
                i10 += 2;
                if (bArr[i12] > -65) {
                    return false;
                }
            } else if (i13 < -16) {
                if (i12 >= i11 - 1) {
                    i13 = d(bArr, i12, i11);
                    if (i13 == 0) {
                    }
                } else {
                    int i14 = i10 + 2;
                    char c10 = bArr[i12];
                    if (c10 > -65) {
                        return false;
                    }
                    if (i13 == -32 && c10 < -96) {
                        return false;
                    }
                    if (i13 == -19 && c10 >= -96) {
                        return false;
                    }
                    i10 += 3;
                    if (bArr[i14] > -65) {
                        return false;
                    }
                }
            } else if (i12 >= i11 - 2) {
                i13 = d(bArr, i12, i11);
                if (i13 == 0) {
                }
            } else {
                int i15 = i10 + 2;
                int i16 = bArr[i12];
                if (i16 > -65 || (((i13 << 28) + (i16 + 112)) >> 30) != 0) {
                    return false;
                }
                int i17 = i10 + 3;
                if (bArr[i15] > -65) {
                    return false;
                }
                i10 += 4;
                if (bArr[i17] > -65) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int b(String str) {
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i11 < length && str.charAt(i11) < '\u0080') {
            i11++;
        }
        int i12 = length;
        while (true) {
            if (i11 >= length) {
                break;
            }
            char charAt = str.charAt(i11);
            if (charAt < '\u0800') {
                i12 += ('\u007f' - charAt) >>> 31;
                i11++;
            } else {
                int length2 = str.length();
                while (i11 < length2) {
                    char charAt2 = str.charAt(i11);
                    if (charAt2 < '\u0800') {
                        i10 += ('\u007f' - charAt2) >>> 31;
                    } else {
                        i10 += 2;
                        if (charAt2 >= '\ud800' && charAt2 <= '\udfff') {
                            if (Character.codePointAt(str, i11) < 65536) {
                                throw new zzoq(i11, length2);
                            }
                            i11++;
                        }
                    }
                    i11++;
                }
                i12 += i10;
            }
        }
        if (i12 >= length) {
            return i12;
        }
        long j10 = i12 + 4294967296L;
        StringBuilder sb2 = new StringBuilder(String.valueOf(j10).length() + 34);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j10);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0114, code lost:
    
        return r10 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int c(String str, byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        char charAt;
        int length = str.length();
        int i15 = 0;
        while (true) {
            i12 = i10 + i11;
            if (i15 >= length || (i14 = i15 + i10) >= i12 || (charAt = str.charAt(i15)) >= '\u0080') {
                break;
            }
            bArr[i14] = (byte) charAt;
            i15++;
        }
        int i16 = i10 + i15;
        while (i15 < length) {
            char charAt2 = str.charAt(i15);
            if (charAt2 < '\u0080' && i16 < i12) {
                bArr[i16] = (byte) charAt2;
                i16++;
            } else if (charAt2 < '\u0800' && i16 <= i12 - 2) {
                bArr[i16] = (byte) ((charAt2 >>> 6) | 960);
                bArr[i16 + 1] = (byte) ((charAt2 & '?') | 128);
                i16 += 2;
            } else {
                if ((charAt2 >= '\ud800' && charAt2 <= '\udfff') || i16 > i12 - 3) {
                    if (i16 > i12 - 4) {
                        if (charAt2 >= '\ud800' && charAt2 <= '\udfff' && ((i13 = i15 + 1) == str.length() || !Character.isSurrogatePair(charAt2, str.charAt(i13)))) {
                            throw new zzoq(i15, length);
                        }
                        StringBuilder sb2 = new StringBuilder(String.valueOf(charAt2).length() + 25 + String.valueOf(i16).length());
                        sb2.append("Failed writing ");
                        sb2.append(charAt2);
                        sb2.append(" at index ");
                        sb2.append(i16);
                        throw new ArrayIndexOutOfBoundsException(sb2.toString());
                    }
                    int i17 = i15 + 1;
                    if (i17 != str.length()) {
                        char charAt3 = str.charAt(i17);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int i18 = i16 + 3;
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            bArr[i16] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i16 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            bArr[i16 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i16 += 4;
                            bArr[i18] = (byte) ((codePoint & 63) | 128);
                            i15 = i17;
                        } else {
                            i15 = i17;
                        }
                    }
                    throw new zzoq(i15 - 1, length);
                }
                bArr[i16] = (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH);
                bArr[i16 + 1] = (byte) (((charAt2 >>> 6) & 63) | 128);
                bArr[i16 + 2] = (byte) ((charAt2 & '?') | 128);
                i16 += 3;
            }
            i15++;
        }
        return i16;
    }

    public static int d(byte[] bArr, int i10, int i11) {
        int i12 = i11 - i10;
        byte b10 = bArr[i10 - 1];
        if (i12 == 0) {
            if (b10 <= -12) {
                return b10;
            }
            return -1;
        }
        if (i12 == 1) {
            byte b11 = bArr[i10];
            if (b10 > -12 || b11 > -65) {
                return -1;
            }
            return (b11 << 8) ^ b10;
        }
        if (i12 != 2) {
            throw new AssertionError();
        }
        byte b12 = bArr[i10];
        byte b13 = bArr[i10 + 1];
        if (b10 > -12 || b12 > -65 || b13 > -65) {
            return -1;
        }
        return (b13 << 16) ^ ((b12 << 8) ^ b10);
    }
}
