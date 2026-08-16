package Ek;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class B extends AbstractC14545v {

    public final List<C2491b> f5872b;

    public static class a {

        public List<C2491b> f5873a = new ArrayList();

        public a a(C2491b... c2491bArr) {
            this.f5873a.addAll(Arrays.asList(c2491bArr));
            return this;
        }

        public B b() {
            return new B(this.f5873a);
        }
    }

    public B(List<C2491b> list) {
        this.f5872b = Collections.unmodifiableList(list);
    }

    public static a u() {
        return new a();
    }

    public static B w(Object obj) {
        if (obj instanceof B) {
            return (B) obj;
        }
        if (obj != null) {
            return new B(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.d(this.f5872b);
    }

    public List<C2491b> v() {
        return this.f5872b;
    }

    public B(oh.E e10) {
        Iterator<InterfaceC14516g> it = e10.iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            arrayList.add(C2491b.C(it.next()));
        }
        this.f5872b = Collections.unmodifiableList(arrayList);
    }
}
