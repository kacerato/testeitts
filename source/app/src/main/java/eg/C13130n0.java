package eg;

import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13130n0 extends AbstractC13129n {

    @NotNull
    public final InterfaceC13128m0 f85745b;

    public C13130n0(@NotNull InterfaceC13128m0 interfaceC13128m0) {
        this.f85745b = interfaceC13128m0;
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        y(th2);
        return nf.P0.f98194a;
    }

    @NotNull
    public String toString() {
        return "DisposeOnCancel[" + ((Object) this.f85745b) + JavaElement.JEM_TYPE_PARAMETER;
    }

    @Override
    public void y(@Nullable Throwable th2) {
        this.f85745b.dispose();
    }
}
