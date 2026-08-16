package com.google.common.collect;

import com.google.common.collect.D2;
import com.google.common.collect.Q1;
import com.google.common.collect.S2;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@X
@v2.b
public class Q2<R, C, V> extends AbstractC12559q<R, C, V> implements Serializable {

    public static final long f66058i = 0;

    @S0
    public final Map<R, Map<C, V>> f66059d;

    @S0
    public final w2.Q<? extends Map<C, V>> f66060e;

    @CheckForNull
    public transient Set<C> f66061f;

    @CheckForNull
    public transient Map<R, Map<C, V>> f66062g;

    @CheckForNull
    public transient Q2<R, C, V>.f f66063h;

    public class b implements Iterator<S2.a<R, C, V>> {

        public final Iterator<Map.Entry<R, Map<C, V>>> f66064b;

        @CheckForNull
        public Map.Entry<R, Map<C, V>> f66065c;

        public Iterator<Map.Entry<C, V>> f66066d;

        public b() {
            this.f66064b = Q2.this.f66059d.entrySet().iterator();
            this.f66066d = E1.w();
        }

        @Override
        public S2.a<R, C, V> next() {
            if (!this.f66066d.hasNext()) {
                Map.Entry<R, Map<C, V>> next = this.f66064b.next();
                this.f66065c = next;
                this.f66066d = next.getValue().entrySet().iterator();
            }
            Objects.requireNonNull(this.f66065c);
            Map.Entry<C, V> next2 = this.f66066d.next();
            return T2.c(this.f66065c.getKey(), next2.getKey(), next2.getValue());
        }

        @Override
        public boolean hasNext() {
            return this.f66064b.hasNext() || this.f66066d.hasNext();
        }

        @Override
        public void remove() {
            this.f66066d.remove();
            Map.Entry<R, Map<C, V>> entry = this.f66065c;
            Objects.requireNonNull(entry);
            if (entry.getValue().isEmpty()) {
                this.f66064b.remove();
                this.f66065c = null;
            }
        }
    }

    public class c extends Q1.R<R, V> {

        public final C f66068e;

        public class a extends D2.k<Map.Entry<R, V>> {
            public a() {
            }

            @Override
            public void clear() {
                c.this.k(w2.J.c());
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return Q2.this.j(entry.getKey(), c.this.f66068e, entry.getValue());
            }

            @Override
            public boolean isEmpty() {
                c cVar = c.this;
                return !Q2.this.g(cVar.f66068e);
            }

            @Override
            public Iterator<Map.Entry<R, V>> iterator() {
                return new b();
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return Q2.this.o(entry.getKey(), c.this.f66068e, entry.getValue());
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                return c.this.k(w2.J.q(w2.J.n(collection)));
            }

            @Override
            public int size() {
                Iterator<Map<C, V>> it = Q2.this.f66059d.values().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    if (it.next().containsKey(c.this.f66068e)) {
                        i10++;
                    }
                }
                return i10;
            }
        }

        public class b extends AbstractC12503c<Map.Entry<R, V>> {

            public final Iterator<Map.Entry<R, Map<C, V>>> f66071d;

            public class a extends AbstractC12519g<R, V> {

                public final Map.Entry f66073b;

                public a(Map.Entry entry) {
                    this.f66073b = entry;
                }

                @Override
                public R getKey() {
                    return (R) this.f66073b.getKey();
                }

                @Override
                public V getValue() {
                    return (V) ((Map) this.f66073b.getValue()).get(c.this.f66068e);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public V setValue(V v10) {
                    return (V) Z1.a(((Map) this.f66073b.getValue()).put(c.this.f66068e, w2.H.E(v10)));
                }
            }

            public b() {
                this.f66071d = Q2.this.f66059d.entrySet().iterator();
            }

            @Override
            @CheckForNull
            public Map.Entry<R, V> a() {
                while (this.f66071d.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = this.f66071d.next();
                    if (next.getValue().containsKey(c.this.f66068e)) {
                        return new a(next);
                    }
                }
                return b();
            }
        }

        public class C0989c extends Q1.B<R, V> {
            public C0989c() {
                super(c.this);
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                c cVar = c.this;
                return Q2.this.Q(obj, cVar.f66068e);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                c cVar = c.this;
                return Q2.this.remove(obj, cVar.f66068e) != null;
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                return c.this.k(Q1.U(w2.J.q(w2.J.n(collection))));
            }
        }

        public class d extends Q1.Q<R, V> {
            public d() {
                super(c.this);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                return obj != null && c.this.k(Q1.Q0(w2.J.m(obj)));
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                return c.this.k(Q1.Q0(w2.J.n(collection)));
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                return c.this.k(Q1.Q0(w2.J.q(w2.J.n(collection))));
            }
        }

