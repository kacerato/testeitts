package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.GK;
import com.android.tools.r8.internal.U6;
import com.android.tools.r8.ir.optimize.C10707f0;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C10707f0 {

    public final C4798y f54871a;

    public C10707f0(C4798y c4798y) {
        this.f54871a = c4798y;
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("NestReduction");
        if (!this.f54871a.E().i()) {
            for (H2 h22 : ((C11245i) this.f54871a.f()).d()) {
                if (h22.q1()) {
                    if (h22.t1()) {
                        h22.f36256p.clear();
                    } else {
                        h22.f36255o = null;
                    }
                }
            }
        } else {
            a(executorService);
        }
        c8659ns0.d();
    }

    public final void b(final H2 h22) {
        v.B0 b02 = new v.B0();
        final U6 u62 = new U6(((GK) AbstractC6114Vx.b(h22.f36251k.f37700b.a(b02), h22.c(b02)).iterator()).hasNext());
        h22.V0().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10707f0.this.a(h22, u62, (C4634p5) obj);
            }
        });
        if (u62.c() && this.f54871a.E().f50628P0) {
            h22.V0().clear();
        }
    }

    public final void c(H2 h22) {
        C4798y c4798y = this.f54871a;
        M2 T02 = h22.T0();
        c4798y.getClass();
        H2 a10 = H2.a(T02 == h22.f36245e ? h22 : c4798y.a(T02));
        if (a10 == null || !a10.t1()) {
            h22.f36255o = null;
        }
    }

    public final void a(ExecutorService executorService) {
        Set c10 = AbstractC5513Ll0.c();
        Set c11 = AbstractC5513Ll0.c();
        for (H2 h22 : ((C11245i) this.f54871a.f()).d()) {
            if (h22.q1()) {
                if (h22.t1()) {
                    c10.add(h22);
                } else {
                    c11.add(h22);
                }
            }
        }
        ThreadingModule G10 = this.f54871a.E().G();
        C5467Kr0.a(c10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10707f0.this.b((H2) obj);
            }
        }, G10, executorService);
        C5467Kr0.a(c11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10707f0.this.c((H2) obj);
            }
        }, G10, executorService);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.android.tools.r8.graph.E0] */
    public final boolean a(H2 h22, U6 u62, C4634p5 c4634p5) {
        C4798y c4798y = this.f54871a;
        M2 a10 = c4634p5.a();
        M2 m22 = h22.f36245e;
        H2 h23 = h22;
        if (a10 != m22) {
            h23 = c4798y.a(a10);
        }
        final H2 a11 = H2.a((com.android.tools.r8.graph.E0) h23);
        if (a11 == null) {
            return true;
        }
        u62.a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return C10707f0.a(H2.this);
            }
        });
        return false;
    }

    public static boolean a(H2 h22) {
        v.B0 b02 = new v.B0();
        return ((GK) AbstractC6114Vx.b(h22.f36251k.f37700b.a(b02), h22.c(b02)).iterator()).hasNext();
    }
}
