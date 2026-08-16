package eg;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutinesInternalError;
import mg.C14251l;
import nf.C14416i0;
import nf.C14418j0;
import nf.C14436t;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,222:1\n1#2:223\n107#3,10:224\n118#3,2:238\n220#4:234\n221#4:237\n61#5,2:235\n75#6:240\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n90#1:224,10\n90#1:238,2\n103#1:234\n103#1:237\n103#1:235,2\n142#1:240\n*E\n"})
@InterfaceC14410f0
public abstract class AbstractC13116g0<T> extends og.k {

    @Lf.g
    public int f85726d;

    public AbstractC13116g0(int i10) {
        this.f85726d = i10;
    }

    public void c(@Nullable Object obj, @NotNull Throwable th2) {
    }

    @NotNull
    public abstract yf.f<T> e();

    @Nullable
    public Throwable f(@Nullable Object obj) {
        C13091D c13091d = obj instanceof C13091D ? (C13091D) obj : null;
        if (c13091d != null) {
            return c13091d.f85604a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T h(@Nullable Object obj) {
        return obj;
    }

    public final void j(@Nullable Throwable th2, @Nullable Throwable th3) {
        if (th2 == null && th3 == null) {
            return;
        }
        if (th2 != null && th3 != null) {
            C14436t.a(th2, th3);
        }
        if (th2 == null) {
            th2 = th3;
        }
        kotlin.jvm.internal.M.m(th2);
        O.b(e().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + ((Object) this) + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th2));
    }

    @Nullable
    public abstract Object l();

    @Override
    public final void run() {
        Object b10;
        Object b11;
        og.l lVar = this.f98748c;
        try {
            yf.f<T> e10 = e();
            kotlin.jvm.internal.M.n(e10, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            C14251l c14251l = (C14251l) e10;
            yf.f<T> fVar = c14251l.f97076f;
            Object obj = c14251l.f97078h;
            yf.j context = fVar.getContext();
            Object c10 = mg.Z.c(context, obj);
            w1<?> g10 = c10 != mg.Z.f97043a ? C13099L.g(fVar, context, c10) : null;
            try {
                yf.j context2 = fVar.getContext();
                Object l10 = l();
                Throwable f10 = f(l10);
                K0 k02 = (f10 == null && C13118h0.c(this.f85726d)) ? (K0) context2.get(K0.f85619y4) : null;
                if (k02 != null && !k02.isActive()) {
                    CancellationException Q10 = k02.Q();
                    c(l10, Q10);
                    C14416i0.a aVar = C14416i0.f98201c;
                    fVar.resumeWith(C14416i0.b(C14418j0.a(Q10)));
                } else if (f10 != null) {
                    C14416i0.a aVar2 = C14416i0.f98201c;
                    fVar.resumeWith(C14416i0.b(C14418j0.a(f10)));
                } else {
                    C14416i0.a aVar3 = C14416i0.f98201c;
                    fVar.resumeWith(C14416i0.b(h(l10)));
                }
                nf.P0 p02 = nf.P0.f98194a;
                if (g10 == null || g10.C1()) {
                    mg.Z.a(context, c10);
                }
                try {
                    C14416i0.a aVar4 = C14416i0.f98201c;
                    lVar.k();
                    b11 = C14416i0.b(p02);
                } catch (Throwable th2) {
                    C14416i0.a aVar5 = C14416i0.f98201c;
                    b11 = C14416i0.b(C14418j0.a(th2));
                }
                j(null, C14416i0.e(b11));
            } catch (Throwable th3) {
                if (g10 == null || g10.C1()) {
                    mg.Z.a(context, c10);
                }
                throw th3;
            }
        } catch (Throwable th4) {
            try {
                C14416i0.a aVar6 = C14416i0.f98201c;
                lVar.k();
                b10 = C14416i0.b(nf.P0.f98194a);
            } catch (Throwable th5) {
                C14416i0.a aVar7 = C14416i0.f98201c;
                b10 = C14416i0.b(C14418j0.a(th5));
            }
            j(th4, C14416i0.e(b10));
        }
    }
}
