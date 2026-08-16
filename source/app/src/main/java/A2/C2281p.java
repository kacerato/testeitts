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
public final class C2281p<N, E> extends AbstractC2270e<N, E> {

    @CheckForNull
    @J2.b
    public transient Reference<V1<N>> f270d;

    @CheckForNull
    @J2.b
    public transient Reference<V1<N>> f271e;

    public class a extends O<E> {

        public final Object f272d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.f272d = obj2;
        }

        @Override
        public int size() {
            return C2281p.this.s().Ad(this.f272d);
        }
    }

    public C2281p(Map<E, N> map, Map<E, N> map2, int i10) {
        super(map, map2, i10);
    }

    @CheckForNull
    public static <T> T o(@CheckForNull Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    public static <N, E> C2281p<N, E> p() {
        return new C2281p<>(new HashMap(2, 1.0f), new HashMap(2, 1.0f), 0);
    }

    public static <N, E> C2281p<N, E> q(Map<E, N> map, Map<E, N> map2, int i10) {
        return new C2281p<>(AbstractC12529i1.n(map), AbstractC12529i1.n(map2), i10);
    }

    @Override
    public Set<N> b() {
        return Collections.unmodifiableSet(s().S1());
    }

    @Override
    public Set<N> c() {
        return Collections.unmodifiableSet(r().S1());
    }

    @Override
    public N f(E e10) {
        N n10 = (N) super.f(e10);
        V1 v12 = (V1) o(this.f271e);
        if (v12 != null) {
            w2.H.g0(v12.remove(n10));
        }
        return n10;
    }

    @Override
    public N h(E e10, boolean z10) {
        N n10 = (N) super.h(e10, z10);
        V1 v12 = (V1) o(this.f270d);
        if (v12 != null) {
            w2.H.g0(v12.remove(n10));
        }
        return n10;
    }

    @Override
    public void i(E e10, N n10) {
        super.i(e10, n10);
        V1 v12 = (V1) o(this.f271e);
        if (v12 != null) {
            w2.H.g0(v12.add(n10));
        }
    }

    @Override
    public void j(E e10, N n10, boolean z10) {
        super.j(e10, n10, z10);
        V1 v12 = (V1) o(this.f270d);
        if (v12 != null) {
            w2.H.g0(v12.add(n10));
        }
    }

    @Override
    public Set<E> l(N n10) {
        return new a(this.f207b, n10, n10);
    }

    public final V1<N> r() {
        V1<N> v12 = (V1) o(this.f270d);
        if (v12 != null) {
            return v12;
        }
        X0 o10 = X0.o(this.f206a.values());
        this.f270d = new SoftReference(o10);
        return o10;
    }

    public final V1<N> s() {
        V1<N> v12 = (V1) o(this.f271e);
        if (v12 != null) {
            return v12;
        }
        X0 o10 = X0.o(this.f207b.values());
        this.f271e = new SoftReference(o10);
        return o10;
    }
}
