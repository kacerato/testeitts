package Xf;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import org.jetbrains.annotations.NotNull;

public final class C3300a<T> implements InterfaceC3312m<T> {

    @NotNull
    public final AtomicReference<InterfaceC3312m<T>> f28741a;

    public C3300a(@NotNull InterfaceC3312m<? extends T> sequence) {
        kotlin.jvm.internal.M.p(sequence, "sequence");
        this.f28741a = new AtomicReference<>(sequence);
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        InterfaceC3312m<T> andSet = this.f28741a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
