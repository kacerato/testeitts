package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
public abstract class AbstractC13102a<T> extends R0 implements K0, yf.f<T>, S {

    @NotNull
    public final yf.j f85697d;

    public AbstractC13102a(@NotNull yf.j jVar, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            M0((K0) jVar.get(K0.f85619y4));
        }
        this.f85697d = jVar.plus(this);
    }

    public static void y1() {
    }

    public void A1(T t10) {
    }

    public final <R> void B1(@NotNull U u10, R r10, @NotNull Mf.p<? super R, ? super yf.f<? super T>, ? extends Object> pVar) {
        u10.c(pVar, r10, this);
    }

    @Override
    public final void L0(@NotNull Throwable th2) {
        O.b(this.f85697d, th2);
    }

    @Override
    @NotNull
    public String Y0() {
        String b10 = C13099L.b(this.f85697d);
        if (b10 == null) {
            return super.Y0();
        }
        return '\"' + b10 + "\":" + super.Y0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void g1(@Nullable Object obj) {
        if (!(obj instanceof C13091D)) {
            A1(obj);
        } else {
            C13091D c13091d = (C13091D) obj;
            z1(c13091d.f85604a, c13091d.a());
        }
    }

    @Override
    @NotNull
    public final yf.j getContext() {
        return this.f85697d;
    }

    @Override
    @NotNull
    public yf.j getCoroutineContext() {
        return this.f85697d;
    }

    @Override
    public boolean isActive() {
        return super.isActive();
    }

    @Override
    @NotNull
    public String o0() {
        return W.a(this) + " was cancelled";
    }

    @Override
    public final void resumeWith(@NotNull Object obj) {
        Object W02 = W0(C13096I.d(obj, null, 1, null));
        if (W02 == S0.f85662b) {
            return;
        }
        x1(W02);
    }

    public void x1(@Nullable Object obj) {
        g0(obj);
    }

    public void z1(@NotNull Throwable th2, boolean z10) {
    }
}
