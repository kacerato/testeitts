package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class C5935Su {

    public final C4798y f44328a;

    public AbstractC8552nC f44329b;

    public C5628Nl0 f44330c;

    public final com.android.tools.r8.shaking.M0 f44331d = new com.android.tools.r8.shaking.M0();

    public C5935Su(C4798y c4798y) {
        this.f44328a = c4798y;
    }

    public final C5993Tu a(final C10374y70 c10374y70, ExecutorService executorService) {
        C5993Tu c5993Tu = new C5993Tu(this.f44330c, this.f44329b);
        new com.android.tools.r8.shaking.O0(this.f44331d.f56719a).a(this.f44328a);
        final C6529b40 c6529b40 = new C6529b40(C7097eX.f47704c, this.f44328a.k());
        c5993Tu.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5935Su.this.a(c6529b40, (AbstractC5877Ru) obj);
            }
        });
        final C6862d40 c6862d40 = new C6862d40(c6529b40.f46692b, c6529b40.f46693c, c6529b40.f46691a);
        c6862d40.a(new InterfaceC6695c40() {
            @Override
            public final void a(com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
                C5935Su.this.a(c10374y70, c6862d40, h52, c5035Df);
            }
        }, this.f44328a.E().G(), executorService);
        return c5993Tu;
    }

    public final void a(final C6529b40 c6529b40, AbstractC5877Ru abstractC5877Ru) {
        abstractC5877Ru.a(this.f44328a);
        com.android.tools.r8.graph.H2 a10 = abstractC5877Ru.a();
        Objects.requireNonNull(c6529b40);
        a10.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6529b40.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(C8048kB c8048kB, C6862d40 c6862d40, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        c8048kB.a(h52, (AbstractC8028k40) C8696o40.f51162b, (AbstractC7431gX) c6862d40, c5035Df, EW.b(this.f44328a), C8659ns0.c());
    }

    public static com.android.tools.r8.graph.M2 a(C4724u1 c4724u1, com.android.tools.r8.graph.H2 h22) {
        return c4724u1.d(C4932Bl.k(C4932Bl.f(h22.getType().V0()) + "$r8$EnumUnboxingLocalUtility"));
    }
}
