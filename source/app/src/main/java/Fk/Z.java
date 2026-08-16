package Fk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.InterfaceC14516g;
import zk.C16317a;

public class Z extends AbstractC14545v {

    public final List<B> f7065b;

    public Z(List<B> list) {
        this.f7065b = Collections.unmodifiableList(list);
    }

    public static Z v(Object obj) {
        if (obj instanceof Z) {
            return (Z) obj;
        }
        if (obj != null) {
            return new Z(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return C16317a.d(this.f7065b);
    }

    public List<B> u() {
        return this.f7065b;
    }

    public Z(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(B.z(it.next()));
        }
        this.f7065b = Collections.unmodifiableList(arrayList);
    }
}
