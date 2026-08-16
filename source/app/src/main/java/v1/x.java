package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

public final class x implements InterfaceC15773K {

    public final Executor f121162a;

    public final InterfaceC15782c f121163b;

    public final C15779Q f121164c;

    public x(@NonNull Executor executor, @NonNull InterfaceC15782c interfaceC15782c, @NonNull C15779Q c15779q) {
        this.f121162a = executor;
        this.f121163b = interfaceC15782c;
        this.f121164c = c15779q;
    }

    @Override
    public final void P1() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void d(@NonNull AbstractC15790k abstractC15790k) {
        this.f121162a.execute(new w(this, abstractC15790k));
    }
}
