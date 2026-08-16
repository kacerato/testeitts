package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C5085Ec0 extends RV {

    public static final boolean f39946i = true;

    public final C4387c4 f39947e;

    public final C4911Bc0 f39948f;

    public final C10614zc0 f39949g;

    public boolean f39950h;

    public C5085Ec0(C4798y c4798y) {
        super(c4798y);
        this.f39949g = new C10614zc0();
        this.f39950h = false;
        this.f39947e = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
        this.f39948f = c4798y.E().C();
    }

    public final void a(AbstractC8374m80 abstractC8374m80, ExecutorService executorService, C8659ns0 c8659ns0) {
        final com.android.tools.r8.graph.M5 m52 = new com.android.tools.r8.graph.M5();
        m52.f36605a = this.f43915b.e();
        abstractC8374m80.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5085Ec0.a(com.android.tools.r8.graph.M5.this, (com.android.tools.r8.graph.H5) obj);
            }
        });
        this.f43915b.a(m52.a(), executorService, c8659ns0);
    }

    public final C5085Ec0 a() {
        this.f39950h = true;
        return this;
    }

    public static void a(AbstractC8374m80 abstractC8374m80, AbstractC8374m80 abstractC8374m802) {
        abstractC8374m80.f45165b.putAll(abstractC8374m802.f45165b);
        abstractC8374m802.f45165b.clear();
    }

    public static boolean a(AbstractC8374m80 abstractC8374m80) {
        return !abstractC8374m80.f45165b.isEmpty();
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52, ZJ zj2, com.android.tools.r8.graph.A2 a22) {
        if (zj2 == ZJ.f46223f) {
            return false;
        }
        if (zj2 == ZJ.f46219b) {
            if (h52.d().j1()) {
                this.f43915b.E().getClass();
            }
            return false;
        }
        boolean z10 = f39946i;
        if (!z10 && h52.getAccessFlags().h()) {
            throw new AssertionError();
        }
        if (!z10 && h52.d().j1()) {
            throw new AssertionError();
        }
        if (zj2 == ZJ.f46222e) {
            return true;
        }
        if (zj2 == ZJ.f46221d) {
            return ((C11245i) this.f43915b.f()).b(h52.p(), a22.f38297f);
        }
        if (zj2 == ZJ.f46220c || z10) {
            return false;
        }
        throw new AssertionError((Object) ("Unexpected invoke-kind for visibility bridge: " + ((Object) zj2)));
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        a(executorService, c8659ns0, (TV) null);
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0, TV tv) {
        if (!f39946i && tv != null && tv != this.f43915b.v()) {
            throw new AssertionError();
        }
        c8659ns0.b("Redundant bridge removal");
        AbstractC8374m80 a10 = a(executorService);
        if (!a10.f45165b.isEmpty()) {
            a(a10, executorService, c8659ns0);
            if (!this.f39949g.f54413b.isEmpty()) {
                C4798y c4798y = this.f43915b;
                C10614zc0 c10614zc0 = this.f39949g;
                c10614zc0.getClass();
                c4798y.a(new C4853Ac0(c4798y, c10614zc0.f54412a, c10614zc0.f54413b), c4798y.e().a(), executorService, c8659ns0);
            }
            if (tv != null) {
                for (com.android.tools.r8.graph.H5 h52 : a10.f45165b.values()) {
                    com.android.tools.r8.graph.H0 p10 = ((C11245i) this.f43915b.f()).d(h52.getHolder(), h52.getReference()).p();
                    tv.f44492g.put(h52.getReference(), p10.getReference());
                }
            }
        }
        this.f43915b.getClass();
        c8659ns0.d();
    }

    public final AbstractC8374m80 a(ExecutorService executorService) {
        ArrayList a10 = C5467Kr0.a(new C6541b80(this.f43915b, this.f39947e).a(), new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C5085Ec0.this.a((Set) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5085Ec0.a((AbstractC8374m80) obj);
            }
        }, this.f43915b.E().G(), executorService);
        final AbstractC8374m80 c10 = AbstractC8374m80.c();
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5085Ec0.a(AbstractC8374m80.this, (AbstractC8374m80) obj);
            }
        });
        return c10;
    }

    public final AbstractC8374m80 a(Set set) {
        C5027Dc0 c5027Dc0 = new C5027Dc0(this);
        c5027Dc0.a(set);
        return c5027Dc0.f39564f;
    }

    public static void a(com.android.tools.r8.graph.M5 m52, com.android.tools.r8.graph.H5 h52) {
        m52.f36611g.add(h52.getReference());
    }
}
