package com.google.common.collect;

import com.google.common.collect.Q1;
import com.google.common.collect.S2;
import com.google.common.collect.T2;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true)
@InterfaceC15800a
public final class C12574u<R, C, V> extends AbstractC12559q<R, C, V> implements Serializable {

    public static final long f66888k = 0;

    public final AbstractC12521g1<R> f66889d;

    public final AbstractC12521g1<C> f66890e;

    public final AbstractC12529i1<R, Integer> f66891f;

    public final AbstractC12529i1<C, Integer> f66892g;

    public final V[][] f66893h;

    @CheckForNull
    public transient C12574u<R, C, V>.f f66894i;

    @CheckForNull
    public transient C12574u<R, C, V>.h f66895j;

    public class a extends AbstractC12499b<S2.a<R, C, V>> {
        public a(int i10) {
            super(i10);
        }

        @Override
        public S2.a<R, C, V> a(int i10) {
            return C12574u.this.v(i10);
        }
    }

    public class b extends T2.b<R, C, V> {

        public final int f66897b;

        public final int f66898c;

        public final int f66899d;

        public b(int i10) {
            this.f66899d = i10;
            this.f66897b = i10 / C12574u.this.f66890e.size();
            this.f66898c = i10 % C12574u.this.f66890e.size();
        }

        @Override
        public C a() {
            return (C) C12574u.this.f66890e.get(this.f66898c);
        }

        @Override
        public R b() {
            return (R) C12574u.this.f66889d.get(this.f66897b);
        }

        @Override
        @CheckForNull
        public V getValue() {
            return (V) C12574u.this.m(this.f66897b, this.f66898c);
        }
    }

    public class c extends AbstractC12499b<V> {
        public c(int i10) {
            super(i10);
        }

        @Override
        @CheckForNull
        public V a(int i10) {
            return (V) C12574u.this.w(i10);
        }
    }

    public static abstract class d<K, V> extends Q1.A<K, V> {

        public final AbstractC12529i1<K, Integer> f66902b;

        public class a extends AbstractC12519g<K, V> {

            public final int f66903b;

            public a(int i10) {
                this.f66903b = i10;
            }

            @Override
            public K getKey() {
                return (K) d.this.g(this.f66903b);
            }

            @Override
            @InterfaceC12518f2
            public V getValue() {
                return (V) d.this.j(this.f66903b);
            }

            @Override
            @InterfaceC12518f2
            public V setValue(@InterfaceC12518f2 V v10) {
                return (V) d.this.k(this.f66903b, v10);
            }
        }

        public class b extends AbstractC12499b<Map.Entry<K, V>> {
            public b(int i10) {
                super(i10);
            }

            @Override
            public Map.Entry<K, V> a(int i10) {
                return d.this.f(i10);
            }
        }

        public d(AbstractC12529i1 abstractC12529i1, a aVar) {
            this(abstractC12529i1);
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return this.f66902b.containsKey(obj);
        }

        @Override
        public Iterator<Map.Entry<K, V>> e() {
            return new b(size());
        }

        public Map.Entry<K, V> f(int i10) {
            w2.H.C(i10, size());
            return new a(i10);
        }

        public K g(int i10) {
            return this.f66902b.o().a().get(i10);
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            Integer num = this.f66902b.get(obj);
            if (num == null) {
                return null;
            }
            return j(num.intValue());
        }

        public abstract String i();

        @Override
        public boolean isEmpty() {
            return this.f66902b.isEmpty();
        }

        @InterfaceC12518f2
        public abstract V j(int i10);

        @InterfaceC12518f2
        public abstract V k(int i10, @InterfaceC12518f2 V v10);

        @Override
        public Set<K> o() {
            return this.f66902b.o();
        }

        @Override
        @CheckForNull
        public V put(K k10, @InterfaceC12518f2 V v10) {
            Integer num = this.f66902b.get(k10);
            if (num != null) {
                return k(num.intValue(), v10);
            }
            String i10 = i();
            String valueOf = String.valueOf(k10);
            String valueOf2 = String.valueOf(this.f66902b.o());
            StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 9 + valueOf.length() + valueOf2.length());
            sb2.append(i10);
            sb2.append(" ");
            sb2.append(valueOf);
            sb2.append(" not in ");
            sb2.append(valueOf2);
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override
        @CheckForNull
        public V remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return this.f66902b.size();
        }

