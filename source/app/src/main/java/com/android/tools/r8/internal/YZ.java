package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;

public final class YZ extends AbstractC10436yY {

    public static final boolean f46012f = true;

    public final com.android.tools.r8.androidapi.a f46013b;

    public final boolean f46014c;

    public final boolean f46015d;

    public final com.android.tools.r8.androidapi.f f46016e;

    public YZ(C4798y c4798y) {
        this.f46013b = c4798y.f38404S;
        this.f46014c = c4798y.E().a().e();
        this.f46015d = c4798y.m();
        this.f46016e = c4798y.f38405T;
    }

    @Override
    public final Object a(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.androidapi.f fVar;
        if (!f46012f && !this.f46014c) {
            throw new AssertionError();
        }
        if (!this.f46015d) {
            fVar = this.f46016e;
            Iterator<C4516j1> it = h22.z1().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C4516j1 next = it.next();
                if (next.b1()) {
                    com.android.tools.r8.androidapi.f fVar2 = next.f37322o;
                    if (fVar2.x()) {
                        fVar = com.android.tools.r8.androidapi.g.f35607b;
                        break;
                    }
                    fVar = fVar.a(fVar2);
                }
                if (fVar.U()) {
                    break;
                }
            }
        } else {
            com.android.tools.r8.androidapi.a aVar = this.f46013b;
            Iterable z02 = h22.z0();
            aVar.getClass();
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
            fVar = aVar.a(z02);
            Iterator<C4516j1> it2 = h22.z1().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                C4516j1 next2 = it2.next();
                if (next2.b1()) {
                    com.android.tools.r8.androidapi.f fVar3 = next2.f37322o;
                    if (fVar3.x()) {
                        fVar = com.android.tools.r8.androidapi.g.f35607b;
                        break;
                    }
                    fVar = fVar.a(fVar3);
                }
                if (fVar.U()) {
                    break;
                }
            }
        }
        if (fVar.U()) {
            return null;
        }
        return fVar;
    }

    @Override
    public final String f() {
        return "NoDifferentApiReferenceLevel";
    }

    @Override
    public final boolean l() {
        return !this.f46014c;
    }
}
