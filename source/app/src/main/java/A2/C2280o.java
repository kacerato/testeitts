package A2;

import A2.C2280o;
import A2.C2283s;
import com.google.common.collect.AbstractC12503c;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.E1;
import com.google.common.collect.e3;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@InterfaceC2284t
public final class C2280o<N, V> implements B<N, V> {

    public static final Object f251e = new Object();

    public final Map<N, Object> f252a;

    @CheckForNull
    public final List<f<N>> f253b;

    public int f254c;

    public int f255d;

    public class a extends AbstractSet<N> {

        public class C0007a extends AbstractC12503c<N> {

            public final Iterator f257d;

            public final Set f258e;

            public C0007a(a aVar, Iterator it, Set set) {
                this.f257d = it;
                this.f258e = set;
            }

            @Override
            @CheckForNull
            public N a() {
                while (this.f257d.hasNext()) {
                    f fVar = (f) this.f257d.next();
                    if (this.f258e.add(fVar.f268a)) {
                        return fVar.f268a;
                    }
                }
                return b();
            }
        }

        public a() {
        }

        @Override
        public e3<N> iterator() {
            return new C0007a(this, C2280o.this.f253b.iterator(), new HashSet());
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return C2280o.this.f252a.containsKey(obj);
        }

        @Override
        public int size() {
            return C2280o.this.f252a.size();
        }
    }

    public class b extends AbstractSet<N> {

        public class a extends AbstractC12503c<N> {

            public final Iterator f260d;

            public a(b bVar, Iterator it) {
                this.f260d = it;
            }

