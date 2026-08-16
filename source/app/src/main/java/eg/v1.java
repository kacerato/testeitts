package eg;

import org.jetbrains.annotations.NotNull;

public final class v1 extends AbstractC13100M {

    @NotNull
    public static final v1 f85797b = new v1();

    @Override
    public void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        z1 z1Var = (z1) jVar.get(z1.f85804c);
        if (z1Var == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        z1Var.f85805b = true;
    }

    @Override
    public boolean isDispatchNeeded(@NotNull yf.j jVar) {
        return false;
    }

    @Override
    @InterfaceC13153z0
    @NotNull
    public AbstractC13100M limitedParallelism(int i10) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override
    @NotNull
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
