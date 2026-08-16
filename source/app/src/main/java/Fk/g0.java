package Fk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.G0;
import oh.InterfaceC14516g;

public class g0 extends AbstractC14545v {

    public final List<s0> f7098b;

    public static class a {

        public final List<s0> f7099a = new ArrayList();

        public a a(s0... s0VarArr) {
            this.f7099a.addAll(Arrays.asList(s0VarArr));
            return this;
        }

        public g0 b() {
            return new g0(this.f7099a);
        }
    }

    public g0(List<s0> list) {
        this.f7098b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static g0 v(Object obj) {
        if (obj instanceof g0) {
            return (g0) obj;
        }
        if (obj != null) {
            return new g0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new G0((InterfaceC14516g[]) this.f7098b.toArray(new InterfaceC14516g[0]));
    }

    public List<s0> x() {
        return this.f7098b;
    }

    public g0(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(s0.w(it.next()));
        }
        this.f7098b = Collections.unmodifiableList(arrayList);
    }
}
