package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@v2.c
@X
@InterfaceC15800a
public class c3<C extends Comparable<?>> extends AbstractC12535k<C> implements Serializable {

    @v2.d
    public final NavigableMap<Q<C>, C12534j2<C>> f66482b;

    @CheckForNull
    public transient Set<C12534j2<C>> f66483c;

    @CheckForNull
    public transient Set<C12534j2<C>> f66484d;

    @CheckForNull
    public transient InterfaceC12546m2<C> f66485e;

    public final class b extends AbstractC12563r0<C12534j2<C>> implements Set<C12534j2<C>> {

        public final Collection<C12534j2<C>> f66486b;

        public b(c3 c3Var, Collection<C12534j2<C>> collection) {
            this.f66486b = collection;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return D2.g(this, obj);
        }

        @Override
        public int hashCode() {
            return D2.k(this);
        }

        @Override
        public Collection<C12534j2<C>> k0() {
            return this.f66486b;
        }
    }

    public final class c extends c3<C> {
        public c() {
            super(new d(c3.this.f66482b));
        }

        @Override
        public void a(C12534j2<C> c12534j2) {
            c3.this.o(c12534j2);
        }

        @Override
        public boolean contains(C c10) {
            return !c3.this.contains(c10);
        }

        @Override
        public InterfaceC12546m2<C> d() {
            return c3.this;
        }

        @Override
        public void o(C12534j2<C> c12534j2) {
            c3.this.a(c12534j2);
        }
    }

    public static final class d<C extends Comparable<?>> extends AbstractC12531j<Q<C>, C12534j2<C>> {

        public final NavigableMap<Q<C>, C12534j2<C>> f66488b;

        public final NavigableMap<Q<C>, C12534j2<C>> f66489c;

        public final C12534j2<Q<C>> f66490d;

        public class a extends AbstractC12503c<Map.Entry<Q<C>, C12534j2<C>>> {

            public Q<C> f66491d;

            public final Q f66492e;

            public final InterfaceC12522g2 f66493f;

            public a(Q q10, InterfaceC12522g2 interfaceC12522g2) {
                this.f66492e = q10;
                this.f66493f = interfaceC12522g2;
                this.f66491d = q10;
            }

            @Override
            @CheckForNull
            public Map.Entry<Q<C>, C12534j2<C>> a() {
                C12534j2 k10;
                if (d.this.f66490d.f66694c.m(this.f66491d) || this.f66491d == Q.a()) {
                    return (Map.Entry) b();
                }
                if (this.f66493f.hasNext()) {
                    C12534j2 c12534j2 = (C12534j2) this.f66493f.next();
                    k10 = C12534j2.k(this.f66491d, c12534j2.f66693b);
                    this.f66491d = c12534j2.f66694c;
                } else {
                    k10 = C12534j2.k(this.f66491d, Q.a());
                    this.f66491d = Q.a();
                }
                return Q1.O(k10.f66693b, k10);
            }
        }

        public class b extends AbstractC12503c<Map.Entry<Q<C>, C12534j2<C>>> {

            public Q<C> f66495d;

            public final Q f66496e;

            public final InterfaceC12522g2 f66497f;

            public b(Q q10, InterfaceC12522g2 interfaceC12522g2) {
                this.f66496e = q10;
                this.f66497f = interfaceC12522g2;
                this.f66495d = q10;
            }

            @Override
            @CheckForNull
            public Map.Entry<Q<C>, C12534j2<C>> a() {
                if (this.f66495d == Q.c()) {
                    return (Map.Entry) b();
                }
                if (this.f66497f.hasNext()) {
                    C12534j2 c12534j2 = (C12534j2) this.f66497f.next();
                    C12534j2 k10 = C12534j2.k(c12534j2.f66694c, this.f66495d);
                    this.f66495d = c12534j2.f66693b;
                    if (d.this.f66490d.f66693b.m(k10.f66693b)) {
                        return Q1.O(k10.f66693b, k10);
                    }
                } else if (d.this.f66490d.f66693b.m(Q.c())) {
                    C12534j2 k11 = C12534j2.k(Q.c(), this.f66495d);
                    this.f66495d = Q.c();
                    return Q1.O(Q.c(), k11);
                }
                return (Map.Entry) b();
            }
        }

