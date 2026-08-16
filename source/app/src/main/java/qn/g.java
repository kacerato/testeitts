package qn;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import jn.C13890g;
import jn.C13900q;
import jn.C13904v;
import jn.C13905w;
import jn.x;
import qn.o;

public class g {

    public int f108435a;

    public int f108436b;

    public final c[] f108437c;

    public c f108438d;

    public final c[] f108439e;

    public final int f108440f;

    public final int f108441g;

    public final C13904v f108442h;

    public final p f108443i;

    public final r f108444j;

    public final i f108445k;

    public final n f108446l;

    public o f108448n;

    public final List<o> f108447m = new ArrayList();

    public final List<d> f108449o = new ArrayList();

    public final List<Long> f108450p = new ArrayList();

    public final h f108451q = new h();

    public final rn.a f108452r = new rn.a();

    public g(p params, r storageParams, C13904v navmesh, i tcomp, n tmprocs) {
        this.f108443i = params;
        this.f108444j = storageParams;
        this.f108442h = navmesh;
        this.f108445k = tcomp;
        this.f108446l = tmprocs;
        int j10 = C13890g.j(params.f108528j / 4);
        this.f108435a = j10;
        if (j10 == 0) {
            this.f108435a = 1;
        }
        int i10 = this.f108435a;
        this.f108436b = i10 - 1;
        int i11 = params.f108528j;
        this.f108439e = new c[i11];
        this.f108437c = new c[i10];
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            this.f108439e[i12] = new c(i12);
            c cVar = this.f108439e[i12];
            cVar.f108432g = this.f108438d;
            this.f108438d = cVar;
        }
        int g10 = C13890g.g(C13890g.j(this.f108443i.f108528j));
        this.f108441g = g10;
        int min = Math.min(31, 32 - g10);
        this.f108440f = min;
        if (min >= 10) {
            return;
        }
        throw new RuntimeException("Too few salt bits: " + min);
    }

    public int A() {
        return this.f108443i.f108528j;
    }

    public long B(c tile) {
        if (tile == null) {
            return 0L;
        }
        return q(tile.f108427b, tile.f108426a);
    }

    public List<Long> C(int tx, int ty) {
        ArrayList arrayList = new ArrayList();
        for (c cVar = this.f108437c[C13904v.k(tx, ty, this.f108436b)]; cVar != null; cVar = cVar.f108432g) {
            m mVar = cVar.f108428c;
            if (mVar != null && mVar.f108491c == tx && mVar.f108492d == ty) {
                arrayList.add(Long.valueOf(B(cVar)));
            }
        }
        return arrayList;
    }

    public List<Long> D(float[] bmin, float[] bmax) {
        ArrayList arrayList = new ArrayList();
        p pVar = this.f108443i;
        float f10 = pVar.f108522d;
        float f11 = pVar.f108520b;
        float f12 = f10 * f11;
        float f13 = pVar.f108523e * f11;
        int floor = (int) Math.floor((bmin[0] - pVar.f108519a[0]) / f12);
        int floor2 = (int) Math.floor((bmax[0] - this.f108443i.f108519a[0]) / f12);
        int floor3 = (int) Math.floor((bmax[2] - this.f108443i.f108519a[2]) / f13);
        for (int floor4 = (int) Math.floor((bmin[2] - this.f108443i.f108519a[2]) / f13); floor4 <= floor3; floor4++) {
            for (int i10 = floor; i10 <= floor2; i10++) {
                for (Long l10 : C(i10, floor4)) {
                    float[] fArr = new float[3];
                    float[] fArr2 = new float[3];
                    i(this.f108439e[n(l10.longValue())].f108428c, fArr, fArr2);
                    if (C13890g.l(bmin, bmax, fArr, fArr2)) {
                        arrayList.add(l10);
                    }
                }
            }
        }
        return arrayList;
    }

    public void E(long ref) {
        if (ref == 0) {
            return;
        }
        d dVar = new d();
        dVar.f108433a = e.REQUEST_REMOVE;
        dVar.f108434b = ref;
        this.f108449o.add(dVar);
    }

    public void F(long ref) {
        if (ref == 0) {
            throw new RuntimeException("Invalid tile ref");
        }
        int n10 = n(ref);
        int m10 = m(ref);
        if (n10 >= this.f108443i.f108528j) {
            throw new RuntimeException("Invalid tile index");
        }
        c cVar = this.f108439e[n10];
        if (cVar.f108427b != m10) {
            throw new RuntimeException("Invalid tile salt");
        }
        m mVar = cVar.f108428c;
        int k10 = C13904v.k(mVar.f108491c, mVar.f108492d, this.f108436b);
        c cVar2 = this.f108437c[k10];
        c cVar3 = null;
        while (true) {
            if (cVar2 == null) {
                break;
            }
            if (cVar2 != cVar) {
                cVar3 = cVar2;
                cVar2 = cVar2.f108432g;
            } else if (cVar3 != null) {
                cVar3.f108432g = cVar2.f108432g;
            } else {
                this.f108437c[k10] = cVar2.f108432g;
            }
        }
        cVar.f108428c = null;
        cVar.f108429d = null;
        cVar.f108430e = 0;
        cVar.f108431f = 0;
        int i10 = (cVar.f108427b + 1) & ((1 << this.f108440f) - 1);
        cVar.f108427b = i10;
        if (i10 == 0) {
            cVar.f108427b = i10 + 1;
        }
        cVar.f108432g = this.f108438d;
        this.f108438d = cVar;
    }

    public boolean G() {
        if (this.f108450p.isEmpty()) {
            for (d dVar : this.f108449o) {
                int k10 = k(dVar.f108434b);
                if (k10 < this.f108447m.size()) {
                    o oVar = this.f108447m.get(k10);
                    if (oVar.f108516m == l(dVar.f108434b)) {
                        e eVar = dVar.f108433a;
                        if (eVar == e.REQUEST_ADD) {
                            float[] fArr = new float[3];
                            float[] fArr2 = new float[3];
                            t(oVar, fArr, fArr2);
                            oVar.f108514k = D(fArr, fArr2);
                            oVar.f108515l.clear();
                            for (Long l10 : oVar.f108514k) {
                                if (!j(this.f108450p, l10.longValue())) {
                                    this.f108450p.add(l10);
                                }
                                oVar.f108515l.add(l10);
                            }
                        } else if (eVar == e.REQUEST_REMOVE) {
                            oVar.f108517n = f.DT_OBSTACLE_REMOVING;
                            oVar.f108515l.clear();
                            for (Long l11 : oVar.f108514k) {
                                if (!j(this.f108450p, l11.longValue())) {
                                    this.f108450p.add(l11);
                                }
                                oVar.f108515l.add(l11);
                            }
                        }
                    }
                }
            }
            this.f108449o.clear();
        }
        if (!this.f108450p.isEmpty()) {
            Long remove = this.f108450p.remove(0);
            h(remove.longValue());
            for (int i10 = 0; i10 < this.f108447m.size(); i10++) {
                o oVar2 = this.f108447m.get(i10);
                f fVar = oVar2.f108517n;
                f fVar2 = f.DT_OBSTACLE_PROCESSING;
                if (fVar == fVar2 || fVar == f.DT_OBSTACLE_REMOVING) {
                    oVar2.f108515l.remove(remove);
                    if (oVar2.f108515l.isEmpty()) {
                        f fVar3 = oVar2.f108517n;
                        if (fVar3 == fVar2) {
                            oVar2.f108517n = f.DT_OBSTACLE_PROCESSED;
                        } else if (fVar3 == f.DT_OBSTACLE_REMOVING) {
                            oVar2.f108517n = f.DT_OBSTACLE_EMPTY;
                            int i11 = (oVar2.f108516m + 1) & 65535;
                            oVar2.f108516m = i11;
                            if (i11 == 0) {
                                oVar2.f108516m = i11 + 1;
                            }
                            oVar2.f108518o = this.f108448n;
                            this.f108448n = oVar2;
                        }
                    }
                }
            }
        }
        return this.f108450p.isEmpty() && this.f108449o.isEmpty();
    }

    public long a(float[] bmin, float[] bmax) {
        o g10 = g();
        g10.f108505b = o.a.BOX;
        C13890g.w(g10.f108507d, bmin);
        C13890g.w(g10.f108508e, bmax);
        return d(g10).f108434b;
    }

    public long b(float[] center, float[] extents, float yRadians) {
        o g10 = g();
        g10.f108505b = o.a.ORIENTED_BOX;
        C13890g.w(g10.f108511h, center);
        C13890g.w(g10.f108512i, extents);
        float cos = (float) Math.cos(yRadians * 0.5f);
        float sin = (float) Math.sin(yRadians * (-0.5f));
        float[] fArr = g10.f108513j;
        fArr[0] = sin * cos;
        fArr[1] = (cos * cos) - 0.5f;
        return d(g10).f108434b;
    }

    public long c(float[] pos, float radius, float height) {
        o g10 = g();
        g10.f108505b = o.a.CYLINDER;
        C13890g.w(g10.f108506c, pos);
        g10.f108509f = radius;
        g10.f108510g = height;
        return d(g10).f108434b;
    }

    public final d d(o ob2) {
        d dVar = new d();
        dVar.f108433a = e.REQUEST_ADD;
        dVar.f108434b = v(ob2);
        this.f108449o.add(dVar);
        return dVar;
    }

    public long e(byte[] data, int flags) throws IOException {
        ByteBuffer wrap = ByteBuffer.wrap(data);
        wrap.order(this.f108444j.f108537a);
        m a10 = this.f108452r.a(wrap, this.f108444j.f108538b);
        if (y(a10.f108491c, a10.f108492d, a10.f108493e) != null) {
            return 0L;
        }
        c cVar = this.f108438d;
        if (cVar != null) {
            this.f108438d = cVar.f108432g;
            cVar.f108432g = null;
        } else {
            cVar = null;
        }
        if (cVar == null) {
            throw new RuntimeException("Out of storage");
        }
        int k10 = C13904v.k(a10.f108491c, a10.f108492d, this.f108436b);
        c[] cVarArr = this.f108437c;
        cVar.f108432g = cVarArr[k10];
        cVarArr[k10] = cVar;
        cVar.f108428c = a10;
        cVar.f108429d = data;
        cVar.f108430e = f(wrap.position());
        cVar.f108431f = flags;
        return B(cVar);
    }

    public final int f(int i10) {
        return (i10 + 3) & (-4);
    }

    public final o g() {
        o oVar = this.f108448n;
        if (oVar == null) {
            oVar = new o(this.f108447m.size());
            this.f108447m.add(oVar);
        } else {
            this.f108448n = oVar.f108518o;
        }
        oVar.f108517n = f.DT_OBSTACLE_PROCESSING;
        oVar.f108514k.clear();
        oVar.f108515l.clear();
        oVar.f108518o = null;
        return oVar;
    }

    public void h(long ref) {
        int n10 = n(ref);
        if (n10 > this.f108443i.f108528j) {
            throw new RuntimeException("Invalid tile index");
        }
        c cVar = this.f108439e[n10];
        if (cVar.f108427b != m(ref)) {
            throw new RuntimeException("Invalid tile salt");
        }
        p pVar = this.f108443i;
        int i10 = (int) (pVar.f108526h / pVar.f108521c);
        l o10 = o(cVar);
        for (int i11 = 0; i11 < this.f108447m.size(); i11++) {
            o oVar = this.f108447m.get(i11);
            f fVar = oVar.f108517n;
            if (fVar != f.DT_OBSTACLE_EMPTY && fVar != f.DT_OBSTACLE_REMOVING && j(oVar.f108514k, ref)) {
                o.a aVar = oVar.f108505b;
                if (aVar == o.a.CYLINDER) {
                    h hVar = this.f108451q;
                    float[] fArr = cVar.f108428c.f108494f;
                    p pVar2 = this.f108443i;
                    hVar.H(o10, fArr, pVar2.f108520b, pVar2.f108521c, oVar.f108506c, oVar.f108509f, oVar.f108510g, 0);
                } else if (aVar == o.a.BOX) {
                    h hVar2 = this.f108451q;
                    float[] fArr2 = cVar.f108428c.f108494f;
                    p pVar3 = this.f108443i;
                    hVar2.F(o10, fArr2, pVar3.f108520b, pVar3.f108521c, oVar.f108507d, oVar.f108508e, 0);
                } else if (aVar == o.a.ORIENTED_BOX) {
                    h hVar3 = this.f108451q;
                    float[] fArr3 = cVar.f108428c.f108494f;
                    p pVar4 = this.f108443i;
                    hVar3.G(o10, fArr3, pVar4.f108520b, pVar4.f108521c, oVar.f108511h, oVar.f108512i, oVar.f108513j, 0);
                }
            }
        }
        this.f108451q.i(o10, i10);
        q h10 = this.f108451q.h(this.f108451q.g(o10, i10, this.f108443i.f108527i), this.f108442h.y());
        if (h10.f108532c == 0) {
            C13904v c13904v = this.f108442h;
            m mVar = cVar.f108428c;
            c13904v.W(c13904v.Q(mVar.f108491c, mVar.f108492d, mVar.f108493e));
            return;
        }
        x xVar = new x();
        xVar.f94361a = h10.f108533d;
        xVar.f94362b = h10.f108531b;
        xVar.f94363c = h10.f108534e;
        xVar.f94365e = h10.f108536g;
        xVar.f94364d = h10.f108535f;
        xVar.f94366f = h10.f108532c;
        xVar.f94367g = this.f108442h.y();
        p pVar5 = this.f108443i;
        xVar.f94386z = pVar5.f108524f;
        xVar.f94356A = pVar5.f108525g;
        xVar.f94357B = pVar5.f108526h;
        m mVar2 = cVar.f108428c;
        xVar.f94381u = mVar2.f108491c;
        xVar.f94382v = mVar2.f108492d;
        xVar.f94383w = mVar2.f108493e;
        xVar.f94358C = pVar5.f108520b;
        xVar.f94359D = pVar5.f108521c;
        xVar.f94360E = false;
        xVar.f94384x = mVar2.f108494f;
        xVar.f94385y = mVar2.f108495g;
        n nVar = this.f108446l;
        if (nVar != null) {
            nVar.a(xVar);
        }
        C13900q d10 = C13905w.d(xVar);
        C13904v c13904v2 = this.f108442h;
        m mVar3 = cVar.f108428c;
        c13904v2.W(c13904v2.Q(mVar3.f108491c, mVar3.f108492d, mVar3.f108493e));
        if (d10 != null) {
            this.f108442h.c(d10, 0, 0L);
        }
    }

    public void i(m header, float[] bmin, float[] bmax) {
        float f10 = this.f108443i.f108520b;
        float[] fArr = header.f108494f;
        bmin[0] = fArr[0] + (header.f108500l * f10);
        bmin[1] = fArr[1];
        bmin[2] = fArr[2] + (header.f108502n * f10);
        bmax[0] = fArr[0] + ((header.f108501m + 1) * f10);
        bmax[1] = header.f108495g[1];
        bmax[2] = fArr[2] + ((header.f108503o + 1) * f10);
    }

    public final boolean j(List<Long> a10, long v10) {
        return a10.contains(Long.valueOf(v10));
    }

    public final int k(long ref) {
        return (int) (ref & Sg.b.f23266s);
    }

    public final int l(long ref) {
        return (int) ((ref >> 16) & Sg.b.f23266s);
    }

    public final int m(long ref) {
        return (int) ((ref >> this.f108441g) & ((1 << this.f108440f) - 1));
    }

    public final int n(long ref) {
        return (int) (ref & ((1 << this.f108441g) - 1));
    }

    public l o(c tile) {
        h hVar = this.f108451q;
        i iVar = this.f108445k;
        byte[] bArr = tile.f108429d;
        r rVar = this.f108444j;
        return hVar.q(iVar, bArr, rVar.f108537a, rVar.f108538b);
    }

    public final long p(int salt, int it) {
        return it | (salt << 16);
    }

    public final long q(int salt, int it) {
        return it | (salt << this.f108441g);
    }

    public i r() {
        return this.f108445k;
    }

    public C13904v s() {
        return this.f108442h;
    }

    public void t(o ob2, float[] bmin, float[] bmax) {
        o.a aVar = ob2.f108505b;
        if (aVar == o.a.CYLINDER) {
            float[] fArr = ob2.f108506c;
            float f10 = fArr[0];
            float f11 = ob2.f108509f;
            bmin[0] = f10 - f11;
            bmin[1] = fArr[1];
            bmin[2] = fArr[2] - f11;
            bmax[0] = fArr[0] + f11;
            bmax[1] = fArr[1] + ob2.f108510g;
            bmax[2] = fArr[2] + f11;
            return;
        }
        if (aVar == o.a.BOX) {
            C13890g.w(bmin, ob2.f108507d);
            C13890g.w(bmax, ob2.f108508e);
            return;
        }
        if (aVar == o.a.ORIENTED_BOX) {
            float[] fArr2 = ob2.f108512i;
            float max = Math.max(fArr2[0], fArr2[2]) * 1.41f;
            float[] fArr3 = ob2.f108511h;
            bmin[0] = fArr3[0] - max;
            bmax[0] = fArr3[0] + max;
            float f12 = fArr3[1];
            float[] fArr4 = ob2.f108512i;
            bmin[1] = f12 - fArr4[1];
            bmax[1] = fArr3[1] + fArr4[1];
            bmin[2] = fArr3[2] - max;
            bmax[2] = fArr3[2] + max;
        }
    }

    public o u(long ref) {
        int k10;
        if (ref == 0 || (k10 = k(ref)) >= this.f108447m.size()) {
            return null;
        }
        o oVar = this.f108447m.get(k10);
        if (oVar.f108516m != l(ref)) {
            return null;
        }
        return oVar;
    }

    public long v(o ob2) {
        if (ob2 == null) {
            return 0L;
        }
        return p(ob2.f108516m, ob2.f108504a);
    }

    public p w() {
        return this.f108443i;
    }

    public c x(int i10) {
        return this.f108439e[i10];
    }

    public c y(int tx, int ty, int tlayer) {
        for (c cVar = this.f108437c[C13904v.k(tx, ty, this.f108436b)]; cVar != null; cVar = cVar.f108432g) {
            m mVar = cVar.f108428c;
            if (mVar != null && mVar.f108491c == tx && mVar.f108492d == ty && mVar.f108493e == tlayer) {
                return cVar;
            }
        }
        return null;
    }

    public c z(long ref) {
        if (ref == 0) {
            return null;
        }
        int n10 = n(ref);
        int m10 = m(ref);
        if (n10 >= this.f108443i.f108528j) {
            return null;
        }
        c cVar = this.f108439e[n10];
        if (cVar.f108427b != m10) {
            return null;
        }
        return cVar;
    }
}
