package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13132o0 extends Q0 {

    @NotNull
    public final InterfaceC13128m0 f85748f;

    public C13132o0(@NotNull InterfaceC13128m0 interfaceC13128m0) {
        this.f85748f = interfaceC13128m0;
    }

    @Override
    public void Y(@Nullable Throwable th2) {
        this.f85748f.dispose();
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        Y(th2);
        return nf.P0.f98194a;
    }
}
