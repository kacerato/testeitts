package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

public final class C15772J<TResult, TContinuationResult> implements InterfaceC15786g<TContinuationResult>, InterfaceC15785f, InterfaceC15783d, InterfaceC15773K {

    public final Executor f121122a;

    public final InterfaceC15789j f121123b;

    public final C15779Q f121124c;

    public C15772J(@NonNull Executor executor, @NonNull InterfaceC15789j interfaceC15789j, @NonNull C15779Q c15779q) {
        this.f121122a = executor;
        this.f121123b = interfaceC15789j;
        this.f121124c = c15779q;
    }

    @Override
    public final void P1() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void a() {
        this.f121124c.A();
    }

    @Override
    public final void b(TContinuationResult tcontinuationresult) {
        this.f121124c.z(tcontinuationresult);
    }

    @Override
    public final void c(@NonNull Exception exc) {
        this.f121124c.y(exc);
    }

    @Override
    public final void d(@NonNull AbstractC15790k abstractC15790k) {
        this.f121122a.execute(new RunnableC15771I(this, abstractC15790k));
    }
}