        public c(C c10) {
            this.f66068e = (C) w2.H.E(c10);
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return Q2.this.Q(obj, this.f66068e);
        }

        @Override
        public Set<Map.Entry<R, V>> e() {
            return new a();
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            return (V) Q2.this.e(obj, this.f66068e);
        }

        @Override
        public Set<R> n() {
            return new C0989c();
        }

        @Override
        public Collection<V> j() {
            return new d();
        }

        @I2.a
        public boolean k(w2.I<? super Map.Entry<R, V>> i10) {
            Iterator<Map.Entry<R, Map<C, V>>> it = Q2.this.f66059d.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v10 = value.get(this.f66068e);
                if (v10 != null && i10.apply(Q1.O(next.getKey(), v10))) {
                    value.remove(this.f66068e);
                    if (value.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        @CheckForNull
        public V put(R r10, V v10) {
            return (V) Q2.this.L(r10, this.f66068e, v10);
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            return (V) Q2.this.remove(obj, this.f66068e);
        }
    }

    public class d extends AbstractC12503c<C> {

        public final Map<C, V> f66077d;

        public final Iterator<Map<C, V>> f66078e;

        public Iterator<Map.Entry<C, V>> f66079f;

        public d() {
            this.f66077d = Q2.this.f66060e.get();
            this.f66078e = Q2.this.f66059d.values().iterator();
            this.f66079f = E1.u();
        }

        @Override
        @CheckForNull
        public C a() {
            while (true) {
                if (this.f66079f.hasNext()) {
                    Map.Entry<C, V> next = this.f66079f.next();
                    if (!this.f66077d.containsKey(next.getKey())) {
                        this.f66077d.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else {
                    if (!this.f66078e.hasNext()) {
                        return b();
                    }
                    this.f66079f = this.f66078e.next().entrySet().iterator();
                }
            }
        }
    }

    public class e extends Q2<R, C, V>.i<C> {
        public e() {
            super();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return Q2.this.g(obj);
        }

        @Override
        public Iterator<C> iterator() {
            return Q2.this.k();
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            boolean z10 = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = Q2.this.f66059d.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.o().remove(obj)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            w2.H.E(collection);
            Iterator<Map<C, V>> it = Q2.this.f66059d.values().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (E1.V(next.o().iterator(), collection)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            w2.H.E(collection);
            Iterator<Map<C, V>> it = Q2.this.f66059d.values().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.o().retainAll(collection)) {
                    if (next.isEmpty()) {
                        it.remove();
                    }
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return E1.Z(iterator());
        }
    }

    public class f extends Q1.R<C, Map<R, V>> {

        public class a extends Q2<R, C, V>.i<Map.Entry<C, Map<R, V>>> {

            public class C0990a implements InterfaceC15902t<C, Map<R, V>> {
                public C0990a() {
                }

                @Override
                public Map<R, V> apply(C c10) {
                    return Q2.this.B(c10);
                }
            }

            public a() {
                super();
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!Q2.this.g(entry.getKey())) {
                    return false;
                }
                Map<R, V> map = f.this.get(entry.getKey());
                Objects.requireNonNull(map);
                return map.equals(entry.getValue());
            }

            @Override
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return Q1.m(Q2.this.d0(), new C0990a());
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!contains(obj) || !(obj instanceof Map.Entry)) {
                    return false;
                }
                Q2.this.n(((Map.Entry) obj).getKey());
                return true;
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                w2.H.E(collection);
                return D2.J(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean retainAll(Collection<?> collection) {
                w2.H.E(collection);
                Iterator it = M1.s(Q2.this.d0().iterator()).iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(Q1.O(next, Q2.this.B(next)))) {
                        Q2.this.n(next);
                        z10 = true;
                    }
                }
                return z10;
            }

            @Override
            public int size() {
                return Q2.this.d0().size();
            }
        }

        public class b extends Q1.Q<C, Map<R, V>> {
            public b() {
                super(f.this);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : f.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        Q2.this.n(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean removeAll(Collection<?> collection) {
                w2.H.E(collection);
                Iterator it = M1.s(Q2.this.d0().iterator()).iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (collection.contains(Q2.this.B(next))) {
                        Q2.this.n(next);
                        z10 = true;
                    }
                }
                return z10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean retainAll(Collection<?> collection) {
                w2.H.E(collection);
                Iterator it = M1.s(Q2.this.d0().iterator()).iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!collection.contains(Q2.this.B(next))) {
                        Q2.this.n(next);
                        z10 = true;
                    }
                }
                return z10;
            }
        }

        public f() {
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return Q2.this.g(obj);
        }

        @Override
        public Set<Map.Entry<C, Map<R, V>>> e() {
            return new a();
        }

        @Override
        public Collection<Map<R, V>> j() {
            return new b();
        }

        @Override
        @CheckForNull
        public Map<R, V> get(@CheckForNull Object obj) {
            if (!Q2.this.g(obj)) {
                return null;
            }
            Q2 q22 = Q2.this;
            Objects.requireNonNull(obj);
            return q22.B(obj);
        }

        @Override
        public Set<C> o() {
            return Q2.this.d0();
        }

        @Override
        @CheckForNull
        public Map<R, V> remove(@CheckForNull Object obj) {
            if (Q2.this.g(obj)) {
                return Q2.this.n(obj);
            }
            return null;
        }
    }

    public class g extends Q1.A<C, V> {

        public final R f66086b;

        @CheckForNull
        public Map<C, V> f66087c;

        public class a implements Iterator<Map.Entry<C, V>> {

            public final Iterator f66089b;

            public a(Iterator it) {
                this.f66089b = it;
            }

            @Override
            public Map.Entry<C, V> next() {
                return g.this.l((Map.Entry) this.f66089b.next());
            }

            @Override
            public boolean hasNext() {
                return this.f66089b.hasNext();
            }

            @Override
            public void remove() {
                this.f66089b.remove();
                g.this.j();
            }
        }

        public class b extends D0<C, V> {

            public final Map.Entry f66091b;

            public b(g gVar, Map.Entry entry) {
                this.f66091b = entry;
            }

            @Override
            public boolean equals(@CheckForNull Object obj) {
                return o0(obj);
            }

            @Override
            public Map.Entry<C, V> k0() {
                return this.f66091b;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public V setValue(V v10) {
                return (V) super.setValue(w2.H.E(v10));
            }
        }

        public g(R r10) {
            this.f66086b = (R) w2.H.E(r10);
        }

        @Override
        public void clear() {
            k();
            Map<C, V> map = this.f66087c;
            if (map != null) {
                map.clear();
            }
            j();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            Map<C, V> map;
            k();
            return (obj == null || (map = this.f66087c) == null || !Q1.o0(map, obj)) ? false : true;
        }

        @Override
        public Iterator<Map.Entry<C, V>> e() {
            k();
            Map<C, V> map = this.f66087c;
            return map == null ? E1.w() : new a(map.entrySet().iterator());
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            Map<C, V> map;
            k();
            if (obj == null || (map = this.f66087c) == null) {
                return null;
            }
            return (V) Q1.p0(map, obj);
        }

        @CheckForNull
        public Map<C, V> i() {
            return Q2.this.f66059d.get(this.f66086b);
        }

        public void j() {
            k();
            Map<C, V> map = this.f66087c;
            if (map == null || !map.isEmpty()) {
                return;
            }
            Q2.this.f66059d.remove(this.f66086b);
            this.f66087c = null;
        }

        public final void k() {
            Map<C, V> map = this.f66087c;
            if (map == null || (map.isEmpty() && Q2.this.f66059d.containsKey(this.f66086b))) {
                this.f66087c = i();
            }
        }

        public Map.Entry<C, V> l(Map.Entry<C, V> entry) {
            return new b(this, entry);
        }

        @Override
        @CheckForNull
        public V put(C c10, V v10) {
            w2.H.E(c10);
            w2.H.E(v10);
            Map<C, V> map = this.f66087c;
            return (map == null || map.isEmpty()) ? (V) Q2.this.L(this.f66086b, c10, v10) : this.f66087c.put(c10, v10);
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            k();
            Map<C, V> map = this.f66087c;
            if (map == null) {
                return null;
            }
            V v10 = (V) Q1.q0(map, obj);
            j();
            return v10;
        }

        @Override
        public int size() {
            k();
            Map<C, V> map = this.f66087c;
            if (map == null) {
                return 0;
            }
            return map.size();
        }
    }

    public class h extends Q1.R<R, Map<C, V>> {

        public class a extends Q2<R, C, V>.i<Map.Entry<R, Map<C, V>>> {

            public class C0991a implements InterfaceC15902t<R, Map<C, V>> {
                public C0991a() {
                }

                @Override
                public Map<C, V> apply(R r10) {
                    return Q2.this.i0(r10);
                }
            }

            public a() {
                super();
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && C.j(Q2.this.f66059d.entrySet(), entry);
            }

            @Override
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return Q1.m(Q2.this.f66059d.o(), new C0991a());
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && Q2.this.f66059d.entrySet().remove(entry);
            }

            @Override
            public int size() {
                return Q2.this.f66059d.size();
            }
        }

        public h() {
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return Q2.this.e0(obj);
        }

        @Override
        public Set<Map.Entry<R, Map<C, V>>> e() {
            return new a();
        }

        @Override
        @CheckForNull
        public Map<C, V> get(@CheckForNull Object obj) {
            if (!Q2.this.e0(obj)) {
                return null;
            }
            Q2 q22 = Q2.this;
            Objects.requireNonNull(obj);
            return q22.i0(obj);
        }

        @Override
        @CheckForNull
        public Map<C, V> remove(@CheckForNull Object obj) {
            if (obj == null) {
                return null;
            }
            return Q2.this.f66059d.remove(obj);
        }
    }

    public abstract class i<T> extends D2.k<T> {
        public i() {
        }

        @Override
        public void clear() {
            Q2.this.f66059d.clear();
        }

        @Override
        public boolean isEmpty() {
            return Q2.this.f66059d.isEmpty();
        }
    }

    public Q2(Map<R, Map<C, V>> map, w2.Q<? extends Map<C, V>> q10) {
        this.f66059d = map;
        this.f66060e = q10;
    }

    @Override
    public Map<C, Map<R, V>> A() {
        Q2<R, C, V>.f fVar = this.f66063h;
        if (fVar != null) {
            return fVar;
        }
        Q2<R, C, V>.f fVar2 = new f();
        this.f66063h = fVar2;
        return fVar2;
    }

    @Override
    public Map<R, V> B(C c10) {
        return new c(c10);
    }

    @Override
    @I2.a
    @CheckForNull
    public V L(R r10, C c10, V v10) {
        w2.H.E(r10);
        w2.H.E(c10);
        w2.H.E(v10);
        return m(r10).put(c10, v10);
    }

    @Override
    public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return (obj == null || obj2 == null || !super.Q(obj, obj2)) ? false : true;
    }

    @Override
    public Iterator<S2.a<R, C, V>> a() {
        return new b();
    }

    @Override
    public Set<S2.a<R, C, V>> c0() {
        return super.c0();
    }

    @Override
    public void clear() {
        this.f66059d.clear();
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override
    public Set<C> d0() {
        Set<C> set = this.f66061f;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.f66061f = eVar;
        return eVar;
    }

    @Override
    @CheckForNull
    public V e(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.e(obj, obj2);
    }

    @Override
    public boolean e0(@CheckForNull Object obj) {
        return obj != null && Q1.o0(this.f66059d, obj);
    }

    @Override
    public boolean g(@CheckForNull Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<Map<C, V>> it = this.f66059d.values().iterator();
        while (it.hasNext()) {
            if (Q1.o0(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Map<C, V> i0(R r10) {
        return new g(r10);
    }

    @Override
    public boolean isEmpty() {
        return this.f66059d.isEmpty();
    }

    public final boolean j(@CheckForNull Object obj, @CheckForNull Object obj2, @CheckForNull Object obj3) {
        return obj3 != null && obj3.equals(e(obj, obj2));
    }

    public Iterator<C> k() {
        return new d();
    }

    public Map<R, Map<C, V>> l() {
        return new h();
    }

    public final Map<C, V> m(R r10) {
        Map<C, V> map = this.f66059d.get(r10);
        if (map != null) {
            return map;
        }
        Map<C, V> map2 = this.f66060e.get();
        this.f66059d.put(r10, map2);
        return map2;
    }

    @I2.a
    public final Map<R, V> n(@CheckForNull Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.f66059d.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V remove = next.getValue().remove(obj);
            if (remove != null) {
                linkedHashMap.put(next.getKey(), remove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    public final boolean o(@CheckForNull Object obj, @CheckForNull Object obj2, @CheckForNull Object obj3) {
        if (!j(obj, obj2, obj3)) {
            return false;
        }
        remove(obj, obj2);
        return true;
    }

    @Override
    @I2.a
    @CheckForNull
    public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Q1.p0(this.f66059d, obj)) == null) {
            return null;
        }
        V v10 = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.f66059d.remove(obj);
        }
        return v10;
    }

    @Override
    public int size() {
        Iterator<Map<C, V>> it = this.f66059d.values().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().size();
        }
        return i10;
    }

    @Override
    public Map<R, Map<C, V>> u() {
        Map<R, Map<C, V>> map = this.f66062g;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> l10 = l();
        this.f66062g = l10;
        return l10;
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    @Override
    public Set<R> x() {
        return u().o();
    }
}
