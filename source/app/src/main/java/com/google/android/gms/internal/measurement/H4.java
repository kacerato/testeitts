package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class H4 {

    public static volatile int f61936a = 100;

    public static final int f61937b = 0;

    public static int a(byte[] bArr, int i10, G4 g42) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return b(b10, bArr, i11, g42);
        }
        g42.f61927a = b10;
        return i11;
    }

    public static int b(int i10, byte[] bArr, int i11, G4 g42) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            g42.f61927a = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & Byte.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            g42.f61927a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & Byte.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            g42.f61927a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & Byte.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            g42.f61927a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                g42.f61927a = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    public static int c(byte[] bArr, int i10, G4 g42) {
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            g42.f61928b = j10;
            return i11;
        }
        int i12 = i10 + 2;
        byte b10 = bArr[i11];
        long j11 = (j10 & 127) | ((b10 & Byte.MAX_VALUE) << 7);
        int i13 = 7;
        while (b10 < 0) {
            int i14 = i12 + 1;
            i13 += 7;
            j11 |= (r10 & Byte.MAX_VALUE) << i13;
            b10 = bArr[i12];
            i12 = i14;
        }
        g42.f61928b = j11;
        return i12;
    }

    public static int d(byte[] bArr, int i10) {
        int i11 = bArr[i10] & 255;
        int i12 = bArr[i10 + 1] & 255;
        int i13 = bArr[i10 + 2] & 255;
        return ((bArr[i10 + 3] & 255) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    public static long e(byte[] bArr, int i10) {
        return (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48) | ((bArr[i10 + 7] & 255) << 56);
    }

    public static int f(byte[] bArr, int i10, G4 g42) throws zzmq {
        int i11;
        int a10 = a(bArr, i10, g42);
        int i12 = g42.f61927a;
        if (i12 < 0) {
            throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i12 == 0) {
            g42.f61929c = "";
            return a10;
        }
        int i13 = B6.f61893a;
        int length = bArr.length;
        if ((((length - a10) - i12) | a10 | i12) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(a10), Integer.valueOf(i12)));
        }
        int i14 = a10 + i12;
        char[] cArr = new char[i12];
        int i15 = 0;
        while (a10 < i14) {
            byte b10 = bArr[a10];
            if (!A6.a(b10)) {
                break;
            }
            a10++;
            cArr[i15] = (char) b10;
            i15++;
        }
        int i16 = i15;
        while (a10 < i14) {
            int i17 = a10 + 1;
            byte b11 = bArr[a10];
            if (A6.a(b11)) {
                cArr[i16] = (char) b11;
                i16++;
                a10 = i17;
                while (a10 < i14) {
                    byte b12 = bArr[a10];
                    if (A6.a(b12)) {
                        a10++;
                        cArr[i16] = (char) b12;
                        i16++;
                    }
                }
            } else {
                if (b11 < -32) {
                    if (i17 >= i14) {
                        throw new zzmq("Protocol message had invalid UTF-8.");
                    }
                    i11 = i16 + 1;
                    a10 += 2;
                    A6.b(b11, bArr[i17], cArr, i16);
                } else if (b11 < -16) {
                    if (i17 >= i14 - 1) {
                        throw new zzmq("Protocol message had invalid UTF-8.");
                    }
                    i11 = i16 + 1;
                    int i18 = a10 + 2;
                    a10 += 3;
                    A6.c(b11, bArr[i17], bArr[i18], cArr, i16);
                } else {
                    if (i17 >= i14 - 2) {
                        throw new zzmq("Protocol message had invalid UTF-8.");
                    }
                    byte b13 = bArr[i17];
                    int i19 = a10 + 3;
                    byte b14 = bArr[a10 + 2];
                    a10 += 4;
                    A6.d(b11, b13, b14, bArr[i19], cArr, i16);
                    i16 += 2;
                }
                i16 = i11;
            }
        }
        g42.f61929c = new String(cArr, 0, i16);
        return i14;
    }

    public static int g(byte[] bArr, int i10, G4 g42) throws zzmq {
        int a10 = a(bArr, i10, g42);
        int i11 = g42.f61927a;
        if (i11 < 0) {
            throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i11 > bArr.length - a10) {
            throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i11 == 0) {
            g42.f61929c = S4.f62112c;
            return a10;
        }
        g42.f61929c = S4.p(bArr, a10, i11);
        return a10 + i11;
    }

    public static int h(InterfaceC12083h6 interfaceC12083h6, byte[] bArr, int i10, int i11, G4 g42) throws IOException {
        Object N12 = interfaceC12083h6.N1();
        int j10 = j(N12, interfaceC12083h6, bArr, i10, i11, g42);
        interfaceC12083h6.f(N12);
        g42.f61929c = N12;
        return j10;
    }

    public static int i(InterfaceC12083h6 interfaceC12083h6, byte[] bArr, int i10, int i11, int i12, G4 g42) throws IOException {
        Object N12 = interfaceC12083h6.N1();
        int k10 = k(N12, interfaceC12083h6, bArr, i10, i11, i12, g42);
        interfaceC12083h6.f(N12);
        g42.f61929c = N12;
        return k10;
    }

    public static int j(Object obj, InterfaceC12083h6 interfaceC12083h6, byte[] bArr, int i10, int i11, G4 g42) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = b(i13, bArr, i12, g42);
            i13 = g42.f61927a;
        }
        int i14 = i12;
        if (i13 < 0 || i13 > i11 - i14) {
            throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i15 = g42.f61931e + 1;
        g42.f61931e = i15;
        q(i15);
        int i16 = i13 + i14;
        interfaceC12083h6.g(obj, bArr, i14, i16, g42);
        g42.f61931e--;
        g42.f61929c = obj;
        return i16;
    }

    public static int k(Object obj, InterfaceC12083h6 interfaceC12083h6, byte[] bArr, int i10, int i11, int i12, G4 g42) throws IOException {
        Z5 z52 = (Z5) interfaceC12083h6;
        int i13 = g42.f61931e + 1;
        g42.f61931e = i13;
        q(i13);
        int z10 = z52.z(obj, bArr, i10, i11, i12, g42);
        g42.f61931e--;
        g42.f61929c = obj;
        return z10;
    }

    public static int l(int i10, byte[] bArr, int i11, int i12, InterfaceC12243z5 interfaceC12243z5, G4 g42) {
        C12171r5 c12171r5 = (C12171r5) interfaceC12243z5;
        int a10 = a(bArr, i11, g42);
        c12171r5.k(g42.f61927a);
        while (a10 < i12) {
            int a11 = a(bArr, a10, g42);
            if (i10 != g42.f61927a) {
                break;
            }
            a10 = a(bArr, a11, g42);
            c12171r5.k(g42.f61927a);
        }
        return a10;
    }

    public static int m(byte[] bArr, int i10, InterfaceC12243z5 interfaceC12243z5, G4 g42) throws IOException {
        C12171r5 c12171r5 = (C12171r5) interfaceC12243z5;
        int a10 = a(bArr, i10, g42);
        int i11 = g42.f61927a + a10;
        while (a10 < i11) {
            a10 = a(bArr, a10, g42);
            c12171r5.k(g42.f61927a);
        }
        if (a10 == i11) {
            return a10;
        }
        throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int n(InterfaceC12083h6 interfaceC12083h6, int i10, byte[] bArr, int i11, int i12, InterfaceC12243z5 interfaceC12243z5, G4 g42) throws IOException {
        int h10 = h(interfaceC12083h6, bArr, i11, i12, g42);
        interfaceC12243z5.add(g42.f61929c);
        while (h10 < i12) {
            int a10 = a(bArr, h10, g42);
            if (i10 != g42.f61927a) {
                break;
            }
            h10 = h(interfaceC12083h6, bArr, a10, i12, g42);
            interfaceC12243z5.add(g42.f61929c);
        }
        return h10;
    }

    public static int o(int i10, byte[] bArr, int i11, int i12, C12190t6 c12190t6, G4 g42) throws zzmq {
        if ((i10 >>> 3) == 0) {
            throw new zzmq("Protocol message contained an invalid tag (zero).");
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int c10 = c(bArr, i11, g42);
            c12190t6.k(i10, Long.valueOf(g42.f61928b));
            return c10;
        }
        if (i13 == 1) {
            c12190t6.k(i10, Long.valueOf(e(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int a10 = a(bArr, i11, g42);
            int i14 = g42.f61927a;
            if (i14 < 0) {
                throw new zzmq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i14 > bArr.length - a10) {
                throw new zzmq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i14 == 0) {
                c12190t6.k(i10, S4.f62112c);
            } else {
                c12190t6.k(i10, S4.p(bArr, a10, i14));
            }
            return a10 + i14;
        }
        if (i13 != 3) {
            if (i13 != 5) {
                throw new zzmq("Protocol message contained an invalid tag (zero).");
            }
            c12190t6.k(i10, Integer.valueOf(d(bArr, i11)));
            return i11 + 4;
        }
        int i15 = (i10 & (-8)) | 4;
        C12190t6 b10 = C12190t6.b();
        int i16 = g42.f61931e + 1;
        g42.f61931e = i16;
        q(i16);
        int i17 = 0;
        while (true) {
            if (i11 >= i12) {
                break;
            }
            int a11 = a(bArr, i11, g42);
            i17 = g42.f61927a;
            if (i17 == i15) {
                i11 = a11;
                break;
            }
            i11 = o(i17, bArr, a11, i12, b10, g42);
        }
        g42.f61931e--;
        if (i11 > i12 || i17 != i15) {
            throw new zzmq("Failed to parse the message.");
        }
        c12190t6.k(i10, b10);
        return i11;
    }

    public static int p(int i10, byte[] bArr, int i11, int i12, G4 g42) throws zzmq {
        if ((i10 >>> 3) == 0) {
            throw new zzmq("Protocol message contained an invalid tag (zero).");
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            return c(bArr, i11, g42);
        }
        if (i13 == 1) {
            return i11 + 8;
        }
        if (i13 == 2) {
            return a(bArr, i11, g42) + g42.f61927a;
        }
        if (i13 != 3) {
            if (i13 == 5) {
                return i11 + 4;
            }
            throw new zzmq("Protocol message contained an invalid tag (zero).");
        }
        int i14 = (i10 & (-8)) | 4;
        int i15 = 0;
        while (i11 < i12) {
            i11 = a(bArr, i11, g42);
            i15 = g42.f61927a;
            if (i15 == i14) {
                break;
            }
            i11 = p(i15, bArr, i11, i12, g42);
        }
        if (i11 > i12 || i15 != i14) {
            throw new zzmq("Failed to parse the message.");
        }
        return i11;
    }

    public static void q(int i10) throws zzmq {
        if (i10 >= f61936a) {
            throw new zzmq("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}
