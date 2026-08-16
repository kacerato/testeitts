package A2;

import com.google.common.collect.AbstractC12497a1;
import com.google.common.collect.InterfaceC12582w;
import com.google.common.collect.U0;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

@InterfaceC2284t
public final class C2282q<N, E> extends AbstractC2270e<N, E> {
    public C2282q(Map<E, N> map, Map<E, N> map2, int i10) {
        super(map, map2, i10);
    }

    public static <N, E> C2282q<N, E> n() {
        return new C2282q<>(U0.j(2), U0.j(2), 0);
    }

    public static <N, E> C2282q<N, E> o(Map<E, N> map, Map<E, N> map2, int i10) {
        return new C2282q<>(AbstractC12497a1.Q(map), AbstractC12497a1.Q(map2), i10);
    }

    @Override
    public Set<N> b() {
        return Collections.unmodifiableSet(((InterfaceC12582w) this.f207b).values());
    }

    @Override
    public Set<N> c() {
        return Collections.unmodifiableSet(((InterfaceC12582w) this.f206a).values());
    }

    @Override
    public Set<E> l(N n10) {
        return new r(((InterfaceC12582w) this.f207b).A8(), n10);
    }
}
