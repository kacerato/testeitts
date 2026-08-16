package un;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import wn.C16030h;
import wn.N;

public class f implements d {

    public final List<d> f120821a;

    public final float[] f120822b;

    public f(List<d> colliders) {
        this.f120821a = colliders;
        this.f120822b = d(colliders);
    }

    public static float[] d(List<d> colliders) {
        float[] fArr = {Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY};
        Iterator<d> it = colliders.iterator();
        while (it.hasNext()) {
            float[] a10 = it.next().a();
            fArr[0] = Math.min(fArr[0], a10[0]);
            fArr[1] = Math.min(fArr[1], a10[1]);
            fArr[2] = Math.min(fArr[2], a10[2]);
            fArr[3] = Math.max(fArr[3], a10[3]);
            fArr[4] = Math.max(fArr[4], a10[4]);
            fArr[5] = Math.max(fArr[5], a10[5]);
        }
        return fArr;
    }

    @Override
    public float[] a() {
        return this.f120822b;
    }

    @Override
    public void b(final C16030h hf2, final N telemetry) {
        this.f120821a.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((d) obj).b(C16030h.this, telemetry);
            }
        });
    }

    public f(d... colliders) {
        List<d> asList = Arrays.asList(colliders);
        this.f120821a = asList;
        this.f120822b = d(asList);
    }
}
