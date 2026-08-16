package pg;

import kotlin.jvm.internal.C14026x;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class h<Q> implements g<Q> {

    @NotNull
    public final Object f103920a;

    @NotNull
    public final Mf.q<Object, m<?>, Object, P0> f103921b;

    @NotNull
    public final Mf.q<Object, Object, Object, Object> f103922c;

    @Nullable
    public final Mf.q<m<?>, Object, Object, Mf.l<Throwable, P0>> f103923d;

    /* JADX WARN: Multi-variable type inference failed */
    public h(@NotNull Object obj, @NotNull Mf.q<Object, ? super m<?>, Object, P0> qVar, @NotNull Mf.q<Object, Object, Object, ? extends Object> qVar2, @Nullable Mf.q<? super m<?>, Object, Object, ? extends Mf.l<? super Throwable, P0>> qVar3) {
        this.f103920a = obj;
        this.f103921b = qVar;
        this.f103922c = qVar2;
        this.f103923d = qVar3;
    }

    @Override
    @Nullable
    public Mf.q<m<?>, Object, Object, Mf.l<Throwable, P0>> a() {
        return this.f103923d;
    }

    @Override
    @NotNull
    public Mf.q<Object, Object, Object, Object> b() {
        return this.f103922c;
    }

    @Override
    @NotNull
    public Mf.q<Object, m<?>, Object, P0> c() {
        return this.f103921b;
    }

    @Override
    @NotNull
    public Object d() {
        return this.f103920a;
    }

    public h(Object obj, Mf.q qVar, Mf.q qVar2, Mf.q qVar3, int i10, C14026x c14026x) {
        this(obj, qVar, qVar2, (i10 & 8) != 0 ? null : qVar3);
    }
}
