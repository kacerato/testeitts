package Ek;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;

public class D extends AbstractC14545v {

    public final List<A> f5876b;

    public static class a {

        public List<A> f5877a;

        public a a(A... aArr) {
            if (this.f5877a == null) {
                this.f5877a = new ArrayList();
            }
            this.f5877a.addAll(Arrays.asList(aArr));
            return this;
        }

        public D b() {
            return new D(this.f5877a);
        }

        public a c(List<A> list) {
            this.f5877a = list;
            return this;
        }
    }

    public D(List<A> list) {
        this.f5876b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static D v(Object obj) {
        if (obj instanceof D) {
            return (D) obj;
        }
        if (obj != null) {
            return new D(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h();
        Iterator<A> it = this.f5876b.iterator();
        while (it.hasNext()) {
            c14518h.a(it.next());
        }
        return new G0(c14518h);
    }

    public List<A> x() {
        return this.f5876b;
    }

    public D(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(A.w(it.next()));
        }
        this.f5876b = Collections.unmodifiableList(arrayList);
    }
}
