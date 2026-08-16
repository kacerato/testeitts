package Ak;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class O extends AbstractC14545v {

    public final List<C2306p> f884b;

    public static class a {

        public final List<C2306p> f885a = new ArrayList();

        public a a(C2306p... c2306pArr) {
            this.f885a.addAll(Arrays.asList(c2306pArr));
            return this;
        }

        public O b() {
            return new O(this.f885a);
        }
    }

    public O(List<C2306p> list) {
        this.f884b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static O w(Object obj) {
        if (obj instanceof O) {
            return (O) obj;
        }
        if (obj != null) {
            return new O(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0((InterfaceC14516g[]) this.f884b.toArray(new InterfaceC14516g[0]));
    }

    public List<C2306p> v() {
        return this.f884b;
    }

    public O(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(C2306p.z(it.next()));
        }
        this.f884b = Collections.unmodifiableList(arrayList);
    }
}
