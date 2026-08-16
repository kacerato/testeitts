package on;

import java.util.Arrays;
import jn.C13900q;
import jn.C13905w;
import jn.F;
import jn.G;
import jn.W;
import jn.r;

public class o {
    public void a(e graphData, m[] links, int nodeOffset) {
        int i10;
        int i11;
        int b10;
        e eVar = graphData;
        int i12 = 2;
        int i13 = 1;
        if (links.length > 0) {
            int length = links.length;
            int i14 = 0;
            while (i14 < length) {
                m mVar = links[i14];
                C13900q c10 = eVar.c(mVar.f99736b - nodeOffset);
                G b11 = eVar.b(mVar.f99736b - nodeOffset);
                C13900q c11 = eVar.c(mVar.f99737c - nodeOffset);
                G b12 = eVar.b(mVar.f99737c - nodeOffset);
                if (b11 == null || b12 == null) {
                    i10 = i12;
                    i11 = i13;
                } else {
                    G[] gArr = c10.f94284c;
                    G[] gArr2 = (G[]) Arrays.copyOf(gArr, gArr.length + i13);
                    c10.f94284c = gArr2;
                    int i15 = c10.f94282a.f94304g;
                    gArr2[i15] = new G(i15, i12);
                    G g10 = c10.f94284c[i15];
                    int[] iArr = g10.f94177b;
                    int i16 = c10.f94282a.f94305h;
                    iArr[0] = i16;
                    iArr[i13] = i16 + i13;
                    g10.d(i13);
                    float[] fArr = c10.f94283b;
                    c10.f94283b = Arrays.copyOf(fArr, fArr.length + 6);
                    r rVar = c10.f94282a;
                    rVar.f94304g += i13;
                    rVar.f94305h += i12;
                    F f10 = new F();
                    f10.f94170c = i15;
                    mn.d dVar = mVar.f99738d;
                    float f11 = dVar.f97542a;
                    float f12 = dVar.f97543b;
                    float f13 = dVar.f97544c;
                    mn.d dVar2 = mVar.f99739e;
                    i10 = 2;
                    float[] fArr2 = {f11, f12, f13, dVar2.f97542a, dVar2.f97543b, dVar2.f97544c};
                    f10.f94168a = fArr2;
                    f10.f94169b = 0.1f;
                    if (c10 == c11) {
                        b10 = 255;
                    } else {
                        W w10 = new W(fArr2, 3);
                        r rVar2 = c10.f94282a;
                        b10 = C13905w.b(w10, rVar2.f94316s, rVar2.f94317t);
                    }
                    f10.f94172e = b10;
                    f10.f94173f = (int) mVar.f99735a;
                    F[] fArr3 = c10.f94289h;
                    if (fArr3 == null) {
                        i11 = 1;
                        c10.f94289h = new F[1];
                    } else {
                        i11 = 1;
                        c10.f94289h = (F[]) Arrays.copyOf(fArr3, fArr3.length + 1);
                    }
                    F[] fArr4 = c10.f94289h;
                    fArr4[fArr4.length - i11] = f10;
                    c10.f94282a.f94311n += i11;
                }
                i14 += i11;
                eVar = graphData;
                i13 = i11;
                i12 = i10;
            }
        }
    }
}
