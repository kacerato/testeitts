package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

public final class C15770H implements InterfaceC15773K {

    public final Executor f121117a;

    public final Object f121118b = new Object();

    @Nullable
    public InterfaceC15786g f121119c;

    public C15770H(@NonNull Executor executor, @NonNull InterfaceC15786g interfaceC15786g) {
        this.f121117a = executor;
        this.f121119c = interfaceC15786g;
    }

    @Override
    public final void P1() {
        synchronized (this.f121118b) {
            this.f121119c = null;
        }
    }

    @Override
    public final void d(@NonNull AbstractC15790k abstractC15790k) {
        if (abstractC15790k.v()) {
            synchronized (this.f121118b) {
                try {
                    if (this.f121119c == null) {
                        return;
                    }
                    this.f121117a.execute(new RunnableC15769G(this, abstractC15790k));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
