package W0;

import java.util.Iterator;
import java.util.LinkedList;

public final class i implements g {

    public final a f27207a;

    public i(a aVar) {
        this.f27207a = aVar;
    }

    @Override
    public final void a(e eVar) {
        LinkedList linkedList;
        LinkedList linkedList2;
        e eVar2;
        this.f27207a.f27200a = eVar;
        linkedList = this.f27207a.f27202c;
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            p pVar = (p) it.next();
            eVar2 = this.f27207a.f27200a;
            pVar.d(eVar2);
        }
        linkedList2 = this.f27207a.f27202c;
        linkedList2.clear();
        this.f27207a.f27201b = null;
    }
}
