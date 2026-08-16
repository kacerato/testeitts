package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12505c1;
import com.google.common.collect.M1;
import com.google.common.util.concurrent.AbstractC12617j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.annotation.CheckForNull;

@A
@v2.b(emulated = true)
public abstract class AbstractC12634x<V, C> extends AbstractC12617j<V, C> {

    @CheckForNull
    public List<b<V>> f67598r;

    public static final class a<V> extends AbstractC12634x<V, List<V>> {
        public a(AbstractC12505c1<? extends Z<? extends V>> abstractC12505c1, boolean z10) {
            super(abstractC12505c1, z10);
            W();
        }

        @Override
        public List<V> c0(List<b<V>> list) {
            ArrayList u10 = M1.u(list.size());
            Iterator<b<V>> it = list.iterator();
            while (it.hasNext()) {
                b<V> next = it.next();
                u10.add(next != null ? next.f67599a : null);
            }
            return Collections.unmodifiableList(u10);
        }
    }

    public static final class b<V> {

        public V f67599a;

        public b(V v10) {
            this.f67599a = v10;
        }
    }

    public AbstractC12634x(AbstractC12505c1<? extends Z<? extends V>> abstractC12505c1, boolean z10) {
        super(abstractC12505c1, z10, true);
        List<b<V>> emptyList = abstractC12505c1.isEmpty() ? Collections.emptyList() : M1.u(abstractC12505c1.size());
        for (int i10 = 0; i10 < abstractC12505c1.size(); i10++) {
            emptyList.add(null);
        }
        this.f67598r = emptyList;
    }

    @Override
    public final void Q(int i10, @InterfaceC12618j0 V v10) {
        List<b<V>> list = this.f67598r;
        if (list != null) {
            list.set(i10, new b<>(v10));
        }
    }

    @Override
    public final void U() {
        List<b<V>> list = this.f67598r;
        if (list != null) {
            C(c0(list));
        }
    }

    @Override
    public void b0(AbstractC12617j.a aVar) {
        super.b0(aVar);
        this.f67598r = null;
    }

    public abstract C c0(List<b<V>> list);
}
