package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

public final class z<TResult, TContinuationResult> implements InterfaceC15786g<TContinuationResult>, InterfaceC15785f, InterfaceC15783d, InterfaceC15773K {

    public final Executor f121167a;

    public final InterfaceC15782c f121168b;

    public final C15779Q f121169c;

    public z(@NonNull Executor executor, @NonNull InterfaceC15782c interfaceC15782c, @NonNull C15779Q c15779q) {
        this.f121167a = executor;
        this.f121168b = interfaceC15782c;
        this.f121169c = c15779q;
    }

    @Override
    public final void P1() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void a() {
        this.f121169c.A();
    }

    @Override
    public final void b(TContinuationResult tcontinuationresult) {
        this.f121169c.z(tcontinuationresult);
    }

    @Override
    public final void c(@NonNull Exception exc) {
        this.f121169c.y(exc);
    }

    @Override
    public final void d(@NonNull AbstractC15790k abstractC15790k) {
        this.f121167a.execute(new y(this, abstractC15790k));
    }
}
