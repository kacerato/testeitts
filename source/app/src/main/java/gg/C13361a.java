package gg;

import eg.C13145v0;
import eg.K0;
import eg.O;
import eg.W;
import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C13361a<E> extends m<E> implements InterfaceC13363c<E> {
    public C13361a(@NotNull yf.j jVar, @NotNull l<E> lVar, boolean z10) {
        super(jVar, lVar, false, z10);
        M0((K0) jVar.get(K0.f85619y4));
    }

    @Override
    public boolean K0(@NotNull Throwable th2) {
        O.b(getContext(), th2);
        return true;
    }

    @Override
    public void f1(@Nullable Throwable th2) {
        l<E> C12 = C1();
        if (th2 != null) {
            r1 = th2 instanceof CancellationException ? (CancellationException) th2 : null;
            if (r1 == null) {
                r1 = C13145v0.a(W.a(this) + " was cancelled", th2);
            }
        }
        C12.a(r1);
    }
}
