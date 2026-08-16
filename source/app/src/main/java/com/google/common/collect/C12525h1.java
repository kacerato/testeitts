package com.google.common.collect;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12545m1;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true, serializable = true)
public class C12525h1<K, V> extends AbstractC12545m1<K, V> implements L1<K, V> {

    @v2.c
    public static final long f66656k = 0;

    @q3.h
    @CheckForNull
    @J2.b
    public transient C12525h1<V, K> f66657j;

    public static final class a<K, V> extends AbstractC12545m1.c<K, V> {
        @Override
        public C12525h1<K, V> a() {
            return (C12525h1) super.a();
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
            super.h(s12);
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
            super.k(k10, vArr);
            return this;
        }
    }

    public C12525h1(AbstractC12529i1<K, AbstractC12521g1<V>> abstractC12529i1, int i10) {
        super(abstractC12529i1, i10);
    }

    public static <K, V> a<K, V> P() {
        return new a<>();
    }

    public static <K, V> C12525h1<K, V> Q(S1<? extends K, ? extends V> s12) {
        if (s12.isEmpty()) {
            return W();
        }
        if (s12 instanceof C12525h1) {
            C12525h1<K, V> c12525h1 = (C12525h1) s12;
            if (!c12525h1.B()) {
                return c12525h1;
            }
        }
        return S(s12.k().entrySet(), null);
    }

    @InterfaceC15800a
    public static <K, V> C12525h1<K, V> R(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().i(iterable).a();
    }

    public static <K, V> C12525h1<K, V> S(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return W();
        }
        AbstractC12529i1.b bVar = new AbstractC12529i1.b(collection.size());
        int i10 = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            AbstractC12521g1 r10 = comparator == null ? AbstractC12521g1.r(value) : AbstractC12521g1.N(comparator, value);
            if (!r10.isEmpty()) {
                bVar.i(key, r10);
                i10 += r10.size();
            }
        }
        return new C12525h1<>(bVar.d(), i10);
    }

    public static <K, V> C12525h1<K, V> W() {
        return Z.f66393l;
    }

    public static <K, V> C12525h1<K, V> X(K k10, V v10) {
        a P10 = P();
        P10.f(k10, v10);
        return P10.a();
    }

    public static <K, V> C12525h1<K, V> Y(K k10, V v10, K k11, V v11) {
        a P10 = P();
        P10.f(k10, v10);
        P10.f(k11, v11);
        return P10.a();
    }

    public static <K, V> C12525h1<K, V> a0(K k10, V v10, K k11, V v11, K k12, V v12) {
        a P10 = P();
        P10.f(k10, v10);
        P10.f(k11, v11);
        P10.f(k12, v12);
        return P10.a();
    }

    public static <K, V> C12525h1<K, V> b0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        a P10 = P();
        P10.f(k10, v10);
        P10.f(k11, v11);
        P10.f(k12, v12);
        P10.f(k13, v13);
        return P10.a();
    }

    public static <K, V> C12525h1<K, V> c0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
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
    private void d0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
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
            AbstractC12521g1.a m10 = AbstractC12521g1.m();
            for (int i13 = 0; i13 < readInt2; i13++) {
                m10.a(objectInputStream.readObject());
            }
            i10.i(readObject, m10.e());
            i11 += readInt2;
        }
        try {
            AbstractC12545m1.e.f66731a.b(this, i10.d());
            AbstractC12545m1.e.f66732b.a(this, i11);
        } catch (IllegalArgumentException e10) {
            throw ((InvalidObjectException) new InvalidObjectException(e10.getMessage()).initCause(e10));
        }
    }

    @v2.c
    private void h0(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        B2.j(this, objectOutputStream);
    }

    @Override
    public AbstractC12521g1<V> y(K k10) {
        AbstractC12521g1<V> abstractC12521g1 = (AbstractC12521g1) this.f66717g.get(k10);
        return abstractC12521g1 == null ? AbstractC12521g1.x() : abstractC12521g1;
    }

    @Override
    public C12525h1<V, K> A() {
        C12525h1<V, K> c12525h1 = this.f66657j;
        if (c12525h1 != null) {
            return c12525h1;
        }
        C12525h1<V, K> V10 = V();
        this.f66657j = V10;
        return V10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C12525h1<V, K> V() {
        a P10 = P();
        e3 it = v().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            P10.f(entry.getValue(), entry.getKey());
        }
        C12525h1<V, K> a10 = P10.a();
        a10.f66657j = this;
        return a10;
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final AbstractC12521g1<V> c(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final AbstractC12521g1<V> d(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }
}
