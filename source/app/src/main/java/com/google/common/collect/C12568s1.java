package com.google.common.collect;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12545m1;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.AbstractC12588x1;
import com.google.common.collect.B2;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true, serializable = true)
public class C12568s1<K, V> extends AbstractC12545m1<K, V> implements C2<K, V> {

    @v2.c
    public static final long f66853m = 0;

    public final transient AbstractC12564r1<V> f66854j;

    @q3.h
    @CheckForNull
    @J2.b
    public transient C12568s1<V, K> f66855k;

    @q3.h
    @CheckForNull
    @J2.b
    public transient AbstractC12564r1<Map.Entry<K, V>> f66856l;

    public static final class a<K, V> extends AbstractC12545m1.c<K, V> {
        @Override
        public Collection<V> c() {
            return C12526h2.h();
        }

        @Override
        public C12568s1<K, V> a() {
            Collection entrySet = this.f66726a.entrySet();
            Comparator<? super K> comparator = this.f66727b;
            if (comparator != null) {
                entrySet = Ordering.i(comparator).D().l(entrySet);
            }
            return C12568s1.V(entrySet, this.f66728c);
        }

        @Override
        @I2.a
        public a<K, V> b(AbstractC12545m1.c<K, V> cVar) {
            super.b(cVar);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> d(Comparator<? super K> comparator) {
            super.d(comparator);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> e(Comparator<? super V> comparator) {
            super.e(comparator);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> f(K k10, V v10) {
            super.f(k10, v10);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> g(Map.Entry<? extends K, ? extends V> entry) {
            super.g(entry);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> h(S1<? extends K, ? extends V> s12) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : s12.k().entrySet()) {
                j(entry.getKey(), entry.getValue());
            }
            return this;
        }

        @Override
        @I2.a
        @InterfaceC15800a
        public a<K, V> i(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.i(iterable);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> j(K k10, Iterable<? extends V> iterable) {
            super.j(k10, iterable);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> k(K k10, V... vArr) {
            return j(k10, Arrays.asList(vArr));
        }
    }

    public static final class b<K, V> extends AbstractC12564r1<Map.Entry<K, V>> {

        @q3.i
        public final transient C12568s1<K, V> f66857g;

        public b(C12568s1<K, V> c12568s1) {
            this.f66857g = c12568s1;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f66857g.g0(entry.getKey(), entry.getValue());
        }

        @Override
        public boolean h() {
            return false;
        }

        @Override
        public e3<Map.Entry<K, V>> iterator() {
            return this.f66857g.h();
        }

        @Override
        public int size() {
            return this.f66857g.size();
        }
    }

    @v2.c
    public static final class c {

        public static final B2.b<C12568s1> f66858a = B2.a(C12568s1.class, "emptySet");
    }

    public C12568s1(AbstractC12529i1<K, AbstractC12564r1<V>> abstractC12529i1, int i10, @CheckForNull Comparator<? super V> comparator) {
        super(abstractC12529i1, i10);
        this.f66854j = T(comparator);
    }

    public static <K, V> a<K, V> P() {
        return new a<>();
    }

    public static <K, V> C12568s1<K, V> Q(S1<? extends K, ? extends V> s12) {
        return R(s12, null);
    }

    public static <K, V> C12568s1<K, V> R(S1<? extends K, ? extends V> s12, @CheckForNull Comparator<? super V> comparator) {
        w2.H.E(s12);
        if (s12.isEmpty() && comparator == null) {
            return a0();
        }
        if (s12 instanceof C12568s1) {
            C12568s1<K, V> c12568s1 = (C12568s1) s12;
            if (!c12568s1.B()) {
                return c12568s1;
            }
        }
        return V(s12.k().entrySet(), comparator);
    }

    @InterfaceC15800a
    public static <K, V> C12568s1<K, V> S(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().i(iterable).a();
    }

    public static <V> AbstractC12564r1<V> T(@CheckForNull Comparator<? super V> comparator) {
        return comparator == null ? AbstractC12564r1.z() : AbstractC12588x1.c0(comparator);
    }

    public static <K, V> C12568s1<K, V> V(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @CheckForNull Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return a0();
        }
        AbstractC12529i1.b bVar = new AbstractC12529i1.b(collection.size());
        int i10 = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            AbstractC12564r1 k02 = k0(comparator, entry.getValue());
            if (!k02.isEmpty()) {
                bVar.i(key, k02);
                i10 += k02.size();
            }
        }
        return new C12568s1<>(bVar.d(), i10, comparator);
    }

    public static <K, V> C12568s1<K, V> a0() {
        return C12496a0.f66417n;
    }

    public static <K, V> C12568s1<K, V> b0(K k10, V v10) {
        a P10 = P();
        P10.f(k10, v10);
        return P10.a();
    }

    public static <K, V> C12568s1<K, V> c0(K k10, V v10, K k11, V v11) {
        a P10 = P();
        P10.f(k10, v10);
        P10.f(k11, v11);
        return P10.a();
    }

    public static <K, V> C12568s1<K, V> d0(K k10, V v10, K k11, V v11, K k12, V v12) {
        a P10 = P();
        P10.f(k10, v10);
        P10.f(k11, v11);
        P10.f(k12, v12);
        return P10.a();
    }

    public static <K, V> C12568s1<K, V> e0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        a P10 = P();
        P10.f(k10, v10);
        P10.f(k11, v11);
        P10.f(k12, v12);
        P10.f(k13, v13);
        return P10.a();
    }

    public static <K, V> C12568s1<K, V> f0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        a P10 = P();
        P10.f(k10, v10);
        P10.f(k11, v11);
        P10.f(k12, v12);
        P10.f(k13, v13);
        P10.f(k14, v14);
        return P10.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @v2.c
    private void h0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb2 = new StringBuilder(29);
            sb2.append("Invalid key count ");
            sb2.append(readInt);
            throw new InvalidObjectException(sb2.toString());
        }
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        int i11 = 0;
        for (int i12 = 0; i12 < readInt; i12++) {
            Object readObject = objectInputStream.readObject();
            int readInt2 = objectInputStream.readInt();
            if (readInt2 <= 0) {
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Invalid value count ");
                sb3.append(readInt2);
                throw new InvalidObjectException(sb3.toString());
            }
            AbstractC12564r1.a l02 = l0(comparator);
            for (int i13 = 0; i13 < readInt2; i13++) {
                l02.g(objectInputStream.readObject());
            }
            AbstractC12564r1 e10 = l02.e();
            if (e10.size() != readInt2) {
                String valueOf = String.valueOf(readObject);
                StringBuilder sb4 = new StringBuilder(valueOf.length() + 40);
                sb4.append("Duplicate key-value pairs exist for key ");
                sb4.append(valueOf);
                throw new InvalidObjectException(sb4.toString());
            }
            i10.i(readObject, e10);
            i11 += readInt2;
        }
        try {
            AbstractC12545m1.e.f66731a.b(this, i10.d());
            AbstractC12545m1.e.f66732b.a(this, i11);
            c.f66858a.b(this, T(comparator));
        } catch (IllegalArgumentException e11) {
            throw ((InvalidObjectException) new InvalidObjectException(e11.getMessage()).initCause(e11));
        }
    }

