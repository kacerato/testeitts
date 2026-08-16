package Fk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class Y extends AbstractC14545v {

    public final List<C2551x> f7063b;

    public static class a {

        public final List<C2551x> f7064a = new ArrayList();

        public a a(C2551x... c2551xArr) {
            this.f7064a.addAll(Arrays.asList(c2551xArr));
            return this;
        }

        public Y b() {
            return new Y(this.f7064a);
        }
    }

    public Y(List<C2551x> list) {
        this.f7063b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static Y w(Object obj) {
        if (obj instanceof Y) {
            return (Y) obj;
        }
        if (obj != null) {
            return new Y(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0((InterfaceC14516g[]) this.f7063b.toArray(new InterfaceC14516g[0]));
    }

    public List<C2551x> v() {
        return this.f7063b;
    }

    public Y(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(C2551x.v(it.next()));
        }
        this.f7063b = Collections.unmodifiableList(arrayList);
    }
}
