package v1;

public final class RunnableC15767E implements Runnable {

    public final AbstractC15790k f121110b;

    public final C15768F f121111c;

    public RunnableC15767E(C15768F c15768f, AbstractC15790k abstractC15790k) {
        this.f121111c = c15768f;
        this.f121110b = abstractC15790k;
    }

    @Override
    public final void run() {
        Object obj;
        InterfaceC15785f interfaceC15785f;
        InterfaceC15785f interfaceC15785f2;
        obj = this.f121111c.f121113b;
        synchronized (obj) {
            try {
                C15768F c15768f = this.f121111c;
                interfaceC15785f = c15768f.f121114c;
                if (interfaceC15785f != null) {
                    interfaceC15785f2 = c15768f.f121114c;
                    interfaceC15785f2.c((Exception) G0.A.r(this.f121110b.q()));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
