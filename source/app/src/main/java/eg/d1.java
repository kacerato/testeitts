package eg;

import nf.C14416i0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class d1 extends Q0 {

    @NotNull
    public final yf.f<nf.P0> f85703f;

    /* JADX WARN: Multi-variable type inference failed */
    public d1(@NotNull yf.f<? super nf.P0> fVar) {
        this.f85703f = fVar;
    }

    @Override
    public void Y(@Nullable Throwable th2) {
        yf.f<nf.P0> fVar = this.f85703f;
        C14416i0.a aVar = C14416i0.f98201c;
        fVar.resumeWith(C14416i0.b(nf.P0.f98194a));
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        Y(th2);
        return nf.P0.f98194a;
    }
}
