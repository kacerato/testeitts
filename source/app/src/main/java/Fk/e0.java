package Fk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class e0 extends AbstractC14545v {

    public final List<U> f7092b;

    public e0(List<U> list) {
        this.f7092b = Collections.unmodifiableList(list);
    }

    public static e0 u(Object obj) {
        if (obj instanceof e0) {
            return (e0) obj;
        }
        if (obj != null) {
            return new e0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.d(this.f7092b);
    }

    public List<U> v() {
        return this.f7092b;
    }

    public e0(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(U.v(it.next()));
        }
        this.f7092b = Collections.unmodifiableList(arrayList);
    }
}
