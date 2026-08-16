package Vm;

import Pm.h;
import Pm.m;
import Pm.n;
import Um.AbstractC3153b;
import Um.v;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class d {

    public final List<Wm.e> f27169a;

    public final List<Xm.a> f27170b;

    public final Vm.c f27171c;

    public final List<e> f27172d;

    public static class b {

        public final List<Wm.e> f27173a = new ArrayList();

        public final List<Xm.a> f27174b = new ArrayList();

        public final List<e> f27175c = new ArrayList();

        public Set<Class<? extends AbstractC3153b>> f27176d = h.r();

        public Vm.c f27177e;

        public class a implements Vm.c {
            public a() {
            }

            @Override
            public Vm.a a(Vm.b bVar) {
                return new n(bVar);
            }
        }

        public d f() {
            return new d(this);
        }

        public b g(Wm.e eVar) {
            if (eVar == null) {
                throw new NullPointerException("blockParserFactory must not be null");
            }
            this.f27173a.add(eVar);
            return this;
        }

        public b h(Xm.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("delimiterProcessor must not be null");
            }
            this.f27174b.add(aVar);
            return this;
        }

        public b i(Set<Class<? extends AbstractC3153b>> set) {
            if (set == null) {
                throw new NullPointerException("enabledBlockTypes must not be null");
            }
            this.f27176d = set;
            return this;
        }

        public b j(Iterable<? extends Mm.a> iterable) {
            if (iterable == null) {
                throw new NullPointerException("extensions must not be null");
            }
            for (Mm.a aVar : iterable) {
                if (aVar instanceof c) {
                    ((c) aVar).c(this);
                }
            }
            return this;
        }

        public final Vm.c k() {
            Vm.c cVar = this.f27177e;
            return cVar != null ? cVar : new a();
        }

        public b l(Vm.c cVar) {
            this.f27177e = cVar;
            return this;
        }

        public b m(e eVar) {
            if (eVar == null) {
                throw new NullPointerException("postProcessor must not be null");
            }
            this.f27175c.add(eVar);
            return this;
        }
    }

    public interface c extends Mm.a {
        void c(b bVar);
    }

    public static b a() {
        return new b();
    }

    public final h b() {
        return new h(this.f27169a, this.f27171c, this.f27170b);
    }

    public v c(String str) {
        if (str != null) {
            return e(b().u(str));
        }
        throw new NullPointerException("input must not be null");
    }

    public v d(Reader reader) throws IOException {
        if (reader != null) {
            return e(b().t(reader));
        }
        throw new NullPointerException("input must not be null");
    }

    public final v e(v vVar) {
        Iterator<e> it = this.f27172d.iterator();
        while (it.hasNext()) {
            vVar = it.next().a(vVar);
        }
        return vVar;
    }

    public d(b bVar) {
        this.f27169a = h.k(bVar.f27173a, bVar.f27176d);
        Vm.c k10 = bVar.k();
        this.f27171c = k10;
        this.f27172d = bVar.f27175c;
        List<Xm.a> list = bVar.f27174b;
        this.f27170b = list;
        k10.a(new m(list, Collections.emptyMap()));
    }
}
