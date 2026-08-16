package com.google.common.collect;

import com.google.common.collect.C12565r2;
import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class C12558p2<K, V> extends AbstractC12497a1<K, V> {

    public static final C12558p2<Object, Object> f66782l = new C12558p2<>();

    @CheckForNull
    public final transient Object f66783g;

    @v2.d
    public final transient Object[] f66784h;

    public final transient int f66785i;

    public final transient int f66786j;

    public final transient C12558p2<V, K> f66787k;

    /* JADX WARN: Multi-variable type inference failed */
    public C12558p2() {
        this.f66783g = null;
        this.f66784h = new Object[0];
        this.f66785i = 0;
        this.f66786j = 0;
        this.f66787k = this;
    }

    @Override
    public AbstractC12497a1<V, K> A8() {
        return this.f66787k;
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        V v10 = (V) C12565r2.R(this.f66783g, this.f66784h, this.f66786j, this.f66785i, obj);
        if (v10 == null) {
            return null;
        }
        return v10;
    }

    @Override
    public AbstractC12564r1<Map.Entry<K, V>> o() {
        return new C12565r2.a(this, this.f66784h, this.f66785i, this.f66786j);
    }

    @Override
    public AbstractC12564r1<K> p() {
        return new C12565r2.b(this, new C12565r2.c(this.f66784h, this.f66785i, this.f66786j));
    }

    @Override
    public int size() {
        return this.f66786j;
    }

    @Override
    public boolean v() {
        return false;
    }

    public C12558p2(Object[] objArr, int i10) {
        this.f66784h = objArr;
        this.f66786j = i10;
        this.f66785i = 0;
        int o10 = i10 >= 2 ? AbstractC12564r1.o(i10) : 0;
        this.f66783g = C12565r2.Q(objArr, i10, o10, 0);
        this.f66787k = new C12558p2<>(C12565r2.Q(objArr, i10, o10, 1), objArr, i10, this);
    }

    public C12558p2(@CheckForNull Object obj, Object[] objArr, int i10, C12558p2<V, K> c12558p2) {
        this.f66783g = obj;
        this.f66784h = objArr;
        this.f66785i = 1;
        this.f66786j = i10;
        this.f66787k = c12558p2;
    }
}
