package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11297l1;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;

public final class C8684o00 extends AbstractC10644zm0 {

    public final C4798y f51129b;

    public final AbstractC11516y1 f51130c;

    public final C8570nJ f51131d;

    public final Set f51132e = AbstractC5513Ll0.c();

    public C8684o00(C4798y c4798y) {
        this.f51129b = c4798y;
        this.f51130c = c4798y.r();
        this.f51131d = c4798y.E();
        ((C4514j) c4798y.f()).d().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8684o00.this.b((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return !this.f51132e.contains(h22.getType());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        if (r1.f(r2) == false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0087 A[EDGE_INSN: B:31:0x0087->B:32:0x0087 BREAK  A[LOOP:0: B:11:0x0035->B:26:0x0035], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(com.android.tools.r8.graph.H2 h22) {
        boolean z10;
        Iterator it;
        GK gk2;
        com.android.tools.r8.graph.M2 type = h22.getType();
        C11297l1 a10 = this.f51130c.a(h22);
        H3.b N02 = h22.N0();
        if (!a10.d(this.f51131d)) {
            if (N02.b()) {
                C8570nJ c8570nJ = this.f51131d;
                if (!c8570nJ.f50674d1) {
                }
            }
            z10 = false;
            it = h22.y1().iterator();
            while (true) {
                gk2 = (GK) it;
                if (gk2.hasNext()) {
                    break;
                }
                AbstractC4479h1 abstractC4479h1 = (AbstractC4479h1) gk2.next();
                com.android.tools.r8.shaking.F1 a11 = this.f51130c.a(abstractC4479h1, h22);
                H3.d A02 = abstractC4479h1.A0();
                if (!a11.d(this.f51131d)) {
                    if (A02.b()) {
                        C8570nJ c8570nJ2 = this.f51131d;
                        if (!c8570nJ2.f50674d1 && !a11.f(c8570nJ2)) {
                        }
                    }
                }
                AbstractC9907vK.a(new C9239rK(abstractC4479h1.getReference().a(this.f51129b.b()), new V60() {
                    @Override
                    public final boolean apply(Object obj) {
                        return ((com.android.tools.r8.graph.M2) obj).I0();
                    }
                }), this.f51132e);
                z10 = true;
            }
            if (z10) {
                return;
            }
            this.f51132e.add(type);
            return;
        }
        z10 = true;
        it = h22.y1().iterator();
        while (true) {
            gk2 = (GK) it;
            if (gk2.hasNext()) {
            }
        }
        if (z10) {
        }
    }

    @Override
    public final String f() {
        return "NoKeepRules";
    }
}
