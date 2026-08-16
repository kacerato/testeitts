package Xf;

import java.util.HashSet;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14965c;

public final class C3301b<T, K> extends AbstractC14965c<T> {

    @NotNull
    public final Iterator<T> f28742d;

    @NotNull
    public final Mf.l<T, K> f28743e;

    @NotNull
    public final HashSet<K> f28744f;

    /* JADX WARN: Multi-variable type inference failed */
    public C3301b(@NotNull Iterator<? extends T> source, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(source, "source");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        this.f28742d = source;
        this.f28743e = keySelector;
        this.f28744f = new HashSet<>();
    }

    @Override
    public void a() {
        while (this.f28742d.hasNext()) {
            T next = this.f28742d.next();
            if (this.f28744f.add(this.f28743e.invoke(next))) {
                c(next);
                return;
            }
        }
        b();
    }
}
