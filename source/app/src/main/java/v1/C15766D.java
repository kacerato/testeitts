package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

public final class C15766D implements InterfaceC15773K {

    public final Executor f121107a;

    public final Object f121108b = new Object();

    @Nullable
    public InterfaceC15784e f121109c;

    public C15766D(@NonNull Executor executor, @NonNull InterfaceC15784e interfaceC15784e) {
        this.f121107a = executor;
        this.f121109c = interfaceC15784e;
    }

    @Override
    public final void P1() {
        synchronized (this.f121108b) {
            this.f121109c = null;
        }
    }

    @Override
    public final void d(@NonNull AbstractC15790k abstractC15790k) {
        synchronized (this.f121108b) {
            try {
                if (this.f121109c == null) {
                    return;
                }
                this.f121107a.execute(new RunnableC15765C(this, abstractC15790k));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
