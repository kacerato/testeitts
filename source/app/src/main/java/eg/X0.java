package eg;

import Xf.InterfaceC3312m;
import eg.K0;
import java.util.concurrent.CancellationException;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.InterfaceC14998e;
import yf.AbstractC16183a;

public final class X0 extends AbstractC16183a implements K0 {

    @NotNull
    public static final X0 f85692b = new X0();

    @NotNull
    public static final String f85693c = "NonCancellable can be used only as an argument for 'withContext', direct usages of its API are prohibited";

    public X0() {
        super(K0.f85619y4);
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    public static void A() {
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    public static void s() {
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    public static void t() {
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    public static void u() {
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    public static void v() {
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    public static void x() {
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    @NotNull
    public CancellationException Q() {
        throw new IllegalStateException("This job is always active");
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    @NotNull
    public InterfaceC13128m0 S(boolean z10, boolean z11, @NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        return Y0.f85696b;
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    public void a(@Nullable CancellationException cancellationException) {
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public boolean b(Throwable th2) {
        return false;
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    @Nullable
    public Object c0(@NotNull yf.f<? super nf.P0> fVar) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public void cancel() {
        a(null);
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    @NotNull
    public InterfaceC13144v f(@NotNull InterfaceC13148x interfaceC13148x) {
        return Y0.f85696b;
    }

    @Override
    @NotNull
    public InterfaceC3312m<K0> getChildren() {
        return Xf.x.l();
    }

    @Override
    @Nullable
    public K0 getParent() {
        return null;
    }

    @Override
    public boolean isActive() {
        return true;
    }

    @Override
    public boolean isCancelled() {
        return false;
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    public boolean start() {
        return false;
    }

    @NotNull
    public String toString() {
        return "NonCancellable";
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = f85693c)
    @NotNull
    public InterfaceC13128m0 w(@NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        return Y0.f85696b;
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    public K0 y(@NotNull K0 k02) {
        return K0.a.i(this, k02);
    }

    @Override
    @NotNull
    public InterfaceC14998e z() {
        throw new UnsupportedOperationException("This job is always active");
    }
}
