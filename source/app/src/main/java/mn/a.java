package mn;

import jn.C13884a;
import jn.C13890g;
import jn.C13900q;
import jn.C13905w;
import jn.G;
import jn.r;

public class a {
    public static int b(C13900q data, C13884a[] nodes, float quantFactor) {
        C13905w.b[] bVarArr = new C13905w.b[data.f94282a.f94304g];
        int i10 = 0;
        while (true) {
            int i11 = data.f94282a.f94304g;
            if (i10 >= i11) {
                return C13905w.f(bVarArr, i11, 0, i11, 0, nodes);
            }
            C13905w.b bVar = new C13905w.b();
            bVarArr[i10] = bVar;
            bVar.f94355c = i10;
            float[] fArr = new float[3];
            float[] fArr2 = new float[3];
            C13890g.x(fArr, data.f94283b, data.f94284c[i10].f94177b[0] * 3);
            C13890g.x(fArr2, data.f94283b, data.f94284c[i10].f94177b[0] * 3);
            int i12 = 1;
            while (true) {
                G g10 = data.f94284c[i10];
                if (i12 < g10.f94180e) {
                    C13890g.Q(fArr, data.f94283b, g10.f94177b[i12] * 3);
                    C13890g.P(fArr2, data.f94283b, data.f94284c[i10].f94177b[i12] * 3);
                    i12++;
                }
            }
            bVar.f94353a[0] = C13890g.b((int) ((fArr[0] - data.f94282a.f94316s[0]) * quantFactor), 0, Integer.MAX_VALUE);
            bVar.f94353a[1] = C13890g.b((int) ((fArr[1] - data.f94282a.f94316s[1]) * quantFactor), 0, Integer.MAX_VALUE);
            bVar.f94353a[2] = C13890g.b((int) ((fArr[2] - data.f94282a.f94316s[2]) * quantFactor), 0, Integer.MAX_VALUE);
            bVar.f94354b[0] = C13890g.b((int) ((fArr2[0] - data.f94282a.f94316s[0]) * quantFactor), 0, Integer.MAX_VALUE);
            bVar.f94354b[1] = C13890g.b((int) ((fArr2[1] - data.f94282a.f94316s[1]) * quantFactor), 0, Integer.MAX_VALUE);
            bVar.f94354b[2] = C13890g.b((int) ((fArr2[2] - data.f94282a.f94316s[2]) * quantFactor), 0, Integer.MAX_VALUE);
            i10++;
        }
    }

    public void a(C13900q data) {
        r rVar = data.f94282a;
        C13884a[] c13884aArr = new C13884a[rVar.f94304g * 2];
        data.f94288g = c13884aArr;
        rVar.f94310m = c13884aArr.length == 0 ? 0 : b(data, c13884aArr, rVar.f94318u);
    }
}
