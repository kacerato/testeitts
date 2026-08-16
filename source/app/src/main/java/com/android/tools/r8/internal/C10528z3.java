package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C10528z3 {

    public final C4798y f54269a;

    public final C10374y70 f54270b;

    public final C5591Mw f54271c;

    public final C10601zX f54272d;

    public final C6555bD f54273e;

    public final C4387c4 f54274f;

    public final ArrayList f54275g;

    public final BiConsumer f54276h;

    public C10528z3(C4798y c4798y, C10374y70 c10374y70, C4387c4 c4387c4, C5591Mw c5591Mw, C10601zX c10601zX, C6555bD c6555bD, ArrayList arrayList, BiConsumer biConsumer) {
        this.f54269a = c4798y;
        this.f54270b = c10374y70;
        this.f54274f = c4387c4;
        this.f54271c = c5591Mw;
        this.f54272d = c10601zX;
        this.f54273e = c6555bD;
        this.f54275g = arrayList;
        this.f54276h = biConsumer;
    }

    public final void a(Set set, ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Propagate argument information for virtual methods");
        C5467Kr0.a(this.f54275g, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10528z3.this.a((Set) obj);
            }
        }, this.f54269a.E().G(), executorService);
        c8659ns0.d();
        c8659ns0.b("Solve flow constraints");
        C6721cD c6721cD = new C6721cD(this.f54269a, set, this.f54270b, this.f54271c, this.f54272d, this.f54274f, this.f54273e);
        List a10 = c6721cD.a();
        if (!C6721cD.f47000g) {
            Iterator it = a10.iterator();
            while (it.hasNext()) {
                AbstractC6888dD.a((C5246Gx) it.next());
            }
        }
        c6721cD.a(a10, executorService);
        c6721cD.a(a10);
        c6721cD.a(new C4870Aj(c6721cD.f47001a, c6721cD.f47002b, c6721cD.f47004d, a10).a(executorService), executorService);
        c6721cD.a(executorService);
        c6721cD.a(a10);
        c8659ns0.d();
    }

    public final void a(final Set set) {
        new C10571zI(this.f54269a, this.f54274f, this.f54272d, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10528z3.this.a(set, (com.android.tools.r8.graph.F2) obj);
            }
        }).a((Collection) set);
        new C9175qx0(this.f54269a, this.f54274f, this.f54272d).a(set);
    }

    public final void a(Set set, com.android.tools.r8.graph.F2 f22) {
        this.f54276h.accept(set, f22);
    }
}
