package A2;

import com.google.common.collect.AbstractC12497a1;
import com.google.common.collect.InterfaceC12582w;
import com.google.common.collect.U0;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

@InterfaceC2284t
public final class i0<N, E> extends AbstractC2274i<N, E> {
    public i0(Map<E, N> map) {
        super(map);
    }

    public static <N, E> i0<N, E> m() {
        return new i0<>(U0.j(2));
    }

    public static <N, E> i0<N, E> n(Map<E, N> map) {
        return new i0<>(AbstractC12497a1.Q(map));
    }

    @Override
    public Set<N> a() {
        return Collections.unmodifiableSet(((InterfaceC12582w) this.f245a).values());
    }

    @Override
    public Set<E> l(N n10) {
        return new r(((InterfaceC12582w) this.f245a).A8(), n10);
    }
}
