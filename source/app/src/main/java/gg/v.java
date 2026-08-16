package gg;

import eg.InterfaceC13104a1;
import java.util.concurrent.CancellationException;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14427o(level = EnumC14431q.WARNING, message = "ConflatedBroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
@InterfaceC13104a1
public final class v<E> implements InterfaceC13364d<E> {

    @NotNull
    public final C13365e<E> f89916b;

    public v(C13365e<E> c13365e) {
        this.f89916b = c13365e;
    }

    @Override
    public boolean A() {
        return this.f89916b.A();
    }

    @Override
    public void F(@NotNull Mf.l<? super Throwable, P0> lVar) {
        this.f89916b.F(lVar);
    }

    @Override
    public boolean J(@Nullable Throwable th2) {
        return this.f89916b.J(th2);
    }

    @Override
    @Nullable
    public Object M(E e10, @NotNull yf.f<? super P0> fVar) {
        return this.f89916b.M(e10, fVar);
    }

    @Override
    public void a(@Nullable CancellationException cancellationException) {
        this.f89916b.a(cancellationException);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility only")
    public boolean b(Throwable th2) {
        return this.f89916b.b(th2);
    }

    public final E c() {
        return this.f89916b.L1();
    }

    @Nullable
    public final E d() {
        return this.f89916b.N1();
    }

    @Override
    @NotNull
    public pg.i<E, E<E>> j() {
        return this.f89916b.j();
    }

    @Override
    @NotNull
    public InterfaceC13360D<E> m() {
        return this.f89916b.m();
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        return this.f89916b.offer(e10);
    }

    @Override
    @NotNull
    public Object p(E e10) {
        return this.f89916b.p(e10);
    }

    public v() {
        this(new C13365e(-1));
    }

    public v(E e10) {
        this();
        p(e10);
    }
}
