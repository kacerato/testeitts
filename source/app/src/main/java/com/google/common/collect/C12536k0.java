package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public class C12536k0<K, V> extends AbstractC12523h<K, V> implements InterfaceC12544m0<K, V> {

    public final S1<K, V> f66700g;

    public final w2.I<? super K> f66701h;

    public static class a<K, V> extends AbstractC12595z0<V> {

        @InterfaceC12518f2
        public final K f66702b;

        public a(@InterfaceC12518f2 K k10) {
            this.f66702b = k10;
        }

        @Override
        public List<V> k0() {
            return Collections.emptyList();
        }

        @Override
        public boolean add(@InterfaceC12518f2 V v10) {
            add(0, v10);
            return true;
        }

        @Override
        public boolean addAll(Collection<? extends V> collection) {
            addAll(0, collection);
            return true;
        }

        @Override
        public void add(int i10, @InterfaceC12518f2 V v10) {
            w2.H.d0(i10, 0);
            String valueOf = String.valueOf(this.f66702b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
            sb2.append("Key does not satisfy predicate: ");
            sb2.append(valueOf);
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override
        @I2.a
        public boolean addAll(int i10, Collection<? extends V> collection) {
            w2.H.E(collection);
            w2.H.d0(i10, 0);
            String valueOf = String.valueOf(this.f66702b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
            sb2.append("Key does not satisfy predicate: ");
            sb2.append(valueOf);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public static class b<K, V> extends K0<V> {

        @InterfaceC12518f2
        public final K f66703b;

        public b(@InterfaceC12518f2 K k10) {
            this.f66703b = k10;
        }

        @Override
        public Set<V> k0() {
            return Collections.emptySet();
        }

        @Override
        public boolean add(@InterfaceC12518f2 V v10) {
            String valueOf = String.valueOf(this.f66703b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
            sb2.append("Key does not satisfy predicate: ");
            sb2.append(valueOf);
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override
        public boolean addAll(Collection<? extends V> collection) {
            w2.H.E(collection);
            String valueOf = String.valueOf(this.f66703b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
            sb2.append("Key does not satisfy predicate: ");
            sb2.append(valueOf);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public class c extends AbstractC12563r0<Map.Entry<K, V>> {
        public c() {
        }

        @Override
        public Collection<Map.Entry<K, V>> k0() {
            return C.d(C12536k0.this.f66700g.v(), C12536k0.this.N());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (C12536k0.this.f66700g.containsKey(entry.getKey()) && C12536k0.this.f66701h.apply((Object) entry.getKey())) {
                return C12536k0.this.f66700g.remove(entry.getKey(), entry.getValue());
            }
            return false;
        }
    }

    public C12536k0(S1<K, V> s12, w2.I<? super K> i10) {
        this.f66700g = (S1) w2.H.E(s12);
        this.f66701h = (w2.I) w2.H.E(i10);
    }

    @Override
    public w2.I<? super Map.Entry<K, V>> N() {
        return Q1.U(this.f66701h);
    }

    @Override
    public Map<K, Collection<V>> a() {
        return Q1.G(this.f66700g.k(), this.f66701h);
    }

    @Override
    public Collection<Map.Entry<K, V>> b() {
        return new c();
    }

    @Override
    public Collection<V> c(@CheckForNull Object obj) {
        return containsKey(obj) ? this.f66700g.c(obj) : l();
    }

    @Override
    public void clear() {
        keySet().clear();
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        if (this.f66700g.containsKey(obj)) {
            return this.f66701h.apply(obj);
        }
        return false;
    }

    @Override
    public Set<K> e() {
        return D2.i(this.f66700g.keySet(), this.f66701h);
    }

    @Override
    public V1<K> f() {
        return W1.j(this.f66700g.j(), this.f66701h);
    }

    @Override
    public Collection<V> g() {
        return new C12548n0(this);
    }

    @Override
    public Collection<V> y(@InterfaceC12518f2 K k10) {
        return this.f66701h.apply(k10) ? this.f66700g.y(k10) : this.f66700g instanceof C2 ? new b(k10) : new a(k10);
    }

    @Override
    public Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError((Object) "should never be called");
    }

    public Collection<V> l() {
        return this.f66700g instanceof C2 ? Collections.emptySet() : Collections.emptyList();
    }

    public S1<K, V> o() {
        return this.f66700g;
    }

    @Override
    public int size() {
        Iterator<Collection<V>> it = k().values().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().size();
        }
        return i10;
    }
}
