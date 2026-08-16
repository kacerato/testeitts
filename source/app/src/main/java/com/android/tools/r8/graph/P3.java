package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.M3;
import com.android.tools.r8.graph.R3;
import com.android.tools.r8.internal.AT;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

public final class P3 {

    public static final boolean f36696d = true;

    public final C4798y f36697a;

    public final H2 f36698b;

    public final int f36699c;

    public P3(int i10, C4798y c4798y, H2 h22) {
        this.f36697a = c4798y;
        this.f36699c = i10;
        this.f36698b = h22;
    }

    public final R3.a a(H3.g gVar, M3.a aVar) {
        R3.a aVar2;
        R3.a aVar3;
        this.f36698b.f36259s.getClass();
        if (!gVar.f36395a.isEmpty()) {
            aVar = aVar.a(AT.a((Collection) gVar.f36395a, (Function) new C4450fa()));
        }
        R3.a a10 = a(gVar.f36395a, aVar);
        if (a10.a()) {
            return a10;
        }
        Iterator<H3.i> it = gVar.f36396b.iterator();
        while (true) {
            if (it.hasNext()) {
                aVar2 = a(it.next(), aVar);
                if (aVar2.a()) {
                    break;
                }
            } else {
                aVar2 = R3.a.f36768f;
                break;
            }
        }
        if (aVar2.a()) {
            return aVar2;
        }
        Iterator it2 = gVar.f36398d.iterator();
        while (true) {
            if (it2.hasNext()) {
                aVar3 = a((H3.i) it2.next(), aVar);
                if (aVar3.a()) {
                    break;
                }
            } else {
                aVar3 = R3.a.f36768f;
                break;
            }
        }
        if (!aVar3.a()) {
            H3.h e10 = gVar.e();
            if (!e10.a()) {
                R3.a a11 = a(e10.b(), aVar);
                a11.getClass();
                return a11;
            }
        }
        return aVar3;
    }

    public final R3.a a(List list, M3.a aVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            H3.f fVar = (H3.f) it.next();
            R3.a a10 = a(fVar.f36391b, aVar);
            if (!a10.a()) {
                Iterator<H3.e> it2 = fVar.f36392c.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        a10 = a(it2.next(), aVar);
                        if (a10 != R3.a.f36768f) {
                            break;
                        }
                    } else {
                        a10 = R3.a.f36768f;
                        break;
                    }
                }
            }
            if (a10.a()) {
                return a10;
            }
        }
        return R3.a.f36768f;
    }

    public final R3.a a(H3.i iVar, M3.a aVar) {
        iVar.getClass();
        if (iVar instanceof I3) {
            return R3.a.f36768f;
        }
        H3.e d10 = iVar.d();
        if (!d10.a() && !d10.n()) {
            if (d10.o()) {
                if (aVar.f36600b.contains(d10.i().f36402b)) {
                    return R3.a.f36768f;
                }
                if (!f36696d && !Q3.a(this.f36699c)) {
                    throw new AssertionError();
                }
                return R3.a.f36767e;
            }
            if (d10.l()) {
                return a(d10.g().f36378b, aVar);
            }
            if (!f36696d && !d10.m()) {
                throw new AssertionError();
            }
            H3.c h10 = d10.h();
            return a(h10.f36386c, h10.f36385b, aVar);
        }
        return R3.a.f36768f;
    }

    public final R3.a a(List list, M2 m22, M3.a aVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            R3.a a10 = a((H3.e) it.next(), aVar);
            if (a10.a()) {
                if (f36696d || Q3.a(this.f36699c)) {
                    return a10;
                }
                throw new AssertionError();
            }
        }
        E0 c10 = this.f36697a.f().c(m22);
        if (c10 == null) {
            return R3.a.f36768f;
        }
        if (list.isEmpty()) {
            return R3.a.f36768f;
        }
        if (list.size() != c10.f36259s.c().size()) {
            if (!f36696d && !Q3.a(this.f36699c)) {
                throw new AssertionError();
            }
            return R3.a.f36766d;
        }
        return R3.a.f36768f;
    }
}
