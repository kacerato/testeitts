package net.jpountz.lz4;

import java.nio.ByteBuffer;
import java.util.Arrays;
import net.jpountz.lz4.C;

public final class n extends d {

    public static final d f98073c = new n();

    public static final boolean f98074d = false;

    public final int f98075a;

    public final int f98076b;

    public class a {

        public static final int f98077f = 65535;

        public static final boolean f98078g = false;

        public int f98079a;

        public final int f98080b;

        public final int[] f98081c;

        public final short[] f98082d;

        public a(int i10) {
            this.f98080b = i10;
            this.f98079a = i10;
            int[] iArr = new int[32768];
            this.f98081c = iArr;
            Arrays.fill(iArr, -1);
            this.f98082d = new short[65536];
        }

        public final void a(int i10, int i11) {
            int g10 = C.g(i10);
            int[] iArr = this.f98081c;
            int i12 = i11 - iArr[g10];
            if (i12 >= 65536) {
                i12 = 65535;
            }
            this.f98082d[65535 & i11] = (short) i12;
            iArr[g10] = i11;
        }

        public final void b(ByteBuffer byteBuffer, int i10) {
            a(net.jpountz.util.a.h(byteBuffer, i10), i10);
        }

        public final void c(byte[] bArr, int i10) {
            a(net.jpountz.util.c.e(bArr, i10), i10);
        }

        public final int d(int i10) {
            return this.f98081c[C.g(i10)];
        }

        public final int e(ByteBuffer byteBuffer, int i10) {
            return d(net.jpountz.util.a.h(byteBuffer, i10));
        }

        public final int f(byte[] bArr, int i10) {
            return d(net.jpountz.util.c.e(bArr, i10));
        }

        public void g(int i10, ByteBuffer byteBuffer) {
            while (true) {
                int i11 = this.f98079a;
                if (i11 >= i10) {
                    return;
                }
                b(byteBuffer, i11);
                this.f98079a++;
            }
        }

        public void h(int i10, byte[] bArr) {
            while (true) {
                int i11 = this.f98079a;
                if (i11 >= i10) {
                    return;
                }
                c(bArr, i11);
                this.f98079a++;
            }
        }

        public boolean i(ByteBuffer byteBuffer, int i10, int i11, C.a aVar) {
            int i12;
            int i13;
            int a10;
            aVar.f97980a = i10;
            aVar.f97982c = 0;
            g(i10, byteBuffer);
            int e10 = e(byteBuffer, i10);
            if (e10 < i10 - 4 || e10 > i10 || e10 < this.f98080b) {
                i12 = 0;
                i13 = 0;
            } else {
                if (EnumC14390c.i(byteBuffer, e10, i10)) {
                    i12 = i10 - e10;
                    i13 = EnumC14390c.a(byteBuffer, e10 + 4, i10 + 4, i11) + 4;
                    aVar.f97982c = i13;
                    aVar.f97981b = e10;
                } else {
                    i12 = 0;
                    i13 = 0;
                }
                e10 = m(e10);
            }
            for (int i14 = 0; i14 < n.this.f98075a && e10 >= Math.max(this.f98080b, i10 - 65535) && e10 <= i10; i14++) {
                if (EnumC14390c.i(byteBuffer, e10, i10) && (a10 = EnumC14390c.a(byteBuffer, e10 + 4, i10 + 4, i11) + 4) > aVar.f97982c) {
                    aVar.f97981b = e10;
                    aVar.f97982c = a10;
                }
                e10 = m(e10);
            }
            if (i13 != 0) {
                int i15 = (i13 + i10) - 3;
                while (i10 < i15 - i12) {
                    this.f98082d[i10 & 65535] = (short) i12;
                    i10++;
                }
                do {
                    this.f98082d[i10 & 65535] = (short) i12;
                    this.f98081c[C.g(net.jpountz.util.a.h(byteBuffer, i10))] = i10;
                    i10++;
                } while (i10 < i15);
                this.f98079a = i15;
            }
            return aVar.f97982c != 0;
        }

