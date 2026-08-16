package kn;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jn.A;
import jn.C13890g;
import jn.C13892i;
import jn.C13897n;
import jn.L;
import jn.O;
import jn.U;

public class m {

    public static final int f95585d = 8;

    public float[] f95586a = new float[3];

    public List<b> f95587b = new ArrayList();

    public List<Long> f95588c = new ArrayList();

    public static class b {

        public float[] f95589a;

        public float f95590b;

        public b() {
            this.f95589a = new float[6];
        }
    }

    public m() {
        float[] fArr = this.f95586a;
        fArr[2] = Float.MAX_VALUE;
        fArr[1] = Float.MAX_VALUE;
        fArr[0] = Float.MAX_VALUE;
    }

    public void a(float dist, float[] s10) {
        b bVar = new b();
        int i10 = 0;
        System.arraycopy(s10, 0, bVar.f95589a, 0, 6);
        bVar.f95590b = dist;
        if (this.f95587b.isEmpty()) {
            this.f95587b.add(bVar);
        } else {
            if (dist < this.f95587b.get(r6.size() - 1).f95590b) {
                while (i10 < this.f95587b.size() && dist > this.f95587b.get(i10).f95590b) {
                    i10++;
                }
                this.f95587b.add(i10, bVar);
            } else if (this.f95587b.size() >= 8) {
                return;
            } else {
                this.f95587b.add(bVar);
            }
        }
        while (this.f95587b.size() > 8) {
            this.f95587b.remove(r5.size() - 1);
        }
    }

    public float[] b() {
        return this.f95586a;
    }

    public float[] c(int j10) {
        return this.f95587b.get(j10).f95589a;
    }

    public int d() {
        return this.f95587b.size();
    }

    public boolean e(A navquery, L filter) {
        if (this.f95588c.isEmpty()) {
            return false;
        }
        Iterator<Long> it = this.f95588c.iterator();
        while (it.hasNext()) {
            if (!navquery.J(it.next().longValue(), filter)) {
                return false;
            }
        }
        return true;
    }

    public void f() {
        float[] fArr = this.f95586a;
        fArr[2] = Float.MAX_VALUE;
        fArr[1] = Float.MAX_VALUE;
        fArr[0] = Float.MAX_VALUE;
        this.f95588c.clear();
        this.f95587b.clear();
    }

    public void g(long ref, float[] pos, float collisionQueryRange, A navquery, L filter) {
        if (ref == 0) {
            f();
            return;
        }
        C13890g.w(this.f95586a, pos);
        O<C13892i> i10 = navquery.i(ref, pos, collisionQueryRange, filter);
        if (i10.j()) {
            this.f95588c = i10.f94204a.b();
            this.f95587b.clear();
            for (int i11 = 0; i11 < this.f95588c.size(); i11++) {
                O<C13897n> B10 = navquery.B(this.f95588c.get(i11).longValue(), false, filter);
                if (B10.j()) {
                    C13897n c13897n = B10.f94204a;
                    for (int i12 = 0; i12 < c13897n.a().size(); i12++) {
                        float[] fArr = c13897n.b().get(i12);
                        U<Float, Float> e10 = C13890g.e(pos, fArr, 0, 3);
                        if (e10.f94229a.floatValue() <= C13890g.s(collisionQueryRange)) {
                            a(e10.f94229a.floatValue(), fArr);
                        }
                    }
                }
            }
        }
    }
}
