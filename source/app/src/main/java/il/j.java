package il;

import Oi.K;
import am.AbstractC3681e;
import am.C3678b;
import am.C3680d;
import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class j {

    public final bm.i f92415a;

    public j(bm.i iVar) {
        this.f92415a = iVar;
    }

    public static int a(int i10) {
        return i10 % 3;
    }

    public m b(byte[] bArr) {
        bm.i iVar = this.f92415a;
        if (iVar instanceof bm.h) {
            return new m(e(org.bouncycastle.util.a.X(bArr, 0, iVar.q())), e(org.bouncycastle.util.a.X(bArr, this.f92415a.q(), bArr.length)));
        }
        if (iVar instanceof bm.e) {
            return new m((C3678b) d(org.bouncycastle.util.a.X(bArr, 0, iVar.q())), c(org.bouncycastle.util.a.X(bArr, this.f92415a.q(), bArr.length)));
        }
        throw new IllegalArgumentException("Invalid polynomial type");
    }

    public C3678b c(byte[] bArr) {
        int i10;
        int i11;
        int c10 = this.f92415a.c();
        int u10 = ((bm.e) this.f92415a).u();
        C3678b c3678b = new C3678b((bm.e) this.f92415a);
        int i12 = c10 - 1;
        int[] iArr = new int[i12];
        int i13 = 0;
        while (true) {
            i10 = i12 / 4;
            if (i13 >= i10) {
                break;
            }
            int i14 = i13 * 4;
            int i15 = i13 * 15;
            iArr[i14] = ((bArr[i15] & 255) << 2) + ((bArr[i15 + 1] & 255) << 10) + ((bArr[i15 + 2] & 255) << 18) + ((bArr[i15 + 3] & 255) << 26);
            iArr[i14 + 1] = ((bArr[(i13 * 3) + 15] & Opcodes.OPC_checkcast) >> 4) + ((bArr[i15 + 4] & 255) << 4) + ((bArr[i15 + 5] & 255) << 12) + ((bArr[i15 + 6] & 255) << 20) + ((bArr[i15 + 7] & 255) << 28);
            int i16 = ((bArr[(i13 * 7) + 15] & 240) >> 2) + ((bArr[i15 + 8] & 255) << 6) + ((bArr[i15 + 9] & 255) << 14) + ((bArr[i15 + 10] & 255) << 22);
            byte b10 = bArr[i15 + 11];
            iArr[i14 + 2] = i16 + ((b10 & 255) << 30);
            iArr[i14 + 3] = (b10 & K.f20148c) + ((bArr[i15 + 12] & 255) << 8) + ((bArr[i15 + 13] & 255) << 16) + ((bArr[i15 + 14] & 255) << 24);
            i13++;
        }
        int i17 = i10 * 4;
        if (i12 > i17) {
            int i18 = i10 * 15;
            iArr[i17] = ((bArr[i18] & 255) << 2) + ((bArr[i18 + 1] & 255) << 10) + ((bArr[i18 + 2] & 255) << 18) + ((bArr[i18 + 3] & 255) << 26);
            iArr[i17 + 1] = ((bArr[(i10 * 3) + 15] & Opcodes.OPC_checkcast) >> 4) + ((bArr[i18 + 4] & 255) << 4) + ((bArr[i18 + 5] & 255) << 12) + ((bArr[i18 + 6] & 255) << 20) + ((bArr[i18 + 7] & 255) << 28);
        }
        int i19 = 0;
        while (true) {
            i11 = u10 / 2;
            if (i19 >= i11) {
                break;
            }
            iArr[i19] = iArr[i19] | 1;
            i19++;
        }
        while (i11 < u10) {
            iArr[i11] = iArr[i11] | 2;
            i11++;
        }
        Arrays.sort(iArr);
        for (int i20 = 0; i20 < i12; i20++) {
            c3678b.f32393a[i20] = (short) (iArr[i20] & 3);
        }
        c3678b.f32393a[i12] = 0;
        return c3678b;
    }

    public AbstractC3681e d(byte[] bArr) {
        AbstractC3681e a10 = this.f92415a.a();
        for (int i10 = 0; i10 < this.f92415a.c() - 1; i10++) {
            a10.f32393a[i10] = (short) a(bArr[i10] & 255);
        }
        a10.f32393a[this.f92415a.c() - 1] = 0;
        return a10;
    }

    public C3680d e(byte[] bArr) {
        int i10;
        int c10 = this.f92415a.c();
        C3680d c3680d = (C3680d) d(bArr);
        int i11 = 0;
        while (true) {
            i10 = c10 - 1;
            if (i11 >= i10) {
                break;
            }
            short[] sArr = c3680d.f32393a;
            short s10 = sArr[i11];
            sArr[i11] = (short) (s10 | (-(s10 >>> 1)));
            i11++;
        }
        int i12 = 0;
        short s11 = 0;
        while (i12 < i10) {
            short[] sArr2 = c3680d.f32393a;
            int i13 = i12 + 1;
            s11 = (short) (s11 + ((short) (sArr2[i13] * sArr2[i12])));
            i12 = i13;
        }
        short s12 = (short) ((-((s11 & 65535) >>> 15)) | 1);
        for (int i14 = 0; i14 < i10; i14 += 2) {
            short[] sArr3 = c3680d.f32393a;
            sArr3[i14] = (short) (sArr3[i14] * s12);
        }
        for (int i15 = 0; i15 < i10; i15++) {
            short[] sArr4 = c3680d.f32393a;
            short s13 = sArr4[i15];
            sArr4[i15] = (short) ((((s13 & 65535) >>> 15) ^ (s13 & 65535)) & 3);
        }
        return c3680d;
    }

    public m f(byte[] bArr) {
        bm.i iVar = this.f92415a;
        if (iVar instanceof bm.h) {
            return new m((C3680d) d(org.bouncycastle.util.a.X(bArr, 0, iVar.q())), (C3680d) d(org.bouncycastle.util.a.X(bArr, this.f92415a.q(), bArr.length)));
        }
        if (iVar instanceof bm.e) {
            return new m((C3678b) d(org.bouncycastle.util.a.X(bArr, 0, iVar.q())), c(org.bouncycastle.util.a.X(bArr, this.f92415a.q(), bArr.length)));
        }
        throw new IllegalArgumentException("Invalid polynomial type");
    }
}
