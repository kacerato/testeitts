package sd;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import qd.InterfaceC15056A;
import qd.InterfaceC15066i;
import qd.InterfaceRunnableC15067j;
import qd.M;
import qd.z;

public class C15273b<T> implements Iterable<InterfaceC15272a> {

    public final Map<InterfaceC15066i<?>, C15276e<T>> f109430b = new IdentityHashMap();

    public final Map<z, InterfaceC15272a> f109431c = new IdentityHashMap();

    public final Collection<InterfaceC15272a> f109432d = new ArrayList();

    public void a(InterfaceRunnableC15067j interfaceRunnableC15067j) {
        C15276e c15276e = new C15276e(interfaceRunnableC15067j, null, null);
        this.f109431c.put(interfaceRunnableC15067j.R(), c15276e);
        this.f109432d.add(c15276e);
    }

    public void b(InterfaceRunnableC15067j interfaceRunnableC15067j, InterfaceC15066i<T> interfaceC15066i, InterfaceC15056A interfaceC15056A) {
        C15276e<T> c15276e = new C15276e<>(interfaceRunnableC15067j, interfaceC15066i, interfaceC15056A);
        this.f109430b.put(interfaceC15066i, c15276e);
        this.f109431c.put(interfaceRunnableC15067j.R(), c15276e);
        this.f109432d.add(c15276e);
    }

    public void c(M<T> m10, InterfaceC15056A interfaceC15056A) {
        C15279h c15279h = new C15279h(m10, interfaceC15056A);
        this.f109432d.add(c15279h);
        for (z zVar : m10.b()) {
            this.f109431c.put(zVar, c15279h);
        }
    }

    public InterfaceC15056A d(InterfaceC15066i<T> interfaceC15066i) {
        C15276e<T> g10 = g(interfaceC15066i);
        if (g10 != null) {
            return g10.e();
        }
        return null;
    }

    public InterfaceRunnableC15067j e(InterfaceC15066i<T> interfaceC15066i) {
        C15276e<T> g10 = g(interfaceC15066i);
        if (g10 != null) {
            return g10.f();
        }
        throw new IllegalArgumentException("The event handler " + ((Object) interfaceC15066i) + " is not processing events.");
    }

    public final InterfaceC15272a f(z zVar) {
        return this.f109431c.get(zVar);
    }

    public final C15276e<T> g(InterfaceC15066i<T> interfaceC15066i) {
        return this.f109430b.get(interfaceC15066i);
    }

    public z[] h() {
        ArrayList arrayList = new ArrayList();
        for (InterfaceC15272a interfaceC15272a : this.f109432d) {
            if (interfaceC15272a.d()) {
                Collections.addAll(arrayList, interfaceC15272a.c());
            }
        }
        return (z[]) arrayList.toArray(new z[arrayList.size()]);
    }

    public z i(InterfaceC15066i<T> interfaceC15066i) {
        return e(interfaceC15066i).R();
    }

    @Override
    public Iterator<InterfaceC15272a> iterator() {
        return this.f109432d.iterator();
    }

    public void j(z... zVarArr) {
        for (z zVar : zVarArr) {
            f(zVar).a();
        }
    }
}
