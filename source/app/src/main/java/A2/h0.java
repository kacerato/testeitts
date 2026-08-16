package A2;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.V1;
import com.google.common.collect.X0;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public final class h0<N, E> extends AbstractC2274i<N, E> {

    @CheckForNull
    @J2.b
    public transient Reference<V1<N>> f242b;

    public class a extends O<E> {

        public final Object f243d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.f243d = obj2;
        }

        @Override
        public int size() {
            return h0.this.n().Ad(this.f243d);
        }
    }

    public h0(Map<E, N> map) {
        super(map);
    }

    @CheckForNull
    private static <T> T o(@CheckForNull Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public static <N, E> h0<N, E> p() {
        return new h0<>(new HashMap(2, 1.0f));
    }

    public static <N, E> h0<N, E> q(Map<E, N> map) {
        return new h0<>(AbstractC12529i1.n(map));
    }

    @Override
    public Set<N> a() {
        return Collections.unmodifiableSet(n().S1());
    }

    @Override
    public N f(E e10) {
        N n10 = (N) super.f(e10);
        V1 v12 = (V1) o(this.f242b);
        if (v12 != null) {
            w2.H.g0(v12.remove(n10));
        }
        return n10;
    }

    @Override
    @CheckForNull
    public N h(E e10, boolean z10) {
        if (z10) {
            return null;
        }
        return f(e10);
    }

    @Override
    public void i(E e10, N n10) {
        super.i(e10, n10);
        V1 v12 = (V1) o(this.f242b);
        if (v12 != null) {
            w2.H.g0(v12.add(n10));
        }
    }

    @Override
    public void j(E e10, N n10, boolean z10) {
        if (z10) {
            return;
        }
        i(e10, n10);
    }

    @Override
    public Set<E> l(N n10) {
        return new a(this.f245a, n10, n10);
    }

    public final V1<N> n() {
        V1<N> v12 = (V1) o(this.f242b);
        if (v12 != null) {
            return v12;
        }
        X0 o10 = X0.o(this.f245a.values());
        this.f242b = new SoftReference(o10);
        return o10;
    }
}
