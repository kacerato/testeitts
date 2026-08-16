package gg;

import eg.AbstractC13102a;
import eg.R0;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.t0;
import kotlinx.coroutines.JobCancellationException;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,41:1\n706#2,2:42\n706#2,2:44\n706#2,2:46\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n21#1:42,2\n26#1:44,2\n32#1:46,2\n*E\n"})
public class m<E> extends AbstractC13102a<P0> implements l<E> {

    @NotNull
    public final l<E> f89691e;

    public m(@NotNull yf.j jVar, @NotNull l<E> lVar, boolean z10, boolean z11) {
        super(jVar, z10, z11);
        this.f89691e = lVar;
    }

    @Override
    public boolean A() {
        return this.f89691e.A();
    }

    @NotNull
    public final l<E> C1() {
        return this.f89691e;
    }

    @Override
    public boolean D() {
        return this.f89691e.D();
    }

    @Override
    public void F(@NotNull Mf.l<? super Throwable, P0> lVar) {
        this.f89691e.F(lVar);
    }

    @Override
    @Nullable
    public Object H(@NotNull yf.f<? super E> fVar) {
        return this.f89691e.H(fVar);
    }

    @Override
    @NotNull
    public pg.g<E> I() {
        return this.f89691e.I();
    }

    @Override
    public boolean J(@Nullable Throwable th2) {
        return this.f89691e.J(th2);
    }

    @Override
    @Nullable
    public Object M(E e10, @NotNull yf.f<? super P0> fVar) {
        return this.f89691e.M(e10, fVar);
    }

    @Override
    public final void a(@Nullable CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(o0(), null, this);
        }
        l0(cancellationException);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public final boolean b(Throwable th2) {
        l0(new JobCancellationException(o0(), null, this));
        return true;
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public void cancel() {
        l0(new JobCancellationException(o0(), null, this));
    }

    @NotNull
    public final l<E> getChannel() {
        return this;
    }

    @Override
    public boolean isEmpty() {
        return this.f89691e.isEmpty();
    }

    @Override
    @NotNull
    public n<E> iterator() {
        return this.f89691e.iterator();
    }

    @Override
    @NotNull
    public pg.i<E, E<E>> j() {
        return this.f89691e.j();
    }

    @Override
    public void l0(@NotNull Throwable th2) {
        CancellationException q12 = R0.q1(this, th2, null, 1, null);
        this.f89691e.a(q12);
        j0(q12);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        return this.f89691e.offer(e10);
    }

    @Override
    @NotNull
    public Object p(E e10) {
        return this.f89691e.p(e10);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @InterfaceC14412g0(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return this.f89691e.poll();
    }

    @Override
    @NotNull
    public pg.g<p<E>> r() {
        return this.f89691e.r();
    }

    @Override
    @NotNull
    public pg.g<E> s() {
        return this.f89691e.s();
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @InterfaceC14412g0(expression = "receiveCatching().getOrNull()", imports = {}))
    @Ef.i
    @Nullable
    public Object t(@NotNull yf.f<? super E> fVar) {
        return this.f89691e.t(fVar);
    }

    @Override
    @Nullable
    public Object u(@NotNull yf.f<? super p<? extends E>> fVar) {
        Object u10 = this.f89691e.u(fVar);
        Af.d.l();
        return u10;
    }

    @Override
    @NotNull
    public Object v() {
        return this.f89691e.v();
    }
}
