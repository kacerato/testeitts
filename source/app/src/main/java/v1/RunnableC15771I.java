package v1;

import com.google.android.gms.tasks.RuntimeExecutionException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

public final class RunnableC15771I implements Runnable {

    public final AbstractC15790k f121120b;

    public final C15772J f121121c;

    public RunnableC15771I(C15772J c15772j, AbstractC15790k abstractC15790k) {
        this.f121121c = c15772j;
        this.f121120b = abstractC15790k;
    }

    @Override
    public final void run() {
        InterfaceC15789j interfaceC15789j;
        try {
            interfaceC15789j = this.f121121c.f121123b;
            AbstractC15790k a10 = interfaceC15789j.a(this.f121120b.r());
            if (a10 == null) {
                this.f121121c.c(new NullPointerException("Continuation returned null"));
                return;
            }
            C15772J c15772j = this.f121121c;
            Executor executor = C15792m.f121146b;
            a10.k(executor, c15772j);
            a10.h(executor, this.f121121c);
            a10.b(executor, this.f121121c);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                this.f121121c.c((Exception) e10.getCause());
            } else {
                this.f121121c.c(e10);
            }
        } catch (CancellationException unused) {
            this.f121121c.a();
        } catch (Exception e11) {
            this.f121121c.c(e11);
        }
    }
}
