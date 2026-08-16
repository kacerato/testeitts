package pg;

import kotlin.jvm.internal.C14026x;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class j<P, Q> implements i<P, Q> {

    @NotNull
    public final Object f103924a;

    @NotNull
    public final Mf.q<Object, m<?>, Object, P0> f103925b;

    @NotNull
    public final Mf.q<Object, Object, Object, Object> f103926c;

    @Nullable
    public final Mf.q<m<?>, Object, Object, Mf.l<Throwable, P0>> f103927d;

    /* JADX WARN: Multi-variable type inference failed */
    public j(@NotNull Object obj, @NotNull Mf.q<Object, ? super m<?>, Object, P0> qVar, @NotNull Mf.q<Object, Object, Object, ? extends Object> qVar2, @Nullable Mf.q<? super m<?>, Object, Object, ? extends Mf.l<? super Throwable, P0>> qVar3) {
        this.f103924a = obj;
        this.f103925b = qVar;
        this.f103926c = qVar2;
        this.f103927d = qVar3;
    }

    @Override
    @Nullable
    public Mf.q<m<?>, Object, Object, Mf.l<Throwable, P0>> a() {
        return this.f103927d;
    }

    @Override
    @NotNull
    public Mf.q<Object, Object, Object, Object> b() {
        return this.f103926c;
    }

    @Override
    @NotNull
    public Mf.q<Object, m<?>, Object, P0> c() {
        return this.f103925b;
    }

    @Override
    @NotNull
    public Object d() {
        return this.f103924a;
    }

    public j(Object obj, Mf.q qVar, Mf.q qVar2, Mf.q qVar3, int i10, C14026x c14026x) {
        this(obj, qVar, qVar2, (i10 & 8) != 0 ? null : qVar3);
    }
}
