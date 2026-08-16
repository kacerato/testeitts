package ml;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class l {

    public final int f97535a;

    public final int f97536b;

    public final int f97537c;

    public final int f97538d;

    public final int f97539e;

    public final int f97540f;

    public final boolean f97541g;

    public l(C14324b c14324b) {
        this.f97535a = c14324b.m();
        this.f97536b = c14324b.k();
        this.f97537c = c14324b.i();
        this.f97538d = c14324b.o();
        this.f97539e = c14324b.h();
        this.f97540f = c14324b.j();
        this.f97541g = c14324b.f97495v;
    }

    public void a(byte[] bArr, int i10, short[] sArr) {
        int i11 = this.f97537c;
        short s10 = 0;
        if (i11 == 3) {
            while (s10 < this.f97535a / 8) {
                short s11 = (short) (s10 * 8);
                int i12 = ((short) (s10 * 3)) + i10;
                byte b10 = bArr[i12];
                sArr[s11] = (short) (b10 & 7);
                sArr[s11 + 1] = (short) ((b10 >> 3) & 7);
                byte b11 = bArr[i12 + 1];
                sArr[s11 + 2] = (short) (((b10 >> 6) & 3) | ((b11 & 1) << 2));
                sArr[s11 + 3] = (short) ((b11 >> 1) & 7);
                sArr[s11 + 4] = (short) ((b11 >> 4) & 7);
                byte b12 = bArr[i12 + 2];
                sArr[s11 + 5] = (short) (((b11 >> 7) & 1) | ((b12 & 3) << 1));
                sArr[s11 + 6] = (short) ((b12 >> 2) & 7);
                sArr[s11 + 7] = (short) ((b12 >> 5) & 7);
                s10 = (short) (s10 + 1);
            }
            return;
        }
        if (i11 == 4) {
            while (s10 < this.f97535a / 2) {
                short s12 = (short) (s10 * 2);
                byte b13 = bArr[i10 + s10];
                sArr[s12] = (short) (b13 & 15);
                sArr[s12 + 1] = (short) ((b13 >> 4) & 15);
                s10 = (short) (s10 + 1);
            }
            return;
        }
        if (i11 == 6) {
            while (s10 < this.f97535a / 4) {
                short s13 = (short) (s10 * 4);
                int i13 = ((short) (s10 * 3)) + i10;
                byte b14 = bArr[i13];
                sArr[s13] = (short) (b14 & Opcodes.OPC_lstore_0);
                byte b15 = bArr[i13 + 1];
                sArr[s13 + 1] = (short) (((b14 >> 6) & 3) | ((b15 & 15) << 2));
                byte b16 = bArr[i13 + 2];
                sArr[s13 + 2] = (short) (((b15 & 255) >> 4) | ((b16 & 3) << 4));
                sArr[s13 + 3] = (short) ((b16 & 255) >> 2);
                s10 = (short) (s10 + 1);
            }
        }
    }

    public void b(byte[] bArr, short[][] sArr) {
        for (byte b10 = 0; b10 < this.f97536b; b10 = (byte) (b10 + 1)) {
            e(bArr, ((this.f97539e * this.f97535a) / 8) * b10, sArr[b10]);
        }
    }

    public void c(byte[] bArr, int i10, short[][] sArr) {
        for (byte b10 = 0; b10 < this.f97536b; b10 = (byte) (b10 + 1)) {
            f(bArr, (this.f97538d * b10) + i10, sArr[b10]);
        }
    }

    public void d(byte[] bArr, short[] sArr) {
        for (byte b10 = 0; b10 < this.f97540f; b10 = (byte) (b10 + 1)) {
            for (byte b11 = 0; b11 < 8; b11 = (byte) (b11 + 1)) {
                sArr[(b10 * 8) + b11] = (short) ((bArr[b10] >> b11) & 1);
            }
        }
    }

    public void e(byte[] bArr, int i10, short[] sArr) {
        for (short s10 = 0; s10 < this.f97535a / 4; s10 = (short) (s10 + 1)) {
            short s11 = (short) (s10 * 4);
            int i11 = ((short) (s10 * 5)) + i10;
            int i12 = bArr[i11] & 255;
            byte b10 = bArr[i11 + 1];
            sArr[s11] = (short) (i12 | ((b10 & 3) << 8));
            byte b11 = bArr[i11 + 2];
            sArr[s11 + 1] = (short) (((b10 >> 2) & 63) | ((b11 & 15) << 6));
            int i13 = (b11 >> 4) & 15;
            byte b12 = bArr[i11 + 3];
            sArr[s11 + 2] = (short) (i13 | ((b12 & Opcodes.OPC_lstore_0) << 4));
            sArr[s11 + 3] = (short) (((bArr[i11 + 4] & 255) << 2) | ((b12 >> 6) & 3));
        }
    }

    public final void f(byte[] bArr, int i10, short[] sArr) {
        short s10 = 0;
        if (this.f97541g) {
            while (s10 < this.f97535a / 2) {
                short s11 = (short) (s10 * 2);
                int i11 = ((short) (s10 * 3)) + i10;
                int i12 = bArr[i11] & 255;
                byte b10 = bArr[i11 + 1];
                sArr[s11] = (short) (i12 | ((b10 & 15) << 8));
                sArr[s11 + 1] = (short) (((bArr[i11 + 2] & 255) << 4) | ((b10 >> 4) & 15));
                s10 = (short) (s10 + 1);
            }
            return;
        }
        while (s10 < this.f97535a / 8) {
            short s12 = (short) (s10 * 8);
            int i13 = ((short) (s10 * 13)) + i10;
            int i14 = bArr[i13] & 255;
            byte b11 = bArr[i13 + 1];
            sArr[s12] = (short) (i14 | ((b11 & 31) << 8));
            int i15 = ((b11 >> 5) & 7) | ((bArr[i13 + 2] & 255) << 3);
            byte b12 = bArr[i13 + 3];
            sArr[s12 + 1] = (short) (i15 | ((b12 & 3) << 11));
            int i16 = (b12 >> 2) & 63;
            byte b13 = bArr[i13 + 4];
            sArr[s12 + 2] = (short) (i16 | ((b13 & Byte.MAX_VALUE) << 6));
            int i17 = ((b13 >> 7) & 1) | ((bArr[i13 + 5] & 255) << 1);
            byte b14 = bArr[i13 + 6];
            sArr[s12 + 3] = (short) (i17 | ((b14 & 15) << 9));
            int i18 = ((b14 >> 4) & 15) | ((bArr[i13 + 7] & 255) << 4);
            byte b15 = bArr[i13 + 8];
            sArr[s12 + 4] = (short) (i18 | ((b15 & 1) << 12));
            int i19 = (b15 >> 1) & 127;
            byte b16 = bArr[i13 + 9];
            sArr[s12 + 5] = (short) (i19 | ((b16 & Opcodes.OPC_lstore_0) << 7));
            int i20 = ((b16 >> 6) & 3) | ((bArr[i13 + 10] & 255) << 2);
            byte b17 = bArr[i13 + 11];
            sArr[s12 + 6] = (short) (i20 | ((b17 & 7) << 10));
            sArr[s12 + 7] = (short) (((bArr[i13 + 12] & 255) << 5) | ((b17 >> 3) & 31));
            s10 = (short) (s10 + 1);
        }
    }

    public void g(byte[] bArr, int i10, short[] sArr) {
        int i11 = this.f97537c;
        short s10 = 0;
        if (i11 == 3) {
            while (s10 < this.f97535a / 8) {
                short s11 = (short) (s10 * 8);
                int i12 = ((short) (s10 * 3)) + i10;
                int i13 = (sArr[s11] & 7) | ((sArr[s11 + 1] & 7) << 3);
                short s12 = sArr[s11 + 2];
                bArr[i12] = (byte) (i13 | ((s12 & 3) << 6));
                int i14 = ((s12 >> 2) & 1) | ((sArr[s11 + 3] & 7) << 1) | ((sArr[s11 + 4] & 7) << 4);
                short s13 = sArr[s11 + 5];
                bArr[i12 + 1] = (byte) (i14 | ((s13 & 1) << 7));
                bArr[i12 + 2] = (byte) (((sArr[s11 + 7] & 7) << 5) | ((s13 >> 1) & 3) | ((sArr[s11 + 6] & 7) << 2));
                s10 = (short) (s10 + 1);
            }
            return;
        }
        if (i11 == 4) {
            while (s10 < this.f97535a / 2) {
                short s14 = (short) (s10 * 2);
                bArr[i10 + s10] = (byte) (((sArr[s14 + 1] & 15) << 4) | (sArr[s14] & 15));
                s10 = (short) (s10 + 1);
            }
            return;
        }
        if (i11 == 6) {
            while (s10 < this.f97535a / 4) {
                short s15 = (short) (s10 * 4);
                int i15 = ((short) (s10 * 3)) + i10;
                int i16 = sArr[s15] & 63;
                short s16 = sArr[s15 + 1];
                bArr[i15] = (byte) (i16 | ((s16 & 3) << 6));
                short s17 = sArr[s15 + 2];
                bArr[i15 + 1] = (byte) (((s16 >> 2) & 15) | ((s17 & 15) << 4));
                bArr[i15 + 2] = (byte) (((sArr[s15 + 3] & 63) << 2) | ((s17 >> 4) & 3));
                s10 = (short) (s10 + 1);
            }
        }
    }

    public void h(byte[] bArr, short[][] sArr) {
        for (byte b10 = 0; b10 < this.f97536b; b10 = (byte) (b10 + 1)) {
            k(bArr, ((this.f97539e * this.f97535a) / 8) * b10, sArr[b10]);
        }
    }

    public void i(byte[] bArr, short[][] sArr) {
        for (byte b10 = 0; b10 < this.f97536b; b10 = (byte) (b10 + 1)) {
            l(bArr, this.f97538d * b10, sArr[b10]);
        }
    }

    public void j(byte[] bArr, short[] sArr) {
        for (byte b10 = 0; b10 < this.f97540f; b10 = (byte) (b10 + 1)) {
            for (byte b11 = 0; b11 < 8; b11 = (byte) (b11 + 1)) {
                bArr[b10] = (byte) (bArr[b10] | ((sArr[(b10 * 8) + b11] & 1) << b11));
            }
        }
    }

    public final void k(byte[] bArr, int i10, short[] sArr) {
        for (short s10 = 0; s10 < this.f97535a / 4; s10 = (short) (s10 + 1)) {
            short s11 = (short) (s10 * 4);
            int i11 = ((short) (s10 * 5)) + i10;
            short s12 = sArr[s11];
            bArr[i11] = (byte) (s12 & 255);
            short s13 = sArr[s11 + 1];
            bArr[i11 + 1] = (byte) (((s12 >> 8) & 3) | ((s13 & 63) << 2));
            int i12 = (s13 >> 6) & 15;
            short s14 = sArr[s11 + 2];
            bArr[i11 + 2] = (byte) (i12 | ((s14 & 15) << 4));
            short s15 = sArr[s11 + 3];
            bArr[i11 + 3] = (byte) (((s14 >> 4) & 63) | ((s15 & 3) << 6));
            bArr[i11 + 4] = (byte) ((s15 >> 2) & 255);
        }
    }

    public final void l(byte[] bArr, int i10, short[] sArr) {
        short s10 = 0;
        if (this.f97541g) {
            while (s10 < this.f97535a / 2) {
                short s11 = (short) (s10 * 2);
                int i11 = ((short) (s10 * 3)) + i10;
                short s12 = sArr[s11];
                bArr[i11] = (byte) (s12 & 255);
                short s13 = sArr[s11 + 1];
                bArr[i11 + 1] = (byte) (((s12 >> 8) & 15) | ((s13 & 15) << 4));
                bArr[i11 + 2] = (byte) ((s13 >> 4) & 255);
                s10 = (short) (s10 + 1);
            }
            return;
        }
        while (s10 < this.f97535a / 8) {
            short s14 = (short) (s10 * 8);
            int i12 = ((short) (s10 * 13)) + i10;
            short s15 = sArr[s14];
            bArr[i12] = (byte) (s15 & 255);
            short s16 = sArr[s14 + 1];
            bArr[i12 + 1] = (byte) (((s15 >> 8) & 31) | ((s16 & 7) << 5));
            bArr[i12 + 2] = (byte) ((s16 >> 3) & 255);
            int i13 = (s16 >> 11) & 3;
            short s17 = sArr[s14 + 2];
            bArr[i12 + 3] = (byte) (i13 | ((s17 & 63) << 2));
            int i14 = (s17 >> 6) & 127;
            short s18 = sArr[s14 + 3];
            bArr[i12 + 4] = (byte) (i14 | ((s18 & 1) << 7));
            bArr[i12 + 5] = (byte) ((s18 >> 1) & 255);
            int i15 = (s18 >> 9) & 15;
            short s19 = sArr[s14 + 4];
            bArr[i12 + 6] = (byte) (i15 | ((s19 & 15) << 4));
            bArr[i12 + 7] = (byte) ((s19 >> 4) & 255);
            int i16 = (s19 >> 12) & 1;
            short s20 = sArr[s14 + 5];
            bArr[i12 + 8] = (byte) (i16 | ((s20 & 127) << 1));
            int i17 = (s20 >> 7) & 63;
            short s21 = sArr[s14 + 6];
            bArr[i12 + 9] = (byte) (i17 | ((s21 & 3) << 6));
            bArr[i12 + 10] = (byte) ((s21 >> 2) & 255);
            short s22 = sArr[s14 + 7];
            bArr[i12 + 11] = (byte) (((s21 >> 10) & 7) | ((s22 & 31) << 3));
            bArr[i12 + 12] = (byte) ((s22 >> 5) & 255);
            s10 = (short) (s10 + 1);
        }
    }
}
