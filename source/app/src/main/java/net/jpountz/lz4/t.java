package net.jpountz.lz4;

import java.nio.ByteBuffer;

public final class t extends j {

    public static final j f98105a = new t();

    @Override
    public int a(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        int i13;
        byte d10;
        int i14;
        byte d11;
        net.jpountz.util.c.b(bArr, i10);
        net.jpountz.util.c.c(bArr2, i11, i12);
        if (i12 == 0) {
            if (net.jpountz.util.c.d(bArr, i10) == 0) {
                return 1;
            }
            throw new LZ4Exception("Malformed input at " + i10);
        }
        int i15 = i12 + i11;
        int i16 = i10;
        int i17 = i11;
        while (true) {
            byte d12 = net.jpountz.util.c.d(bArr, i16);
            int i18 = i16 + 1;
            int i19 = (d12 & 255) >>> 4;
            if (i19 == 15) {
                while (true) {
                    i14 = i18 + 1;
                    d11 = net.jpountz.util.c.d(bArr, i18);
                    if (d11 != -1) {
                        break;
                    }
                    i19 += 255;
                    i18 = i14;
                }
                i19 += d11 & 255;
                i18 = i14;
            }
            int i20 = i17 + i19;
            int i21 = i15 - 8;
            if (i20 > i21) {
                if (i20 == i15) {
                    z.k(bArr, i18, bArr2, i17, i19);
                    return (i18 + i19) - i10;
                }
                throw new LZ4Exception("Malformed input at " + i18);
            }
            z.o(bArr, i18, bArr2, i17, i19);
            int i22 = i18 + i19;
            int m10 = net.jpountz.util.c.m(bArr, i22);
            i16 = i22 + 2;
            int i23 = i20 - m10;
            if (i23 < i11) {
                throw new LZ4Exception("Malformed input at " + i16);
            }
            int i24 = d12 & 15;
            if (i24 == 15) {
                while (true) {
                    i13 = i16 + 1;
                    d10 = net.jpountz.util.c.d(bArr, i16);
                    if (d10 != -1) {
                        break;
                    }
                    i24 += 255;
                    i16 = i13;
                }
                i24 += d10 & 255;
                i16 = i13;
            }
            int i25 = i24 + 4;
            int i26 = i20 + i25;
            if (i26 <= i21) {
                z.q(bArr2, i23, i20, i26);
            } else {
                if (i26 > i15) {
                    throw new LZ4Exception("Malformed input at " + i16);
                }
                z.m(bArr2, i23, i20, i25);
            }
            i17 = i26;
        }
    }

    @Override
    public int b(ByteBuffer byteBuffer, int i10, ByteBuffer byteBuffer2, int i11, int i12) {
        int i13;
        byte g10;
        int i14;
        byte g11;
        if (byteBuffer.hasArray() && byteBuffer2.hasArray()) {
            return a(byteBuffer.array(), i10 + byteBuffer.arrayOffset(), byteBuffer2.array(), i11 + byteBuffer2.arrayOffset(), i12);
        }
        ByteBuffer e10 = net.jpountz.util.a.e(byteBuffer);
        ByteBuffer e11 = net.jpountz.util.a.e(byteBuffer2);
        net.jpountz.util.a.b(e10, i10);
        net.jpountz.util.a.c(e11, i11, i12);
        if (i12 == 0) {
            if (net.jpountz.util.a.g(e10, i10) == 0) {
                return 1;
            }
            throw new LZ4Exception("Malformed input at " + i10);
        }
        int i15 = i12 + i11;
        int i16 = i10;
        int i17 = i11;
        while (true) {
            byte g12 = net.jpountz.util.a.g(e10, i16);
            int i18 = i16 + 1;
            int i19 = (g12 & 255) >>> 4;
            if (i19 == 15) {
                while (true) {
                    i14 = i18 + 1;
                    g11 = net.jpountz.util.a.g(e10, i18);
                    if (g11 != -1) {
                        break;
                    }
                    i19 += 255;
                    i18 = i14;
                }
                i19 += g11 & 255;
                i18 = i14;
            }
            int i20 = i17 + i19;
            int i21 = i15 - 8;
            if (i20 > i21) {
                if (i20 == i15) {
                    EnumC14390c.j(e10, i18, e11, i17, i19);
                    return (i18 + i19) - i10;
                }
                throw new LZ4Exception("Malformed input at " + i18);
            }
            EnumC14390c.m(e10, i18, e11, i17, i19);
            int i22 = i18 + i19;
            int m10 = net.jpountz.util.a.m(e10, i22);
            i16 = i22 + 2;
            int i23 = i20 - m10;
            if (i23 < i11) {
                throw new LZ4Exception("Malformed input at " + i16);
            }
            int i24 = g12 & 15;
            if (i24 == 15) {
                while (true) {
                    i13 = i16 + 1;
                    g10 = net.jpountz.util.a.g(e10, i16);
                    if (g10 != -1) {
                        break;
                    }
                    i24 += 255;
                    i16 = i13;
                }
                i24 += g10 & 255;
                i16 = i13;
            }
            int i25 = i24 + 4;
            int i26 = i20 + i25;
            if (i26 <= i21) {
                EnumC14390c.o(e11, i23, i20, i26);
            } else {
                if (i26 > i15) {
                    throw new LZ4Exception("Malformed input at " + i16);
                }
                EnumC14390c.k(e11, i23, i20, i25);
            }
            i17 = i26;
        }
    }
}
