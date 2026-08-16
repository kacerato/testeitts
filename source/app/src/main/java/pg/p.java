package pg;

import eg.AbstractC13100M;
import eg.InterfaceC13133p;
import kotlin.jvm.internal.J;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class p {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void c(InterfaceC13133p<? super T> interfaceC13133p, T t10) {
        AbstractC13100M abstractC13100M = (AbstractC13100M) interfaceC13133p.getContext().get(AbstractC13100M.Key);
        if (abstractC13100M != null) {
            interfaceC13133p.x(abstractC13100M, t10);
        } else {
            C14416i0.a aVar = C14416i0.f98201c;
            interfaceC13133p.resumeWith(C14416i0.b(t10));
        }
    }

    public static final void d(InterfaceC13133p<?> interfaceC13133p, Throwable th2) {
        AbstractC13100M abstractC13100M = (AbstractC13100M) interfaceC13133p.getContext().get(AbstractC13100M.Key);
        if (abstractC13100M != null) {
            interfaceC13133p.i(abstractC13100M, th2);
        } else {
            C14416i0.a aVar = C14416i0.f98201c;
            interfaceC13133p.resumeWith(C14416i0.b(C14418j0.a(th2)));
        }
    }

    @InterfaceC14410f0
    @Nullable
    public static final <R> Object e(@NotNull Mf.l<? super InterfaceC14996c<? super R>, P0> lVar, @NotNull yf.f<? super R> fVar) {
        C14997d c14997d = new C14997d(fVar);
        try {
            lVar.invoke(c14997d);
        } catch (Throwable th2) {
            c14997d.p0(th2);
        }
        Object o02 = c14997d.o0();
        if (o02 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return o02;
    }

    @InterfaceC14410f0
    public static final <R> Object f(Mf.l<? super InterfaceC14996c<? super R>, P0> lVar, yf.f<? super R> fVar) {
        J.e(0);
        C14997d c14997d = new C14997d(fVar);
        try {
            lVar.invoke(c14997d);
        } catch (Throwable th2) {
            c14997d.p0(th2);
        }
        Object o02 = c14997d.o0();
        if (o02 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        J.e(1);
        return o02;
    }

    @InterfaceC14410f0
    @Nullable
    public static final <R> Object g(@NotNull Mf.l<? super InterfaceC14996c<? super R>, P0> lVar, @NotNull yf.f<? super R> fVar) {
        s sVar = new s(fVar);
        try {
            lVar.invoke(sVar);
        } catch (Throwable th2) {
            sVar.q0(th2);
        }
        Object r02 = sVar.r0();
        if (r02 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return r02;
    }

    @InterfaceC14410f0
    public static final <R> Object h(Mf.l<? super InterfaceC14996c<? super R>, P0> lVar, yf.f<? super R> fVar) {
        J.e(0);
        s sVar = new s(fVar);
        try {
            lVar.invoke(sVar);
        } catch (Throwable th2) {
            sVar.q0(th2);
        }
        Object r02 = sVar.r0();
        if (r02 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        J.e(1);
        return r02;
    }
}
