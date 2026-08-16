package v1;

import com.google.android.gms.tasks.RuntimeExecutionException;
import java.util.concurrent.Executor;

public final class y implements Runnable {

    public final AbstractC15790k f121165b;

    public final z f121166c;

    public y(z zVar, AbstractC15790k abstractC15790k) {
        this.f121166c = zVar;
        this.f121165b = abstractC15790k;
    }

    @Override
    public final void run() {
        C15779Q c15779q;
        C15779Q c15779q2;
        C15779Q c15779q3;
        InterfaceC15782c interfaceC15782c;
        try {
            interfaceC15782c = this.f121166c.f121168b;
            AbstractC15790k abstractC15790k = (AbstractC15790k) interfaceC15782c.a(this.f121165b);
            if (abstractC15790k == null) {
                this.f121166c.c(new NullPointerException("Continuation returned null"));
                return;
            }
            z zVar = this.f121166c;
            Executor executor = C15792m.f121146b;
            abstractC15790k.k(executor, zVar);
            abstractC15790k.h(executor, this.f121166c);
            abstractC15790k.b(executor, this.f121166c);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                c15779q3 = this.f121166c.f121169c;
                c15779q3.y((Exception) e10.getCause());
            } else {
                c15779q2 = this.f121166c.f121169c;
                c15779q2.y(e10);
            }
        } catch (Exception e11) {
            c15779q = this.f121166c.f121169c;
            c15779q.y(e11);
        }
    }
}
