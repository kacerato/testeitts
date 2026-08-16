package Fk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class f0 extends AbstractC14545v {

    public final List<V> f7097b;

    public f0(List<V> list) {
        this.f7097b = Collections.unmodifiableList(list);
    }

    public static f0 u(Object obj) {
        if (obj instanceof f0) {
            return (f0) obj;
        }
        if (obj != null) {
            return new f0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.d(this.f7097b);
    }

    public List<V> v() {
        return this.f7097b;
    }

    public f0(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(V.v(it.next()));
        }
        this.f7097b = Collections.unmodifiableList(arrayList);
    }
}
