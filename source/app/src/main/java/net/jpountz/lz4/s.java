package net.jpountz.lz4;

import java.nio.ByteBuffer;
import java.util.Arrays;

public final class s extends d {

    public static final d f98104a = new s();

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
    
        r11 = net.jpountz.lz4.EnumC14390c.b(r17, r15, r8, r1, r9);
        r8 = r8 - r11;
        r15 = r15 - r11;
        r11 = r8 - r9;
        r12 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005a, code lost:
    
        if ((((r12 + r11) + 8) + (r11 >>> 8)) > r22) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005e, code lost:
    
        if (r11 < 15) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0060, code lost:
    
        net.jpountz.util.a.o(r20, r10, 240);
        r12 = net.jpountz.lz4.EnumC14390c.q(r11 - 15, r20, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0071, code lost:
    
        net.jpountz.lz4.EnumC14390c.m(r17, r9, r20, r12, r11);
        r12 = r12 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
    
        net.jpountz.util.a.s(r20, r12, (short) (r8 - r15));
        r9 = r12 + 2;
        r8 = r8 + 4;
        r11 = net.jpountz.lz4.EnumC14390c.a(r17, r15 + 4, r8, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
    
        if (((r12 + 8) + (r11 >>> 8)) > r22) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008c, code lost:
    
        r8 = r8 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008f, code lost:
    
        if (r11 < 15) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
    
        net.jpountz.util.a.o(r20, r10, net.jpountz.util.a.g(r20, r10) | 15);
        r9 = net.jpountz.lz4.EnumC14390c.q(r11 - 15, r20, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009f, code lost:
    
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00aa, code lost:
    
        if (r8 <= r7) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ae, code lost:
    
        r9 = r8 - 2;
        net.jpountz.util.c.r(r2, net.jpountz.lz4.C.e(net.jpountz.util.a.h(r17, r9)), r9 - r1);
        r9 = net.jpountz.lz4.C.e(net.jpountz.util.a.h(r17, r8));
        r15 = r1 + net.jpountz.util.c.k(r2, r9);
        net.jpountz.util.c.r(r2, r9, r8 - r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d3, code lost:
    
        if (net.jpountz.lz4.EnumC14390c.i(r17, r8, r15) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00de, code lost:
    
        net.jpountz.util.a.o(r20, r10, 0);
        r12 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
    
        r1 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
    
        net.jpountz.util.a.o(r20, r10, r11 | net.jpountz.util.a.g(r20, r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00eb, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("maxDestLen is too small");
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006c, code lost:
    
        net.jpountz.util.a.o(r20, r10, r11 << 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f1, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("maxDestLen is too small");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int i(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i10;
        int i17 = i16 + i11;
        int i18 = i17 - 5;
        int i19 = i17 - 12;
        if (i11 >= 13) {
            short[] sArr = new short[8192];
            int i20 = i16 + 1;
            i14 = i12;
            int i21 = i16;
            loop0: while (true) {
                int i22 = 1;
                int i23 = 1 << f.SKIP_STRENGTH;
                while (true) {
                    int i24 = i22 + i20;
                    int i25 = i23 + 1;
                    int i26 = i23 >>> f.SKIP_STRENGTH;
                    if (i24 > i19) {
                        i16 = i21;
                        break loop0;
                    }
                    int e10 = C.e(net.jpountz.util.a.h(byteBuffer, i20));
                    int k10 = net.jpountz.util.c.k(sArr, e10) + i16;
                    net.jpountz.util.c.r(sArr, e10, i20 - i16);
                    if (EnumC14390c.i(byteBuffer, k10, i20)) {
                        break;
                    }
                    i20 = i24;
                    i23 = i25;
                    i22 = i26;
                }
                i21 = i15;
                i20 = i15 + 1;
            }
        } else {
            i14 = i12;
        }
        return EnumC14390c.h(byteBuffer, i16, i17 - i16, byteBuffer2, i14, i13) - i12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
    
        r11 = net.jpountz.lz4.z.b(r17, r15, r8, r1, r9);
        r8 = r8 - r11;
        r15 = r15 - r11;
        r11 = r8 - r9;
        r12 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005a, code lost:
    
        if ((((r12 + r11) + 8) + (r11 >>> 8)) > r22) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005e, code lost:
    
        if (r11 < 15) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0060, code lost:
    
        net.jpountz.util.c.o(r20, r10, 240);
        r12 = net.jpountz.lz4.z.r(r11 - 15, r20, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0071, code lost:
    
        net.jpountz.lz4.z.o(r17, r9, r20, r12, r11);
        r12 = r12 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
    
        net.jpountz.util.c.s(r20, r12, (short) (r8 - r15));
        r9 = r12 + 2;
        r8 = r8 + 4;
        r11 = net.jpountz.lz4.z.a(r17, r15 + 4, r8, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
    
        if (((r12 + 8) + (r11 >>> 8)) > r22) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008c, code lost:
    
        r8 = r8 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008f, code lost:
    
        if (r11 < 15) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
    
        net.jpountz.util.c.o(r20, r10, net.jpountz.util.c.d(r20, r10) | 15);
        r9 = net.jpountz.lz4.z.r(r11 - 15, r20, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009f, code lost:
    
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00aa, code lost:
    
        if (r8 <= r7) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ae, code lost:
    
        r9 = r8 - 2;
        net.jpountz.util.c.r(r2, net.jpountz.lz4.C.e(net.jpountz.util.c.e(r17, r9)), r9 - r1);
        r9 = net.jpountz.lz4.C.e(net.jpountz.util.c.e(r17, r8));
        r15 = r1 + net.jpountz.util.c.k(r2, r9);
        net.jpountz.util.c.r(r2, r9, r8 - r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d3, code lost:
    
        if (net.jpountz.lz4.z.j(r17, r8, r15) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00de, code lost:
    
        net.jpountz.util.c.o(r20, r10, 0);
        r12 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
    
        r1 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
    
        net.jpountz.util.c.o(r20, r10, r11 | net.jpountz.util.c.d(r20, r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00eb, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("maxDestLen is too small");
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006c, code lost:
    
        net.jpountz.util.c.o(r20, r10, r11 << 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f1, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("maxDestLen is too small");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int j(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i10;
        int i17 = i16 + i11;
        int i18 = i17 - 5;
        int i19 = i17 - 12;
        if (i11 >= 13) {
            short[] sArr = new short[8192];
            int i20 = i16 + 1;
            i14 = i12;
            int i21 = i16;
            loop0: while (true) {
                int i22 = 1;
                int i23 = 1 << f.SKIP_STRENGTH;
                while (true) {
                    int i24 = i22 + i20;
                    int i25 = i23 + 1;
                    int i26 = i23 >>> f.SKIP_STRENGTH;
                    if (i24 > i19) {
                        i16 = i21;
                        break loop0;
                    }
                    int e10 = C.e(net.jpountz.util.c.e(bArr, i20));
                    int k10 = net.jpountz.util.c.k(sArr, e10) + i16;
                    net.jpountz.util.c.r(sArr, e10, i20 - i16);
                    if (z.j(bArr, k10, i20)) {
                        break;
                    }
                    i20 = i24;
                    i23 = i25;
                    i22 = i26;
                }
                i21 = i15;
                i20 = i15 + 1;
            }
        } else {
            i14 = i12;
        }
        return z.i(bArr, i16, i17 - i16, bArr2, i14, i13) - i12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
    
        r14 = net.jpountz.lz4.EnumC14390c.b(r5, r12, r6, r1, r9);
        r6 = r6 - r14;
        r12 = r12 - r14;
        r14 = r6 - r9;
        r15 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b1, code lost:
    
        if ((((r15 + r14) + 8) + (r14 >>> 8)) > r10) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
    
        if (r14 < 15) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b7, code lost:
    
        net.jpountz.util.a.o(r8, r11, 240);
        r15 = net.jpountz.lz4.EnumC14390c.q(r14 - 15, r8, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c8, code lost:
    
        net.jpountz.lz4.EnumC14390c.m(r5, r9, r8, r15, r14);
        r15 = r15 + r14;
        r1 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ce, code lost:
    
        net.jpountz.util.a.s(r8, r15, r13);
        r9 = r15 + 2;
        r1 = r1 + 4;
        r12 = net.jpountz.lz4.EnumC14390c.a(r5, r12 + 4, r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e0, code lost:
    
        if (((r15 + 8) + (r12 >>> 8)) > r10) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e2, code lost:
    
        r1 = r1 + r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e5, code lost:
    
        if (r12 < 15) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e7, code lost:
    
        net.jpountz.util.a.o(r8, r11, net.jpountz.util.a.g(r8, r11) | 15);
        r9 = net.jpountz.lz4.EnumC14390c.q(r12 - 15, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f5, code lost:
    
        r11 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0100, code lost:
    
        if (r1 <= r3) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x010d, code lost:
    
        r9 = r1 - 2;
        net.jpountz.util.c.q(r7, net.jpountz.lz4.C.b(net.jpountz.util.a.h(r5, r9)), r9);
        r9 = net.jpountz.lz4.C.b(net.jpountz.util.a.h(r5, r1));
        r12 = net.jpountz.util.c.g(r7, r9);
        net.jpountz.util.c.q(r7, r9, r1);
        r9 = r1 - r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x012d, code lost:
    
        if (r9 >= 65536) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0133, code lost:
    
        if (net.jpountz.lz4.EnumC14390c.i(r5, r12, r1) != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0136, code lost:
    
        r15 = r11 + 1;
        net.jpountz.util.a.o(r8, r11, 0);
        r13 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0102, code lost:
    
        r6 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f7, code lost:
    
        net.jpountz.util.a.o(r8, r11, r12 | net.jpountz.util.a.g(r8, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x014a, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("maxDestLen is too small");
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c3, code lost:
    
        net.jpountz.util.a.o(r8, r11, r14 << 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0150, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("maxDestLen is too small");
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int a(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i10;
        if (byteBuffer.hasArray() && byteBuffer2.hasArray()) {
            return c(byteBuffer.array(), i16 + byteBuffer.arrayOffset(), i11, byteBuffer2.array(), i12 + byteBuffer2.arrayOffset(), i13);
        }
        ByteBuffer e10 = net.jpountz.util.a.e(byteBuffer);
        ByteBuffer e11 = net.jpountz.util.a.e(byteBuffer2);
        net.jpountz.util.a.c(e10, i16, i11);
        net.jpountz.util.a.c(e11, i12, i13);
        int i17 = i12 + i13;
        if (i11 < 65547) {
            return i(e10, i10, i11, e11, i12, i17);
        }
        int i18 = i16 + i11;
        int i19 = i18 - 5;
        int i20 = i18 - 12;
        int i21 = i16 + 1;
        int[] iArr = new int[4096];
        Arrays.fill(iArr, i16);
        int i22 = i16;
        int i23 = i12;
        loop0: while (true) {
            int i24 = 1;
            int i25 = 1 << f.SKIP_STRENGTH;
            while (true) {
                int i26 = i24 + i21;
                int i27 = i25 + 1;
                int i28 = i25 >>> f.SKIP_STRENGTH;
                if (i26 <= i20) {
                    int b10 = C.b(net.jpountz.util.a.h(e10, i21));
                    int g10 = net.jpountz.util.c.g(iArr, b10);
                    int i29 = i21 - g10;
                    net.jpountz.util.c.q(iArr, b10, i21);
                    if (i29 < 65536 && EnumC14390c.i(e10, g10, i21)) {
                        break;
                    }
                    i24 = i28;
                    i16 = i10;
                    i21 = i26;
                    i25 = i27;
                } else {
                    i14 = i22;
                    break loop0;
                }
            }
            i21 = i15 + 1;
            i22 = i15;
            i16 = i10;
        }
        return EnumC14390c.h(e10, i14, i18 - i14, e11, i23, i17) - i12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0063, code lost:
    
        r12 = net.jpountz.lz4.z.b(r19, r15, r7, r1, r9);
        r7 = r7 - r12;
        r15 = r15 - r12;
        r12 = r7 - r9;
        r13 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0077, code lost:
    
        if ((((r13 + r12) + 8) + (r12 >>> 8)) > r5) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
    
        if (r12 < 15) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
    
        net.jpountz.util.c.o(r22, r10, 240);
        r13 = net.jpountz.lz4.z.r(r12 - 15, r22, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008e, code lost:
    
        net.jpountz.lz4.z.o(r19, r9, r22, r13, r12);
        r13 = r13 + r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0092, code lost:
    
        net.jpountz.util.c.s(r22, r13, r11);
        r9 = r13 + 2;
        r7 = r7 + 4;
        r11 = net.jpountz.lz4.z.a(r19, r15 + 4, r7, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a4, code lost:
    
        if (((r13 + 8) + (r11 >>> 8)) > r5) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a6, code lost:
    
        r7 = r7 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a9, code lost:
    
        if (r11 < 15) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ab, code lost:
    
        net.jpountz.util.c.o(r22, r10, net.jpountz.util.c.d(r22, r10) | 15);
        r9 = net.jpountz.lz4.z.r(r11 - 15, r22, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b9, code lost:
    
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c4, code lost:
    
        if (r7 <= r6) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d5, code lost:
    
        r9 = r7 - 2;
        net.jpountz.util.c.q(r8, net.jpountz.lz4.C.b(net.jpountz.util.c.e(r19, r9)), r9);
        r9 = net.jpountz.lz4.C.b(net.jpountz.util.c.e(r19, r7));
        r15 = net.jpountz.util.c.g(r8, r9);
        net.jpountz.util.c.q(r8, r9, r7);
        r11 = r7 - r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f5, code lost:
    
        if (r11 >= 65536) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00fb, code lost:
    
        if (net.jpountz.lz4.z.j(r19, r15, r7) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fe, code lost:
    
        r13 = r10 + 1;
        net.jpountz.util.c.o(r22, r10, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c6, code lost:
    
        r1 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d4, code lost:
    
        return net.jpountz.lz4.z.i(r19, r1, r2 - r1, r22, r10, r5) - r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bb, code lost:
    
        net.jpountz.util.c.o(r22, r10, r11 | net.jpountz.util.c.d(r22, r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0112, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("maxDestLen is too small");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0089, code lost:
    
        net.jpountz.util.c.o(r22, r10, r12 << 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0118, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("maxDestLen is too small");
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14;
        int i15 = i10;
        net.jpountz.util.c.c(bArr, i10, i11);
        net.jpountz.util.c.c(bArr2, i12, i13);
        int i16 = i12 + i13;
        if (i11 < 65547) {
            return j(bArr, i10, i11, bArr2, i12, i16);
        }
        int i17 = i11 + i15;
        int i18 = i17 - 5;
        int i19 = i17 - 12;
        int i20 = i15 + 1;
        int[] iArr = new int[4096];
        Arrays.fill(iArr, i15);
        int i21 = i12;
        int i22 = i15;
        loop0: while (true) {
            int i23 = 1;
            int i24 = 1 << f.SKIP_STRENGTH;
            while (true) {
                int i25 = i23 + i20;
                int i26 = i24 + 1;
                int i27 = i24 >>> f.SKIP_STRENGTH;
                if (i25 <= i19) {
                    int b10 = C.b(net.jpountz.util.c.e(bArr, i20));
                    int g10 = net.jpountz.util.c.g(iArr, b10);
                    int i28 = i20 - g10;
                    net.jpountz.util.c.q(iArr, b10, i20);
                    if (i28 < 65536 && z.j(bArr, g10, i20)) {
                        break;
                    }
                    i15 = i10;
                    i20 = i25;
                    i24 = i26;
                    i23 = i27;
                } else {
                    int i29 = i22;
                    break loop0;
                }
            }
            i22 = i14;
            i20 = i14 + 1;
            i15 = i10;
        }
    }
}
