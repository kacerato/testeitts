package M0;

import D0.InterfaceC2458n;
import D0.r;
import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.i;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import v1.AbstractC15790k;
import v1.C15791l;
import v1.C15793n;
import v1.InterfaceC15789j;

public final class B extends AbstractC11907k implements L0.d {

    public static final C11894a.g f14452k;

    public static final C11894a.AbstractC0948a f14453l;

    public static final C11894a f14454m;

    public static final int f14455n = 0;

    static {
        C11894a.g gVar = new C11894a.g();
        f14452k = gVar;
        t tVar = new t();
        f14453l = tVar;
        f14454m = new C11894a("ModuleInstall.API", tVar, gVar);
    }

    public B(Activity activity) {
        super(activity, (C11894a<C11894a.d.C0950d>) f14454m, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
    }

    public static final C2812a g0(boolean z10, com.google.android.gms.common.api.n... nVarArr) {
        G0.A.s(nVarArr, "Requested APIs must not be null.");
        G0.A.b(nVarArr.length > 0, "Please provide at least one OptionalModuleApi.");
        for (com.google.android.gms.common.api.n nVar : nVarArr) {
            G0.A.s(nVar, "Requested API must not be null.");
        }
        return C2812a.p(Arrays.asList(nVarArr), z10);
    }

    @Override
    @ResultIgnorabilityUnspecified
    public final AbstractC15790k<Boolean> F(L0.a aVar) {
        return R(com.google.android.gms.common.api.internal.g.c(aVar, L0.a.class.getSimpleName()), 27306);
    }

    @Override
    public final AbstractC15790k<L0.g> j(L0.f fVar) {
        final C2812a b10 = C2812a.b(fVar);
        final L0.a b11 = fVar.b();
        Executor c10 = fVar.c();
        if (b10.n().isEmpty()) {
            return C15793n.g(new L0.g(0));
        }
        if (b11 == null) {
            r.a a10 = D0.r.a();
            a10.e(g1.v.f88030a);
            a10.d(true);
            a10.f(27304);
            a10.c(new InterfaceC2458n() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final void accept(Object obj, Object obj2) {
                    ((i) ((C) obj).M()).g1(new w(B.this, (C15791l) obj2), b10, null);
                }
            });
            return N(a10.a());
        }
        G0.A.r(b11);
        com.google.android.gms.common.api.internal.f a02 = c10 == null ? a0(b11, L0.a.class.getSimpleName()) : com.google.android.gms.common.api.internal.g.b(b11, c10, L0.a.class.getSimpleName());
        final d dVar = new d(a02);
        final AtomicReference atomicReference = new AtomicReference();
        InterfaceC2458n interfaceC2458n = new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((i) ((C) obj).M()).g1(new x(B.this, atomicReference, (C15791l) obj2, b11), b10, dVar);
            }
        };
        InterfaceC2458n interfaceC2458n2 = new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((i) ((C) obj).M()).i1(new y(B.this, (C15791l) obj2), dVar);
            }
        };
        i.a a11 = com.google.android.gms.common.api.internal.i.a();
        a11.h(a02);
        a11.e(g1.v.f88030a);
        a11.d(true);
        a11.c(interfaceC2458n);
        a11.g(interfaceC2458n2);
        a11.f(27305);
        return P(a11.a()).x(new InterfaceC15789j() {
            @Override
            public final AbstractC15790k a(Object obj) {
                int i10 = B.f14455n;
                AtomicReference atomicReference2 = AtomicReference.this;
                return atomicReference2.get() != null ? C15793n.g((L0.g) atomicReference2.get()) : C15793n.f(new ApiException(Status.f61041i));
            }
        });
    }

    @Override
    public final AbstractC15790k<L0.e> k(com.google.android.gms.common.api.n... nVarArr) {
        final C2812a g02 = g0(true, nVarArr);
        if (g02.n().isEmpty()) {
            return C15793n.g(new L0.e(null));
        }
        r.a a10 = D0.r.a();
        a10.e(g1.v.f88030a);
        a10.f(27307);
        a10.c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((i) ((C) obj).M()).f1(new z(B.this, (C15791l) obj2), g02);
            }
        });
        return N(a10.a());
    }

    @Override
    public final AbstractC15790k<Void> l(com.google.android.gms.common.api.n... nVarArr) {
        final C2812a g02 = g0(false, nVarArr);
        if (g02.n().isEmpty()) {
            return C15793n.g(null);
        }
        r.a a10 = D0.r.a();
        a10.e(g1.v.f88030a);
        a10.f(27303);
        a10.d(false);
        a10.c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((i) ((C) obj).M()).h1(new A(B.this, (C15791l) obj2), g02);
            }
        });
        return N(a10.a());
    }

    @Override
    public final AbstractC15790k<L0.b> r(com.google.android.gms.common.api.n... nVarArr) {
        final C2812a g02 = g0(false, nVarArr);
        if (g02.n().isEmpty()) {
            return C15793n.g(new L0.b(true, 0));
        }
        r.a a10 = D0.r.a();
        a10.e(g1.v.f88030a);
        a10.f(27301);
        a10.d(false);
        a10.c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((i) ((C) obj).M()).e1(new u(B.this, (C15791l) obj2), g02);
            }
        });
        return N(a10.a());
    }

    @Override
    public final AbstractC15790k<Void> z(com.google.android.gms.common.api.n... nVarArr) {
        final C2812a g02 = g0(false, nVarArr);
        if (g02.n().isEmpty()) {
            return C15793n.g(null);
        }
        r.a a10 = D0.r.a();
        a10.e(g1.v.f88030a);
        a10.f(27302);
        a10.d(false);
        a10.c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((i) ((C) obj).M()).g1(new v(B.this, (C15791l) obj2), g02, null);
            }
        });
        return N(a10.a());
    }

    public B(Context context) {
        super(context, (C11894a<C11894a.d.C0950d>) f14454m, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
    }
}
