package kg;

import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.C14026x;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class h<T> extends g<T, T> {
    public h(InterfaceC13842i interfaceC13842i, yf.j jVar, int i10, gg.i iVar, int i11, C14026x c14026x) {
        this(interfaceC13842i, (i11 & 2) != 0 ? yf.l.f130251b : jVar, (i11 & 4) != 0 ? -3 : i10, (i11 & 8) != 0 ? gg.i.SUSPEND : iVar);
    }

    @Override
    @NotNull
    public AbstractC13982d<T> g(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return new h(this.f95108e, jVar, i10, iVar);
    }

    @Override
    @NotNull
    public InterfaceC13842i<T> i() {
        return (InterfaceC13842i<T>) this.f95108e;
    }

    @Override
    @Nullable
    public Object q(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        Object a10 = this.f95108e.a(interfaceC13843j, fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    public h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        super(interfaceC13842i, jVar, i10, iVar);
    }
}
