package nl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Xi.x0;
import nl.l;
import org.bouncycastle.util.p;

public class C14463g implements Yk.g {

    public final C14457a f98321a;

    public byte[] f98322b;

    public C14463g(InterfaceC2392y interfaceC2392y, InterfaceC2392y interfaceC2392y2) {
        if (interfaceC2392y.f() != 32) {
            throw new IllegalArgumentException("n-digest needs to produce 32 bytes of output");
        }
        if (interfaceC2392y2.f() != 64) {
            throw new IllegalArgumentException("2n-digest needs to produce 64 bytes of output");
        }
        this.f98321a = new C14457a(interfaceC2392y, interfaceC2392y2);
    }

    public static void e(C14457a c14457a, byte[] bArr, byte[] bArr2, int i10, l.a aVar, byte[] bArr3, byte[] bArr4, int i11) {
        l.a aVar2 = new l.a(aVar);
        byte[] bArr5 = new byte[2048];
        byte[] bArr6 = new byte[1024];
        byte[] bArr7 = new byte[68608];
        aVar2.f98330c = 0L;
        while (true) {
            long j10 = aVar2.f98330c;
            if (j10 >= 32) {
                break;
            }
            C14467k.a(c14457a, bArr6, (int) (j10 * 32), bArr3, aVar2);
            aVar2.f98330c++;
        }
        m mVar = new m();
        aVar2.f98330c = 0L;
        while (true) {
            long j11 = aVar2.f98330c;
            if (j11 >= 32) {
                break;
            }
            mVar.d(c14457a, bArr7, (int) (j11 * 2144), bArr6, (int) (j11 * 32), bArr4, 0);
            aVar2.f98330c++;
        }
        aVar2.f98330c = 0L;
        while (true) {
            long j12 = aVar2.f98330c;
            if (j12 >= 32) {
                break;
            }
            l.b(c14457a, bArr5, (int) ((j12 * 32) + 1024), bArr7, (int) (j12 * 2144), bArr4, 0);
            aVar2.f98330c++;
        }
        int i12 = 0;
        for (int i13 = 32; i13 > 0; i13 >>>= 1) {
            for (int i14 = 0; i14 < i13; i14 += 2) {
                c14457a.c(bArr5, ((i13 >>> 1) * 32) + ((i14 >>> 1) * 32), bArr5, (i13 * 32) + (i14 * 32), bArr4, (i12 + 7) * 64);
            }
            i12++;
        }
        int i15 = (int) aVar.f98330c;
        for (int i16 = 0; i16 < i11; i16++) {
            System.arraycopy(bArr5, ((32 >>> i16) * 32) + (((i15 >>> i16) ^ 1) * 32), bArr2, i10 + (i16 * 32), 32);
        }
        System.arraycopy(bArr5, 32, bArr, 0, 32);
    }

