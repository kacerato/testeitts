package kn;

import java.util.ArrayList;
import java.util.List;
import jn.A;
import jn.C13890g;
import jn.C13902t;
import jn.L;
import jn.N;
import jn.O;
import jn.S;
import jn.U;

public class o {

    public static final float f95623d = C13890g.s(0.01f);

    public final float[] f95624a = new float[3];

    public final float[] f95625b = new float[3];

    public List<Long> f95626c = new ArrayList();

    public List<S> a(int maxCorners, A navquery, L filter) {
        ArrayList arrayList = new ArrayList();
        O<List<S>> t10 = navquery.t(this.f95624a, this.f95625b, this.f95626c, maxCorners, 0);
        if (!t10.j()) {
            return arrayList;
        }
        List<S> list = t10.f94204a;
        int i10 = 0;
        for (S s10 : list) {
            if ((s10.a() & 4) != 0 || C13890g.C(s10.b(), this.f95624a) > f95623d) {
                break;
            }
            i10++;
        }
        int size = list.size();
        int i11 = i10;
        while (true) {
            if (i11 >= list.size()) {
                break;
            }
            if ((list.get(i11).a() & 4) != 0) {
                size = i11 + 1;
                break;
            }
            i11++;
        }
        return list.subList(i10, size);
    }

    public void b(long safeRef, float[] safePos) {
        C13890g.w(this.f95624a, safePos);
        if (this.f95626c.size() >= 3 || this.f95626c.size() <= 0) {
            this.f95626c.clear();
            this.f95626c.add(Long.valueOf(safeRef));
            this.f95626c.add(0L);
        } else {
            Long l10 = this.f95626c.get(r6.size() - 1);
            this.f95626c.clear();
            this.f95626c.add(Long.valueOf(safeRef));
            this.f95626c.add(0L);
            this.f95626c.add(l10);
        }
    }

    public long c() {
        if (this.f95626c.isEmpty()) {
            return 0L;
        }
        return this.f95626c.get(0).longValue();
    }

    public long d() {
        if (this.f95626c.isEmpty()) {
            return 0L;
        }
        return this.f95626c.get(r0.size() - 1).longValue();
    }

    public List<Long> e() {
        return this.f95626c;
    }

    public int f() {
        return this.f95626c.size();
    }

    public float[] g() {
        return this.f95624a;
    }

    public float[] h() {
        return this.f95625b;
    }

    public boolean i(int maxLookAhead, A navquery, L filter) {
        int min = Math.min(this.f95626c.size(), maxLookAhead);
        for (int i10 = 0; i10 < min; i10++) {
            if (!navquery.J(this.f95626c.get(i10).longValue(), filter)) {
                return false;
            }
        }
        return true;
    }

