package Fk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class c0 extends AbstractC14545v {

    public final List<P> f7080b;

    public static class a {

        public List<P> f7081a = new ArrayList();

        public c0 a() {
            return new c0(this.f7081a);
        }

        public a b(P... pArr) {
            for (int i10 = 0; i10 != pArr.length; i10++) {
                this.f7081a.add(pArr[i10]);
            }
            return this;
        }

        public a c(List<P> list) {
            this.f7081a = list;
            return this;
        }
    }

    public c0(List<P> list) {
        this.f7080b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static c0 v(Object obj) {
        if (obj instanceof c0) {
            return (c0) obj;
        }
        if (obj != null) {
            return new c0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.d(this.f7080b);
    }

    public List<P> x() {
        return this.f7080b;
    }

    public c0(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(P.v(it.next()));
        }
        this.f7080b = Collections.unmodifiableList(arrayList);
    }
}