    public static <V> AbstractC12564r1<V> k0(@CheckForNull Comparator<? super V> comparator, Collection<? extends V> collection) {
        return comparator == null ? AbstractC12564r1.s(collection) : AbstractC12588x1.U(comparator, collection);
    }

    public static <V> AbstractC12564r1.a<V> l0(@CheckForNull Comparator<? super V> comparator) {
        return comparator == null ? new AbstractC12564r1.a<>() : new AbstractC12588x1.a(comparator);
    }

    @v2.c
    private void m0(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(z());
        B2.j(this, objectOutputStream);
    }

    @Override
    public AbstractC12564r1<Map.Entry<K, V>> v() {
        AbstractC12564r1<Map.Entry<K, V>> abstractC12564r1 = this.f66856l;
        if (abstractC12564r1 != null) {
            return abstractC12564r1;
        }
        b bVar = new b(this);
        this.f66856l = bVar;
        return bVar;
    }

    @Override
    public AbstractC12564r1<V> y(K k10) {
        return (AbstractC12564r1) w2.z.a((AbstractC12564r1) this.f66717g.get(k10), this.f66854j);
    }

    @Override
    public C12568s1<V, K> A() {
        C12568s1<V, K> c12568s1 = this.f66855k;
        if (c12568s1 != null) {
            return c12568s1;
        }
        C12568s1<V, K> Y10 = Y();
        this.f66855k = Y10;
        return Y10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C12568s1<V, K> Y() {
        a P10 = P();
        e3 it = v().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            P10.f(entry.getValue(), entry.getKey());
        }
        C12568s1<V, K> a10 = P10.a();
        a10.f66855k = this;
        return a10;
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final AbstractC12564r1<V> c(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final AbstractC12564r1<V> d(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @CheckForNull
    public Comparator<? super V> z() {
        AbstractC12564r1<V> abstractC12564r1 = this.f66854j;
        if (abstractC12564r1 instanceof AbstractC12588x1) {
            return ((AbstractC12588x1) abstractC12564r1).comparator();
        }
        return null;
    }
}
