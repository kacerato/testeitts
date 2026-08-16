package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class C12541l1<K, V> extends AbstractC12505c1<V> {

    public final AbstractC12529i1<K, V> f66709c;

    public class a extends e3<V> {

        public final e3<Map.Entry<K, V>> f66710b;

        public a() {
            this.f66710b = C12541l1.this.f66709c.entrySet().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f66710b.hasNext();
        }

        @Override
        public V next() {
            return this.f66710b.next().getValue();
        }
    }

    public class b extends AbstractC12521g1<V> {

        public final AbstractC12521g1 f66712d;

        public b(C12541l1 c12541l1, AbstractC12521g1 abstractC12521g1) {
            this.f66712d = abstractC12521g1;
        }

        @Override
        public V get(int i10) {
            return (V) ((Map.Entry) this.f66712d.get(i10)).getValue();
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public int size() {
            return this.f66712d.size();
        }
    }

    @v2.c
    public static class c<V> implements Serializable {

        public static final long f66713c = 0;

        public final AbstractC12529i1<?, V> f66714b;

        public c(AbstractC12529i1<?, V> abstractC12529i1) {
            this.f66714b = abstractC12529i1;
        }

        public Object a() {
            return this.f66714b.values();
        }
    }

    public C12541l1(AbstractC12529i1<K, V> abstractC12529i1) {
        this.f66709c = abstractC12529i1;
    }

    @Override
    public AbstractC12521g1<V> a() {
        return new b(this, this.f66709c.entrySet().a());
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return obj != null && E1.q(iterator(), obj);
    }

    @Override
    public boolean h() {
        return true;
    }

    @Override
    public e3<V> iterator() {
        return new a();
    }

    @Override
    @v2.c
    public Object j() {
        return new c(this.f66709c);
    }

    @Override
    public int size() {
        return this.f66709c.size();
    }
}
