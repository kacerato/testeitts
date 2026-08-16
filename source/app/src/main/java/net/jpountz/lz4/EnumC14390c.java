package net.jpountz.lz4;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public enum EnumC14390c {
    ;

    static final boolean $assertionsDisabled = false;

    public static class a {

        public int f98011a;

        public int f98012b;

        public int f98013c;

        public int a() {
            return this.f98011a + this.f98013c;
        }

        public void b(int i10) {
            this.f98011a += i10;
            this.f98012b += i10;
            this.f98013c -= i10;
        }
    }

    public static int a(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        int numberOfTrailingZeros;
        int i13 = 0;
        while (i11 <= i12 - 8) {
            if (net.jpountz.util.a.j(byteBuffer, i11) != net.jpountz.util.a.j(byteBuffer, i10)) {
                if (byteBuffer.order() == ByteOrder.BIG_ENDIAN) {
                    numberOfTrailingZeros = Long.numberOfLeadingZeros(net.jpountz.util.a.j(byteBuffer, i10) ^ net.jpountz.util.a.j(byteBuffer, i11));
                } else {
                    numberOfTrailingZeros = Long.numberOfTrailingZeros(net.jpountz.util.a.j(byteBuffer, i10) ^ net.jpountz.util.a.j(byteBuffer, i11));
                }
                return i13 + (numberOfTrailingZeros >>> 3);
            }
            i13 += 8;
            i10 += 8;
            i11 += 8;
        }
        while (i11 < i12) {
            int i14 = i10 + 1;
            int i15 = i11 + 1;
            if (net.jpountz.util.a.g(byteBuffer, i10) != net.jpountz.util.a.g(byteBuffer, i11)) {
                break;
            }
            i13++;
            i10 = i14;
            i11 = i15;
        }
        return i13;
    }

    public static int b(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13) {
        int i14 = 0;
        while (i10 > i12 && i11 > i13) {
            i10--;
            i11--;
            if (byteBuffer.get(i10) != byteBuffer.get(i11)) {
                break;
            }
            i14++;
        }
        return i14;
    }

    public static void c(a aVar, a aVar2) {
        aVar2.f98013c = aVar.f98013c;
        aVar2.f98011a = aVar.f98011a;
        aVar2.f98012b = aVar.f98012b;
    }

    public static int d(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, ByteBuffer byteBuffer2, int i14, int i15) {
        int i16;
        int i17;
        int i18 = i11 - i10;
        int i19 = i14 + 1;
        if (i19 + i18 + 8 + (i18 >>> 8) > i15) {
            throw new LZ4Exception("maxDestLen is too small");
        }
        if (i18 >= 15) {
            i19 = q(i18 - 15, byteBuffer2, i19);
            i16 = -16;
        } else {
            i16 = i18 << 4;
        }
        m(byteBuffer, i10, byteBuffer2, i19, i18);
        int i20 = i19 + i18;
        int i21 = i11 - i12;
        byteBuffer2.put(i20, (byte) i21);
        int i22 = i20 + 2;
        byteBuffer2.put(i20 + 1, (byte) (i21 >>> 8));
        int i23 = i13 - 4;
        if (i20 + 8 + (i23 >>> 8) > i15) {
            throw new LZ4Exception("maxDestLen is too small");
        }
        if (i23 >= 15) {
            i17 = i16 | 15;
            i22 = q(i13 - 19, byteBuffer2, i22);
        } else {
            i17 = i23 | i16;
        }
        byteBuffer2.put(i14, (byte) i17);
        return i22;
    }

    public static int e(ByteBuffer byteBuffer, int i10) {
        return C.b(net.jpountz.util.a.h(byteBuffer, i10));
    }

    public static int g(ByteBuffer byteBuffer, int i10) {
        return C.e(net.jpountz.util.a.h(byteBuffer, i10));
    }

    public static int h(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        int i14;
        if (i12 + i11 + 1 + ((i11 + 240) / 255) > i13) {
            throw new LZ4Exception();
        }
        if (i11 >= 15) {
            byteBuffer2.put(i12, (byte) -16);
            i14 = q(i11 - 15, byteBuffer2, i12 + 1);
        } else {
            byteBuffer2.put(i12, (byte) (i11 << 4));
            i14 = i12 + 1;
        }
        j(byteBuffer, i10, byteBuffer2, i14, i11);
        return i14 + i11;
    }

    public static boolean i(ByteBuffer byteBuffer, int i10, int i11) {
        return byteBuffer.getInt(i10) == byteBuffer.getInt(i11);
    }

    public static void j(ByteBuffer byteBuffer, int i10, ByteBuffer byteBuffer2, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            byteBuffer2.put(i11 + i13, byteBuffer.get(i10 + i13));
        }
    }

    public static void k(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            byteBuffer.put(i11 + i13, byteBuffer.get(i10 + i13));
        }
    }

    public static void m(ByteBuffer byteBuffer, int i10, ByteBuffer byteBuffer2, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13 += 8) {
            try {
                byteBuffer2.putLong(i11 + i13, byteBuffer.getLong(i10 + i13));
            } catch (IndexOutOfBoundsException unused) {
                throw new LZ4Exception("Malformed input at offset " + i10);
            }
        }
    }

    public static void o(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if (i13 < 4) {
            int i14 = 0;
            for (int i15 = 0; i15 < 4; i15++) {
                net.jpountz.util.a.o(byteBuffer, i11 + i15, net.jpountz.util.a.g(byteBuffer, i10 + i15));
            }
            int i16 = i11 + 4;
            int i17 = i10 + 4;
            int i18 = i16 - i17;
            if (i18 == 1) {
                i17 = i10 + 1;
            } else if (i18 == 2) {
                i17 = i10 + 2;
            } else if (i18 == 3) {
                i17 = i10 + 1;
                i14 = -1;
            } else if (i18 == 5) {
                i14 = 1;
            } else if (i18 == 6) {
                i14 = 2;
            } else if (i18 == 7) {
                i14 = 3;
            }
            net.jpountz.util.a.q(byteBuffer, i16, net.jpountz.util.a.h(byteBuffer, i17));
            i11 += 8;
            i10 = i17 - i14;
        } else if (i13 < 8) {
            net.jpountz.util.a.r(byteBuffer, i11, net.jpountz.util.a.j(byteBuffer, i10));
            i11 += i13;
        }
        while (i11 < i12) {
            net.jpountz.util.a.r(byteBuffer, i11, net.jpountz.util.a.j(byteBuffer, i10));
            i11 += 8;
            i10 += 8;
        }
    }

    public static int q(int i10, ByteBuffer byteBuffer, int i11) {
        while (i10 >= 255) {
            byteBuffer.put(i11, (byte) -1);
            i10 -= 255;
            i11++;
        }
        int i12 = i11 + 1;
        byteBuffer.put(i11, (byte) i10);
        return i12;
    }
}
