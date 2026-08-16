package Fk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;

public class d0 extends AbstractC14545v {

    public final List<Q> f7086b;

    public static class a {

        public final ArrayList<Q> f7087a = new ArrayList<>();

        public a a(Q... qArr) {
            this.f7087a.addAll(Arrays.asList(qArr));
            return this;
        }

        public d0 b() {
            return new d0(this.f7087a);
        }
    }

    public d0(List<Q> list) {
        this.f7086b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static d0 v(Object obj) {
        if (obj instanceof d0) {
            return (d0) obj;
        }
        if (obj != null) {
            return new d0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h();
        Iterator<Q> it = this.f7086b.iterator();
        while (it.hasNext()) {
            c14518h.a(it.next());
        }
        return new G0(c14518h);
    }

    public List<Q> x() {
        return this.f7086b;
    }

    public d0(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(Q.v(it.next()));
        }
        this.f7086b = Collections.unmodifiableList(arrayList);
    }
}
