package eg;

import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class Q0 extends AbstractC13093F implements InterfaceC13128m0, D0 {

    public R0 f85635e;

    @NotNull
    public final R0 Z() {
        R0 r02 = this.f85635e;
        if (r02 != null) {
            return r02;
        }
        kotlin.jvm.internal.M.S("job");
        return null;
    }

    public final void a0(@NotNull R0 r02) {
        this.f85635e = r02;
    }

    @Override
    @Nullable
    public W0 d() {
        return null;
    }

    @Override
    public void dispose() {
        Z().l1(this);
    }

    @Override
    public boolean isActive() {
        return true;
    }

    @Override
    @NotNull
    public String toString() {
        return W.a(this) + '@' + W.b(this) + "[job@" + W.b(Z()) + JavaElement.JEM_TYPE_PARAMETER;
    }
}
