package A2;

import A2.C2283s;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.E1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@InterfaceC2284t
public final class g0<N, V> implements B<N, V> {

    public final Map<N, V> f233a;

    public static class a {

        public static final int[] f234a;

        static {
            int[] iArr = new int[C2283s.b.values().length];
            f234a = iArr;
            try {
                iArr[C2283s.b.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f234a[C2283s.b.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public g0(Map<N, V> map) {
        this.f233a = (Map) w2.H.E(map);
    }

    public static <N, V> g0<N, V> k(C2283s<N> c2283s) {
        int i10 = a.f234a[c2283s.h().ordinal()];
        if (i10 == 1) {
            return new g0<>(new HashMap(2, 1.0f));
        }
        if (i10 == 2) {
            return new g0<>(new LinkedHashMap(2, 1.0f));
        }
        throw new AssertionError(c2283s.h());
    }

    public static <N, V> g0<N, V> l(Map<N, V> map) {
        return new g0<>(AbstractC12529i1.n(map));
    }

    @Override
    public Set<N> a() {
        return Collections.unmodifiableSet(this.f233a.o());
    }

    @Override
    public Set<N> b() {
        return a();
    }

    @Override
    public Set<N> c() {
        return a();
    }

    @Override
    public void d(N n10, V v10) {
        h(n10, v10);
    }

    @Override
    @CheckForNull
    public V e(N n10) {
        return this.f233a.remove(n10);
    }

    @Override
    public void f(N n10) {
        e(n10);
    }

    @Override
    public Iterator<AbstractC2285u<N>> g(final N n10) {
        return E1.c0(this.f233a.o().iterator(), new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                AbstractC2285u o10;
                o10 = AbstractC2285u.o(Object.this, obj);
                return o10;
            }
        });
    }

    @Override
    @CheckForNull
    public V h(N n10, V v10) {
        return this.f233a.put(n10, v10);
    }

    @Override
    @CheckForNull
    public V value(N n10) {
        return this.f233a.get(n10);
    }
}
