package net.jpountz.xxhash;

import net.jpountz.xxhash.c;

public final class e extends net.jpountz.xxhash.a {

    public static class a implements c.b {

        public static final c.b f98132a = new a();

        @Override
        public c a(int i10) {
            return new e(i10);
        }
    }

    public e(int i10) {
        super(i10);
    }

    @Override
    public int d() {
        int rotateLeft = (int) ((this.f98119h >= 16 ? Integer.rotateLeft(this.f98114c, 1) + Integer.rotateLeft(this.f98115d, 7) + Integer.rotateLeft(this.f98116e, 12) + Integer.rotateLeft(this.f98117f, 18) : this.f98128b + 374761393) + this.f98119h);
        int i10 = 0;
        while (i10 <= this.f98118g - 4) {
            rotateLeft = Integer.rotateLeft(rotateLeft + (net.jpountz.util.c.i(this.f98120i, i10) * (-1028477379)), 17) * 668265263;
            i10 += 4;
        }
        while (i10 < this.f98118g) {
            rotateLeft = Integer.rotateLeft(rotateLeft + ((net.jpountz.util.c.d(this.f98120i, i10) & 255) * 374761393), 11) * (-1640531535);
            i10++;
        }
        int i11 = (rotateLeft ^ (rotateLeft >>> 15)) * (-2048144777);
        int i12 = (i11 ^ (i11 >>> 13)) * (-1028477379);
        return i12 ^ (i12 >>> 16);
    }

    @Override
    public void f(byte[] bArr, int i10, int i11) {
        net.jpountz.util.c.c(bArr, i10, i11);
        this.f98119h += i11;
        int i12 = this.f98118g;
        if (i12 + i11 < 16) {
            System.arraycopy(bArr, i10, this.f98120i, i12, i11);
            this.f98118g += i11;
            return;
        }
        int i13 = i11 + i10;
        if (i12 > 0) {
            System.arraycopy(bArr, i10, this.f98120i, i12, 16 - i12);
            int i14 = this.f98114c + (net.jpountz.util.c.i(this.f98120i, 0) * (-2048144777));
            this.f98114c = i14;
            this.f98114c = Integer.rotateLeft(i14, 13) * (-1640531535);
            int i15 = this.f98115d + (net.jpountz.util.c.i(this.f98120i, 4) * (-2048144777));
            this.f98115d = i15;
            this.f98115d = Integer.rotateLeft(i15, 13) * (-1640531535);
            int i16 = this.f98116e + (net.jpountz.util.c.i(this.f98120i, 8) * (-2048144777));
            this.f98116e = i16;
            this.f98116e = Integer.rotateLeft(i16, 13) * (-1640531535);
            int i17 = this.f98117f + (net.jpountz.util.c.i(this.f98120i, 12) * (-2048144777));
            this.f98117f = i17;
            this.f98117f = Integer.rotateLeft(i17, 13) * (-1640531535);
            i10 += 16 - this.f98118g;
            this.f98118g = 0;
        }
        int i18 = i13 - 16;
        int i19 = this.f98114c;
        int i20 = this.f98115d;
        int i21 = this.f98116e;
        int i22 = this.f98117f;
        while (i10 <= i18) {
            i19 = Integer.rotateLeft(i19 + (net.jpountz.util.c.i(bArr, i10) * (-2048144777)), 13) * (-1640531535);
            i20 = Integer.rotateLeft(i20 + (net.jpountz.util.c.i(bArr, i10 + 4) * (-2048144777)), 13) * (-1640531535);
            i21 = Integer.rotateLeft(i21 + (net.jpountz.util.c.i(bArr, i10 + 8) * (-2048144777)), 13) * (-1640531535);
            i22 = Integer.rotateLeft(i22 + (net.jpountz.util.c.i(bArr, i10 + 12) * (-2048144777)), 13) * (-1640531535);
            i10 += 16;
        }
        this.f98114c = i19;
        this.f98115d = i20;
        this.f98116e = i21;
        this.f98117f = i22;
        if (i10 < i13) {
            int i23 = i13 - i10;
            System.arraycopy(bArr, i10, this.f98120i, 0, i23);
            this.f98118g = i23;
        }
    }
}
