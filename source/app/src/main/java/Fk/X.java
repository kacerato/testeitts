package Fk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class X extends AbstractC14545v {

    public final List<C2550w> f7061b;

    public static class a {

        public final List<C2550w> f7062a = new ArrayList();

        public a a(C2550w... c2550wArr) {
            this.f7062a.addAll(Arrays.asList(c2550wArr));
            return this;
        }

        public X b() {
            return new X(this.f7062a);
        }
    }

    public X(List<C2550w> list) {
        this.f7061b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static X w(Object obj) {
        if (obj instanceof X) {
            return (X) obj;
        }
        if (obj != null) {
            return new X(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0((InterfaceC14516g[]) this.f7061b.toArray(new InterfaceC14516g[0]));
    }

    public List<C2550w> v() {
        return this.f7061b;
    }

    public X(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(C2550w.v(it.next()));
        }
        this.f7061b = Collections.unmodifiableList(arrayList);
    }
}
