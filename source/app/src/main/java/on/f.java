package on;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.zip.ZipFile;
import jn.C13900q;
import jn.G;
import jn.H;
import jn.r;

public class f extends b {

    public static final float f99713a = 1000.0f;

    public final int b(int vertsCount) {
        int highestOneBit = Integer.highestOneBit(vertsCount);
        if (highestOneBit != vertsCount) {
            highestOneBit *= 2;
        }
        return highestOneBit - 1;
    }

    public e c(ZipFile file, String filename, g meta, int maxVertPerPoly) throws IOException {
        ByteBuffer a10 = a(file, filename);
        int i10 = a10.getInt();
        if (i10 < 0) {
            return null;
        }
        int i11 = a10.getInt();
        C13900q[] c13900qArr = new C13900q[i10 * i11];
        int i12 = 0;
        int i13 = 0;
        while (i13 < i11) {
            int i14 = i12;
            while (i14 < i10) {
                int i15 = (i13 * i10) + i14;
                int i16 = a10.getInt();
                int i17 = a10.getInt();
                if (i16 != i14 || i17 != i13) {
                    throw new IllegalArgumentException("Inconsistent tile positions");
                }
                c13900qArr[i15] = new C13900q();
                a10.getInt();
                a10.getInt();
                int i18 = a10.getInt();
                int[] iArr = new int[i18];
                for (int i19 = i12; i19 < i18; i19++) {
                    iArr[i19] = a10.getInt();
                }
                int i20 = a10.getInt();
                int i21 = i20 * 3;
                float[] fArr = new float[i21];
                for (int i22 = i12; i22 < i21; i22++) {
                    fArr[i22] = a10.getInt() / 1000.0f;
                }
                int i23 = a10.getInt() * 3;
                int[] iArr2 = new int[i23];
                for (int i24 = i12; i24 < i23; i24++) {
                    iArr2[i24] = a10.getInt();
                }
                int i25 = a10.getInt();
                G[] gArr = new G[i25];
                H[] hArr = new H[i25];
                float[] fArr2 = new float[i12];
                int[] iArr3 = new int[i25 * 4];
                int b10 = b(i20);
                int i26 = 0;
                int i27 = i10;
                float f10 = Float.POSITIVE_INFINITY;
                int i28 = i11;
                float f11 = Float.NEGATIVE_INFINITY;
                while (i26 < i25) {
                    G g10 = new G(i26, maxVertPerPoly);
                    gArr[i26] = g10;
                    g10.f94180e = 3;
                    a10.getInt();
                    gArr[i26].f94179d = a10.getInt();
                    gArr[i26].f94177b[0] = a10.getInt() & b10;
                    gArr[i26].f94177b[1] = a10.getInt() & b10;
                    gArr[i26].f94177b[2] = a10.getInt() & b10;
                    f10 = Math.min(Math.min(Math.min(f10, fArr[(gArr[i26].f94177b[0] * 3) + 1]), fArr[(gArr[i26].f94177b[1] * 3) + 1]), fArr[(gArr[i26].f94177b[2] * 3) + 1]);
                    f11 = Math.max(Math.max(Math.max(f11, fArr[(gArr[i26].f94177b[0] * 3) + 1]), fArr[(gArr[i26].f94177b[1] * 3) + 1]), fArr[(gArr[i26].f94177b[2] * 3) + 1]);
                    H h10 = new H();
                    hArr[i26] = h10;
                    h10.f94182a = 0;
                    h10.f94184c = 0;
                    h10.f94183b = i26;
                    h10.f94185d = 1;
                    int i29 = i26 * 4;
                    iArr3[i29] = 0;
                    iArr3[i29 + 1] = 1;
                    iArr3[i29 + 2] = 2;
                    iArr3[i29 + 3] = 21;
                    i26++;
                    i20 = i20;
                    i25 = i25;
                }
                int i30 = i25;
                C13900q c13900q = c13900qArr[i15];
                c13900q.f94283b = fArr;
                c13900q.f94284c = gArr;
                c13900q.f94285d = hArr;
                c13900q.f94286e = fArr2;
                c13900q.f94287f = iArr3;
                r rVar = new r();
                rVar.f94298a = r.f94293v;
                rVar.f94299b = 7;
                rVar.f94300c = i14;
                rVar.f94301d = i13;
                rVar.f94304g = i30;
                rVar.f94305h = i20;
                rVar.f94307j = i30;
                rVar.f94309l = i30;
                rVar.f94306i = i30 * 6;
                float[] fArr3 = rVar.f94316s;
                mn.d dVar = meta.f99726m;
                float f12 = dVar.f97542a;
                mn.d dVar2 = meta.f99727n;
                float f13 = dVar2.f97542a;
                float f14 = meta.f99716c;
                ByteBuffer byteBuffer = a10;
                float f15 = meta.f99722i;
                C13900q[] c13900qArr2 = c13900qArr;
                fArr3[0] = (f12 - (f13 * 0.5f)) + (f14 * f15 * i14);
                fArr3[1] = f10;
                float f16 = dVar.f97544c;
                float f17 = dVar2.f97544c;
                float f18 = meta.f99723j;
                fArr3[2] = (f16 - (f17 * 0.5f)) + (f14 * f18 * i13);
                float[] fArr4 = rVar.f94317t;
                i14++;
                fArr4[0] = (f12 - (f13 * 0.5f)) + (f15 * f14 * i14);
                fArr4[1] = f11;
                fArr4[2] = (f16 - (f17 * 0.5f)) + (f18 * f14 * (i13 + 1));
                rVar.f94318u = 1.0f / f14;
                rVar.f94312o = i30;
                c13900qArr2[i15].f94282a = rVar;
                i12 = 0;
                i10 = i27;
                i11 = i28;
                a10 = byteBuffer;
                c13900qArr = c13900qArr2;
            }
            i13++;
            a10 = a10;
        }
        return new e(i10, i11, c13900qArr);
    }
}