        public d(AbstractC12529i1<K, Integer> abstractC12529i1) {
            this.f66902b = abstractC12529i1;
        }
    }

    public class e extends d<R, V> {

        public final int f66906c;

        public e(int i10) {
            super(C12574u.this.f66891f, null);
            this.f66906c = i10;
        }

        @Override
        public String i() {
            return "Row";
        }

        @Override
        @CheckForNull
        public V j(int i10) {
            return (V) C12574u.this.m(i10, this.f66906c);
        }

        @Override
        @CheckForNull
        public V k(int i10, @CheckForNull V v10) {
            return (V) C12574u.this.C(i10, this.f66906c, v10);
        }
    }

    public class f extends d<C, Map<R, V>> {
        public f(C12574u c12574u, a aVar) {
            this();
        }

        @Override
        public String i() {
            return "Column";
        }

        @Override
        public Map<R, V> j(int i10) {
            return new e(i10);
        }

        @Override
        @CheckForNull
        public Map<R, V> put(C c10, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map<R, V> k(int i10, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        public f() {
            super(C12574u.this.f66892g, null);
        }
    }

    public class g extends d<C, V> {

        public final int f66909c;

        public g(int i10) {
            super(C12574u.this.f66892g, null);
            this.f66909c = i10;
        }

        @Override
        public String i() {
            return "Column";
        }

        @Override
        @CheckForNull
        public V j(int i10) {
            return (V) C12574u.this.m(this.f66909c, i10);
        }

        @Override
        @CheckForNull
        public V k(int i10, @CheckForNull V v10) {
            return (V) C12574u.this.C(this.f66909c, i10, v10);
        }
    }

    public class h extends d<R, Map<C, V>> {
        public h(C12574u c12574u, a aVar) {
            this();
        }

        @Override
        public String i() {
            return "Row";
        }

        @Override
        public Map<C, V> j(int i10) {
            return new g(i10);
        }

        @Override
        @CheckForNull
        public Map<C, V> put(R r10, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map<C, V> k(int i10, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        public h() {
            super(C12574u.this.f66891f, null);
        }
    }

    public C12574u(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        AbstractC12521g1<R> p10 = AbstractC12521g1.p(iterable);
        this.f66889d = p10;
        AbstractC12521g1<C> p11 = AbstractC12521g1.p(iterable2);
        this.f66890e = p11;
        w2.H.d(p10.isEmpty() == p11.isEmpty());
        this.f66891f = Q1.Q(p10);
        this.f66892g = Q1.Q(p11);
        this.f66893h = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, p10.size(), p11.size()));
        s();
    }

    public static <R, C, V> C12574u<R, C, V> p(S2<R, C, ? extends V> s22) {
        return s22 instanceof C12574u ? new C12574u<>((C12574u) s22) : new C12574u<>(s22);
    }

    public static <R, C, V> C12574u<R, C, V> q(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new C12574u<>(iterable, iterable2);
    }

    public S2.a<R, C, V> v(int i10) {
        return new b(i10);
    }

    @CheckForNull
    public V w(int i10) {
        return m(i10 / this.f66890e.size(), i10 % this.f66890e.size());
    }

    @Override
    public Map<C, Map<R, V>> A() {
        C12574u<R, C, V>.f fVar = this.f66894i;
        if (fVar != null) {
            return fVar;
        }
        C12574u<R, C, V>.f fVar2 = new f(this, null);
        this.f66894i = fVar2;
        return fVar2;
    }

    @Override
    public Map<R, V> B(C c10) {
        w2.H.E(c10);
        Integer num = this.f66892g.get(c10);
        return num == null ? Collections.emptyMap() : new e(num.intValue());
    }

    @I2.a
    @CheckForNull
    public V C(int i10, int i11, @CheckForNull V v10) {
        w2.H.C(i10, this.f66889d.size());
        w2.H.C(i11, this.f66890e.size());
        V[] vArr = this.f66893h[i10];
        V v11 = vArr[i11];
        vArr[i11] = v10;
        return v11;
    }

    @v2.c
    public V[][] D(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.f66889d.size(), this.f66890e.size()));
        for (int i10 = 0; i10 < this.f66889d.size(); i10++) {
            V[] vArr2 = this.f66893h[i10];
            System.arraycopy(vArr2, 0, vArr[i10], 0, vArr2.length);
        }
        return vArr;
    }

    @Override
    @I2.a
    @CheckForNull
    public V L(R r10, C c10, @CheckForNull V v10) {
        w2.H.E(r10);
        w2.H.E(c10);
        Integer num = this.f66891f.get(r10);
        w2.H.y(num != null, "Row %s not in %s", r10, this.f66889d);
        Integer num2 = this.f66892g.get(c10);
        w2.H.y(num2 != null, "Column %s not in %s", c10, this.f66890e);
        return C(num.intValue(), num2.intValue(), v10);
    }

    @Override
    public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return e0(obj) && g(obj2);
    }

    @Override
    public void Y(S2<? extends R, ? extends C, ? extends V> s22) {
        super.Y(s22);
    }

    @Override
    public Iterator<S2.a<R, C, V>> a() {
        return new a(size());
    }

    @Override
    public Set<S2.a<R, C, V>> c0() {
        return super.c0();
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        for (V[] vArr : this.f66893h) {
            for (V v10 : vArr) {
                if (w2.B.a(obj, v10)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public Iterator<V> d() {
        return new c(size());
    }

    @Override
    @CheckForNull
    public V e(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Integer num = this.f66891f.get(obj);
        Integer num2 = this.f66892g.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return m(num.intValue(), num2.intValue());
    }

    @Override
    public boolean e0(@CheckForNull Object obj) {
        return this.f66891f.containsKey(obj);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean g(@CheckForNull Object obj) {
        return this.f66892g.containsKey(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public Map<C, V> i0(R r10) {
        w2.H.E(r10);
        Integer num = this.f66891f.get(r10);
        return num == null ? Collections.emptyMap() : new g(num.intValue());
    }

    @Override
    public boolean isEmpty() {
        return this.f66889d.isEmpty() || this.f66890e.isEmpty();
    }

    @CheckForNull
    public V m(int i10, int i11) {
        w2.H.C(i10, this.f66889d.size());
        w2.H.C(i11, this.f66890e.size());
        return this.f66893h[i10][i11];
    }

    public AbstractC12521g1<C> n() {
        return this.f66890e;
    }

    @Override
    public AbstractC12564r1<C> d0() {
        return this.f66892g.o();
    }

    @I2.a
    @CheckForNull
    public V r(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Integer num = this.f66891f.get(obj);
        Integer num2 = this.f66892g.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return C(num.intValue(), num2.intValue(), null);
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        throw new UnsupportedOperationException();
    }

    public void s() {
        for (V[] vArr : this.f66893h) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override
    public int size() {
        return this.f66889d.size() * this.f66890e.size();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public Map<R, Map<C, V>> u() {
        C12574u<R, C, V>.h hVar = this.f66895j;
        if (hVar != null) {
            return hVar;
        }
        C12574u<R, C, V>.h hVar2 = new h(this, null);
        this.f66895j = hVar2;
        return hVar2;
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    public AbstractC12521g1<R> y() {
        return this.f66889d;
    }

    @Override
    public AbstractC12564r1<R> x() {
        return this.f66891f.o();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C12574u(S2<R, C, ? extends V> s22) {
        this(s22.x(), s22.d0());
        Y(s22);
    }

    public C12574u(C12574u<R, C, V> c12574u) {
        AbstractC12521g1<R> abstractC12521g1 = c12574u.f66889d;
        this.f66889d = abstractC12521g1;
        AbstractC12521g1<C> abstractC12521g12 = c12574u.f66890e;
        this.f66890e = abstractC12521g12;
        this.f66891f = c12574u.f66891f;
        this.f66892g = c12574u.f66892g;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, abstractC12521g1.size(), abstractC12521g12.size()));
        this.f66893h = vArr;
        for (int i10 = 0; i10 < this.f66889d.size(); i10++) {
            V[] vArr2 = c12574u.f66893h[i10];
            System.arraycopy(vArr2, 0, vArr[i10], 0, vArr2.length);
        }
    }
}
