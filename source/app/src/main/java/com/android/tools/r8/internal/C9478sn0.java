package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;

public final class C9478sn0 extends AbstractC9617te {

    public final H1 f52453e;

    public C9478sn0(C4798y c4798y) {
        super(c4798y);
        this.f52453e = c4798y.f38428u;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return true;
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C9311rn0 c9311rn0 = new C9311rn0(this, c7215fB);
        W5 k10 = c9311rn0.f52142a.k();
        Y5 it = k10.l().iterator();
        while (it.hasNext()) {
            c9311rn0.b(it.next());
        }
        c9311rn0.f52147f.set(k10.q());
        while (true) {
            if (!c9311rn0.f52145d.b() && !c9311rn0.f52144c.b()) {
                break;
            }
            while (c9311rn0.f52145d.b()) {
                C6286Yx0 c6286Yx0 = c9311rn0.f52145d;
                Object c10 = c6286Yx0.c();
                c6286Yx0.f46126b.remove(c10);
                W5 w52 = (W5) c10;
                Iterator<C7201f60> it2 = w52.s().iterator();
                while (it2.hasNext()) {
                    c9311rn0.a(it2.next());
                }
                if (!c9311rn0.f52147f.get(w52.q())) {
                    Y5 it3 = w52.l().iterator();
                    while (it3.hasNext()) {
                        c9311rn0.b(it3.next());
                    }
                    c9311rn0.f52147f.set(w52.q());
                }
            }
            while (c9311rn0.f52144c.b()) {
                C6286Yx0 c6286Yx02 = c9311rn0.f52144c;
                Object c11 = c6286Yx02.c();
                c6286Yx02.f46126b.remove(c11);
                C10340xw0 c10340xw0 = (C10340xw0) c11;
                Iterator it4 = c10340xw0.a0().iterator();
                while (it4.hasNext()) {
                    c9311rn0.a((C7201f60) it4.next());
                }
                for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
                    if (c9311rn0.f52147f.get(abstractC10561zE.b().q())) {
                        c9311rn0.b(abstractC10561zE);
                    }
                }
            }
        }
        return c9311rn0.a() ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final String a() {
        return "SparseConditionalConstantPropagation";
    }
}
