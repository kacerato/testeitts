package gg;

import eg.AbstractC13102a;
import eg.C13099L;
import eg.InterfaceC13104a1;
import eg.R0;
import eg.S;
import eg.U;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13362b {
    @InterfaceC13104a1
    @NotNull
    public static final <E> E<E> a(@NotNull S s10, @NotNull yf.j jVar, int i10, @NotNull U u10, @Nullable Mf.l<? super Throwable, P0> lVar, @NotNull Mf.p<? super InterfaceC13363c<E>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        yf.j d10 = C13099L.d(s10, jVar);
        l d11 = o.d(i10, null, null, 6, null);
        C13361a xVar = u10.d() ? new x(d10, d11, pVar) : new C13361a(d10, d11, true);
        if (lVar != null) {
            ((R0) xVar).w(lVar);
        }
        ((AbstractC13102a) xVar).B1(u10, xVar, pVar);
        return (E<E>) xVar;
    }

    public static E b(S s10, yf.j jVar, int i10, U u10, Mf.l lVar, Mf.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        yf.j jVar2 = jVar;
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            u10 = U.DEFAULT;
        }
        U u11 = u10;
        if ((i11 & 8) != 0) {
            lVar = null;
        }
        return a(s10, jVar2, i12, u11, lVar, pVar);
    }
}
