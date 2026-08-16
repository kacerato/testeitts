package jg;

import gg.InterfaceC13358B;
import gg.InterfaceC13360D;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kg.AbstractC13982d;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/ChannelAsFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"})
public final class C13838e<T> extends AbstractC13982d<T> {

    @NotNull
    public static final AtomicIntegerFieldUpdater f93304g = AtomicIntegerFieldUpdater.newUpdater(C13838e.class, "consumed");

    @Lf.x
    private volatile int consumed;

    @NotNull
    public final InterfaceC13360D<T> f93305e;

    public final boolean f93306f;

    public C13838e(InterfaceC13360D interfaceC13360D, boolean z10, yf.j jVar, int i10, gg.i iVar, int i11, C14026x c14026x) {
        this(interfaceC13360D, z10, (i11 & 4) != 0 ? yf.l.f130251b : jVar, (i11 & 8) != 0 ? -3 : i10, (i11 & 16) != 0 ? gg.i.SUSPEND : iVar);
    }

    @Override
    @Nullable
    public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
        if (this.f95084c != -3) {
            Object a10 = super.a(interfaceC13843j, fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
        m();
        Object e10 = C13846m.e(interfaceC13843j, this.f93305e, this.f93306f, fVar);
        return e10 == Af.d.l() ? e10 : P0.f98194a;
    }

    @Override
    @NotNull
    public String d() {
        return "channel=" + ((Object) this.f93305e);
    }

    @Override
    @Nullable
    public Object f(@NotNull InterfaceC13358B<? super T> interfaceC13358B, @NotNull yf.f<? super P0> fVar) {
        Object e10 = C13846m.e(new kg.w(interfaceC13358B), this.f93305e, this.f93306f, fVar);
        return e10 == Af.d.l() ? e10 : P0.f98194a;
    }

    @Override
    @NotNull
    public AbstractC13982d<T> g(@NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        return new C13838e(this.f93305e, this.f93306f, jVar, i10, iVar);
    }

    @Override
    @NotNull
    public InterfaceC13842i<T> i() {
        return new C13838e(this.f93305e, this.f93306f, null, 0, null, 28, null);
    }

    @Override
    @NotNull
    public InterfaceC13360D<T> l(@NotNull eg.S s10) {
        m();
        return this.f95084c == -3 ? this.f93305e : super.l(s10);
    }

    public final void m() {
        if (this.f93306f && f93304g.getAndSet(this, 1) != 0) {
            throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13838e(@NotNull InterfaceC13360D<? extends T> interfaceC13360D, boolean z10, @NotNull yf.j jVar, int i10, @NotNull gg.i iVar) {
        super(jVar, i10, iVar);
        this.f93305e = interfaceC13360D;
        this.f93306f = z10;
        this.consumed = 0;
    }
}
