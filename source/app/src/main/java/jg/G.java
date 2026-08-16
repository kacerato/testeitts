package jg;

import eg.K0;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class G<T> implements U<T>, InterfaceC13836c<T>, kg.p<T> {

    @Nullable
    public final K0 f93214b;

    public final U<T> f93215c;

    /* JADX WARN: Multi-variable type inference failed */
    public G(@NotNull U<? extends T> u10, @Nullable K0 k02) {
        this.f93214b = k02;
        this.f93215c = u10;
    }

    @Override
    @Nullable
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<?> fVar) {
        return this.f93215c.a(interfaceC13843j, fVar);
    }

    @Override
    @NotNull
    public List<T> b() {
        return this.f93215c.b();
    }

    @Override
    @NotNull
    public InterfaceC13842i<T> c(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return W.d(this, jVar, i10, iVar);
    }

    @Override
    public T getValue() {
        return this.f93215c.getValue();
    }
}
