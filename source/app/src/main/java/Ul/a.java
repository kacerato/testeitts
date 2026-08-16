package Ul;

import java.lang.reflect.Array;
import java.security.SecureRandom;

public class a {

    public int f26292a;

    public int f26293b;

    public int f26294c;

    public short[][][] f26295d;

    public short[][][] f26296e;

    public short[][] f26297f;

    public short[] f26298g;

    public a(byte b10, byte b11, short[][][] sArr, short[][][] sArr2, short[][] sArr3, short[] sArr4) {
        int i10 = b10 & 255;
        this.f26292a = i10;
        int i11 = b11 & 255;
        this.f26293b = i11;
        this.f26294c = i11 - i10;
        this.f26295d = sArr;
        this.f26296e = sArr2;
        this.f26297f = sArr3;
        this.f26298g = sArr4;
    }

    public short[][][] a() {
        return this.f26295d;
    }

    public short[][][] b() {
        return this.f26296e;
    }

    public short[] c() {
        return this.f26298g;
    }

    public short[][] d() {
        return this.f26297f;
    }

    public int e() {
        return this.f26294c;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f26292a == aVar.f() && this.f26293b == aVar.g() && this.f26294c == aVar.e() && Vl.c.k(this.f26295d, aVar.a()) && Vl.c.k(this.f26296e, aVar.b()) && Vl.c.j(this.f26297f, aVar.d()) && Vl.c.i(this.f26298g, aVar.c());
    }

    public int f() {
        return this.f26292a;
    }

    public int g() {
        return this.f26293b;
    }

    public short[][] h(short[] sArr) {
        int i10 = this.f26294c;
        int i11 = 0;
        short[][] sArr2 = (short[][]) Array.newInstance(Short.TYPE, i10, i10 + 1);
        short[] sArr3 = new short[this.f26294c];
        for (int i12 = 0; i12 < this.f26294c; i12++) {
            for (int i13 = 0; i13 < this.f26292a; i13++) {
                for (int i14 = 0; i14 < this.f26292a; i14++) {
                    sArr3[i12] = Vl.b.a(sArr3[i12], Vl.b.e(Vl.b.e(this.f26296e[i12][i13][i14], sArr[i13]), sArr[i14]));
                }
            }
        }
        for (int i15 = 0; i15 < this.f26294c; i15++) {
            for (int i16 = 0; i16 < this.f26294c; i16++) {
                for (int i17 = 0; i17 < this.f26292a; i17++) {
                    short e10 = Vl.b.e(this.f26295d[i15][i16][i17], sArr[i17]);
                    short[] sArr4 = sArr2[i15];
                    sArr4[i16] = Vl.b.a(sArr4[i16], e10);
                }
            }
        }
        for (int i18 = 0; i18 < this.f26294c; i18++) {
            for (int i19 = 0; i19 < this.f26292a; i19++) {
                sArr3[i18] = Vl.b.a(sArr3[i18], Vl.b.e(this.f26297f[i18][i19], sArr[i19]));
            }
        }
        for (int i20 = 0; i20 < this.f26294c; i20++) {
            for (int i21 = this.f26292a; i21 < this.f26293b; i21++) {
                short[] sArr5 = sArr2[i20];
                int i22 = this.f26292a;
                sArr5[i21 - i22] = Vl.b.a(this.f26297f[i20][i21], sArr5[i21 - i22]);
            }
        }
        for (int i23 = 0; i23 < this.f26294c; i23++) {
            sArr3[i23] = Vl.b.a(sArr3[i23], this.f26298g[i23]);
        }
        while (true) {
            int i24 = this.f26294c;
            if (i11 >= i24) {
                return sArr2;
            }
            sArr2[i11][i24] = sArr3[i11];
            i11++;
        }
    }

    public int hashCode() {
        return (((((((((((this.f26292a * 37) + this.f26293b) * 37) + this.f26294c) * 37) + org.bouncycastle.util.a.E0(this.f26295d)) * 37) + org.bouncycastle.util.a.E0(this.f26296e)) * 37) + org.bouncycastle.util.a.D0(this.f26297f)) * 37) + org.bouncycastle.util.a.B0(this.f26298g);
    }

    public a(int i10, int i11, SecureRandom secureRandom) {
        this.f26292a = i10;
        this.f26293b = i11;
        int i12 = i11 - i10;
        this.f26294c = i12;
        int[] iArr = {i12, i12, i10};
        Class<Short> cls = Short.TYPE;
        this.f26295d = (short[][][]) Array.newInstance(cls, iArr);
        int i13 = this.f26294c;
        int i14 = this.f26292a;
        this.f26296e = (short[][][]) Array.newInstance(cls, i13, i14, i14);
        this.f26297f = (short[][]) Array.newInstance(cls, this.f26294c, this.f26293b);
        int i15 = this.f26294c;
        this.f26298g = new short[i15];
        for (int i16 = 0; i16 < i15; i16++) {
            for (int i17 = 0; i17 < this.f26294c; i17++) {
                for (int i18 = 0; i18 < this.f26292a; i18++) {
                    this.f26295d[i16][i17][i18] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i19 = 0; i19 < i15; i19++) {
            for (int i20 = 0; i20 < this.f26292a; i20++) {
                for (int i21 = 0; i21 < this.f26292a; i21++) {
                    this.f26296e[i19][i20][i21] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i22 = 0; i22 < i15; i22++) {
            for (int i23 = 0; i23 < this.f26293b; i23++) {
                this.f26297f[i22][i23] = (short) (secureRandom.nextInt() & 255);
            }
        }
        for (int i24 = 0; i24 < i15; i24++) {
            this.f26298g[i24] = (short) (secureRandom.nextInt() & 255);
        }
    }
}
