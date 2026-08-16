package ng;

import Af.c;
import Mf.l;
import Mf.p;
import eg.F0;
import kotlin.jvm.internal.t0;
import mg.C14252m;
import nf.C14416i0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.f;

@t0({"SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,68:1\n49#1,6:69\n49#1,6:75\n49#1,6:81\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n17#1:69,6\n29#1:75,6\n38#1:81,6\n*E\n"})
public final class C14445a {
    public static final void a(f<?> fVar, Throwable th2) {
        C14416i0.a aVar = C14416i0.f98201c;
        fVar.resumeWith(C14416i0.b(C14418j0.a(th2)));
        throw th2;
    }

    public static final void b(f<?> fVar, Mf.a<P0> aVar) {
        try {
            aVar.invoke();
        } catch (Throwable th2) {
            a(fVar, th2);
        }
    }

    @F0
    public static final <T> void c(@NotNull l<? super f<? super T>, ? extends Object> lVar, @NotNull f<? super T> fVar) {
        try {
            f e10 = c.e(c.b(lVar, fVar));
            C14416i0.a aVar = C14416i0.f98201c;
            C14252m.e(e10, C14416i0.b(P0.f98194a), null, 2, null);
        } catch (Throwable th2) {
            a(fVar, th2);
        }
    }

    public static final <R, T> void d(@NotNull p<? super R, ? super f<? super T>, ? extends Object> pVar, R r10, @NotNull f<? super T> fVar, @Nullable l<? super Throwable, P0> lVar) {
        try {
            f e10 = c.e(c.c(pVar, r10, fVar));
            C14416i0.a aVar = C14416i0.f98201c;
            C14252m.d(e10, C14416i0.b(P0.f98194a), lVar);
        } catch (Throwable th2) {
            a(fVar, th2);
        }
    }

    public static final void e(@NotNull f<? super P0> fVar, @NotNull f<?> fVar2) {
        try {
            f e10 = c.e(fVar);
            C14416i0.a aVar = C14416i0.f98201c;
            C14252m.e(e10, C14416i0.b(P0.f98194a), null, 2, null);
        } catch (Throwable th2) {
            a(fVar2, th2);
        }
    }

    public static void f(p pVar, Object obj, f fVar, l lVar, int i10, Object obj2) {
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        d(pVar, obj, fVar, lVar);
    }
}
