package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

public final class C15764B implements InterfaceC15773K {

    public final Executor f121102a;

    public final Object f121103b = new Object();

    @Nullable
    public InterfaceC15783d f121104c;

    public C15764B(@NonNull Executor executor, @NonNull InterfaceC15783d interfaceC15783d) {
        this.f121102a = executor;
        this.f121104c = interfaceC15783d;
    }

    @Override
    public final void P1() {
        synchronized (this.f121103b) {
            this.f121104c = null;
        }
    }

    @Override
    public final void d(@NonNull AbstractC15790k abstractC15790k) {
        if (abstractC15790k.t()) {
            synchronized (this.f121103b) {
                try {
                    if (this.f121104c == null) {
                        return;
                    }
                    this.f121102a.execute(new RunnableC15763A(this));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
