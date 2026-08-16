package Ek;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class C extends AbstractC14545v {

    public final List<z> f5874b;

    public static class a {

        public final List<z> f5875a = new ArrayList();

        public a a(z... zVarArr) {
            this.f5875a.addAll(Arrays.asList(zVarArr));
            return this;
        }

        public C b() {
            return new C(this.f5875a);
        }

        public a c(List<z> list) {
            this.f5875a.addAll(list);
            return this;
        }
    }

    public C(List<z> list) {
        this.f5874b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static C v(Object obj) {
        if (obj instanceof C) {
            return (C) obj;
        }
        if (obj != null) {
            return new C(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0((InterfaceC14516g[]) this.f5874b.toArray(new z[0]));
    }

    public List<z> x() {
        return this.f5874b;
    }

    public C(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(z.y(it.next()));
        }
        this.f5874b = Collections.unmodifiableList(arrayList);
    }
}
