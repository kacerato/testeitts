package Xf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public final class C3302c<T, K> implements InterfaceC3312m<T> {

    @NotNull
    public final InterfaceC3312m<T> f28745a;

    @NotNull
    public final Mf.l<T, K> f28746b;

    /* JADX WARN: Multi-variable type inference failed */
    public C3302c(@NotNull InterfaceC3312m<? extends T> source, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(source, "source");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        this.f28745a = source;
        this.f28746b = keySelector;
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new C3301b(this.f28745a.iterator(), this.f28746b);
    }
}
