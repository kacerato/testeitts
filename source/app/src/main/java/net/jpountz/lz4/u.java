package net.jpountz.lz4;

import java.nio.ByteBuffer;

public final class u extends y {

    public static final y f98106a = new u();

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c5, code lost:
    
        if (r12 > r5) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c9, code lost:
    
        if ((r6 + r9) != r1) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00cb, code lost:
    
        net.jpountz.lz4.z.k(r18, r6, r21, r7, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00cf, code lost:
    
        return r12 - r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e4, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("Malformed input at " + r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ea, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14;
        net.jpountz.util.c.c(bArr, i10, i11);
        net.jpountz.util.c.c(bArr2, i12, i13);
        int i15 = 1;
        if (i13 == 0) {
            if (i11 == 1 && net.jpountz.util.c.d(bArr, i10) == 0) {
                return 0;
            }
            throw new LZ4Exception("Output buffer too small");
        }
        int i16 = i10 + i11;
        int i17 = i12 + i13;
        int i18 = i10;
        int i19 = i12;
        while (true) {
            byte d10 = net.jpountz.util.c.d(bArr, i18);
            int i20 = i18 + i15;
            int i21 = (d10 & 255) >>> 4;
            if (i21 == 15) {
                byte b10 = -1;
                while (true) {
                    if (i20 >= i16) {
                        break;
                    }
                    int i22 = i20 + 1;
                    byte d11 = net.jpountz.util.c.d(bArr, i20);
                    if (d11 != -1) {
                        b10 = d11;
                        i20 = i22;
                        break;
                    }
                    i21 += 255;
                    b10 = d11;
                    i20 = i22;
                }
                i21 += b10 & 255;
            }
            int i23 = i19 + i21;
            int i24 = i17 - 8;
            if (i23 > i24 || (i14 = i20 + i21) > i16 - 8) {
                break;
            }
            z.o(bArr, i20, bArr2, i19, i21);
            int m10 = net.jpountz.util.c.m(bArr, i14);
            int i25 = i14 + 2;
            int i26 = i23 - m10;
            if (i26 < i12) {
                throw new LZ4Exception("Malformed input at " + i25);
            }
            int i27 = d10 & 15;
            if (i27 == 15) {
                byte b11 = -1;
                while (true) {
                    if (i25 >= i16) {
                        break;
                    }
                    int i28 = i25 + 1;
                    byte d12 = net.jpountz.util.c.d(bArr, i25);
                    if (d12 != -1) {
                        i25 = i28;
                        b11 = d12;
                        break;
                    }
                    i27 += 255;
                    i25 = i28;
                    b11 = d12;
                }
                i27 += b11 & 255;
            }
            int i29 = i27 + 4;
            i19 = i23 + i29;
            if (i19 <= i24) {
                z.q(bArr2, i26, i23, i19);
            } else {
                if (i19 > i17) {
                    throw new LZ4Exception("Malformed input at " + i25);
                }
                z.m(bArr2, i26, i23, i29);
            }
            i18 = i25;
            i15 = 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f7, code lost:
    
        if (r12 > r6) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00fb, code lost:
    
        if ((r0 + r9) != r3) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00fd, code lost:
    
        net.jpountz.lz4.EnumC14390c.j(r2, r0, r4, r7, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0101, code lost:
    
        return r12 - r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0116, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("Malformed input at " + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x011c, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int c(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        int i14;
        int i15 = i10;
        if (byteBuffer.hasArray() && byteBuffer2.hasArray()) {
            return a(byteBuffer.array(), byteBuffer.arrayOffset() + i15, i11, byteBuffer2.array(), i12 + byteBuffer2.arrayOffset(), i13);
        }
        ByteBuffer e10 = net.jpountz.util.a.e(byteBuffer);
        ByteBuffer e11 = net.jpountz.util.a.e(byteBuffer2);
        net.jpountz.util.a.c(e10, i15, i11);
        net.jpountz.util.a.c(e11, i12, i13);
        int i16 = 1;
        if (i13 == 0) {
            if (i11 == 1 && net.jpountz.util.a.g(e10, i15) == 0) {
                return 0;
            }
            throw new LZ4Exception("Output buffer too small");
        }
        int i17 = i11 + i15;
        int i18 = i13 + i12;
        int i19 = i12;
        while (true) {
            byte g10 = net.jpountz.util.a.g(e10, i15);
            int i20 = i15 + i16;
            int i21 = (g10 & 255) >>> 4;
            if (i21 == 15) {
                byte b10 = -1;
                while (true) {
                    if (i20 >= i17) {
                        break;
                    }
                    int i22 = i20 + 1;
                    byte g11 = net.jpountz.util.a.g(e10, i20);
                    if (g11 != -1) {
                        b10 = g11;
                        i20 = i22;
                        break;
                    }
                    i21 += 255;
                    b10 = g11;
                    i20 = i22;
                }
                i21 += b10 & 255;
            }
            int i23 = i19 + i21;
            int i24 = i18 - 8;
            if (i23 > i24 || (i14 = i20 + i21) > i17 - 8) {
                break;
            }
            EnumC14390c.m(e10, i20, e11, i19, i21);
            int m10 = net.jpountz.util.a.m(e10, i14);
            int i25 = i14 + 2;
            int i26 = i23 - m10;
            if (i26 < i12) {
                throw new LZ4Exception("Malformed input at " + i25);
            }
            int i27 = g10 & 15;
            if (i27 == 15) {
                byte b11 = -1;
                while (true) {
                    if (i25 >= i17) {
                        break;
                    }
                    int i28 = i25 + 1;
                    byte g12 = net.jpountz.util.a.g(e10, i25);
                    if (g12 != -1) {
                        i25 = i28;
                        b11 = g12;
                        break;
                    }
                    i27 += 255;
                    i25 = i28;
                    b11 = g12;
                }
                i27 += b11 & 255;
            }
            int i29 = i27 + 4;
            i19 = i23 + i29;
            if (i19 <= i24) {
                EnumC14390c.o(e11, i26, i23, i19);
            } else {
                if (i19 > i18) {
                    throw new LZ4Exception("Malformed input at " + i25);
                }
                EnumC14390c.k(e11, i26, i23, i29);
            }
            i15 = i25;
            i16 = 1;
        }
    }
}