            @Override
            @CheckForNull
            public N a() {
                while (this.f260d.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f260d.next();
                    if (C2280o.r(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return b();
            }
        }

        public class C0008b extends AbstractC12503c<N> {

            public final Iterator f261d;

            public C0008b(b bVar, Iterator it) {
                this.f261d = it;
            }

            @Override
            @CheckForNull
            public N a() {
                while (this.f261d.hasNext()) {
                    f fVar = (f) this.f261d.next();
                    if (fVar instanceof f.a) {
                        return fVar.f268a;
                    }
                }
                return b();
            }
        }

        public b() {
        }

        @Override
        public e3<N> iterator() {
            return C2280o.this.f253b == null ? new a(this, C2280o.this.f252a.entrySet().iterator()) : new C0008b(this, C2280o.this.f253b.iterator());
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return C2280o.r(C2280o.this.f252a.get(obj));
        }

        @Override
        public int size() {
            return C2280o.this.f254c;
        }
    }

    public class c extends AbstractSet<N> {

        public class a extends AbstractC12503c<N> {

            public final Iterator f263d;

            public a(c cVar, Iterator it) {
                this.f263d = it;
            }

            @Override
            @CheckForNull
            public N a() {
                while (this.f263d.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f263d.next();
                    if (C2280o.s(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return b();
            }
        }

        public class b extends AbstractC12503c<N> {

            public final Iterator f264d;

            public b(c cVar, Iterator it) {
                this.f264d = it;
            }

            @Override
            @CheckForNull
            public N a() {
                while (this.f264d.hasNext()) {
                    f fVar = (f) this.f264d.next();
                    if (fVar instanceof f.b) {
                        return fVar.f268a;
                    }
                }
                return b();
            }
        }

        public c() {
        }

        @Override
        public e3<N> iterator() {
            return C2280o.this.f253b == null ? new a(this, C2280o.this.f252a.entrySet().iterator()) : new b(this, C2280o.this.f253b.iterator());
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return C2280o.s(C2280o.this.f252a.get(obj));
        }

        @Override
        public int size() {
            return C2280o.this.f255d;
        }
    }

    public class d extends AbstractC12503c<AbstractC2285u<N>> {

        public final Iterator f265d;

        public final AtomicBoolean f266e;

        public d(C2280o c2280o, Iterator it, AtomicBoolean atomicBoolean) {
            this.f265d = it;
            this.f266e = atomicBoolean;
        }

        @Override
        @CheckForNull
        public AbstractC2285u<N> a() {
            while (this.f265d.hasNext()) {
                AbstractC2285u<N> abstractC2285u = (AbstractC2285u) this.f265d.next();
                if (!abstractC2285u.h().equals(abstractC2285u.i()) || !this.f266e.getAndSet(true)) {
                    return abstractC2285u;
                }
            }
            return b();
        }
    }

    public static class e {

        public static final int[] f267a;

        static {
            int[] iArr = new int[C2283s.b.values().length];
            f267a = iArr;
            try {
                iArr[C2283s.b.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f267a[C2283s.b.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class f<N> {

        public final N f268a;

        public static final class a<N> extends f<N> {
            public a(N n10) {
                super(n10);
            }

            public boolean equals(@CheckForNull Object obj) {
                if (obj instanceof a) {
                    return this.f268a.equals(((a) obj).f268a);
                }
                return false;
            }

            public int hashCode() {
                return a.class.hashCode() + this.f268a.hashCode();
            }
        }

        public static final class b<N> extends f<N> {
            public b(N n10) {
                super(n10);
            }

            public boolean equals(@CheckForNull Object obj) {
                if (obj instanceof b) {
                    return this.f268a.equals(((b) obj).f268a);
                }
                return false;
            }

            public int hashCode() {
                return b.class.hashCode() + this.f268a.hashCode();
            }
        }

        public f(N n10) {
            this.f268a = (N) w2.H.E(n10);
        }
    }

    public static final class g {

        public final Object f269a;

        public g(Object obj) {
            this.f269a = obj;
        }
    }

    public C2280o(Map<N, Object> map, @CheckForNull List<f<N>> list, int i10, int i11) {
        this.f252a = (Map) w2.H.E(map);
        this.f253b = list;
        this.f254c = D.b(i10);
        this.f255d = D.b(i11);
        w2.H.g0(i10 <= map.size() && i11 <= map.size());
    }

    public static boolean r(@CheckForNull Object obj) {
        return obj == f251e || (obj instanceof g);
    }

    public static boolean s(@CheckForNull Object obj) {
        return (obj == f251e || obj == null) ? false : true;
    }

    public static AbstractC2285u t(Object obj, Object obj2) {
        return AbstractC2285u.l(obj2, obj);
    }

    public static AbstractC2285u v(Object obj, f fVar) {
        return fVar instanceof f.b ? AbstractC2285u.l(obj, fVar.f268a) : AbstractC2285u.l(fVar.f268a, obj);
    }

    public static <N, V> C2280o<N, V> w(C2283s<N> c2283s) {
        ArrayList arrayList;
        int i10 = e.f267a[c2283s.h().ordinal()];
        if (i10 == 1) {
            arrayList = null;
        } else {
            if (i10 != 2) {
                throw new AssertionError(c2283s.h());
            }
            arrayList = new ArrayList();
        }
        return new C2280o<>(new HashMap(4, 1.0f), arrayList, 0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N, V> C2280o<N, V> x(N n10, Iterable<AbstractC2285u<N>> iterable, InterfaceC15902t<N, V> interfaceC15902t) {
        w2.H.E(n10);
        w2.H.E(interfaceC15902t);
        HashMap hashMap = new HashMap();
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        int i10 = 0;
        int i11 = 0;
        for (AbstractC2285u<N> abstractC2285u : iterable) {
            if (abstractC2285u.h().equals(n10) && abstractC2285u.i().equals(n10)) {
                hashMap.put(n10, new g(interfaceC15902t.apply(n10)));
                m10.a(new f.a(n10));
                m10.a(new f.b(n10));
                i10++;
            } else if (abstractC2285u.i().equals(n10)) {
                N h10 = abstractC2285u.h();
                Object put = hashMap.put(h10, f251e);
                if (put != null) {
                    hashMap.put(h10, new g(put));
                }
                m10.a(new f.a(h10));
                i10++;
            } else {
                w2.H.d(abstractC2285u.h().equals(n10));
                N i12 = abstractC2285u.i();
                V apply = interfaceC15902t.apply(i12);
                Object put2 = hashMap.put(i12, apply);
                if (put2 != null) {
                    w2.H.d(put2 == f251e);
                    hashMap.put(i12, new g(apply));
                }
                m10.a(new f.b(i12));
            }
            i11++;
        }
        return new C2280o<>(hashMap, m10.e(), i10, i11);
    }

    @Override
    public Set<N> a() {
        return this.f253b == null ? Collections.unmodifiableSet(this.f252a.o()) : new a();
    }

    @Override
    public Set<N> b() {
        return new c();
    }

    @Override
    public Set<N> c() {
        return new b();
    }

    @Override
    public void d(N n10, V v10) {
        Map<N, Object> map = this.f252a;
        Object obj = f251e;
        Object put = map.put(n10, obj);
        if (put != null) {
            if (put instanceof g) {
                this.f252a.put(n10, put);
                return;
            } else if (put == obj) {
                return;
            } else {
                this.f252a.put(n10, new g(put));
            }
        }
        int i10 = this.f254c + 1;
        this.f254c = i10;
        D.d(i10);
        List<f<N>> list = this.f253b;
        if (list != null) {
            list.add(new f.a(n10));
        }
    }

    @Override
    @CheckForNull
    public V e(Object obj) {
        Object obj2;
        w2.H.E(obj);
        Object obj3 = this.f252a.get(obj);
        if (obj3 == null || obj3 == (obj2 = f251e)) {
            obj3 = null;
        } else if (obj3 instanceof g) {
            this.f252a.put(obj, obj2);
            obj3 = ((g) obj3).f269a;
        } else {
            this.f252a.remove(obj);
        }
        if (obj3 != null) {
            int i10 = this.f255d - 1;
            this.f255d = i10;
            D.b(i10);
            List<f<N>> list = this.f253b;
            if (list != null) {
                list.remove(new f.b(obj));
            }
        }
        if (obj3 == null) {
            return null;
        }
        return (V) obj3;
    }

    @Override
    public void f(N n10) {
        w2.H.E(n10);
        Object obj = this.f252a.get(n10);
        if (obj == f251e) {
            this.f252a.remove(n10);
        } else if (!(obj instanceof g)) {
            return;
        } else {
            this.f252a.put(n10, ((g) obj).f269a);
        }
        int i10 = this.f254c - 1;
        this.f254c = i10;
        D.b(i10);
        List<f<N>> list = this.f253b;
        if (list != null) {
            list.remove(new f.a(n10));
        }
    }

    @Override
    public Iterator<AbstractC2285u<N>> g(final N n10) {
        w2.H.E(n10);
        List<f<N>> list = this.f253b;
        return new d(this, list == null ? E1.j(E1.c0(c().iterator(), new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                AbstractC2285u t10;
                t10 = C2280o.t(Object.this, obj);
                return t10;
            }
        }), E1.c0(b().iterator(), new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                AbstractC2285u l10;
                l10 = AbstractC2285u.l(Object.this, obj);
                return l10;
            }
        })) : E1.c0(list.iterator(), new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                AbstractC2285u v10;
                v10 = C2280o.v(Object.this, (C2280o.f) obj);
                return v10;
            }
        }), new AtomicBoolean(false));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0049  */
    @Override
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public V h(N n10, V v10) {
        Object put = this.f252a.put(n10, v10);
        if (put != null) {
            if (put instanceof g) {
                this.f252a.put(n10, new g(v10));
                put = ((g) put).f269a;
            } else if (put == f251e) {
                this.f252a.put(n10, new g(v10));
            }
            if (put == null) {
                int i10 = this.f255d + 1;
                this.f255d = i10;
                D.d(i10);
                List<f<N>> list = this.f253b;
                if (list != null) {
                    list.add(new f.b(n10));
                }
            }
            if (put != null) {
                return null;
            }
            return (V) put;
        }
        put = null;
        if (put == null) {
        }
        if (put != null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @CheckForNull
    public V value(N n10) {
        w2.H.E(n10);
        V v10 = (V) this.f252a.get(n10);
        if (v10 == f251e) {
            return null;
        }
        return v10 instanceof g ? (V) ((g) v10).f269a : v10;
    }
}
