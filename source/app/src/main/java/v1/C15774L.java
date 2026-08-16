package v1;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;

public final class C15774L {

    public final Object f121125a = new Object();

    public Queue f121126b;

    public boolean f121127c;

    public final void a(@NonNull InterfaceC15773K interfaceC15773K) {
        synchronized (this.f121125a) {
            try {
                if (this.f121126b == null) {
                    this.f121126b = new ArrayDeque();
                }
                this.f121126b.add(interfaceC15773K);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b(@NonNull AbstractC15790k abstractC15790k) {
        InterfaceC15773K interfaceC15773K;
        synchronized (this.f121125a) {
            if (this.f121126b != null && !this.f121127c) {
                this.f121127c = true;
                while (true) {
                    synchronized (this.f121125a) {
                        try {
                            interfaceC15773K = (InterfaceC15773K) this.f121126b.poll();
                            if (interfaceC15773K == null) {
                                this.f121127c = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    interfaceC15773K.d(abstractC15790k);
                }
            }
        }
    }
}
