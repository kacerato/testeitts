package Fk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class N extends AbstractC14545v implements W {

    public final List<r0> f7031b;

    public static class a {

        public List<r0> f7032a = new ArrayList();

        public N a() {
            return new N(this.f7032a);
        }

        public a b(List<r0> list) {
            this.f7032a = list;
            return this;
        }

        public a c(r0... r0VarArr) {
            this.f7032a.addAll(Arrays.asList(r0VarArr));
            return this;
        }
    }

    public N(List<r0> list) {
        this.f7031b = Collections.unmodifiableList(list);
    }

    public static N u(Object obj) {
        if (obj instanceof N) {
            return (N) obj;
        }
        if (obj != null) {
            return new N(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.d(this.f7031b);
    }

    public List<r0> v() {
        return this.f7031b;
    }

    public N(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(r0.v(it.next()));
        }
        this.f7031b = Collections.unmodifiableList(arrayList);
    }
}
