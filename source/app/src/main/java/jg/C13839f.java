package jg;

import gg.InterfaceC13358B;
import kg.AbstractC13982d;
import kotlin.jvm.internal.C14026x;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C13839f<T> extends AbstractC13982d<T> {

    @NotNull
    public final Mf.p<InterfaceC13358B<? super T>, yf.f<? super P0>, Object> f93307e;

    public C13839f(Mf.p pVar, yf.j jVar, int i10, gg.i iVar, int i11, C14026x c14026x) {
        this(pVar, (i11 & 2) != 0 ? yf.l.f130251b : jVar, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? gg.i.SUSPEND : iVar);
    }

    public static <T> Object m(C13839f<T> c13839f, InterfaceC13358B<? super T> interfaceC13358B, yf.f<? super P0> fVar) {
        Object invoke = c13839f.f93307e.invoke(interfaceC13358B, fVar);
        return invoke == Af.d.l() ? invoke : P0.f98194a;
    }

    @Override
    @Nullable
    public Object f(@NotNull InterfaceC13358B<? super T> interfaceC13358B, @NotNull yf.f<? super P0> fVar) {
        return m(this, interfaceC13358B, fVar);
    }

    @Override
    @NotNull
    public AbstractC13982d<T> g(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return new C13839f(this.f93307e, jVar, i10, iVar);
    }

    @Override
    @NotNull
    public String toString() {
        return "block[" + ((Object) this.f93307e) + "] -> " + super.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13839f(@NotNull Mf.p<? super InterfaceC13358B<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar, @NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        super(jVar, i10, iVar);
        this.f93307e = pVar;
    }
}
