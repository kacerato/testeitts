package on;

import java.io.File;
import java.util.List;
import jn.C13900q;
import jn.C13904v;
import jn.y;

public class p {

    public final q f99740a = new q();

    public final a f99741b = new a();

    public final i f99742c = new i();

    public final o f99743d = new o();

    public C13904v[] a(File zipFile) throws Exception {
        d a10 = this.f99740a.a(zipFile);
        j jVar = a10.f99704a;
        m[] mVarArr = a10.f99706c;
        C13904v[] c13904vArr = new C13904v[jVar.f99733b];
        int i10 = 0;
        for (int i11 = 0; i11 < jVar.f99733b; i11++) {
            g gVar = a10.f99707d.get(i11);
            e eVar = a10.f99708e.get(i11);
            List<int[]> list = a10.f99709f.get(i11);
            int a11 = eVar.a();
            if (list.size() != a11) {
                throw new IllegalArgumentException("Inconsistent number of nodes in data file: " + a11 + " and connecton files: " + list.size());
            }
            this.f99741b.a(eVar);
            this.f99742c.a(i10, eVar, list);
            this.f99743d.a(eVar, mVarArr, i10);
            y yVar = new y();
            yVar.f94390d = eVar.f99712c.length;
            yVar.f94391e = 32768;
            float f10 = gVar.f99722i;
            float f11 = gVar.f99716c;
            yVar.f94388b = f10 * f11;
            yVar.f94389c = gVar.f99723j * f11;
            float[] fArr = yVar.f94387a;
            mn.d dVar = gVar.f99727n;
            float f12 = dVar.f97542a * (-0.5f);
            mn.d dVar2 = gVar.f99726m;
            fArr[0] = f12 + dVar2.f97542a;
            fArr[1] = (dVar.f97543b * (-0.5f)) + dVar2.f97543b;
            fArr[2] = (dVar.f97544c * (-0.5f)) + dVar2.f97544c;
            C13904v c13904v = new C13904v(yVar, 3);
            for (C13900q c13900q : eVar.f99712c) {
                c13904v.c(c13900q, 0, 0L);
            }
            c13904vArr[i11] = c13904v;
            i10 += eVar.a();
        }
        return c13904vArr;
    }
}
