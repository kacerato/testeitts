package v1;

public final class RunnableC15763A implements Runnable {

    public final C15764B f121101b;

    public RunnableC15763A(C15764B c15764b) {
        this.f121101b = c15764b;
    }

    @Override
    public final void run() {
        Object obj;
        InterfaceC15783d interfaceC15783d;
        InterfaceC15783d interfaceC15783d2;
        obj = this.f121101b.f121103b;
        synchronized (obj) {
            try {
                C15764B c15764b = this.f121101b;
                interfaceC15783d = c15764b.f121104c;
                if (interfaceC15783d != null) {
                    interfaceC15783d2 = c15764b.f121104c;
                    interfaceC15783d2.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
