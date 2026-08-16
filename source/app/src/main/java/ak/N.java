package Ak;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class N extends AbstractC14545v {

    public final List<C2305o> f882b;

    public static class a {

        public final List<C2305o> f883a = new ArrayList();

        public a a(C2305o... c2305oArr) {
            this.f883a.addAll(Arrays.asList(c2305oArr));
            return this;
        }

        public N b() {
            return new N(this.f883a);
        }
    }

    public N(List<C2305o> list) {
        this.f882b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static N w(Object obj) {
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
        return new G0((InterfaceC14516g[]) this.f882b.toArray(new InterfaceC14516g[0]));
    }

    public List<C2305o> v() {
        return this.f882b;
    }

    public N(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(C2305o.v(it.next()));
        }
        this.f882b = Collections.unmodifiableList(arrayList);
    }
}
