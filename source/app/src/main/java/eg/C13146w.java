package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13146w extends L0 implements InterfaceC13144v {

    @Lf.g
    @NotNull
    public final InterfaceC13148x f85798f;

    public C13146w(@NotNull InterfaceC13148x interfaceC13148x) {
        this.f85798f = interfaceC13148x;
    }

    @Override
    public void Y(@Nullable Throwable th2) {
        this.f85798f.N(Z());
    }

    @Override
    public boolean b(@NotNull Throwable th2) {
        return Z().p0(th2);
    }

    @Override
    @NotNull
    public K0 getParent() {
        return Z();
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        Y(th2);
        return nf.P0.f98194a;
    }
}
