package mg;

import org.jetbrains.annotations.NotNull;

public final class C14247h implements eg.S {

    @NotNull
    public final yf.j f97072b;

    public C14247h(@NotNull yf.j jVar) {
        this.f97072b = jVar;
    }

    @Override
    @NotNull
    public yf.j getCoroutineContext() {
        return this.f97072b;
    }

    @NotNull
    public String toString() {
        return "CoroutineScope(coroutineContext=" + ((Object) getCoroutineContext()) + ')';
    }
}
