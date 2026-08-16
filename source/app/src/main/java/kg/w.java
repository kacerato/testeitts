package kg;

import eg.F0;
import gg.E;
import jg.InterfaceC13843j;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
public final class w<T> implements InterfaceC13843j<T> {

    @NotNull
    public final E<T> f95220b;

    /* JADX WARN: Multi-variable type inference failed */
    public w(@NotNull E<? super T> e10) {
        this.f95220b = e10;
    }

    @Override
    @Nullable
    public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
        Object M10 = this.f95220b.M(t10, fVar);
        return M10 == Af.d.l() ? M10 : P0.f98194a;
    }
}
