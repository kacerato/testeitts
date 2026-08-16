package nn;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import jn.C13890g;
import wn.p;

public class l {

    public final d f98363a = new d();

    public final f f98364b = new f();

    public final h f98365c = new t();

    public final v f98366d = new v();

    public final p f98367e = new p();

    public final List<c[]> f98368f;

    public final List<p.b> f98369g;

    public l(List<p.b> results) {
        this.f98369g = results;
        this.f98368f = (List) results.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                c[] e10;
                e10 = l.this.e((p.b) obj);
                return e10;
            }
        }).collect(Collectors.toList());
    }

    public List<j> b(m acfg, n type) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.f98369g.size(); i10++) {
            for (c cVar : this.f98368f.get(i10)) {
                arrayList.addAll(f(acfg, this.f98369g.get(i10), type, cVar));
            }
        }
        return arrayList;
    }

    public final List<j> c(m acfg, e es, o[] jumpSegments) {
        ArrayList arrayList = new ArrayList();
        for (o oVar : jumpSegments) {
            g[] gVarArr = es.f98339a.f98351c;
            int i10 = oVar.f98382b;
            float[] fArr = gVarArr[i10].f98346a;
            float[] fArr2 = gVarArr[(i10 + oVar.f98383c) - 1].f98346a;
            i iVar = es.f98340b.get(oVar.f98381a);
            g[] gVarArr2 = iVar.f98351c;
            int i11 = oVar.f98382b;
            float[] fArr3 = gVarArr2[i11].f98346a;
            float[] fArr4 = gVarArr2[(i11 + oVar.f98383c) - 1].f98346a;
            float min = Math.min(C13890g.C(fArr, fArr2), C13890g.C(fArr3, fArr4));
            float f10 = acfg.f98373d;
            if (min >= 4.0f * f10 * f10) {
                j jVar = new j();
                arrayList.add(jVar);
                g[] gVarArr3 = es.f98339a.f98351c;
                int i12 = oVar.f98382b;
                jVar.f98357d = (g[]) Arrays.copyOfRange(gVarArr3, i12, oVar.f98383c + i12);
                g[] gVarArr4 = iVar.f98351c;
                int i13 = oVar.f98382b;
                jVar.f98358e = (g[]) Arrays.copyOfRange(gVarArr4, i13, oVar.f98383c + i13);
                jVar.f98359f = es.f98339a;
                jVar.f98360g = iVar;
                jVar.f98361h = es.f98341c;
                for (int i14 = 0; i14 < 8; i14++) {
                    float f11 = i14 / 7;
                    float[] b10 = es.f98341c.b(fArr, fArr3, f11);
                    float[] fArr5 = jVar.f98355b;
                    int i15 = i14 * 3;
                    fArr5[i15] = b10[0];
                    int i16 = i15 + 1;
                    fArr5[i16] = b10[1];
                    int i17 = i15 + 2;
                    fArr5[i17] = b10[2];
                    float[] b11 = es.f98341c.b(fArr2, fArr4, f11);
                    float[] fArr6 = jVar.f98356c;
                    fArr6[i15] = b11[0];
                    fArr6[i16] = b11[1];
                    fArr6[i17] = b11[2];
                }
            }
        }
        return arrayList;
    }

    public List<c[]> d() {
        return this.f98368f;
    }

    public final c[] e(p.b bVar) {
        return this.f98363a.a(bVar.c());
    }

    public final List<j> f(m acfg, p.b result, n type, c edge) {
        e a10 = this.f98364b.a(acfg, type, edge);
        this.f98365c.a(acfg, result, a10);
        this.f98366d.c(acfg, result.e(), a10);
        return c(acfg, a10, this.f98367e.b(acfg, a10));
    }
}