    public List<Long> j(List<Long> path, List<Long> visited) {
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < path.size(); i12++) {
            boolean z10 = false;
            for (int size = visited.size() - 1; size >= 0; size--) {
                if (path.get(i12) == visited.get(size)) {
                    i10 = i12;
                    i11 = size;
                    z10 = true;
                }
            }
            if (z10) {
                break;
            }
        }
        if (i10 == -1 || i11 == -1) {
            return path;
        }
        List<Long> subList = path.subList(0, i10);
        subList.addAll(visited.subList(i11, visited.size()));
        return subList;
    }

    public List<Long> k(List<Long> path, List<Long> visited) {
        int i10 = -1;
        int i11 = -1;
        for (int size = path.size() - 1; size >= 0; size--) {
            boolean z10 = false;
            for (int size2 = visited.size() - 1; size2 >= 0; size2--) {
                if (path.get(size).longValue() == visited.get(size2).longValue()) {
                    i10 = size;
                    z10 = true;
                    i11 = size2;
                }
            }
            if (z10) {
                break;
            }
        }
        if (i10 == -1 || i11 == -1) {
            return path;
        }
        ArrayList arrayList = new ArrayList();
        for (int size3 = visited.size() - 1; size3 > i11; size3--) {
            arrayList.add(visited.get(size3));
        }
        arrayList.addAll(path.subList(i10, path.size()));
        return arrayList;
    }

    public List<Long> l(List<Long> path, List<Long> visited) {
        int i10 = -1;
        int i11 = -1;
        for (int size = path.size() - 1; size >= 0; size--) {
            boolean z10 = false;
            for (int size2 = visited.size() - 1; size2 >= 0; size2--) {
                if (path.get(size) == visited.get(size2)) {
                    i10 = size;
                    z10 = true;
                    i11 = size2;
                }
            }
            if (z10) {
                break;
            }
        }
        if (i10 == -1 || i11 <= 0) {
            return path;
        }
        List<Long> subList = visited.subList(0, i11);
        subList.addAll(path.subList(i10, path.size()));
        return subList;
    }

    public boolean m(long offMeshConRef, long[] refs, float[] start, float[] end, A navquery) {
        long longValue = this.f95626c.get(0).longValue();
        long j10 = 0;
        int i10 = 0;
        while (i10 < this.f95626c.size() && longValue != offMeshConRef) {
            long longValue2 = this.f95626c.get(i10).longValue();
            i10++;
            long j11 = longValue;
            longValue = longValue2;
            j10 = j11;
        }
        if (i10 == this.f95626c.size()) {
            return false;
        }
        List<Long> list = this.f95626c;
        this.f95626c = list.subList(i10, list.size());
        refs[0] = j10;
        refs[1] = longValue;
        O<U<float[], float[]>> B10 = navquery.u().B(refs[0], refs[1]);
        if (!B10.j()) {
            return false;
        }
        C13890g.w(this.f95624a, B10.f94204a.f94230b);
        C13890g.w(start, B10.f94204a.f94229a);
        C13890g.w(end, B10.f94204a.f94230b);
        return true;
    }

    public boolean n(float[] npos, A navquery, L filter) {
        O<C13902t> L10 = navquery.L(this.f95626c.get(0).longValue(), this.f95624a, npos, filter);
        if (!L10.j()) {
            return false;
        }
        this.f95626c = k(this.f95626c, L10.f94204a.b());
        C13890g.w(this.f95624a, L10.f94204a.a());
        O<Float> A10 = navquery.A(this.f95626c.get(0).longValue(), L10.f94204a.a());
        if (A10.j()) {
            this.f95624a[1] = A10.f94204a.floatValue();
        }
        return true;
    }

    public boolean o(float[] npos, A navquery, L filter) {
        List<Long> list = this.f95626c;
        O<C13902t> L10 = navquery.L(list.get(list.size() - 1).longValue(), this.f95625b, npos, filter);
        if (!L10.j()) {
            return false;
        }
        this.f95626c = j(this.f95626c, L10.f94204a.b());
        C13890g.w(this.f95625b, L10.f94204a.a());
        return true;
    }

    public boolean p(A navquery, L filter, int maxIterations) {
        if (this.f95626c.size() < 3) {
            return false;
        }
        long longValue = this.f95626c.get(0).longValue();
        List<Long> list = this.f95626c;
        navquery.E(longValue, list.get(list.size() - 1).longValue(), this.f95624a, this.f95625b, filter, 0);
        navquery.Q(maxIterations);
        O<List<Long>> g10 = navquery.g(this.f95626c);
        if (!g10.j() || g10.f94204a.size() <= 0) {
            return false;
        }
        this.f95626c = l(this.f95626c, g10.f94204a);
        return true;
    }

    public void q(float[] next, float pathOptimizationRange, A navquery, L filter) {
        float B10 = C13890g.B(this.f95624a, next);
        if (B10 < 0.01f) {
            return;
        }
        float min = Math.min(B10 + 0.01f, pathOptimizationRange);
        O<N> P10 = navquery.P(this.f95626c.get(0).longValue(), this.f95624a, C13890g.O(this.f95624a, C13890g.W(next, this.f95624a), pathOptimizationRange / min), filter, 0, 0L);
        if (!P10.j() || P10.f94204a.f94201c.size() <= 1) {
            return;
        }
        N n10 = P10.f94204a;
        if (n10.f94199a > 0.99f) {
            this.f95626c = l(this.f95626c, n10.f94201c);
        }
    }

    public void r(long ref, float[] pos) {
        this.f95626c.clear();
        this.f95626c.add(Long.valueOf(ref));
        C13890g.w(this.f95624a, pos);
        C13890g.w(this.f95625b, pos);
    }

    public void s(float[] target, List<Long> path) {
        C13890g.w(this.f95625b, target);
        this.f95626c = new ArrayList(path);
    }

    public void t(long safeRef, float[] safePos, A navquery, L filter) {
        int i10 = 0;
        while (i10 < this.f95626c.size() && navquery.J(this.f95626c.get(i10).longValue(), filter)) {
            i10++;
        }
        if (i10 == 0) {
            C13890g.w(this.f95624a, safePos);
            this.f95626c.clear();
            this.f95626c.add(Long.valueOf(safeRef));
        } else if (i10 < this.f95626c.size()) {
            this.f95626c = this.f95626c.subList(0, i10);
        }
        O<float[]> e10 = navquery.e(this.f95626c.get(r5.size() - 1).longValue(), this.f95625b);
        if (e10.j()) {
            C13890g.w(this.f95625b, e10.f94204a);
        }
    }
}
