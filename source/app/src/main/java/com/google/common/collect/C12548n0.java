package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b
public final class C12548n0<K, V> extends AbstractCollection<V> {

    @q3.i
    public final InterfaceC12544m0<K, V> f66737b;

    public C12548n0(InterfaceC12544m0<K, V> interfaceC12544m0) {
        this.f66737b = (InterfaceC12544m0) w2.H.E(interfaceC12544m0);
    }

    @Override
    public void clear() {
        this.f66737b.clear();
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return this.f66737b.containsValue(obj);
    }

    @Override
    public Iterator<V> iterator() {
        return Q1.O0(this.f66737b.v().iterator());
    }

    @Override
    public boolean remove(@CheckForNull Object obj) {
        w2.I<? super Map.Entry<K, V>> N10 = this.f66737b.N();
        Iterator<Map.Entry<K, V>> it = this.f66737b.o().v().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (N10.apply(next) && w2.B.a(next.getValue(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        return D1.J(this.f66737b.o().v(), w2.J.e(this.f66737b.N(), Q1.Q0(w2.J.n(collection))));
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        return D1.J(this.f66737b.o().v(), w2.J.e(this.f66737b.N(), Q1.Q0(w2.J.q(w2.J.n(collection)))));
    }

    @Override
    public int size() {
        return this.f66737b.size();
    }
}
