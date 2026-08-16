package com.google.common.collect;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.I2;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@v2.c
@X
@InterfaceC15800a
public class C12557p1<K extends Comparable<?>, V> implements InterfaceC12542l2<K, V>, Serializable {

    public static final C12557p1<Comparable<?>, Object> f66769d = new C12557p1<>(AbstractC12521g1.x(), AbstractC12521g1.x());

    public static final long f66770e = 0;

    public final transient AbstractC12521g1<C12534j2<K>> f66771b;

    public final transient AbstractC12521g1<V> f66772c;

    public class a extends AbstractC12521g1<C12534j2<K>> {

        public final int f66773d;

        public final int f66774e;

        public final C12534j2 f66775f;

        public a(int i10, int i11, C12534j2 c12534j2) {
            this.f66773d = i10;
            this.f66774e = i11;
            this.f66775f = c12534j2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public C12534j2<K> get(int i10) {
            w2.H.C(i10, this.f66773d);
            return (i10 == 0 || i10 == this.f66773d + (-1)) ? ((C12534j2) C12557p1.this.f66771b.get(i10 + this.f66774e)).s(this.f66775f) : (C12534j2) C12557p1.this.f66771b.get(i10 + this.f66774e);
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public int size() {
            return this.f66773d;
        }
    }

    public class b extends C12557p1<K, V> {

        public final C12534j2 f66777f;

        public final C12557p1 f66778g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(C12557p1 c12557p1, AbstractC12521g1 abstractC12521g1, AbstractC12521g1 abstractC12521g12, C12534j2 c12534j2, C12557p1 c12557p12) {
            super(abstractC12521g1, abstractC12521g12);
            this.f66777f = c12534j2;
            this.f66778g = c12557p12;
        }

        @Override
        public Map e() {
            return super.e();
        }

        @Override
        public Map g() {
            return super.g();
        }

        @Override
        public C12557p1<K, V> d(C12534j2<K> c12534j2) {
            return this.f66777f.u(c12534j2) ? this.f66778g.d(c12534j2.s(this.f66777f)) : C12557p1.p();
        }
    }

    @I2.f
    public static final class c<K extends Comparable<?>, V> {

        public final List<Map.Entry<C12534j2<K>, V>> f66779a = M1.q();

        public C12557p1<K, V> a() {
            Collections.sort(this.f66779a, C12534j2.D().D());
            AbstractC12521g1.a aVar = new AbstractC12521g1.a(this.f66779a.size());
            AbstractC12521g1.a aVar2 = new AbstractC12521g1.a(this.f66779a.size());
            for (int i10 = 0; i10 < this.f66779a.size(); i10++) {
                C12534j2<K> key = this.f66779a.get(i10).getKey();
                if (i10 > 0) {
                    C12534j2<K> key2 = this.f66779a.get(i10 - 1).getKey();
                    if (key.u(key2) && !key.s(key2).v()) {
                        String valueOf = String.valueOf(key2);
                        String valueOf2 = String.valueOf(key);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 47 + valueOf2.length());
                        sb2.append("Overlapping ranges: range ");
                        sb2.append(valueOf);
                        sb2.append(" overlaps with entry ");
                        sb2.append(valueOf2);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                }
                aVar.a(key);
                aVar2.a(this.f66779a.get(i10).getValue());
            }
            return new C12557p1<>(aVar.e(), aVar2.e());
        }

        @I2.a
        public c<K, V> b(c<K, V> cVar) {
            this.f66779a.addAll(cVar.f66779a);
            return this;
        }

        @I2.a
        public c<K, V> c(C12534j2<K> c12534j2, V v10) {
            w2.H.E(c12534j2);
            w2.H.E(v10);
            w2.H.u(!c12534j2.v(), "Range must not be empty, but was %s", c12534j2);
            this.f66779a.add(Q1.O(c12534j2, v10));
            return this;
        }

        @I2.a
        public c<K, V> d(InterfaceC12542l2<K, ? extends V> interfaceC12542l2) {
            for (Map.Entry<C12534j2<K>, ? extends V> entry : interfaceC12542l2.e().entrySet()) {
                c(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    public static class d<K extends Comparable<?>, V> implements Serializable {

        public static final long f66780c = 0;

        public final AbstractC12529i1<C12534j2<K>, V> f66781b;

        public d(AbstractC12529i1<C12534j2<K>, V> abstractC12529i1) {
            this.f66781b = abstractC12529i1;
        }

        public Object a() {
            c cVar = new c();
            e3<Map.Entry<C12534j2<K>, V>> it = this.f66781b.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<C12534j2<K>, V> next = it.next();
                cVar.c(next.getKey(), next.getValue());
            }
            return cVar.a();
        }

        public Object b() {
            return this.f66781b.isEmpty() ? C12557p1.p() : a();
        }
    }

    public C12557p1(AbstractC12521g1<C12534j2<K>> abstractC12521g1, AbstractC12521g1<V> abstractC12521g12) {
        this.f66771b = abstractC12521g1;
        this.f66772c = abstractC12521g12;
    }

    public static <K extends Comparable<?>, V> c<K, V> n() {
        return new c<>();
    }

    public static <K extends Comparable<?>, V> C12557p1<K, V> o(InterfaceC12542l2<K, ? extends V> interfaceC12542l2) {
        if (interfaceC12542l2 instanceof C12557p1) {
            return (C12557p1) interfaceC12542l2;
        }
        Map<C12534j2<K>, ? extends V> e10 = interfaceC12542l2.e();
        AbstractC12521g1.a aVar = new AbstractC12521g1.a(e10.size());
        AbstractC12521g1.a aVar2 = new AbstractC12521g1.a(e10.size());
        for (Map.Entry<C12534j2<K>, ? extends V> entry : e10.entrySet()) {
            aVar.a(entry.getKey());
            aVar2.a(entry.getValue());
        }
        return new C12557p1<>(aVar.e(), aVar2.e());
    }

    public static <K extends Comparable<?>, V> C12557p1<K, V> p() {
        return (C12557p1<K, V>) f66769d;
    }

    public static <K extends Comparable<?>, V> C12557p1<K, V> q(C12534j2<K> c12534j2, V v10) {
        return new C12557p1<>(AbstractC12521g1.y(c12534j2), AbstractC12521g1.y(v10));
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void a(C12534j2<K> c12534j2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public C12534j2<K> c() {
        if (this.f66771b.isEmpty()) {
            throw new NoSuchElementException();
        }
        return C12534j2.k(this.f66771b.get(0).f66693b, this.f66771b.get(r1.size() - 1).f66694c);
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof InterfaceC12542l2) {
            return e().equals(((InterfaceC12542l2) obj).e());
        }
        return false;
    }

    @Override
    @CheckForNull
    public Map.Entry<C12534j2<K>, V> f(K k10) {
        int c10 = I2.c(this.f66771b, C12534j2.x(), Q.d(k10), I2.c.ANY_PRESENT, I2.b.NEXT_LOWER);
        if (c10 == -1) {
            return null;
        }
        C12534j2<K> c12534j2 = this.f66771b.get(c10);
        if (c12534j2.i(k10)) {
            return Q1.O(c12534j2, this.f66772c.get(c10));
        }
        return null;
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void h(InterfaceC12542l2<K, V> interfaceC12542l2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int hashCode() {
        return e().hashCode();
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void i(C12534j2<K> c12534j2, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @CheckForNull
    public V j(K k10) {
        int c10 = I2.c(this.f66771b, C12534j2.x(), Q.d(k10), I2.c.ANY_PRESENT, I2.b.NEXT_LOWER);
        if (c10 != -1 && this.f66771b.get(c10).i(k10)) {
            return this.f66772c.get(c10);
        }
        return null;
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void k(C12534j2<K> c12534j2, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12529i1<C12534j2<K>, V> g() {
        return this.f66771b.isEmpty() ? AbstractC12529i1.y() : new C12572t1(new C12581v2(this.f66771b.L(), C12534j2.D().F()), this.f66772c.L());
    }

    @Override
    public AbstractC12529i1<C12534j2<K>, V> e() {
        return this.f66771b.isEmpty() ? AbstractC12529i1.y() : new C12572t1(new C12581v2(this.f66771b, C12534j2.D()), this.f66772c);
    }

    @Override
    public C12557p1<K, V> d(C12534j2<K> c12534j2) {
        if (((C12534j2) w2.H.E(c12534j2)).v()) {
            return p();
        }
        if (this.f66771b.isEmpty() || c12534j2.n(c())) {
            return this;
        }
        AbstractC12521g1<C12534j2<K>> abstractC12521g1 = this.f66771b;
        InterfaceC15902t J10 = C12534j2.J();
        Q<K> q10 = c12534j2.f66693b;
        I2.c cVar = I2.c.FIRST_AFTER;
        I2.b bVar = I2.b.NEXT_HIGHER;
        int c10 = I2.c(abstractC12521g1, J10, q10, cVar, bVar);
        int c11 = I2.c(this.f66771b, C12534j2.x(), c12534j2.f66694c, I2.c.ANY_PRESENT, bVar);
        return c10 >= c11 ? p() : new b(this, new a(c11 - c10, c10, c12534j2), this.f66772c.subList(c10, c11), c12534j2, this);
    }

    public Object s() {
        return new d(e());
    }

    @Override
    public String toString() {
        return e().toString();
    }
}
