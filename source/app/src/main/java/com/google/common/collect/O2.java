package com.google.common.collect;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12596z1;
import com.google.common.collect.S2;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import org.eclipse.jdt.core.Signature;

@X
@v2.b
@I2.j(containerOf = {"R", Signature.SIG_CHAR, "V"})
public final class O2<R, C, V> extends AbstractC12589x2<R, C, V> {

    public static final AbstractC12596z1<Object, Object, Object> f65904h = new O2(AbstractC12521g1.x(), AbstractC12564r1.z(), AbstractC12564r1.z());

    public final AbstractC12529i1<R, AbstractC12529i1<C, V>> f65905d;

    public final AbstractC12529i1<C, AbstractC12529i1<R, V>> f65906e;

    public final int[] f65907f;

    public final int[] f65908g;

    /* JADX WARN: Multi-variable type inference failed */
    public O2(AbstractC12521g1<S2.a<R, C, V>> abstractC12521g1, AbstractC12564r1<R> abstractC12564r1, AbstractC12564r1<C> abstractC12564r12) {
        AbstractC12529i1 Q10 = Q1.Q(abstractC12564r1);
        LinkedHashMap c02 = Q1.c0();
        e3<R> it = abstractC12564r1.iterator();
        while (it.hasNext()) {
            c02.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap c03 = Q1.c0();
        e3<C> it2 = abstractC12564r12.iterator();
        while (it2.hasNext()) {
            c03.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[abstractC12521g1.size()];
        int[] iArr2 = new int[abstractC12521g1.size()];
        for (int i10 = 0; i10 < abstractC12521g1.size(); i10++) {
            S2.a<R, C, V> aVar = abstractC12521g1.get(i10);
            R b10 = aVar.b();
            C a10 = aVar.a();
            V value = aVar.getValue();
            Integer num = (Integer) Q10.get(b10);
            Objects.requireNonNull(num);
            iArr[i10] = num.intValue();
            Map map = (Map) c02.get(b10);
            Objects.requireNonNull(map);
            Map map2 = map;
            iArr2[i10] = map2.size();
            F(b10, a10, map2.put(a10, value), value);
            Map map3 = (Map) c03.get(a10);
            Objects.requireNonNull(map3);
            map3.put(b10, value);
        }
        this.f65907f = iArr;
        this.f65908g = iArr2;
        AbstractC12529i1.b bVar = new AbstractC12529i1.b(c02.size());
        for (Map.Entry entry : c02.entrySet()) {
            bVar.i(entry.getKey(), AbstractC12529i1.n((Map) entry.getValue()));
        }
        this.f65905d = bVar.d();
        AbstractC12529i1.b bVar2 = new AbstractC12529i1.b(c03.size());
        for (Map.Entry entry2 : c03.entrySet()) {
            bVar2.i(entry2.getKey(), AbstractC12529i1.n((Map) entry2.getValue()));
        }
        this.f65906e = bVar2.d();
    }

    @Override
    public S2.a<R, C, V> K(int i10) {
        Map.Entry<R, AbstractC12529i1<C, V>> entry = this.f65905d.entrySet().a().get(this.f65907f[i10]);
        AbstractC12529i1<C, V> value = entry.getValue();
        Map.Entry<C, V> entry2 = value.entrySet().a().get(this.f65908g[i10]);
        return AbstractC12596z1.i(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override
    public V M(int i10) {
        AbstractC12529i1<C, V> abstractC12529i1 = this.f65905d.values().a().get(this.f65907f[i10]);
        return abstractC12529i1.values().a().get(this.f65908g[i10]);
    }

    @Override
    public AbstractC12529i1<C, Map<R, V>> A() {
        return AbstractC12529i1.n(this.f65906e);
    }

    @Override
    public AbstractC12596z1.b q() {
        AbstractC12529i1 Q10 = Q1.Q(d0());
        int[] iArr = new int[c0().size()];
        e3<S2.a<R, C, V>> it = c0().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Integer num = (Integer) Q10.get(it.next().a());
            Objects.requireNonNull(num);
            iArr[i10] = num.intValue();
            i10++;
        }
        return AbstractC12596z1.b.a(this, this.f65907f, iArr);
    }

    @Override
    public int size() {
        return this.f65907f.length;
    }

    @Override
    public AbstractC12529i1<R, Map<C, V>> u() {
        return AbstractC12529i1.n(this.f65905d);
    }
}