    public static void g(C14457a c14457a, byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, int i11, byte[] bArr4, int i12) {
        byte[] bArr5 = new byte[64];
        if ((i10 & 1) != 0) {
            for (int i13 = 0; i13 < 32; i13++) {
                bArr5[i13 + 32] = bArr2[i13];
            }
            for (int i14 = 0; i14 < 32; i14++) {
                bArr5[i14] = bArr3[i11 + i14];
            }
        } else {
            for (int i15 = 0; i15 < 32; i15++) {
                bArr5[i15] = bArr2[i15];
            }
            for (int i16 = 0; i16 < 32; i16++) {
                bArr5[i16 + 32] = bArr3[i11 + i16];
            }
        }
        int i17 = i11 + 32;
        int i18 = 0;
        int i19 = i10;
        while (i18 < i12 - 1) {
            int i20 = i19 >>> 1;
            if ((i20 & 1) != 0) {
                c14457a.c(bArr5, 32, bArr5, 0, bArr4, (i18 + 7) * 64);
                for (int i21 = 0; i21 < 32; i21++) {
                    bArr5[i21] = bArr3[i17 + i21];
                }
            } else {
                c14457a.c(bArr5, 0, bArr5, 0, bArr4, (i18 + 7) * 64);
                for (int i22 = 0; i22 < 32; i22++) {
                    bArr5[i22 + 32] = bArr3[i17 + i22];
                }
            }
            i17 += 32;
            i18++;
            i19 = i20;
        }
        c14457a.c(bArr, 0, bArr5, 0, bArr4, (i12 + 6) * 64);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!z10) {
            this.f98322b = ((C14466j) interfaceC2379k).e();
        } else if (interfaceC2379k instanceof x0) {
            this.f98322b = ((C14465i) ((x0) interfaceC2379k).a()).e();
        } else {
            this.f98322b = ((C14465i) interfaceC2379k).e();
        }
    }

    @Override
    public byte[] b(byte[] bArr) {
        return f(this.f98321a, bArr, this.f98322b);
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        return h(this.f98321a, bArr, bArr2, this.f98322b);
    }

    public byte[] f(C14457a c14457a, byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[C14460d.f98317k];
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[64];
        long[] jArr = new long[8];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[32];
        byte[] bArr8 = new byte[1024];
        byte[] bArr9 = new byte[1088];
        for (int i10 = 0; i10 < 1088; i10++) {
            bArr9[i10] = bArr2[i10];
        }
        System.arraycopy(bArr9, 1056, bArr3, 40968, 32);
        InterfaceC2392y a10 = c14457a.a();
        byte[] bArr10 = new byte[a10.f()];
        a10.update(bArr3, 40968, 32);
        a10.update(bArr, 0, bArr.length);
        a10.c(bArr10, 0);
        i(bArr3, 40968, 32);
        for (int i11 = 0; i11 != 8; i11++) {
            jArr[i11] = p.x(bArr10, i11 * 8);
        }
        long j10 = jArr[0] & 1152921504606846975L;
        System.arraycopy(bArr10, 16, bArr4, 0, 32);
        System.arraycopy(bArr4, 0, bArr3, 39912, 32);
        l.a aVar = new l.a();
        aVar.f98328a = 11;
        aVar.f98329b = 0L;
        aVar.f98330c = 0L;
        System.arraycopy(bArr9, 32, bArr3, 39944, 1024);
        l.c(c14457a, bArr3, 40968, 5, bArr9, aVar, bArr3, 39944);
        InterfaceC2392y a11 = c14457a.a();
        a11.update(bArr3, 39912, 1088);
        a11.update(bArr, 0, bArr.length);
        a11.c(bArr5, 0);
        l.a aVar2 = new l.a();
        aVar2.f98328a = 12;
        aVar2.f98330c = (int) (r19 & 31);
        aVar2.f98329b = j10 >>> 5;
        for (int i12 = 0; i12 < 32; i12++) {
            bArr3[i12] = bArr4[i12];
        }
        byte[] bArr11 = bArr8;
        System.arraycopy(bArr9, 32, bArr11, 0, 1024);
        for (int i13 = 0; i13 < 8; i13++) {
            bArr3[32 + i13] = (byte) ((j10 >>> (i13 * 8)) & 255);
        }
        C14467k.a(c14457a, bArr7, 0, bArr9, aVar2);
        new C14458b();
        int b10 = 40 + C14458b.b(c14457a, bArr3, 40, bArr6, bArr7, bArr11, bArr5);
        m mVar = new m();
        int i14 = b10;
        int i15 = 0;
        for (int i16 = 12; i15 < i16; i16 = 12) {
            aVar2.f98328a = i15;
            C14467k.a(c14457a, bArr7, 0, bArr9, aVar2);
            int i17 = i14;
            int i18 = i15;
            byte[] bArr12 = bArr11;
            mVar.e(c14457a, bArr3, i14, bArr6, bArr7, bArr12);
            e(c14457a, bArr6, bArr3, i17 + m.f98336f, aVar2, bArr9, bArr12, 5);
            i14 = i17 + 2304;
            long j11 = aVar2.f98329b;
            aVar2.f98330c = (int) (j11 & 31);
            aVar2.f98329b = j11 >>> 5;
            i15 = i18 + 1;
            bArr11 = bArr11;
        }
        i(bArr9, 0, 1088);
        return bArr3;
    }

    public boolean h(C14457a c14457a, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int length = bArr2.length;
        byte[] bArr4 = new byte[m.f98336f];
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[C14460d.f98317k];
        byte[] bArr8 = new byte[1056];
        if (length != 41000) {
            throw new IllegalArgumentException("signature wrong size");
        }
        byte[] bArr9 = new byte[64];
        for (int i10 = 0; i10 < 1056; i10++) {
            bArr8[i10] = bArr3[i10];
        }
        byte[] bArr10 = new byte[32];
        for (int i11 = 0; i11 < 32; i11++) {
            bArr10[i11] = bArr2[i11];
        }
        System.arraycopy(bArr2, 0, bArr7, 0, C14460d.f98317k);
        InterfaceC2392y a10 = c14457a.a();
        a10.update(bArr10, 0, 32);
        a10.update(bArr8, 0, 1056);
        a10.update(bArr, 0, bArr.length);
        a10.c(bArr9, 0);
        long j10 = 0;
        for (int i12 = 0; i12 < 8; i12++) {
            j10 ^= (bArr7[32 + i12] & 255) << (i12 * 8);
        }
        new C14458b();
        C14458b.c(c14457a, bArr6, bArr7, 40, bArr8, bArr9);
        m mVar = new m();
        int i13 = 0;
        int i14 = 13352;
        while (i13 < 12) {
            int i15 = i14;
            mVar.f(c14457a, bArr4, bArr7, i14, bArr6, bArr8);
            int i16 = i15 + m.f98336f;
            l.b(c14457a, bArr5, 0, bArr4, 0, bArr8, 0);
            byte[] bArr11 = bArr8;
            byte[] bArr12 = bArr7;
            g(c14457a, bArr6, bArr5, (int) (31 & j10), bArr12, i16, bArr11, 5);
            j10 >>= 5;
            i14 = i15 + 2304;
            i13++;
            bArr8 = bArr11;
            bArr7 = bArr12;
            bArr6 = bArr6;
            bArr5 = bArr5;
        }
        byte[] bArr13 = bArr8;
        byte[] bArr14 = bArr6;
        boolean z10 = true;
        for (int i17 = 0; i17 < 32; i17++) {
            if (bArr14[i17] != bArr13[i17 + 1024]) {
                z10 = false;
            }
        }
        return z10;
    }

    public final void i(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 != i11; i12++) {
            bArr[i10 + i12] = 0;
        }
    }
}
