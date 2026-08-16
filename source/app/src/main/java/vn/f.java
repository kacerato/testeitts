package vn;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import wn.C16030h;
import wn.K;

public class f {

    public static final int f121739k = 2;

    public static final int f121740l = 12;

    public final int f121741a;

    public final int f121742b;

    public final int f121743c;

    public int f121744d;

    public int f121745e;

    public final float[] f121746f;

    public float[] f121747g;

    public float f121748h;

    public float f121749i;

    public final byte[] f121750j;

    public f(int tileX, int tileZ, int width, int depth, float[] boundsMin, float[] boundsMax, float cellSize, float cellHeight, int borderSize, ByteBuffer buffer) {
        this.f121741a = tileX;
        this.f121742b = tileZ;
        this.f121744d = width;
        this.f121745e = depth;
        this.f121746f = boundsMin;
        this.f121747g = boundsMax;
        this.f121748h = cellSize;
        this.f121749i = cellHeight;
        this.f121743c = borderSize;
        this.f121750j = e(buffer, width, depth, c.f121711y);
    }

    public C16030h a() {
        return c.f121711y == ByteOrder.BIG_ENDIAN ? b() : c();
    }

    public final C16030h b() {
        int i10;
        C16030h c16030h = new C16030h(this.f121744d, this.f121745e, this.f121746f, this.f121747g, this.f121748h, this.f121749i, this.f121743c);
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < this.f121745e) {
            int i14 = 0;
            while (true) {
                i10 = this.f121744d;
                if (i14 < i10) {
                    int e10 = a.e(this.f121750j, i12);
                    i12 += 2;
                    K k10 = null;
                    int i15 = 0;
                    while (i15 < e10) {
                        K k11 = new K();
                        k11.f127658a = a.b(this.f121750j, i12);
                        k11.f127659b = a.b(this.f121750j, i12 + 4);
                        k11.f127660c = a.b(this.f121750j, i12 + 8);
                        i12 += 12;
                        if (k10 == null) {
                            c16030h.f127715g[i13 + i14] = k11;
                        } else {
                            k10.f127661d = k11;
                        }
                        i15++;
                        k10 = k11;
                    }
                    i14++;
                }
            }
            i11++;
            i13 += i10;
        }
        return c16030h;
    }

    public final C16030h c() {
        int i10;
        C16030h c16030h = new C16030h(this.f121744d, this.f121745e, this.f121746f, this.f121747g, this.f121748h, this.f121749i, this.f121743c);
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < this.f121745e) {
            int i14 = 0;
            while (true) {
                i10 = this.f121744d;
                if (i14 < i10) {
                    int f10 = a.f(this.f121750j, i12);
                    i12 += 2;
                    K k10 = null;
                    int i15 = 0;
                    while (i15 < f10) {
                        K k11 = new K();
                        k11.f127658a = a.c(this.f121750j, i12);
                        k11.f127659b = a.c(this.f121750j, i12 + 4);
                        k11.f127660c = a.c(this.f121750j, i12 + 8);
                        i12 += 12;
                        if (k10 == null) {
                            c16030h.f127715g[i13 + i14] = k11;
                        } else {
                            k10.f127661d = k11;
                        }
                        i15++;
                        k10 = k11;
                    }
                    i14++;
                }
            }
            i11++;
            i13 += i10;
        }
        return c16030h;
    }

    public final byte[] d(C16030h heightfield, ByteOrder order) {
        int i10;
        int i11;
        int i12 = heightfield.f127709a * heightfield.f127710b;
        int[] iArr = new int[i12];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < heightfield.f127710b) {
            int i16 = 0;
            while (true) {
                i11 = heightfield.f127709a;
                if (i16 < i11) {
                    int i17 = i15 + i16;
                    for (K k10 = heightfield.f127715g[i17]; k10 != null; k10 = k10.f127661d) {
                        iArr[i17] = iArr[i17] + 1;
                        i14++;
                    }
                    i16++;
                }
            }
            i13++;
            i15 += i11;
        }
        byte[] bArr = new byte[(i14 * 12) + (i12 * 2)];
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (i18 < heightfield.f127710b) {
            int i21 = 0;
            while (true) {
                i10 = heightfield.f127709a;
                if (i21 < i10) {
                    int i22 = i20 + i21;
                    i19 = a.h(iArr[i22], bArr, i19, order);
                    for (K k11 = heightfield.f127715g[i22]; k11 != null; k11 = k11.f127661d) {
                        i19 = a.g(k11.f127660c, bArr, a.g(k11.f127659b, bArr, a.g(k11.f127658a, bArr, i19, order), order), order);
                    }
                    i21++;
                }
            }
            i18++;
            i20 += i10;
        }
        return bArr;
    }

    public final byte[] e(ByteBuffer buf, int width, int height, ByteOrder order) {
        byte[] bArr = new byte[buf.limit()];
        if (buf.order() == order) {
            buf.get(bArr);
        } else {
            int i10 = width * height;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                short s10 = buf.getShort();
                a.h(s10, bArr, i11, order);
                i11 += 2;
                for (int i13 = 0; i13 < s10; i13++) {
                    a.g(buf.getInt(), bArr, i11, order);
                    a.g(buf.getInt(), bArr, i11 + 4, order);
                    a.g(buf.getInt(), bArr, i11 + 8, order);
                    i11 += 12;
                }
            }
        }
        return bArr;
    }

    public f(int tileX, int tileZ, C16030h heightfield) {
        this.f121741a = tileX;
        this.f121742b = tileZ;
        this.f121744d = heightfield.f127709a;
        this.f121745e = heightfield.f127710b;
        this.f121746f = heightfield.f127711c;
        this.f121747g = heightfield.f127712d;
        this.f121748h = heightfield.f127713e;
        this.f121749i = heightfield.f127714f;
        this.f121743c = heightfield.f127716h;
        this.f121750j = d(heightfield, c.f121711y);
    }
}
