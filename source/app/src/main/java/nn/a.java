package nn;

import java.util.Iterator;
import java.util.function.BiFunction;
import jn.C13890g;
import jn.U;

public abstract class a implements h {
    public void b(m acfg, e es, BiFunction<float[], Float, U<Boolean, Float>> heightFunc) {
        float f10 = acfg.f98370a;
        i iVar = es.f98339a;
        int max = Math.max(2, (int) Math.ceil(((float) Math.sqrt(C13890g.C(iVar.f98349a, iVar.f98350b))) / f10));
        c(heightFunc, es.f98339a, max);
        Iterator<i> it = es.f98340b.iterator();
        while (it.hasNext()) {
            c(heightFunc, it.next(), max);
        }
    }

    public void c(BiFunction<float[], Float, U<Boolean, Float>> heightFunc, i seg, int nsamples) {
        seg.f98351c = new g[nsamples];
        for (int i10 = 0; i10 < nsamples; i10++) {
            g gVar = new g();
            seg.f98351c[i10] = gVar;
            float[] N10 = C13890g.N(seg.f98349a, seg.f98350b, i10 / (nsamples - 1));
            U<Boolean, Float> apply = heightFunc.apply(N10, Float.valueOf(seg.f98352d));
            float[] fArr = gVar.f98346a;
            fArr[0] = N10[0];
            fArr[1] = apply.f94230b.floatValue();
            gVar.f98346a[2] = N10[2];
            if (apply.f94229a.booleanValue()) {
                gVar.f98348c = true;
            }
        }
    }
}
