package com.android.tools.r8.internal;

import android.util.DisplayMetrics;
import java.nio.ByteBuffer;

public final class C9005pw0 extends AbstractC8838ow0 {
    @Override
    public final String a(byte[] bArr, int i10, int i11) {
        if ((i10 | i11 | ((bArr.length - i10) - i11)) >= 0) {
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = bArr[i10];
                if (!AbstractC8671nw0.a(b10)) {
                    break;
                }
                i10++;
                cArr[i13] = (char) b10;
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = bArr[i10];
                if (AbstractC8671nw0.a(b11)) {
                    cArr[i14] = (char) b11;
                    i14++;
                    i10 = i15;
                    while (i10 < i12) {
                        byte b12 = bArr[i10];
                        if (!AbstractC8671nw0.a(b12)) {
                            break;
                        }
                        i10++;
                        cArr[i14] = (char) b12;
                        i14++;
                    }
                } else if (b11 < -32) {
                    if (i15 < i12) {
                        i10 += 2;
                        AbstractC8671nw0.a(b11, bArr[i15], cArr, i14);
                        i14++;
                    } else {
                        throw new MJ("Protocol message had invalid UTF-8.");
                    }
                } else if (b11 < -16) {
                    if (i15 < i12 - 1) {
                        int i16 = i10 + 2;
                        i10 += 3;
                        AbstractC8671nw0.a(b11, bArr[i15], bArr[i16], cArr, i14);
                        i14++;
                    } else {
                        throw new MJ("Protocol message had invalid UTF-8.");
                    }
                } else if (i15 < i12 - 2) {
                    byte b13 = bArr[i15];
                    int i17 = i10 + 3;
                    byte b14 = bArr[i10 + 2];
                    i10 += 4;
                    AbstractC8671nw0.a(b11, b13, b14, bArr[i17], cArr, i14);
                    i14 += 2;
                } else {
                    throw new MJ("Protocol message had invalid UTF-8.");
                }
            }
            return new String(cArr, 0, i14);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    @Override
    public final String b(ByteBuffer byteBuffer, int i10, int i11) {
        return AbstractC8838ow0.a(byteBuffer, i10, i11);
    }

    @Override
    public final int b(byte[] bArr, int i10, int i11) {
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
                    if (i12 >= i11 - 1) {
                        int i13 = i11 - i12;
                        if (i13 == 0) {
                            if (b10 > -12) {
                                return -1;
                            }
                            return b10;
                        }
                        if (i13 == 1) {
                            return AbstractC9672tw0.a(b10, bArr[i12]);
                        }
                        if (i13 == 2) {
                            return AbstractC9672tw0.a(b10, bArr[i12], bArr[i10 + 2]);
                        }
                        throw new AssertionError();
                    }
                    int i14 = i10 + 2;
                    byte b11 = bArr[i12];
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        i10 += 3;
                        if (bArr[i14] > -65) {
                        }
                    }
                    return -1;
                }
                if (i12 >= i11 - 2) {
                    int i15 = i11 - i12;
                    if (i15 == 0) {
                        if (b10 > -12) {
                            return -1;
                        }
                        return b10;
                    }
                    if (i15 == 1) {
                        return AbstractC9672tw0.a(b10, bArr[i12]);
                    }
                    if (i15 == 2) {
                        return AbstractC9672tw0.a(b10, bArr[i12], bArr[i10 + 2]);
                    }
                    throw new AssertionError();
                }
                int i16 = i10 + 2;
                byte b12 = bArr[i12];
                if (b12 <= -65) {
                    if ((((b12 + 112) + (b10 << 28)) >> 30) == 0) {
                        int i17 = i10 + 3;
                        if (bArr[i16] <= -65) {
                            i10 += 4;
                            if (bArr[i17] > -65) {
                            }
                        }
                    }
                }
                return -1;
            }
            i10 = i12;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r10 + r0;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(String str, byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        char charAt;
        int length = str.length();
        int i14 = i11 + i10;
        int i15 = 0;
        while (i15 < length && (i13 = i15 + i10) < i14 && (charAt = str.charAt(i15)) < '\u0080') {
            bArr[i13] = (byte) charAt;
            i15++;
        }
        int i16 = i10 + i15;
        while (i15 < length) {
            char charAt2 = str.charAt(i15);
            if (charAt2 < '\u0080' && i16 < i14) {
                bArr[i16] = (byte) charAt2;
                i16++;
            } else if (charAt2 < '\u0800' && i16 <= i14 - 2) {
                int i17 = i16 + 1;
                bArr[i16] = (byte) ((charAt2 >>> 6) | 960);
                i16 += 2;
                bArr[i17] = (byte) ((charAt2 & '?') | 128);
            } else {
                if ((charAt2 >= '\ud800' && '\udfff' >= charAt2) || i16 > i14 - 3) {
                    if (i16 <= i14 - 4) {
                        int i18 = i15 + 1;
                        if (i18 != str.length()) {
                            char charAt3 = str.charAt(i18);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                bArr[i16] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i16 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i19 = i16 + 3;
                                bArr[i16 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i16 += 4;
                                bArr[i19] = (byte) ((codePoint & 63) | 128);
                                i15 = i18;
                            } else {
                                i15 = i18;
                            }
                        }
                        throw new C9172qw0(i15 - 1, length);
                    }
                    if ('\ud800' <= charAt2 && charAt2 <= '\udfff' && ((i12 = i15 + 1) == str.length() || !Character.isSurrogatePair(charAt2, str.charAt(i12)))) {
                        throw new C9172qw0(i15, length);
                    }
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i16);
                }
                bArr[i16] = (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH);
                int i20 = i16 + 2;
                bArr[i16 + 1] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i16 += 3;
                bArr[i20] = (byte) ((charAt2 & '?') | 128);
            }
            i15++;
        }
        return i16;
    }
}
