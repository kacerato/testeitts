package w2;

import java.io.Serializable;
import java.util.Map;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b
public final class C15904v {

    public static class b<E> implements InterfaceC15902t<Object, E>, Serializable {

        public static final long f126366c = 0;

        @E
        public final E f126367b;

        public b(@E E e10) {
            this.f126367b = e10;
        }

        @Override
        @E
        public E apply(@CheckForNull Object obj) {
            return this.f126367b;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof b) {
                return B.a(this.f126367b, ((b) obj).f126367b);
            }
            return false;
        }

        public int hashCode() {
            E e10 = this.f126367b;
            if (e10 == null) {
                return 0;
            }
            return e10.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126367b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 20);
            sb2.append("Functions.constant(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class c<K, V> implements InterfaceC15902t<K, V>, Serializable {

        public static final long f126368d = 0;

        public final Map<K, ? extends V> f126369b;

        @E
        public final V f126370c;

        public c(Map<K, ? extends V> map, @E V v10) {
            this.f126369b = (Map) H.E(map);
            this.f126370c = v10;
        }

        @Override
        @E
        public V apply(@E K k10) {
            V v10 = this.f126369b.get(k10);
            return (v10 != null || this.f126369b.containsKey(k10)) ? (V) C15880A.a(v10) : this.f126370c;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f126369b.equals(cVar.f126369b) && B.a(this.f126370c, cVar.f126370c);
        }

        public int hashCode() {
            return B.b(this.f126369b, this.f126370c);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126369b);
            String valueOf2 = String.valueOf(this.f126370c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 33 + valueOf2.length());
            sb2.append("Functions.forMap(");
            sb2.append(valueOf);
            sb2.append(", defaultValue=");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class d<A, B, C> implements InterfaceC15902t<A, C>, Serializable {

        public static final long f126371d = 0;

        public final InterfaceC15902t<B, C> f126372b;

        public final InterfaceC15902t<A, ? extends B> f126373c;

        public d(InterfaceC15902t<B, C> interfaceC15902t, InterfaceC15902t<A, ? extends B> interfaceC15902t2) {
            this.f126372b = (InterfaceC15902t) H.E(interfaceC15902t);
            this.f126373c = (InterfaceC15902t) H.E(interfaceC15902t2);
        }

        @Override
        @E
        public C apply(@E A a10) {
            return (C) this.f126372b.apply(this.f126373c.apply(a10));
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f126373c.equals(dVar.f126373c) && this.f126372b.equals(dVar.f126372b);
        }

        public int hashCode() {
            return this.f126373c.hashCode() ^ this.f126372b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126372b);
            String valueOf2 = String.valueOf(this.f126373c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append("(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class e<K, V> implements InterfaceC15902t<K, V>, Serializable {

        public static final long f126374c = 0;

        public final Map<K, V> f126375b;

        public e(Map<K, V> map) {
            this.f126375b = (Map) H.E(map);
        }

        @Override
        @E
        public V apply(@E K k10) {
            V v10 = this.f126375b.get(k10);
            H.u(v10 != null || this.f126375b.containsKey(k10), "Key '%s' not present in map", k10);
            return (V) C15880A.a(v10);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof e) {
                return this.f126375b.equals(((e) obj).f126375b);
            }
            return false;
        }

        public int hashCode() {
            return this.f126375b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126375b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 18);
            sb2.append("Functions.forMap(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public enum f implements InterfaceC15902t<Object, Object> {
        INSTANCE;

        @Override
        @CheckForNull
        public Object apply(@CheckForNull Object obj) {
            return obj;
        }

        @Override
        public String toString() {
            return "Functions.identity()";
        }
    }

    public static class g<T> implements InterfaceC15902t<T, Boolean>, Serializable {

        public static final long f126376c = 0;

        public final I<T> f126377b;

        @Override
        public Boolean apply(@E T t10) {
            return Boolean.valueOf(this.f126377b.apply(t10));
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof g) {
                return this.f126377b.equals(((g) obj).f126377b);
            }
            return false;
        }

        public int hashCode() {
            return this.f126377b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126377b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 24);
            sb2.append("Functions.forPredicate(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        public g(I<T> i10) {
            this.f126377b = (I) H.E(i10);
        }
    }

    public static class h<F, T> implements InterfaceC15902t<F, T>, Serializable {

        public static final long f126378c = 0;

        public final Q<T> f126379b;

        @Override
        @E
        public T apply(@E F f10) {
            return this.f126379b.get();
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof h) {
                return this.f126379b.equals(((h) obj).f126379b);
            }
            return false;
        }

        public int hashCode() {
            return this.f126379b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126379b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 23);
            sb2.append("Functions.forSupplier(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        public h(Q<T> q10) {
            this.f126379b = (Q) H.E(q10);
        }
    }

    public enum i implements InterfaceC15902t<Object, String> {
        INSTANCE;

        @Override
        public String apply(Object obj) {
            H.E(obj);
            return obj.toString();
        }

        @Override
        public String toString() {
            return "Functions.toStringFunction()";
        }
    }

    public static <A, B, C> InterfaceC15902t<A, C> a(InterfaceC15902t<B, C> interfaceC15902t, InterfaceC15902t<A, ? extends B> interfaceC15902t2) {
        return new d(interfaceC15902t, interfaceC15902t2);
    }

    public static <E> InterfaceC15902t<Object, E> b(@E E e10) {
        return new b(e10);
    }

    public static <K, V> InterfaceC15902t<K, V> c(Map<K, V> map) {
        return new e(map);
    }

    public static <K, V> InterfaceC15902t<K, V> d(Map<K, ? extends V> map, @E V v10) {
        return new c(map, v10);
    }

    public static <T> InterfaceC15902t<T, Boolean> e(I<T> i10) {
        return new g(i10);
    }

    public static <F, T> InterfaceC15902t<F, T> f(Q<T> q10) {
        return new h(q10);
    }

    public static <E> InterfaceC15902t<E, E> g() {
        return f.INSTANCE;
    }

    public static InterfaceC15902t<Object, String> h() {
        return i.INSTANCE;
    }
}
