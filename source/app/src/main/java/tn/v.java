package tn;

import java.util.Set;
import jn.C13890g;
import wn.C16030h;
import wn.K;

public class v {

    public final C16030h f117810a;

    public final Set<Long> f117811b;

    public v(C16030h heightfield, Set<Long> colliders) {
        this.f117811b = colliders;
        this.f117810a = a(heightfield);
    }

    public final C16030h a(C16030h source) {
        int i10;
        C16030h c16030h = new C16030h(source.f127709a, source.f127710b, C13890g.y(source.f127711c), C13890g.y(source.f127712d), source.f127713e, source.f127714f, source.f127716h);
        int i11 = 0;
        int i12 = 0;
        while (i11 < source.f127710b) {
            int i13 = 0;
            while (true) {
                i10 = source.f127709a;
                if (i13 < i10) {
                    int i14 = i12 + i13;
                    K k10 = source.f127715g[i14];
                    K k11 = null;
                    while (k10 != null) {
                        K k12 = new K();
                        k12.f127658a = k10.f127658a;
                        k12.f127659b = k10.f127659b;
                        k12.f127660c = k10.f127660c;
                        if (k11 == null) {
                            c16030h.f127715g[i14] = k12;
                        } else {
                            k11.f127661d = k12;
                        }
                        k10 = k10.f127661d;
                        k11 = k12;
                    }
                    i13++;
                }
            }
            i11++;
            i12 += i10;
        }
        return c16030h;
    }
}
