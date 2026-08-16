package gg;

import eg.AbstractC13102a;
import eg.K0;
import eg.O;
import eg.R0;
import gg.E;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.t0;
import kotlinx.coroutines.JobCancellationException;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,202:1\n706#2,2:203\n706#2,2:205\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n152#1:203,2\n157#1:205,2\n*E\n"})
public class C13367g<E> extends AbstractC13102a<P0> implements InterfaceC13358B<E>, InterfaceC13364d<E> {

    @NotNull
    public final InterfaceC13364d<E> f89593e;

    public C13367g(@NotNull yf.j jVar, @NotNull InterfaceC13364d<E> interfaceC13364d, boolean z10) {
        super(jVar, false, z10);
        this.f89593e = interfaceC13364d;
        M0((K0) jVar.get(K0.f85619y4));
    }

    @Override
    public boolean A() {
        return this.f89593e.A();
    }

    @NotNull
    public final InterfaceC13364d<E> C1() {
        return this.f89593e;
    }

    @Override
    public void A1(@NotNull P0 p02) {
        E.a.a(this.f89593e, null, 1, null);
    }

    @Override
    public void F(@NotNull Mf.l<? super Throwable, P0> lVar) {
        this.f89593e.F(lVar);
    }

    @Override
    public boolean J(@Nullable Throwable th2) {
        boolean J10 = this.f89593e.J(th2);
        start();
        return J10;
    }

    @Override
    @Nullable
    public Object M(E e10, @NotNull yf.f<? super P0> fVar) {
        return this.f89593e.M(e10, fVar);
    }

    @Override
    public final void a(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(o0(), null, this);
        }
        l0(cancellationException);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public final boolean b(Throwable th2) {
        if (th2 == null) {
            th2 = new JobCancellationException(o0(), null, this);
        }
        l0(th2);
        return true;
    }

    @Override
    @NotNull
    public E<E> getChannel() {
        return this;
    }

    @Override
    public boolean isActive() {
        return super.isActive();
    }

    @Override
    @NotNull
    public pg.i<E, E<E>> j() {
        return this.f89593e.j();
    }

    @Override
    public void l0(@NotNull Throwable th2) {
        CancellationException q12 = R0.q1(this, th2, null, 1, null);
        this.f89593e.a(q12);
        j0(q12);
    }

    @Override
    @NotNull
    public InterfaceC13360D<E> m() {
        return this.f89593e.m();
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        return this.f89593e.offer(e10);
    }

    @Override
    @NotNull
    public Object p(E e10) {
        return this.f89593e.p(e10);
    }

    @Override
    public void z1(@NotNull Throwable th2, boolean z10) {
        if (this.f89593e.J(th2) || z10) {
            return;
        }
        O.b(getContext(), th2);
    }
}
