package v1;

public final class RunnableC15765C implements Runnable {

    public final AbstractC15790k f121105b;

    public final C15766D f121106c;

    public RunnableC15765C(C15766D c15766d, AbstractC15790k abstractC15790k) {
        this.f121106c = c15766d;
        this.f121105b = abstractC15790k;
    }

    @Override
    public final void run() {
        Object obj;
        InterfaceC15784e interfaceC15784e;
        InterfaceC15784e interfaceC15784e2;
        obj = this.f121106c.f121108b;
        synchronized (obj) {
            try {
                C15766D c15766d = this.f121106c;
                interfaceC15784e = c15766d.f121109c;
                if (interfaceC15784e != null) {
                    interfaceC15784e2 = c15766d.f121109c;
                    interfaceC15784e2.a(this.f121105b);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
