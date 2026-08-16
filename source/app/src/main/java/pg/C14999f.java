package pg;

import kotlin.jvm.internal.C14026x;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C14999f implements InterfaceC14998e {

    @NotNull
    public final Object f103916a;

    @NotNull
    public final Mf.q<Object, m<?>, Object, P0> f103917b;

    @Nullable
    public final Mf.q<m<?>, Object, Object, Mf.l<Throwable, P0>> f103918c;

    @NotNull
    public final Mf.q<Object, Object, Object, Object> f103919d;

    /* JADX WARN: Multi-variable type inference failed */
    public C14999f(@NotNull Object obj, @NotNull Mf.q<Object, ? super m<?>, Object, P0> qVar, @Nullable Mf.q<? super m<?>, Object, Object, ? extends Mf.l<? super Throwable, P0>> qVar2) {
        Mf.q<Object, Object, Object, Object> qVar3;
        this.f103916a = obj;
        this.f103917b = qVar;
        this.f103918c = qVar2;
        qVar3 = o.f103950a;
        this.f103919d = qVar3;
    }

    @Override
    @Nullable
    public Mf.q<m<?>, Object, Object, Mf.l<Throwable, P0>> a() {
        return this.f103918c;
    }

    @Override
    @NotNull
    public Mf.q<Object, Object, Object, Object> b() {
        return this.f103919d;
    }

    @Override
    @NotNull
    public Mf.q<Object, m<?>, Object, P0> c() {
        return this.f103917b;
    }

    @Override
    @NotNull
    public Object d() {
        return this.f103916a;
    }

    public C14999f(Object obj, Mf.q qVar, Mf.q qVar2, int i10, C14026x c14026x) {
        this(obj, qVar, (i10 & 4) != 0 ? null : qVar2);
    }
}
