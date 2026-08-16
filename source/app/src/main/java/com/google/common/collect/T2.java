package com.google.common.collect;

import com.google.common.collect.S2;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import org.openjdk.tools.doclint.DocLint;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@X
@v2.b
public final class T2 {

    public static final InterfaceC15902t<? extends Map<?, ?>, ? extends Map<?, ?>> f66224a = new a();

    public class a implements InterfaceC15902t<Map<Object, Object>, Map<Object, Object>> {
        @Override
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    }

    public static abstract class b<R, C, V> implements S2.a<R, C, V> {
        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof S2.a)) {
                return false;
            }
            S2.a aVar = (S2.a) obj;
            return w2.B.a(b(), aVar.b()) && w2.B.a(a(), aVar.a()) && w2.B.a(getValue(), aVar.getValue());
        }

        @Override
        public int hashCode() {
            return w2.B.b(b(), a(), getValue());
        }

        public String toString() {
            String valueOf = String.valueOf(b());
            String valueOf2 = String.valueOf(a());
            String valueOf3 = String.valueOf(getValue());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 4 + valueOf2.length() + valueOf3.length());
            sb2.append("(");
            sb2.append(valueOf);
            sb2.append(DocLint.SEPARATOR);
            sb2.append(valueOf2);
            sb2.append(")=");
            sb2.append(valueOf3);
            return sb2.toString();
        }
    }

    public static final class c<R, C, V> extends b<R, C, V> implements Serializable {

        public static final long f66225e = 0;

        @InterfaceC12518f2
        public final R f66226b;

        @InterfaceC12518f2
        public final C f66227c;

        @InterfaceC12518f2
        public final V f66228d;

        public c(@InterfaceC12518f2 R r10, @InterfaceC12518f2 C c10, @InterfaceC12518f2 V v10) {
            this.f66226b = r10;
            this.f66227c = c10;
            this.f66228d = v10;
        }

        @Override
        @InterfaceC12518f2
        public C a() {
            return this.f66227c;
        }

        @Override
        @InterfaceC12518f2
        public R b() {
            return this.f66226b;
        }

        @Override
        @InterfaceC12518f2
        public V getValue() {
            return this.f66228d;
        }
    }

    public static class d<R, C, V1, V2> extends AbstractC12559q<R, C, V2> {

        public final S2<R, C, V1> f66229d;

        public final InterfaceC15902t<? super V1, V2> f66230e;

        public class a implements InterfaceC15902t<S2.a<R, C, V1>, S2.a<R, C, V2>> {
            public a() {
            }

            @Override
            public S2.a<R, C, V2> apply(S2.a<R, C, V1> aVar) {
                return T2.c(aVar.b(), aVar.a(), d.this.f66230e.apply(aVar.getValue()));
            }
        }

        public class b implements InterfaceC15902t<Map<C, V1>, Map<C, V2>> {
            public b() {
            }

            @Override
            public Map<C, V2> apply(Map<C, V1> map) {
                return Q1.B0(map, d.this.f66230e);
            }
        }

        public class c implements InterfaceC15902t<Map<R, V1>, Map<R, V2>> {
            public c() {
            }

            @Override
            public Map<R, V2> apply(Map<R, V1> map) {
                return Q1.B0(map, d.this.f66230e);
            }
        }

        public d(S2<R, C, V1> s22, InterfaceC15902t<? super V1, V2> interfaceC15902t) {
            this.f66229d = (S2) w2.H.E(s22);
            this.f66230e = (InterfaceC15902t) w2.H.E(interfaceC15902t);
        }

        @Override
        public Map<C, Map<R, V2>> A() {
            return Q1.B0(this.f66229d.A(), new c());
        }

        @Override
        public Map<R, V2> B(@InterfaceC12518f2 C c10) {
            return Q1.B0(this.f66229d.B(c10), this.f66230e);
        }

        @Override
        @CheckForNull
        public V2 L(@InterfaceC12518f2 R r10, @InterfaceC12518f2 C c10, @InterfaceC12518f2 V2 v22) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f66229d.Q(obj, obj2);
        }

        @Override
        public void Y(S2<? extends R, ? extends C, ? extends V2> s22) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Iterator<S2.a<R, C, V2>> a() {
            return E1.c0(this.f66229d.c0().iterator(), f());
        }

        @Override
        public Collection<V2> c() {
            return C.m(this.f66229d.values(), this.f66230e);
        }

        @Override
        public void clear() {
            this.f66229d.clear();
        }

        @Override
        public Set<C> d0() {
            return this.f66229d.d0();
        }

        @Override
        @CheckForNull
        public V2 e(@CheckForNull Object obj, @CheckForNull Object obj2) {
            if (Q(obj, obj2)) {
                return this.f66230e.apply((Object) Z1.a(this.f66229d.e(obj, obj2)));
            }
            return null;
        }

        public InterfaceC15902t<S2.a<R, C, V1>, S2.a<R, C, V2>> f() {
            return new a();
        }

        @Override
        public Map<C, V2> i0(@InterfaceC12518f2 R r10) {
            return Q1.B0(this.f66229d.i0(r10), this.f66230e);
        }

        @Override
        @CheckForNull
        public V2 remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            if (Q(obj, obj2)) {
                return this.f66230e.apply((Object) Z1.a(this.f66229d.remove(obj, obj2)));
            }
            return null;
        }

        @Override
        public int size() {
            return this.f66229d.size();
        }

        @Override
        public Map<R, Map<C, V2>> u() {
            return Q1.B0(this.f66229d.u(), new b());
        }

        @Override
        public Set<R> x() {
            return this.f66229d.x();
        }
    }

    public static class e<C, R, V> extends AbstractC12559q<C, R, V> {

        public static final InterfaceC15902t<S2.a<?, ?, ?>, S2.a<?, ?, ?>> f66234e = new a();

        public final S2<R, C, V> f66235d;

        public class a implements InterfaceC15902t<S2.a<?, ?, ?>, S2.a<?, ?, ?>> {
            @Override
            public S2.a<?, ?, ?> apply(S2.a<?, ?, ?> aVar) {
                return T2.c(aVar.a(), aVar.b(), aVar.getValue());
            }
        }

        public e(S2<R, C, V> s22) {
            this.f66235d = (S2) w2.H.E(s22);
        }

        @Override
        public Map<R, Map<C, V>> A() {
            return this.f66235d.u();
        }

        @Override
        public Map<C, V> B(@InterfaceC12518f2 R r10) {
            return this.f66235d.i0(r10);
        }

        @Override
        @CheckForNull
        public V L(@InterfaceC12518f2 C c10, @InterfaceC12518f2 R r10, @InterfaceC12518f2 V v10) {
            return this.f66235d.L(r10, c10, v10);
        }

        @Override
        public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f66235d.Q(obj2, obj);
        }

        @Override
        public void Y(S2<? extends C, ? extends R, ? extends V> s22) {
            this.f66235d.Y(T2.g(s22));
        }

        @Override
        public Iterator<S2.a<C, R, V>> a() {
            return E1.c0(this.f66235d.c0().iterator(), f66234e);
        }

        @Override
        public void clear() {
            this.f66235d.clear();
        }

        @Override
        public boolean containsValue(@CheckForNull Object obj) {
            return this.f66235d.containsValue(obj);
        }

        @Override
        public Set<R> d0() {
            return this.f66235d.x();
        }

        @Override
        @CheckForNull
        public V e(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f66235d.e(obj2, obj);
        }

        @Override
        public boolean e0(@CheckForNull Object obj) {
            return this.f66235d.g(obj);
        }

        @Override
        public boolean g(@CheckForNull Object obj) {
            return this.f66235d.e0(obj);
        }

        @Override
        public Map<R, V> i0(@InterfaceC12518f2 C c10) {
            return this.f66235d.B(c10);
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            return this.f66235d.remove(obj2, obj);
        }

        @Override
        public int size() {
            return this.f66235d.size();
        }

        @Override
        public Map<C, Map<R, V>> u() {
            return this.f66235d.A();
        }

        @Override
        public Collection<V> values() {
            return this.f66235d.values();
        }

        @Override
        public Set<C> x() {
            return this.f66235d.d0();
        }
    }

    public static final class f<R, C, V> extends g<R, C, V> implements A2<R, C, V> {

        public static final long f66236d = 0;

        public f(A2<R, ? extends C, ? extends V> a22) {
            super(a22);
        }

        @Override
        public A2<R, C, V> k0() {
            return (A2) super.k0();
        }

        @Override
        public SortedMap<R, Map<C, V>> u() {
            return Collections.unmodifiableSortedMap(Q1.D0(k0().u(), T2.a()));
        }

        @Override
        public SortedSet<R> x() {
            return Collections.unmodifiableSortedSet(k0().x());
        }
    }

    public static class g<R, C, V> extends Q0<R, C, V> implements Serializable {

        public static final long f66237c = 0;

        public final S2<? extends R, ? extends C, ? extends V> f66238b;

        public g(S2<? extends R, ? extends C, ? extends V> s22) {
            this.f66238b = (S2) w2.H.E(s22);
        }

        @Override
        public Map<C, Map<R, V>> A() {
            return Collections.unmodifiableMap(Q1.B0(super.A(), T2.a()));
        }

        @Override
        public Map<R, V> B(@InterfaceC12518f2 C c10) {
            return Collections.unmodifiableMap(super.B(c10));
        }

        @Override
        @CheckForNull
        public V L(@InterfaceC12518f2 R r10, @InterfaceC12518f2 C c10, @InterfaceC12518f2 V v10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void Y(S2<? extends R, ? extends C, ? extends V> s22) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<S2.a<R, C, V>> c0() {
            return Collections.unmodifiableSet(super.c0());
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Set<C> d0() {
            return Collections.unmodifiableSet(super.d0());
        }

        @Override
        public Map<C, V> i0(@InterfaceC12518f2 R r10) {
            return Collections.unmodifiableMap(super.i0(r10));
        }

        @Override
        public S2<R, C, V> k0() {
            return this.f66238b;
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map<R, Map<C, V>> u() {
            return Collections.unmodifiableMap(Q1.B0(super.u(), T2.a()));
        }

        @Override
        public Collection<V> values() {
            return Collections.unmodifiableCollection(super.values());
        }

        @Override
        public Set<R> x() {
            return Collections.unmodifiableSet(super.x());
        }
    }

    public static InterfaceC15902t a() {
        return j();
    }

    public static boolean b(S2<?, ?, ?> s22, @CheckForNull Object obj) {
        if (obj == s22) {
            return true;
        }
        if (obj instanceof S2) {
            return s22.c0().equals(((S2) obj).c0());
        }
        return false;
    }

    public static <R, C, V> S2.a<R, C, V> c(@InterfaceC12518f2 R r10, @InterfaceC12518f2 C c10, @InterfaceC12518f2 V v10) {
        return new c(r10, c10, v10);
    }

    @InterfaceC15800a
    public static <R, C, V> S2<R, C, V> d(Map<R, Map<C, V>> map, w2.Q<? extends Map<C, V>> q10) {
        w2.H.d(map.isEmpty());
        w2.H.E(q10);
        return new Q2(map, q10);
    }

    public static <R, C, V> S2<R, C, V> e(S2<R, C, V> s22) {
        return R2.z(s22, null);
    }

    @InterfaceC15800a
    public static <R, C, V1, V2> S2<R, C, V2> f(S2<R, C, V1> s22, InterfaceC15902t<? super V1, V2> interfaceC15902t) {
        return new d(s22, interfaceC15902t);
    }

    public static <R, C, V> S2<C, R, V> g(S2<R, C, V> s22) {
        return s22 instanceof e ? ((e) s22).f66235d : new e(s22);
    }

    @InterfaceC15800a
    public static <R, C, V> A2<R, C, V> h(A2<R, ? extends C, ? extends V> a22) {
        return new f(a22);
    }

    public static <R, C, V> S2<R, C, V> i(S2<? extends R, ? extends C, ? extends V> s22) {
        return new g(s22);
    }

    public static <K, V> InterfaceC15902t<Map<K, V>, Map<K, V>> j() {
        return (InterfaceC15902t<Map<K, V>, Map<K, V>>) f66224a;
    }
}
