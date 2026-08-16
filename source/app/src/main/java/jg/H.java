package jg;

import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class H<T> extends AbstractC13834a<T> {

    @NotNull
    public final Mf.p<InterfaceC13843j<? super T>, yf.f<? super P0>, Object> f93216b;

    /* JADX WARN: Multi-variable type inference failed */
    public H(@NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        this.f93216b = pVar;
    }

    @Override
    @Nullable
    public Object d(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        Object invoke = this.f93216b.invoke(interfaceC13843j, fVar);
        return invoke == Af.d.l() ? invoke : P0.f98194a;
    }
}
