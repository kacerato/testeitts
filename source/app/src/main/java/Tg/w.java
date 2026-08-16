package Tg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

public final class w extends f {

    public final transient byte[][] f25071h;

    public final transient int[] f25072i;

    public w(C3089c c3089c, int i10) {
        super(null);
        B.b(c3089c.f24985c, 0L, i10);
        u uVar = c3089c.f24984b;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = uVar.f25063c;
            int i15 = uVar.f25062b;
            if (i14 == i15) {
                throw new AssertionError((Object) "s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            uVar = uVar.f25066f;
        }
        this.f25071h = new byte[i13];
        this.f25072i = new int[i13 * 2];
        u uVar2 = c3089c.f24984b;
        int i16 = 0;
        while (i11 < i10) {
            byte[][] bArr = this.f25071h;
            bArr[i16] = uVar2.f25061a;
            int i17 = uVar2.f25063c;
            int i18 = uVar2.f25062b;
            i11 += i17 - i18;
            if (i11 > i10) {
                i11 = i10;
            }
            int[] iArr = this.f25072i;
            iArr[i16] = i11;
            iArr[bArr.length + i16] = i18;
            uVar2.f25064d = true;
            i16++;
            uVar2 = uVar2.f25066f;
        }
    }

    @Override
    public int B(byte[] bArr, int i10) {
        return g0().B(bArr, i10);
    }

    @Override
    public byte[] C() {
        return a0();
    }

    @Override
    public int G(byte[] bArr, int i10) {
        return g0().G(bArr, i10);
    }

    @Override
    public f H() {
        return g0().H();
    }

    @Override
    public boolean L(int i10, f fVar, int i11, int i12) {
        if (i10 < 0 || i10 > S() - i12) {
            return false;
        }
        int f02 = f0(i10);
        while (i12 > 0) {
            int i13 = f02 == 0 ? 0 : this.f25072i[f02 - 1];
            int min = Math.min(i12, ((this.f25072i[f02] - i13) + i13) - i10);
            int[] iArr = this.f25072i;
            byte[][] bArr = this.f25071h;
            if (!fVar.M(i11, bArr[f02], (i10 - i13) + iArr[bArr.length + f02], min)) {
                return false;
            }
            i10 += min;
            i11 += min;
            i12 -= min;
            f02++;
        }
        return true;
    }

    @Override
    public boolean M(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0 || i10 > S() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int f02 = f0(i10);
        while (i12 > 0) {
            int i13 = f02 == 0 ? 0 : this.f25072i[f02 - 1];
            int min = Math.min(i12, ((this.f25072i[f02] - i13) + i13) - i10);
            int[] iArr = this.f25072i;
            byte[][] bArr2 = this.f25071h;
            if (!B.a(bArr2[f02], (i10 - i13) + iArr[bArr2.length + f02], bArr, i11, min)) {
                return false;
            }
            i10 += min;
            i11 += min;
            i12 -= min;
            f02++;
        }
        return true;
    }

    @Override
    public f P() {
        return g0().P();
    }

    @Override
    public f Q() {
        return g0().Q();
    }

    @Override
    public int S() {
        return this.f25072i[this.f25071h.length - 1];
    }

    @Override
    public String V(Charset charset) {
        return g0().V(charset);
    }

    @Override
    public f W(int i10) {
        return g0().W(i10);
    }

    @Override
    public f X(int i10, int i11) {
        return g0().X(i10, i11);
    }

    @Override
    public f Y() {
        return g0().Y();
    }

    @Override
    public f Z() {
        return g0().Z();
    }

    @Override
    public ByteBuffer a() {
        return ByteBuffer.wrap(a0()).asReadOnlyBuffer();
    }

    @Override
    public byte[] a0() {
        int[] iArr = this.f25072i;
        byte[][] bArr = this.f25071h;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr2 = this.f25072i;
            int i12 = iArr2[length + i10];
            int i13 = iArr2[i10];
            System.arraycopy(this.f25071h[i10], i12, bArr2, i11, i13 - i11);
            i10++;
            i11 = i13;
        }
        return bArr2;
    }

    @Override
    public String b() {
        return g0().b();
    }

    @Override
    public String b0() {
        return g0().b0();
    }

    @Override
    public String c() {
        return g0().c();
    }

    @Override
    public void c0(C3089c c3089c) {
        int length = this.f25071h.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f25072i;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            u uVar = new u(this.f25071h[i10], i12, (i12 + i13) - i11, true, false);
            u uVar2 = c3089c.f24984b;
            if (uVar2 == null) {
                uVar.f25067g = uVar;
                uVar.f25066f = uVar;
                c3089c.f24984b = uVar;
            } else {
                uVar2.f25067g.c(uVar);
            }
            i10++;
            i11 = i13;
        }
        c3089c.f24985c += i11;
    }

    @Override
    public void d0(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        int length = this.f25071h.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f25072i;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            outputStream.write(this.f25071h[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.S() == S() && L(0, fVar, 0, S())) {
                return true;
            }
        }
        return false;
    }

    public final int f0(int i10) {
        int binarySearch = Arrays.binarySearch(this.f25072i, 0, this.f25071h.length, i10 + 1);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    public final f g0() {
        return new f(a0());
    }

    public final Object h0() {
        return g0();
    }

    @Override
    public int hashCode() {
        int i10 = this.f24999c;
        if (i10 != 0) {
            return i10;
        }
        int length = this.f25071h.length;
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (i11 < length) {
            byte[] bArr = this.f25071h[i11];
            int[] iArr = this.f25072i;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            int i16 = (i15 - i13) + i14;
            while (i14 < i16) {
                i12 = (i12 * 31) + bArr[i14];
                i14++;
            }
            i11++;
            i13 = i15;
        }
        this.f24999c = i12;
        return i12;
    }

    @Override
    public byte r(int i10) {
        B.b(this.f25072i[this.f25071h.length - 1], i10, 1L);
        int f02 = f0(i10);
        int i11 = f02 == 0 ? 0 : this.f25072i[f02 - 1];
        int[] iArr = this.f25072i;
        byte[][] bArr = this.f25071h;
        return bArr[f02][(i10 - i11) + iArr[bArr.length + f02]];
    }

    @Override
    public String s() {
        return g0().s();
    }

    @Override
    public String toString() {
        return g0().toString();
    }

    @Override
    public f v(f fVar) {
        return g0().v(fVar);
    }

    @Override
    public f w(f fVar) {
        return g0().w(fVar);
    }
}
