package eg;

import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class H0 extends AbstractC13129n {

    @NotNull
    public final Mf.l<Throwable, nf.P0> f85615b;

    /* JADX WARN: Multi-variable type inference failed */
    public H0(@NotNull Mf.l<? super Throwable, nf.P0> lVar) {
        this.f85615b = lVar;
    }

    @Override
    public nf.P0 invoke(Throwable th2) {
        y(th2);
        return nf.P0.f98194a;
    }

    @NotNull
    public String toString() {
        return "InvokeOnCancel[" + W.a(this.f85615b) + '@' + W.b(this) + JavaElement.JEM_TYPE_PARAMETER;
    }

    @Override
    public void y(@Nullable Throwable th2) {
        this.f85615b.invoke(th2);
    }
}
