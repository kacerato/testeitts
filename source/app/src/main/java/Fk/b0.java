package Fk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class b0 extends AbstractC14545v {

    public final List<O> f7074b;

    public static class a {

        public List<O> f7075a = new ArrayList();

        public b0 a() {
            return new b0(this.f7075a);
        }

        public a b(O... oArr) {
            for (int i10 = 0; i10 != oArr.length; i10++) {
                this.f7075a.add(oArr[i10]);
            }
            return this;
        }

        public a c(List<O> list) {
            this.f7075a = list;
            return this;
        }
    }

    public b0(List<O> list) {
        this.f7074b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static b0 v(Object obj) {
        if (obj instanceof b0) {
            return (b0) obj;
        }
        if (obj != null) {
            return new b0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.d(this.f7074b);
    }

    public List<O> x() {
        return this.f7074b;
    }

    public b0(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(O.u(it.next()));
        }
        this.f7074b = Collections.unmodifiableList(arrayList);
    }
}
