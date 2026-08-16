package Ek;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class C2495f extends AbstractC14545v {

    public final o f5960b;

    public final List<Dk.a> f5961c;

    public C2495f(o oVar, List<Dk.a> list) {
        this.f5960b = oVar;
        this.f5961c = list;
    }

    public static C2495f w(Object obj) {
        if (obj instanceof C2495f) {
            return (C2495f) obj;
        }
        if (obj != null) {
            return new C2495f(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.e(this.f5960b, C16317a.d(this.f5961c));
    }

    public o u() {
        return this.f5960b;
    }

    public List<Dk.a> v() {
        return this.f5961c;
    }

    public C2495f(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        this.f5960b = o.v(e10.I(0));
        Iterator<InterfaceC14516g> it = oh.E.G(e10.I(1)).iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            arrayList.add(Dk.a.D(it.next()));
        }
        this.f5961c = Collections.unmodifiableList(arrayList);
    }
}
