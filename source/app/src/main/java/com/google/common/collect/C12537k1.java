package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class C12537k1<K, V> extends A1<K> {

    public final AbstractC12529i1<K, V> f66705g;

    @v2.c
    public static class a<K> implements Serializable {

        public static final long f66706c = 0;

        public final AbstractC12529i1<K, ?> f66707b;

        public a(AbstractC12529i1<K, ?> abstractC12529i1) {
            this.f66707b = abstractC12529i1;
        }

        public Object a() {
            return this.f66707b.o();
        }
    }

    public C12537k1(AbstractC12529i1<K, V> abstractC12529i1) {
        this.f66705g = abstractC12529i1;
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return this.f66705g.containsKey(obj);
    }

    @Override
    public K get(int i10) {
        return this.f66705g.entrySet().a().get(i10).getKey();
    }

    @Override
    public boolean h() {
        return true;
    }

    @Override
    public e3<K> iterator() {
        return this.f66705g.w();
    }

    @Override
    @v2.c
    public Object j() {
        return new a(this.f66705g);
    }

    @Override
    public int size() {
        return this.f66705g.size();
    }
}
