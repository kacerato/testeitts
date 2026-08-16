package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

public final class C15768F implements InterfaceC15773K {

    public final Executor f121112a;

    public final Object f121113b = new Object();

    @Nullable
    public InterfaceC15785f f121114c;

    public C15768F(@NonNull Executor executor, @NonNull InterfaceC15785f interfaceC15785f) {
        this.f121112a = executor;
        this.f121114c = interfaceC15785f;
    }

    @Override
    public final void P1() {
        synchronized (this.f121113b) {
            this.f121114c = null;
        }
    }

    @Override
    public final void d(@NonNull AbstractC15790k abstractC15790k) {
        if (abstractC15790k.v() || abstractC15790k.t()) {
            return;
        }
        synchronized (this.f121113b) {
            try {
                if (this.f121114c == null) {
                    return;
                }
                this.f121112a.execute(new RunnableC15767E(this, abstractC15790k));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
