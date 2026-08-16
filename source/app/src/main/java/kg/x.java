package kg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class x<T> implements yf.f<T>, Bf.e {

    @NotNull
    public final yf.f<T> f95221b;

    @NotNull
    public final yf.j f95222c;

    /* JADX WARN: Multi-variable type inference failed */
    public x(@NotNull yf.f<? super T> fVar, @NotNull yf.j jVar) {
        this.f95221b = fVar;
        this.f95222c = jVar;
    }

    @Override
    @Nullable
    public Bf.e getCallerFrame() {
        yf.f<T> fVar = this.f95221b;
        if (fVar instanceof Bf.e) {
            return (Bf.e) fVar;
        }
        return null;
    }

    @Override
    @NotNull
    public yf.j getContext() {
        return this.f95222c;
    }

    @Override
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override
    public void resumeWith(@NotNull Object obj) {
        this.f95221b.resumeWith(obj);
    }
}
