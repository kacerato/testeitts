package kg;

import kotlinx.coroutines.flow.internal.ChildCancelledException;
import mg.O;
import org.jetbrains.annotations.NotNull;

public final class m<T> extends O<T> {
    public m(@NotNull yf.j jVar, @NotNull yf.f<? super T> fVar) {
        super(jVar, fVar);
    }

    @Override
    public boolean p0(@NotNull Throwable th2) {
        if (th2 instanceof ChildCancelledException) {
            return true;
        }
        return k0(th2);
    }
}
