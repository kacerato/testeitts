package com.android.tools.r8.internal;

import android.util.DisplayMetrics;
import com.google.protobuf.Utf8;
import java.nio.ByteBuffer;

public final class C9338rw0 extends AbstractC8838ow0 {
    public static int a(byte[] bArr, int i10, long j10, int i11) {
        if (i11 == 0) {
            AbstractC8838ow0 abstractC8838ow0 = AbstractC9672tw0.f52738a;
            if (i10 > -12) {
                return -1;
            }
            return i10;
        }
        if (i11 == 1) {
            return AbstractC9672tw0.a(i10, AbstractC6671bw0.f46895c.a(bArr, AbstractC6671bw0.f46898f + j10));
        }
        if (i11 == 2) {
            AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
            long j11 = AbstractC6671bw0.f46898f;
            return AbstractC9672tw0.a(i10, abstractC6504aw0.a(bArr, j11 + j10), abstractC6504aw0.a(bArr, j10 + 1 + j11));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bc, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0055, code lost:
    
        return -1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(byte[] bArr, int i10, int i11) {
        if ((i10 | i11 | (bArr.length - i11)) >= 0) {
            long j10 = i10;
            int i12 = (int) (i11 - j10);
            int a10 = a(bArr, j10, i12);
            int i13 = i12 - a10;
            long j11 = j10 + a10;
            while (true) {
                byte b10 = 0;
                while (true) {
                    if (i13 <= 0) {
                        break;
                    }
                    long j12 = j11 + 1;
                    b10 = AbstractC6671bw0.f46895c.a(bArr, AbstractC6671bw0.f46898f + j11);
                    if (b10 < 0) {
                        j11 = j12;
                        break;
                    }
                    i13--;
                    j11 = j12;
                }
                if (i13 != 0) {
                    int i14 = i13 - 1;
                    if (b10 >= -32) {
                        if (b10 >= -16) {
                            if (i14 < 3) {
                                return a(bArr, b10, j11, i14);
                            }
                            i13 -= 4;
                            long j13 = 1 + j11;
                            AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
                            long j14 = AbstractC6671bw0.f46898f;
                            byte a11 = abstractC6504aw0.a(bArr, j14 + j11);
                            if (a11 > -65) {
                                break;
                            }
                            if ((((a11 + 112) + (b10 << 28)) >> 30) != 0) {
                                break;
                            }
                            long j15 = 2 + j11;
                            if (abstractC6504aw0.a(bArr, j13 + j14) > -65) {
                                break;
                            }
                            j11 += 3;
                            if (abstractC6504aw0.a(bArr, j14 + j15) > -65) {
                                break;
                            }
                        } else {
                            if (i14 < 2) {
                                return a(bArr, b10, j11, i14);
                            }
                            i13 -= 3;
                            long j16 = 1 + j11;
                            AbstractC6504aw0 abstractC6504aw02 = AbstractC6671bw0.f46895c;
                            long j17 = AbstractC6671bw0.f46898f;
                            byte a12 = abstractC6504aw02.a(bArr, j17 + j11);
                            if (a12 > -65 || ((b10 == -32 && a12 < -96) || (b10 == -19 && a12 >= -96))) {
                                break;
                            }
                            j11 += 2;
                            if (abstractC6504aw02.a(bArr, j17 + j16) > -65) {
                                break;
                            }
                        }
                    } else if (i14 != 0) {
                        i13 -= 2;
                        if (b10 < -62) {
                            break;
                        }
                        long j18 = j11 + 1;
                        if (AbstractC6671bw0.f46895c.a(bArr, AbstractC6671bw0.f46898f + j11) > -65) {
                            break;
                        }
                        j11 = j18;
                    } else {
                        return b10;
                    }
                } else {
                    return 0;
                }
            }
            return -1;
        }
        throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    @Override
    public final String a(byte[] bArr, int i10, int i11) {
        if ((i10 | i11 | ((bArr.length - i10) - i11)) >= 0) {
            int a10 = a(bArr, i10, i11) + i10;
            int i12 = i10 + i11;
            while (a10 < i12) {
                if (AbstractC6671bw0.f46895c.a(bArr, AbstractC6671bw0.f46898f + a10) < 0) {
                    break;
                }
                a10++;
            }
            if (a10 == i12) {
                return new String(bArr, i10, i11, YI.f45964a);
            }
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < a10) {
                cArr[i13] = (char) AbstractC6671bw0.f46895c.a(bArr, AbstractC6671bw0.f46898f + i10);
                i10++;
                i13++;
            }
            int i14 = i13;
            while (a10 < i12) {
                int i15 = a10 + 1;
                AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
                long j10 = AbstractC6671bw0.f46898f;
                byte a11 = abstractC6504aw0.a(bArr, a10 + j10);
                if (AbstractC8671nw0.a(a11)) {
                    cArr[i14] = (char) a11;
                    i14++;
                    a10 = i15;
                    while (a10 < i12) {
                        byte a12 = AbstractC6671bw0.f46895c.a(bArr, AbstractC6671bw0.f46898f + a10);
                        if (!AbstractC8671nw0.a(a12)) {
                            break;
                        }
                        a10++;
                        cArr[i14] = (char) a12;
                        i14++;
                    }
                } else if (a11 < -32) {
                    if (i15 < i12) {
                        a10 += 2;
                        AbstractC8671nw0.a(a11, abstractC6504aw0.a(bArr, j10 + i15), cArr, i14);
                        i14++;
                    } else {
                        throw new MJ("Protocol message had invalid UTF-8.");
                    }
                } else if (a11 < -16) {
                    if (i15 < i12 - 1) {
                        int i16 = a10 + 2;
                        a10 += 3;
                        AbstractC8671nw0.a(a11, abstractC6504aw0.a(bArr, i15 + j10), abstractC6504aw0.a(bArr, j10 + i16), cArr, i14);
                        i14++;
                    } else {
                        throw new MJ("Protocol message had invalid UTF-8.");
                    }
                } else if (i15 < i12 - 2) {
                    byte a13 = abstractC6504aw0.a(bArr, i15 + j10);
                    int i17 = a10 + 3;
                    byte a14 = abstractC6504aw0.a(bArr, a10 + 2 + j10);
                    a10 += 4;
                    AbstractC8671nw0.a(a11, a13, a14, abstractC6504aw0.a(bArr, j10 + i17), cArr, i14);
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
        long j10;
        if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) >= 0) {
            long c10 = AbstractC6671bw0.f46895c.c(byteBuffer, AbstractC6671bw0.f46899g) + i10;
            long j11 = i11 + c10;
            char[] cArr = new char[i11];
            int i12 = 0;
            while (true) {
                j10 = 1;
                if (c10 >= j11) {
                    break;
                }
                byte a10 = AbstractC6671bw0.f46895c.a(c10);
                if (!AbstractC8671nw0.a(a10)) {
                    break;
                }
                c10++;
                cArr[i12] = (char) a10;
                i12++;
            }
            int i13 = i12;
            while (c10 < j11) {
                long j12 = c10 + j10;
                AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
                byte a11 = abstractC6504aw0.a(c10);
                if (AbstractC8671nw0.a(a11)) {
                    cArr[i13] = (char) a11;
                    i13++;
                    c10 = j12;
                    while (c10 < j11) {
                        byte a12 = AbstractC6671bw0.f46895c.a(c10);
                        if (!AbstractC8671nw0.a(a12)) {
                            break;
                        }
                        c10 += j10;
                        cArr[i13] = (char) a12;
                        i13++;
                    }
                } else if (a11 < -32) {
                    if (j12 < j11) {
                        c10 += 2;
                        AbstractC8671nw0.a(a11, abstractC6504aw0.a(j12), cArr, i13);
                        i13++;
                    } else {
                        throw new MJ("Protocol message had invalid UTF-8.");
                    }
                } else if (a11 < -16) {
                    if (j12 < j11 - j10) {
                        long j13 = c10 + 2;
                        c10 += 3;
                        AbstractC8671nw0.a(a11, abstractC6504aw0.a(j12), abstractC6504aw0.a(j13), cArr, i13);
                        i13++;
                    } else {
                        throw new MJ("Protocol message had invalid UTF-8.");
                    }
                } else if (j12 < j11 - 2) {
                    byte a13 = abstractC6504aw0.a(j12);
                    long j14 = c10 + 3;
                    byte a14 = abstractC6504aw0.a(c10 + 2);
                    c10 += 4;
                    AbstractC8671nw0.a(a11, a13, a14, abstractC6504aw0.a(j14), cArr, i13);
                    i13 += 2;
                    j10 = 1;
                } else {
                    throw new MJ("Protocol message had invalid UTF-8.");
                }
            }
            return new String(cArr, 0, i13);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    @Override
    public final int a(String str, byte[] bArr, int i10, int i11) {
        long j10;
        char c10;
        String str2;
        String str3;
        long j11;
        int i12;
        long j12;
        char charAt;
        long j13 = i10;
        long j14 = i11 + j13;
        int length = str.length();
        String str4 = " at index ";
        String str5 = "Failed writing ";
        if (length > i11 || bArr.length - i11 < i10) {
            throw new ArrayIndexOutOfBoundsException("Failed writing " + str.charAt(length - 1) + " at index " + (i10 + i11));
        }
        int i13 = 0;
        while (true) {
            j10 = 1;
            c10 = '\u0080';
            if (i13 >= length || (charAt = str.charAt(i13)) >= '\u0080') {
                break;
            }
            AbstractC6671bw0.f46895c.a((Object) bArr, AbstractC6671bw0.f46898f + j13, (byte) charAt);
            i13++;
            j13 = 1 + j13;
        }
        if (i13 == length) {
            return (int) j13;
        }
        while (i13 < length) {
            char charAt2 = str.charAt(i13);
            if (charAt2 < c10 && j13 < j14) {
                j11 = j13 + j10;
                AbstractC6671bw0.f46895c.a((Object) bArr, AbstractC6671bw0.f46898f + j13, (byte) charAt2);
                str2 = str4;
                str3 = str5;
            } else if (charAt2 >= '\u0800' || j13 > j14 - 2) {
                str2 = str4;
                str3 = str5;
                if ((charAt2 >= '\ud800' && '\udfff' >= charAt2) || j13 > j14 - 3) {
                    if (j13 <= j14 - 4) {
                        int i14 = i13 + 1;
                        if (i14 != length) {
                            char charAt3 = str.charAt(i14);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                j12 = 1;
                                AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
                                long j15 = AbstractC6671bw0.f46898f;
                                abstractC6504aw0.a((Object) bArr, j15 + j13, (byte) ((codePoint >>> 18) | 240));
                                abstractC6504aw0.a((Object) bArr, j15 + j13 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j16 = j13 + 3;
                                c10 = '\u0080';
                                abstractC6504aw0.a((Object) bArr, j15 + 2 + j13, (byte) (((codePoint >>> 6) & 63) | 128));
                                j13 += 4;
                                abstractC6504aw0.a((Object) bArr, j15 + j16, (byte) ((codePoint & 63) | 128));
                                i13 = i14;
                                i13++;
                                str4 = str2;
                                j10 = j12;
                                str5 = str3;
                            } else {
                                i13 = i14;
                            }
                        }
                        throw new C9172qw0(i13 - 1, length);
                    }
                    if ('\ud800' <= charAt2 && charAt2 <= '\udfff' && ((i12 = i13 + 1) == length || !Character.isSurrogatePair(charAt2, str.charAt(i12)))) {
                        throw new C9172qw0(i13, length);
                    }
                    throw new ArrayIndexOutOfBoundsException(str3 + charAt2 + str2 + j13);
                }
                byte b10 = (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH);
                AbstractC6504aw0 abstractC6504aw02 = AbstractC6671bw0.f46895c;
                long j17 = AbstractC6671bw0.f46898f;
                abstractC6504aw02.a((Object) bArr, j17 + j13, b10);
                abstractC6504aw02.a((Object) bArr, j17 + j13 + 1, (byte) (((charAt2 >>> 6) & 63) | 128));
                abstractC6504aw02.a((Object) bArr, j17 + 2 + j13, (byte) ((charAt2 & '?') | 128));
                j11 = j13 + 3;
            } else {
                long j18 = j13 + j10;
                AbstractC6504aw0 abstractC6504aw03 = AbstractC6671bw0.f46895c;
                long j19 = AbstractC6671bw0.f46898f;
                str2 = str4;
                str3 = str5;
                abstractC6504aw03.a((Object) bArr, j19 + j13, (byte) ((charAt2 >>> 6) | 960));
                j13 += 2;
                abstractC6504aw03.a((Object) bArr, j19 + j18, (byte) ((charAt2 & '?') | 128));
                c10 = '\u0080';
                j12 = 1;
                i13++;
                str4 = str2;
                j10 = j12;
                str5 = str3;
            }
            j13 = j11;
            c10 = '\u0080';
            j12 = 1;
            i13++;
            str4 = str2;
            j10 = j12;
            str5 = str3;
        }
        return (int) j13;
    }

    public static int a(byte[] bArr, long j10, int i10) {
        int i11 = 0;
        if (i10 < 16) {
            return 0;
        }
        while (true) {
            int i12 = i11 + 8;
            if (i12 > i10) {
                break;
            }
            if ((AbstractC6671bw0.f46895c.c(bArr, AbstractC6671bw0.f46898f + j10) & Utf8.f68990b) != 0) {
                break;
            }
            j10 += 8;
            i11 = i12;
        }
        while (i11 < i10) {
            long j11 = 1 + j10;
            if (AbstractC6671bw0.f46895c.a(bArr, AbstractC6671bw0.f46898f + j10) < 0) {
                return i11;
            }
            i11++;
            j10 = j11;
        }
        return i10;
    }
}
