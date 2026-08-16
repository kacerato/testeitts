package jg;

import eg.K0;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class F<T> implements I<T>, InterfaceC13836c<T>, kg.p<T> {

    @Nullable
    public final K0 f93212b;

    public final I<T> f93213c;

    /* JADX WARN: Multi-variable type inference failed */
    public F(@NotNull I<? extends T> i10, @Nullable K0 k02) {
        this.f93212b = k02;
        this.f93213c = i10;
    }

    @Override
    @Nullable
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<?> fVar) {
        return this.f93213c.a(interfaceC13843j, fVar);
    }

    @Override
    @NotNull
    public List<T> b() {
        return this.f93213c.b();
    }

    @Override
    @NotNull
    public InterfaceC13842i<T> c(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return K.e(this, jVar, i10, iVar);
    }
}
