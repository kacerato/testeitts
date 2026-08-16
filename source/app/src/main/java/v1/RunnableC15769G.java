package v1;

public final class RunnableC15769G implements Runnable {

    public final AbstractC15790k f121115b;

    public final C15770H f121116c;

    public RunnableC15769G(C15770H c15770h, AbstractC15790k abstractC15790k) {
        this.f121116c = c15770h;
        this.f121115b = abstractC15790k;
    }

    @Override
    public final void run() {
        Object obj;
        InterfaceC15786g interfaceC15786g;
        InterfaceC15786g interfaceC15786g2;
        obj = this.f121116c.f121118b;
        synchronized (obj) {
            try {
                C15770H c15770h = this.f121116c;
                interfaceC15786g = c15770h.f121119c;
                if (interfaceC15786g != null) {
                    interfaceC15786g2 = c15770h.f121119c;
                    interfaceC15786g2.b(this.f121115b.r());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
