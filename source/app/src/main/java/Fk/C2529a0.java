package Fk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;

public class C2529a0 extends AbstractC14545v {

    public final List<AbstractC14551y> f7072b;

    public C2529a0(List<AbstractC14551y> list) {
        this.f7072b = Collections.unmodifiableList(list);
    }

    public static C2529a0 u(Object obj) {
        if (obj instanceof C2529a0) {
            return (C2529a0) obj;
        }
        if (obj != null) {
            return new C2529a0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h();
        for (int i10 = 0; i10 != this.f7072b.size(); i10++) {
            c14518h.a(this.f7072b.get(i10));
        }
        return new G0(c14518h);
    }

    public List<AbstractC14551y> v() {
        return this.f7072b;
    }

    public C2529a0(oh.E e10) {
        ArrayList arrayList = new ArrayList();
        Iterator<InterfaceC14516g> it = e10.iterator();
        while (it.hasNext()) {
            arrayList.add(AbstractC14551y.F(it.next()));
        }
        this.f7072b = Collections.unmodifiableList(arrayList);
    }
}