        public boolean j(byte[] bArr, int i10, int i11, C.a aVar) {
            int i12;
            int i13;
            int a10;
            aVar.f97980a = i10;
            aVar.f97982c = 0;
            h(i10, bArr);
            int f10 = f(bArr, i10);
            if (f10 < i10 - 4 || f10 > i10 || f10 < this.f98080b) {
                i12 = 0;
                i13 = 0;
            } else {
                if (z.j(bArr, f10, i10)) {
                    i12 = i10 - f10;
                    i13 = z.a(bArr, f10 + 4, i10 + 4, i11) + 4;
                    aVar.f97982c = i13;
                    aVar.f97981b = f10;
                } else {
                    i12 = 0;
                    i13 = 0;
                }
                f10 = m(f10);
            }
            for (int i14 = 0; i14 < n.this.f98075a && f10 >= Math.max(this.f98080b, i10 - 65535) && f10 <= i10; i14++) {
                if (z.j(bArr, f10, i10) && (a10 = z.a(bArr, f10 + 4, i10 + 4, i11) + 4) > aVar.f97982c) {
                    aVar.f97981b = f10;
                    aVar.f97982c = a10;
                }
                f10 = m(f10);
            }
            if (i13 != 0) {
                int i15 = (i13 + i10) - 3;
                while (i10 < i15 - i12) {
                    this.f98082d[i10 & 65535] = (short) i12;
                    i10++;
                }
                do {
                    this.f98082d[i10 & 65535] = (short) i12;
                    this.f98081c[C.g(net.jpountz.util.c.e(bArr, i10))] = i10;
                    i10++;
                } while (i10 < i15);
                this.f98079a = i15;
            }
            return aVar.f97982c != 0;
        }

        public boolean k(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, C.a aVar) {
            aVar.f97982c = i13;
            g(i10, byteBuffer);
            int e10 = e(byteBuffer, i10);
            for (int i14 = 0; i14 < n.this.f98075a && e10 >= Math.max(this.f98080b, i10 - 65535) && e10 <= i10; i14++) {
                if (EnumC14390c.i(byteBuffer, e10, i10)) {
                    int a10 = EnumC14390c.a(byteBuffer, e10 + 4, i10 + 4, i12) + 4;
                    int b10 = EnumC14390c.b(byteBuffer, e10, i10, this.f98080b, i11);
                    int i15 = a10 + b10;
                    if (i15 > aVar.f97982c) {
                        aVar.f97982c = i15;
                        aVar.f97981b = e10 - b10;
                        aVar.f97980a = i10 - b10;
                    }
                }
                e10 = m(e10);
            }
            return aVar.f97982c > i13;
        }

        public boolean l(byte[] bArr, int i10, int i11, int i12, int i13, C.a aVar) {
            aVar.f97982c = i13;
            h(i10, bArr);
            int f10 = f(bArr, i10);
            for (int i14 = 0; i14 < n.this.f98075a && f10 >= Math.max(this.f98080b, i10 - 65535) && f10 <= i10; i14++) {
                if (z.j(bArr, f10, i10)) {
                    int a10 = z.a(bArr, f10 + 4, i10 + 4, i12) + 4;
                    int b10 = z.b(bArr, f10, i10, this.f98080b, i11);
                    int i15 = a10 + b10;
                    if (i15 > aVar.f97982c) {
                        aVar.f97982c = i15;
                        aVar.f97981b = f10 - b10;
                        aVar.f97980a = i10 - b10;
                    }
                }
                f10 = m(f10);
            }
            return aVar.f97982c > i13;
        }

        public final int m(int i10) {
            return i10 - (this.f98082d[i10 & 65535] & 65535);
        }
    }