        public d(NavigableMap<Q<C>, C12534j2<C>> navigableMap) {
            this(navigableMap, C12534j2.a());
        }

        @Override
        public Comparator<? super Q<C>> comparator() {
            return Ordering.A();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override
        public Iterator<Map.Entry<Q<C>, C12534j2<C>>> e() {
            Collection<C12534j2<C>> values;
            Q q10;
            if (this.f66490d.q()) {
                values = this.f66489c.tailMap(this.f66490d.z(), this.f66490d.y() == EnumC12586x.CLOSED).values();
            } else {
                values = this.f66489c.values();
            }
            InterfaceC12522g2 T10 = E1.T(values.iterator());
            if (this.f66490d.i(Q.c()) && (!T10.hasNext() || ((C12534j2) T10.peek()).f66693b != Q.c())) {
                q10 = Q.c();
            } else {
                if (!T10.hasNext()) {
                    return E1.u();
                }
                q10 = ((C12534j2) T10.next()).f66694c;
            }
            return new a(q10, T10);
        }

        @Override
        public Iterator<Map.Entry<Q<C>, C12534j2<C>>> i() {
            Q<C> higherKey;
            InterfaceC12522g2 T10 = E1.T(this.f66489c.headMap(this.f66490d.r() ? this.f66490d.L() : Q.a(), this.f66490d.r() && this.f66490d.K() == EnumC12586x.CLOSED).descendingMap().values().iterator());
            if (T10.hasNext()) {
                higherKey = ((C12534j2) T10.peek()).f66694c == Q.a() ? ((C12534j2) T10.next()).f66693b : this.f66488b.higherKey(((C12534j2) T10.peek()).f66694c);
            } else {
                if (!this.f66490d.i(Q.c()) || this.f66488b.containsKey(Q.c())) {
                    return E1.u();
                }
                higherKey = this.f66488b.higherKey(Q.c());
            }
            return new b((Q) w2.z.a(higherKey, Q.a()), T10);
        }

        @Override
        @CheckForNull
        public C12534j2<C> get(@CheckForNull Object obj) {
            if (obj instanceof Q) {
                try {
                    Q<C> q10 = (Q) obj;
                    Map.Entry<Q<C>, C12534j2<C>> firstEntry = tailMap(q10, true).firstEntry();
                    if (firstEntry != null && firstEntry.getKey().equals(q10)) {
                        return firstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> headMap(Q<C> q10, boolean z10) {
            return n(C12534j2.I(q10, EnumC12586x.b(z10)));
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> subMap(Q<C> q10, boolean z10, Q<C> q11, boolean z11) {
            return n(C12534j2.C(q10, EnumC12586x.b(z10), q11, EnumC12586x.b(z11)));
        }

        public final NavigableMap<Q<C>, C12534j2<C>> n(C12534j2<Q<C>> c12534j2) {
            if (!this.f66490d.u(c12534j2)) {
                return C12572t1.x0();
            }
            return new d(this.f66488b, c12534j2.s(this.f66490d));
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> tailMap(Q<C> q10, boolean z10) {
            return n(C12534j2.l(q10, EnumC12586x.b(z10)));
        }

        @Override
        public int size() {
            return E1.Z(e());
        }

        public d(NavigableMap<Q<C>, C12534j2<C>> navigableMap, C12534j2<Q<C>> c12534j2) {
            this.f66488b = navigableMap;
            this.f66489c = new e(navigableMap);
            this.f66490d = c12534j2;
        }
    }

    public final class f extends c3<C> {

        public final C12534j2<C> f66505f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public f(C12534j2<C> c12534j2) {
            super(new g(C12534j2.a(), c12534j2, c3.this.f66482b));
            this.f66505f = c12534j2;
        }

        @Override
        public void a(C12534j2<C> c12534j2) {
            if (c12534j2.u(this.f66505f)) {
                c3.this.a(c12534j2.s(this.f66505f));
            }
        }

        @Override
        public void clear() {
            c3.this.a(this.f66505f);
        }

        @Override
        public boolean contains(C c10) {
            return this.f66505f.i(c10) && c3.this.contains(c10);
        }

        @Override
        @CheckForNull
        public C12534j2<C> h(C c10) {
            C12534j2<C> h10;
            if (this.f66505f.i(c10) && (h10 = c3.this.h(c10)) != null) {
                return h10.s(this.f66505f);
            }
            return null;
        }

        @Override
        public boolean i(C12534j2<C> c12534j2) {
            C12534j2 v10;
            return (this.f66505f.v() || !this.f66505f.n(c12534j2) || (v10 = c3.this.v(c12534j2)) == null || v10.s(this.f66505f).v()) ? false : true;
        }

        @Override
        public InterfaceC12546m2<C> k(C12534j2<C> c12534j2) {
            return c12534j2.n(this.f66505f) ? this : c12534j2.u(this.f66505f) ? new f(this.f66505f.s(c12534j2)) : C12561q1.E();
        }

        @Override
        public void o(C12534j2<C> c12534j2) {
            w2.H.y(this.f66505f.n(c12534j2), "Cannot add range %s to subRangeSet(%s)", c12534j2, this.f66505f);
            c3.this.o(c12534j2);
        }
    }

    public static final class g<C extends Comparable<?>> extends AbstractC12531j<Q<C>, C12534j2<C>> {

        public final C12534j2<Q<C>> f66507b;

        public final C12534j2<C> f66508c;

        public final NavigableMap<Q<C>, C12534j2<C>> f66509d;

        public final NavigableMap<Q<C>, C12534j2<C>> f66510e;

        public class a extends AbstractC12503c<Map.Entry<Q<C>, C12534j2<C>>> {

            public final Iterator f66511d;

            public final Q f66512e;

            public a(Iterator it, Q q10) {
                this.f66511d = it;
                this.f66512e = q10;
            }

            @Override
            @CheckForNull
            public Map.Entry<Q<C>, C12534j2<C>> a() {
                if (!this.f66511d.hasNext()) {
                    return (Map.Entry) b();
                }
                C12534j2 c12534j2 = (C12534j2) this.f66511d.next();
                if (this.f66512e.m(c12534j2.f66693b)) {
                    return (Map.Entry) b();
                }
                C12534j2 s10 = c12534j2.s(g.this.f66508c);
                return Q1.O(s10.f66693b, s10);
            }
        }

        public class b extends AbstractC12503c<Map.Entry<Q<C>, C12534j2<C>>> {

            public final Iterator f66514d;

            public b(Iterator it) {
                this.f66514d = it;
            }

            @Override
            @CheckForNull
            public Map.Entry<Q<C>, C12534j2<C>> a() {
                if (!this.f66514d.hasNext()) {
                    return (Map.Entry) b();
                }
                C12534j2 c12534j2 = (C12534j2) this.f66514d.next();
                if (g.this.f66508c.f66693b.compareTo(c12534j2.f66694c) >= 0) {
                    return (Map.Entry) b();
                }
                C12534j2 s10 = c12534j2.s(g.this.f66508c);
                return g.this.f66507b.i(s10.f66693b) ? Q1.O(s10.f66693b, s10) : (Map.Entry) b();
            }
        }

        private NavigableMap<Q<C>, C12534j2<C>> o(C12534j2<Q<C>> c12534j2) {
            return !c12534j2.u(this.f66507b) ? C12572t1.x0() : new g(this.f66507b.s(c12534j2), this.f66508c, this.f66509d);
        }

        @Override
        public Comparator<? super Q<C>> comparator() {
            return Ordering.A();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override
        public Iterator<Map.Entry<Q<C>, C12534j2<C>>> e() {
            Iterator<C12534j2<C>> it;
            if (!this.f66508c.v() && !this.f66507b.f66694c.m(this.f66508c.f66693b)) {
                if (this.f66507b.f66693b.m(this.f66508c.f66693b)) {
                    it = this.f66510e.tailMap(this.f66508c.f66693b, false).values().iterator();
                } else {
                    it = this.f66509d.tailMap(this.f66507b.f66693b.j(), this.f66507b.y() == EnumC12586x.CLOSED).values().iterator();
                }
                return new a(it, (Q) Ordering.A().x(this.f66507b.f66694c, Q.d(this.f66508c.f66694c)));
            }
            return E1.u();
        }

        @Override
        public Iterator<Map.Entry<Q<C>, C12534j2<C>>> i() {
            if (this.f66508c.v()) {
                return E1.u();
            }
            Q q10 = (Q) Ordering.A().x(this.f66507b.f66694c, Q.d(this.f66508c.f66694c));
            return new b(this.f66509d.headMap((Q) q10.j(), q10.r() == EnumC12586x.CLOSED).descendingMap().values().iterator());
        }

        @Override
        @CheckForNull
        public C12534j2<C> get(@CheckForNull Object obj) {
            if (obj instanceof Q) {
                try {
                    Q<C> q10 = (Q) obj;
                    if (this.f66507b.i(q10) && q10.compareTo(this.f66508c.f66693b) >= 0 && q10.compareTo(this.f66508c.f66694c) < 0) {
                        if (q10.equals(this.f66508c.f66693b)) {
                            C12534j2 c12534j2 = (C12534j2) Q1.P0(this.f66509d.floorEntry(q10));
                            if (c12534j2 != null && c12534j2.f66694c.compareTo(this.f66508c.f66693b) > 0) {
                                return c12534j2.s(this.f66508c);
                            }
                        } else {
                            C12534j2<C> c12534j22 = this.f66509d.get(q10);
                            if (c12534j22 != null) {
                                return c12534j22.s(this.f66508c);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> headMap(Q<C> q10, boolean z10) {
            return o(C12534j2.I(q10, EnumC12586x.b(z10)));
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> subMap(Q<C> q10, boolean z10, Q<C> q11, boolean z11) {
            return o(C12534j2.C(q10, EnumC12586x.b(z10), q11, EnumC12586x.b(z11)));
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> tailMap(Q<C> q10, boolean z10) {
            return o(C12534j2.l(q10, EnumC12586x.b(z10)));
        }

        @Override
        public int size() {
            return E1.Z(e());
        }

        public g(C12534j2<Q<C>> c12534j2, C12534j2<C> c12534j22, NavigableMap<Q<C>, C12534j2<C>> navigableMap) {
            this.f66507b = (C12534j2) w2.H.E(c12534j2);
            this.f66508c = (C12534j2) w2.H.E(c12534j22);
            this.f66509d = (NavigableMap) w2.H.E(navigableMap);
            this.f66510e = new e(navigableMap);
        }
    }

    public static <C extends Comparable<?>> c3<C> r() {
        return new c3<>(new TreeMap());
    }

    public static <C extends Comparable<?>> c3<C> s(InterfaceC12546m2<C> interfaceC12546m2) {
        c3<C> r10 = r();
        r10.p(interfaceC12546m2);
        return r10;
    }

    public static <C extends Comparable<?>> c3<C> u(Iterable<C12534j2<C>> iterable) {
        c3<C> r10 = r();
        r10.b(iterable);
        return r10;
    }

    @Override
    public void a(C12534j2<C> c12534j2) {
        w2.H.E(c12534j2);
        if (c12534j2.v()) {
            return;
        }
        Map.Entry<Q<C>, C12534j2<C>> lowerEntry = this.f66482b.lowerEntry(c12534j2.f66693b);
        if (lowerEntry != null) {
            C12534j2<C> value = lowerEntry.getValue();
            if (value.f66694c.compareTo(c12534j2.f66693b) >= 0) {
                if (c12534j2.r() && value.f66694c.compareTo(c12534j2.f66694c) >= 0) {
                    w(C12534j2.k(c12534j2.f66694c, value.f66694c));
                }
                w(C12534j2.k(value.f66693b, c12534j2.f66693b));
            }
        }
        Map.Entry<Q<C>, C12534j2<C>> floorEntry = this.f66482b.floorEntry(c12534j2.f66694c);
        if (floorEntry != null) {
            C12534j2<C> value2 = floorEntry.getValue();
            if (c12534j2.r() && value2.f66694c.compareTo(c12534j2.f66694c) >= 0) {
                w(C12534j2.k(c12534j2.f66694c, value2.f66694c));
            }
        }
        this.f66482b.subMap(c12534j2.f66693b, c12534j2.f66694c).clear();
    }

    @Override
    public void b(Iterable iterable) {
        super.b(iterable);
    }

    @Override
    public C12534j2<C> c() {
        Map.Entry<Q<C>, C12534j2<C>> firstEntry = this.f66482b.firstEntry();
        Map.Entry<Q<C>, C12534j2<C>> lastEntry = this.f66482b.lastEntry();
        if (firstEntry == null || lastEntry == null) {
            throw new NoSuchElementException();
        }
        return C12534j2.k(firstEntry.getValue().f66693b, lastEntry.getValue().f66694c);
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override
    public InterfaceC12546m2<C> d() {
        InterfaceC12546m2<C> interfaceC12546m2 = this.f66485e;
        if (interfaceC12546m2 != null) {
            return interfaceC12546m2;
        }
        c cVar = new c();
        this.f66485e = cVar;
        return cVar;
    }

    @Override
    public boolean e(C12534j2<C> c12534j2) {
        w2.H.E(c12534j2);
        Map.Entry<Q<C>, C12534j2<C>> ceilingEntry = this.f66482b.ceilingEntry(c12534j2.f66693b);
        if (ceilingEntry != null && ceilingEntry.getValue().u(c12534j2) && !ceilingEntry.getValue().s(c12534j2).v()) {
            return true;
        }
        Map.Entry<Q<C>, C12534j2<C>> lowerEntry = this.f66482b.lowerEntry(c12534j2.f66693b);
        return (lowerEntry == null || !lowerEntry.getValue().u(c12534j2) || lowerEntry.getValue().s(c12534j2).v()) ? false : true;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public void f(Iterable iterable) {
        super.f(iterable);
    }

    @Override
    public boolean g(InterfaceC12546m2 interfaceC12546m2) {
        return super.g(interfaceC12546m2);
    }

    @Override
    @CheckForNull
    public C12534j2<C> h(C c10) {
        w2.H.E(c10);
        Map.Entry<Q<C>, C12534j2<C>> floorEntry = this.f66482b.floorEntry(Q.d(c10));
        if (floorEntry == null || !floorEntry.getValue().i(c10)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override
    public boolean i(C12534j2<C> c12534j2) {
        w2.H.E(c12534j2);
        Map.Entry<Q<C>, C12534j2<C>> floorEntry = this.f66482b.floorEntry(c12534j2.f66693b);
        return floorEntry != null && floorEntry.getValue().n(c12534j2);
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public boolean j(Iterable iterable) {
        return super.j(iterable);
    }

    @Override
    public InterfaceC12546m2<C> k(C12534j2<C> c12534j2) {
        return c12534j2.equals(C12534j2.a()) ? this : new f(c12534j2);
    }

    @Override
    public Set<C12534j2<C>> l() {
        Set<C12534j2<C>> set = this.f66484d;
        if (set != null) {
            return set;
        }
        b bVar = new b(this, this.f66482b.descendingMap().values());
        this.f66484d = bVar;
        return bVar;
    }

    @Override
    public Set<C12534j2<C>> m() {
        Set<C12534j2<C>> set = this.f66483c;
        if (set != null) {
            return set;
        }
        b bVar = new b(this, this.f66482b.values());
        this.f66483c = bVar;
        return bVar;
    }

    @Override
    public void n(InterfaceC12546m2 interfaceC12546m2) {
        super.n(interfaceC12546m2);
    }

    @Override
    public void o(C12534j2<C> c12534j2) {
        w2.H.E(c12534j2);
        if (c12534j2.v()) {
            return;
        }
        Q<C> q10 = c12534j2.f66693b;
        Q<C> q11 = c12534j2.f66694c;
        Map.Entry<Q<C>, C12534j2<C>> lowerEntry = this.f66482b.lowerEntry(q10);
        if (lowerEntry != null) {
            C12534j2<C> value = lowerEntry.getValue();
            if (value.f66694c.compareTo(q10) >= 0) {
                if (value.f66694c.compareTo(q11) >= 0) {
                    q11 = value.f66694c;
                }
                q10 = value.f66693b;
            }
        }
        Map.Entry<Q<C>, C12534j2<C>> floorEntry = this.f66482b.floorEntry(q11);
        if (floorEntry != null) {
            C12534j2<C> value2 = floorEntry.getValue();
            if (value2.f66694c.compareTo(q11) >= 0) {
                q11 = value2.f66694c;
            }
        }
        this.f66482b.subMap(q10, q11).clear();
        w(C12534j2.k(q10, q11));
    }

    @Override
    public void p(InterfaceC12546m2 interfaceC12546m2) {
        super.p(interfaceC12546m2);
    }

    @CheckForNull
    public final C12534j2<C> v(C12534j2<C> c12534j2) {
        w2.H.E(c12534j2);
        Map.Entry<Q<C>, C12534j2<C>> floorEntry = this.f66482b.floorEntry(c12534j2.f66693b);
        if (floorEntry == null || !floorEntry.getValue().n(c12534j2)) {
            return null;
        }
        return floorEntry.getValue();
    }

    public final void w(C12534j2<C> c12534j2) {
        if (c12534j2.v()) {
            this.f66482b.remove(c12534j2.f66693b);
        } else {
            this.f66482b.put(c12534j2.f66693b, c12534j2);
        }
    }

    public c3(NavigableMap<Q<C>, C12534j2<C>> navigableMap) {
        this.f66482b = navigableMap;
    }

    @v2.d
    public static final class e<C extends Comparable<?>> extends AbstractC12531j<Q<C>, C12534j2<C>> {

        public final NavigableMap<Q<C>, C12534j2<C>> f66499b;

        public final C12534j2<Q<C>> f66500c;

        public class a extends AbstractC12503c<Map.Entry<Q<C>, C12534j2<C>>> {

            public final Iterator f66501d;

            public a(Iterator it) {
                this.f66501d = it;
            }

            @Override
            @CheckForNull
            public Map.Entry<Q<C>, C12534j2<C>> a() {
                if (!this.f66501d.hasNext()) {
                    return (Map.Entry) b();
                }
                C12534j2 c12534j2 = (C12534j2) this.f66501d.next();
                return e.this.f66500c.f66694c.m(c12534j2.f66694c) ? (Map.Entry) b() : Q1.O(c12534j2.f66694c, c12534j2);
            }
        }

        public class b extends AbstractC12503c<Map.Entry<Q<C>, C12534j2<C>>> {

            public final InterfaceC12522g2 f66503d;

            public b(InterfaceC12522g2 interfaceC12522g2) {
                this.f66503d = interfaceC12522g2;
            }

            @Override
            @CheckForNull
            public Map.Entry<Q<C>, C12534j2<C>> a() {
                if (!this.f66503d.hasNext()) {
                    return (Map.Entry) b();
                }
                C12534j2 c12534j2 = (C12534j2) this.f66503d.next();
                return e.this.f66500c.f66693b.m(c12534j2.f66694c) ? Q1.O(c12534j2.f66694c, c12534j2) : (Map.Entry) b();
            }
        }

        public e(NavigableMap<Q<C>, C12534j2<C>> navigableMap) {
            this.f66499b = navigableMap;
            this.f66500c = C12534j2.a();
        }

        private NavigableMap<Q<C>, C12534j2<C>> n(C12534j2<Q<C>> c12534j2) {
            return c12534j2.u(this.f66500c) ? new e(this.f66499b, c12534j2.s(this.f66500c)) : C12572t1.x0();
        }

        @Override
        public Comparator<? super Q<C>> comparator() {
            return Ordering.A();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override
        public Iterator<Map.Entry<Q<C>, C12534j2<C>>> e() {
            Iterator<C12534j2<C>> it;
            if (this.f66500c.q()) {
                Map.Entry<Q<C>, C12534j2<C>> lowerEntry = this.f66499b.lowerEntry(this.f66500c.z());
                it = lowerEntry == null ? this.f66499b.values().iterator() : this.f66500c.f66693b.m(lowerEntry.getValue().f66694c) ? this.f66499b.tailMap(lowerEntry.getKey(), true).values().iterator() : this.f66499b.tailMap(this.f66500c.z(), true).values().iterator();
            } else {
                it = this.f66499b.values().iterator();
            }
            return new a(it);
        }

        @Override
        public Iterator<Map.Entry<Q<C>, C12534j2<C>>> i() {
            InterfaceC12522g2 T10 = E1.T((this.f66500c.r() ? this.f66499b.headMap(this.f66500c.L(), false).descendingMap().values() : this.f66499b.descendingMap().values()).iterator());
            if (T10.hasNext() && this.f66500c.f66694c.m(((C12534j2) T10.peek()).f66694c)) {
                T10.next();
            }
            return new b(T10);
        }

        @Override
        public boolean isEmpty() {
            return this.f66500c.equals(C12534j2.a()) ? this.f66499b.isEmpty() : !e().hasNext();
        }

        @Override
        @CheckForNull
        public C12534j2<C> get(@CheckForNull Object obj) {
            Map.Entry<Q<C>, C12534j2<C>> lowerEntry;
            if (obj instanceof Q) {
                try {
                    Q<C> q10 = (Q) obj;
                    if (this.f66500c.i(q10) && (lowerEntry = this.f66499b.lowerEntry(q10)) != null && lowerEntry.getValue().f66694c.equals(q10)) {
                        return lowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> headMap(Q<C> q10, boolean z10) {
            return n(C12534j2.I(q10, EnumC12586x.b(z10)));
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> subMap(Q<C> q10, boolean z10, Q<C> q11, boolean z11) {
            return n(C12534j2.C(q10, EnumC12586x.b(z10), q11, EnumC12586x.b(z11)));
        }

        @Override
        public NavigableMap<Q<C>, C12534j2<C>> tailMap(Q<C> q10, boolean z10) {
            return n(C12534j2.l(q10, EnumC12586x.b(z10)));
        }

        @Override
        public int size() {
            return this.f66500c.equals(C12534j2.a()) ? this.f66499b.size() : E1.Z(e());
        }

        public e(NavigableMap<Q<C>, C12534j2<C>> navigableMap, C12534j2<Q<C>> c12534j2) {
            this.f66499b = navigableMap;
            this.f66500c = c12534j2;
        }
    }
}
