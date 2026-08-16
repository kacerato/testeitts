package nn;

import java.util.Iterator;
import jn.C13890g;
import wn.C16030h;
import wn.K;

public class v {
    public final boolean a(C16030h solid, float x10, float ymin, float ymax, float z10) {
        K k10;
        int i10 = solid.f127709a;
        int i11 = solid.f127710b;
        float f10 = solid.f127713e;
        float f11 = solid.f127714f;
        float[] fArr = solid.f127711c;
        int floor = (int) Math.floor((x10 - fArr[0]) / f10);
        int floor2 = (int) Math.floor((z10 - fArr[2]) / f10);
        if (floor < 0 || floor2 < 0 || floor > i10 || floor2 > i11 || (k10 = solid.f127715g[floor + (floor2 * i10)]) == null) {
            return false;
        }
        for (k10 = solid.f127715g[floor + (floor2 * i10)]; k10 != null; k10 = k10.f127661d) {
            float f12 = fArr[1];
            if (b(ymin, ymax, (k10.f127658a * f11) + f12, f12 + (k10.f127659b * f11))) {
                return true;
            }
        }
        return false;
    }

    public final boolean b(float amin, float amax, float bmin, float bmax) {
        return amin <= bmax && amax >= bmin;
    }

    public void c(m acfg, C16030h heightfield, e es) {
        int length = es.f98339a.f98351c.length;
        for (int i10 = 0; i10 < length; i10++) {
            g gVar = es.f98339a.f98351c[i10];
            Iterator<i> it = es.f98340b.iterator();
            while (it.hasNext()) {
                g gVar2 = it.next().f98351c[i10];
                if (gVar.f98348c && gVar2.f98348c && d(acfg, heightfield, gVar.f98346a, gVar2.f98346a, es.f98341c)) {
                    gVar.f98347b = true;
                    gVar2.f98347b = true;
                }
            }
        }
    }

    public final boolean d(m acfg, C16030h solid, float[] pa2, float[] pb2, u tra) {
        int max = Math.max(2, (int) Math.ceil((C13890g.B(pa2, pb2) + Math.abs(pa2[1] - pb2[1])) / Math.min(acfg.f98370a, acfg.f98371b)));
        for (int i10 = 0; i10 < max; i10++) {
            float[] b10 = tra.b(pa2, pb2, i10 / (max - 1));
            float f10 = b10[0];
            float f11 = b10[1];
            if (a(solid, f10, f11 + acfg.f98374e, f11 + acfg.f98375f, b10[2])) {
                return false;
            }
        }
        return true;
    }
}