    public n() {
        this(9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x026a, code lost:
    
        r0 = net.jpountz.lz4.EnumC14390c.d(r10, r0, r1.f97980a, r1.f97981b, r1.f97982c, r11, r16, r13);
        r3 = r1.a();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int a(ByteBuffer byteBuffer, int i10, int i11, ByteBuffer byteBuffer2, int i12, int i13) {
        C.a aVar;
        C.a aVar2;
        a aVar3;
        int i14;
        int i15;
        C.a aVar4;
        C.a aVar5;
        if (byteBuffer.hasArray() && byteBuffer2.hasArray()) {
            return c(byteBuffer.array(), byteBuffer.arrayOffset() + i10, i11, byteBuffer2.array(), i12 + byteBuffer2.arrayOffset(), i13);
        }
        ByteBuffer e10 = net.jpountz.util.a.e(byteBuffer);
        ByteBuffer e11 = net.jpountz.util.a.e(byteBuffer2);
        net.jpountz.util.a.c(e10, i10, i11);
        net.jpountz.util.a.c(e11, i12, i13);
        int i16 = i10 + i11;
        int i17 = i12 + i13;
        int i18 = i16 - 12;
        int i19 = i16 - 5;
        int i20 = i10 + 1;
        a aVar6 = new a(i10);
        C.a aVar7 = new C.a();
        C.a aVar8 = new C.a();
        C.a aVar9 = new C.a();
        C.a aVar10 = new C.a();
        int i21 = i10;
        int i22 = i12;
        while (i20 < i18) {
            if (aVar6.i(e10, i20, i19, aVar8)) {
                C.a(aVar8, aVar7);
                int i23 = i22;
                int i24 = i21;
                while (true) {
                    if (aVar8.a() >= i18) {
                        aVar = aVar10;
                        aVar2 = aVar8;
                        aVar3 = aVar6;
                        i14 = i16;
                        i15 = i18;
                        aVar4 = aVar9;
                        aVar5 = aVar7;
                        break;
                    }
                    C.a aVar11 = aVar10;
                    C.a aVar12 = aVar9;
                    aVar2 = aVar8;
                    i14 = i16;
                    aVar5 = aVar7;
                    if (!aVar6.k(e10, aVar8.a() - 2, aVar8.f97980a + 1, i19, aVar8.f97982c, aVar12)) {
                        aVar = aVar11;
                        aVar3 = aVar6;
                        i15 = i18;
                        aVar4 = aVar12;
                        break;
                    }
                    int i25 = aVar5.f97980a;
                    int i26 = aVar2.f97980a;
                    C.a aVar13 = aVar12;
                    if (i25 < i26 && aVar13.f97980a < i26 + aVar5.f97982c) {
                        C.a(aVar5, aVar2);
                    }
                    char c10 = 3;
                    if (aVar13.f97980a - aVar2.f97980a >= 3) {
                        while (true) {
                            int i27 = aVar13.f97980a;
                            int i28 = aVar2.f97980a;
                            if (i27 - i28 < 18) {
                                int i29 = aVar2.f97982c;
                                if (i29 > 18) {
                                    i29 = 18;
                                }
                                if (i28 + i29 > aVar13.a() - 4) {
                                    i29 = ((aVar13.f97980a - aVar2.f97980a) + aVar13.f97982c) - 4;
                                }
                                int i30 = i29 - (aVar13.f97980a - aVar2.f97980a);
                                if (i30 > 0) {
                                    aVar13.b(i30);
                                }
                            }
                            if (aVar13.f97980a + aVar13.f97982c >= i18) {
                                aVar = aVar11;
                                aVar3 = aVar6;
                                i15 = i18;
                                aVar4 = aVar13;
                                break;
                            }
                            a aVar14 = aVar6;
                            a aVar15 = aVar6;
                            char c11 = c10;
                            C.a aVar16 = aVar13;
                            if (!aVar14.k(e10, aVar13.a() - 3, aVar13.f97980a, i19, aVar13.f97982c, aVar11)) {
                                aVar = aVar11;
                                aVar3 = aVar15;
                                i15 = i18;
                                aVar4 = aVar16;
                                break;
                            }
                            C.a aVar17 = aVar11;
                            if (aVar17.f97980a >= aVar2.a() + 3) {
                                int i31 = i18;
                                if (aVar16.f97980a < aVar2.a()) {
                                    int i32 = aVar16.f97980a;
                                    int i33 = aVar2.f97980a;
                                    if (i32 - i33 < 15) {
                                        if (aVar2.f97982c > 18) {
                                            aVar2.f97982c = 18;
                                        }
                                        if (aVar2.a() > aVar16.a() - 4) {
                                            aVar2.f97982c = (aVar16.a() - aVar2.f97980a) - 4;
                                        }
                                        aVar16.b(aVar2.a() - aVar16.f97980a);
                                    } else {
                                        aVar2.f97982c = i32 - i33;
                                    }
                                }
                                i23 = EnumC14390c.d(e10, i24, aVar2.f97980a, aVar2.f97981b, aVar2.f97982c, e11, i23, i17);
                                int a10 = aVar2.a();
                                C.a(aVar16, aVar2);
                                C.a(aVar17, aVar16);
                                aVar13 = aVar16;
                                c10 = c11;
                                aVar6 = aVar15;
                                i18 = i31;
                                aVar11 = aVar17;
                                i24 = a10;
                            } else if (aVar17.f97980a >= aVar2.a()) {
                                if (aVar16.f97980a < aVar2.a()) {
                                    aVar16.b(aVar2.a() - aVar16.f97980a);
                                    if (aVar16.f97982c < 4) {
                                        C.a(aVar17, aVar16);
                                    }
                                }
                                i23 = EnumC14390c.d(e10, i24, aVar2.f97980a, aVar2.f97981b, aVar2.f97982c, e11, i23, i17);
                                int a11 = aVar2.a();
                                C.a(aVar17, aVar2);
                                C.a(aVar16, aVar5);
                                aVar10 = aVar17;
                                aVar8 = aVar2;
                                i24 = a11;
                                aVar7 = aVar5;
                                aVar9 = aVar16;
                                aVar6 = aVar15;
                                i18 = i18;
                            } else {
                                C.a(aVar17, aVar16);
                                aVar13 = aVar16;
                                c10 = c11;
                                i18 = i18;
                                aVar11 = aVar17;
                                aVar6 = aVar15;
                            }
                        }
                    } else {
                        C.a(aVar13, aVar2);
                        aVar10 = aVar11;
                        aVar8 = aVar2;
                        aVar9 = aVar13;
                        aVar7 = aVar5;
                    }
                    i16 = i14;
                }
                if (aVar4.f97980a < aVar2.a()) {
                    aVar2.f97982c = aVar4.f97980a - aVar2.f97980a;
                }
                i22 = EnumC14390c.d(e10, aVar2.a(), aVar4.f97980a, aVar4.f97981b, aVar4.f97982c, e11, EnumC14390c.d(e10, i24, aVar2.f97980a, aVar2.f97981b, aVar2.f97982c, e11, i23, i17), i17);
                i21 = aVar4.a();
                aVar8 = aVar2;
                i20 = i21;
                aVar7 = aVar5;
                aVar9 = aVar4;
                aVar10 = aVar;
                aVar6 = aVar3;
                i18 = i15;
                i16 = i14;
            } else {
                i20++;
            }
        }
        return EnumC14390c.h(e10, i21, i16 - i21, e11, i22, i17) - i12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e5, code lost:
    
        r24 = r11;
        r11 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01c2, code lost:
    
        if (r0.f97980a >= r9.a()) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01c4, code lost:
    
        r9.f97982c = r0.f97980a - r9.f97980a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01cb, code lost:
    
        r23 = r9;
        r6 = net.jpountz.lz4.z.e(r22, r23.a(), r0.f97980a, r0.f97981b, r0.f97982c, r25, net.jpountz.lz4.z.e(r22, r16, r9.f97980a, r9.f97981b, r9.f97982c, r25, r17, r10), r10);
        r3 = r0.a();
        r9 = r23;
        r8 = r0;
        r2 = r3;
        r7 = r11;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        C.a aVar;
        int i14;
        C.a aVar2;
        C.a aVar3;
        int i15;
        C.a aVar4;
        net.jpountz.util.c.c(bArr, i10, i11);
        net.jpountz.util.c.c(bArr2, i12, i13);
        int i16 = i10 + i11;
        int i17 = i12 + i13;
        int i18 = i16 - 12;
        int i19 = i16 - 5;
        int i20 = i10 + 1;
        a aVar5 = new a(i10);
        C.a aVar6 = new C.a();
        C.a aVar7 = new C.a();
        C.a aVar8 = new C.a();
        C.a aVar9 = new C.a();
        int i21 = i12;
        int i22 = i10;
        while (i20 < i18) {
            if (aVar5.j(bArr, i20, i19, aVar7)) {
                C.a(aVar7, aVar6);
                int i23 = i22;
                int i24 = i21;
                while (true) {
                    if (aVar7.a() >= i18) {
                        aVar = aVar8;
                        i14 = i18;
                        aVar2 = aVar9;
                        break;
                    }
                    C.a aVar10 = aVar9;
                    C.a aVar11 = aVar8;
                    if (!aVar5.l(bArr, aVar7.a() - 2, aVar7.f97980a + 1, i19, aVar7.f97982c, aVar8)) {
                        aVar = aVar11;
                        i14 = i18;
                        aVar2 = aVar10;
                        break;
                    }
                    int i25 = aVar6.f97980a;
                    int i26 = aVar7.f97980a;
                    aVar8 = aVar11;
                    if (i25 < i26 && aVar8.f97980a < i26 + aVar6.f97982c) {
                        C.a(aVar6, aVar7);
                    }
                    char c10 = 3;
                    if (aVar8.f97980a - aVar7.f97980a >= 3) {
                        while (true) {
                            int i27 = aVar8.f97980a;
                            int i28 = aVar7.f97980a;
                            if (i27 - i28 < 18) {
                                int i29 = aVar7.f97982c;
                                if (i29 > 18) {
                                    i29 = 18;
                                }
                                if (i28 + i29 > aVar8.a() - 4) {
                                    i29 = ((aVar8.f97980a - aVar7.f97980a) + aVar8.f97982c) - 4;
                                }
                                int i30 = i29 - (aVar8.f97980a - aVar7.f97980a);
                                if (i30 > 0) {
                                    aVar8.b(i30);
                                }
                            }
                            if (aVar8.f97980a + aVar8.f97982c >= i18) {
                                aVar3 = aVar8;
                                break;
                            }
                            char c11 = c10;
                            aVar3 = aVar8;
                            if (!aVar5.l(bArr, aVar8.a() - 3, aVar8.f97980a, i19, aVar8.f97982c, aVar10)) {
                                break;
                            }
                            C.a aVar12 = aVar10;
                            if (aVar12.f97980a >= aVar7.a() + 3) {
                                i15 = i18;
                                aVar4 = aVar12;
                                if (aVar3.f97980a < aVar7.a()) {
                                    int i31 = aVar3.f97980a;
                                    int i32 = aVar7.f97980a;
                                    if (i31 - i32 < 15) {
                                        if (aVar7.f97982c > 18) {
                                            aVar7.f97982c = 18;
                                        }
                                        if (aVar7.a() > aVar3.a() - 4) {
                                            aVar7.f97982c = (aVar3.a() - aVar7.f97980a) - 4;
                                        }
                                        aVar3.b(aVar7.a() - aVar3.f97980a);
                                    } else {
                                        aVar7.f97982c = i31 - i32;
                                    }
                                }
                                C.a aVar13 = aVar7;
                                i24 = z.e(bArr, i23, aVar7.f97980a, aVar7.f97981b, aVar7.f97982c, bArr2, i24, i17);
                                i23 = aVar13.a();
                                aVar7 = aVar13;
                                C.a(aVar3, aVar7);
                                C.a(aVar4, aVar3);
                            } else if (aVar12.f97980a >= aVar7.a()) {
                                if (aVar3.f97980a < aVar7.a()) {
                                    aVar3.b(aVar7.a() - aVar3.f97980a);
                                    if (aVar3.f97982c < 4) {
                                        C.a(aVar12, aVar3);
                                    }
                                }
                                C.a aVar14 = aVar7;
                                i24 = z.e(bArr, i23, aVar7.f97980a, aVar7.f97981b, aVar7.f97982c, bArr2, i24, i17);
                                i23 = aVar14.a();
                                aVar7 = aVar14;
                                C.a(aVar12, aVar7);
                                C.a(aVar3, aVar6);
                                aVar8 = aVar3;
                                aVar9 = aVar12;
                                i18 = i18;
                            } else {
                                i15 = i18;
                                aVar4 = aVar12;
                                C.a(aVar4, aVar3);
                            }
                            aVar8 = aVar3;
                            aVar10 = aVar4;
                            c10 = c11;
                            i18 = i15;
                        }
                    } else {
                        C.a(aVar8, aVar7);
                        aVar9 = aVar10;
                    }
                }
                int i33 = i23;
                C.a aVar15 = aVar7;
                i21 = z.e(bArr, i33, aVar7.f97980a, aVar7.f97981b, aVar7.f97982c, bArr2, i24, i17);
                i22 = aVar15.a();
                aVar8 = aVar;
                i20 = i22;
                aVar9 = aVar2;
                aVar7 = aVar15;
                i18 = i14;
            } else {
                i20++;
            }
        }
        return z.i(bArr, i22, i16 - i22, bArr2, i21, i17) - i12;
    }

    public n(int i10) {
        this.f98075a = 1 << (i10 - 1);
        this.f98076b = i10;
    }
}
