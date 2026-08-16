package Zm;

import Um.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class g implements Ym.b {

    public final String f31519a;

    public final boolean f31520b;

    public final boolean f31521c;

    public final List<Zm.c> f31522d;

    public final List<f> f31523e;

    public class a implements f {
        public a() {
        }

        @Override
        public Ym.a a(e eVar) {
            return new Zm.d(eVar);
        }
    }

    public static class b {

        public String f31525a = "\n";

        public boolean f31526b = false;

        public boolean f31527c = false;

        public List<Zm.c> f31528d = new ArrayList();

        public List<f> f31529e = new ArrayList();

        public b f(Zm.c cVar) {
            if (cVar == null) {
                throw new NullPointerException("attributeProviderFactory must not be null");
            }
            this.f31528d.add(cVar);
            return this;
        }

        public g g() {
            return new g(this, null);
        }

        public b h(boolean z10) {
            this.f31526b = z10;
            return this;
        }

        public b i(Iterable<? extends Mm.a> iterable) {
            if (iterable == null) {
                throw new NullPointerException("extensions must not be null");
            }
            for (Mm.a aVar : iterable) {
                if (aVar instanceof c) {
                    ((c) aVar).b(this);
                }
            }
            return this;
        }

        public b j(f fVar) {
            if (fVar == null) {
                throw new NullPointerException("nodeRendererFactory must not be null");
            }
            this.f31529e.add(fVar);
            return this;
        }

        public b k(boolean z10) {
            this.f31527c = z10;
            return this;
        }

        public b l(String str) {
            this.f31525a = str;
            return this;
        }
    }

    public interface c extends Mm.a {
        void b(b bVar);
    }

    public class d implements e, Zm.b {

        public final h f31530a;

        public final List<Zm.a> f31531b;

        public final Rm.a f31532c;

        public d(g gVar, h hVar, a aVar) {
            this(hVar);
        }

        @Override
        public void a(v vVar) {
            this.f31532c.b(vVar);
        }

        @Override
        public h b() {
            return this.f31530a;
        }

        @Override
        public String c() {
            return g.this.f31519a;
        }

        @Override
        public String d(String str) {
            return g.this.f31521c ? Tm.a.e(str) : str;
        }

        @Override
        public boolean e() {
            return g.this.f31520b;
        }

        @Override
        public Map<String, String> f(v vVar, String str, Map<String, String> map) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            g(vVar, str, linkedHashMap);
            return linkedHashMap;
        }

        public final void g(v vVar, String str, Map<String, String> map) {
            Iterator<Zm.a> it = this.f31531b.iterator();
            while (it.hasNext()) {
                it.next().a(vVar, str, map);
            }
        }

        public d(h hVar) {
            this.f31532c = new Rm.a();
            this.f31530a = hVar;
            this.f31531b = new ArrayList(g.this.f31522d.size());
            Iterator it = g.this.f31522d.iterator();
            while (it.hasNext()) {
                this.f31531b.add(((Zm.c) it.next()).a(this));
            }
            for (int size = g.this.f31523e.size() - 1; size >= 0; size--) {
                this.f31532c.a(((f) g.this.f31523e.get(size)).a(this));
            }
        }
    }

    public g(b bVar, a aVar) {
        this(bVar);
    }

    public static b h() {
        return new b();
    }

    @Override
    public String a(v vVar) {
        if (vVar == null) {
            throw new NullPointerException("node must not be null");
        }
        StringBuilder sb2 = new StringBuilder();
        b(vVar, sb2);
        return sb2.toString();
    }

    @Override
    public void b(v vVar, Appendable appendable) {
        if (vVar == null) {
            throw new NullPointerException("node must not be null");
        }
        new d(this, new h(appendable), null).a(vVar);
    }

    public g(b bVar) {
        this.f31519a = bVar.f31525a;
        this.f31520b = bVar.f31526b;
        this.f31521c = bVar.f31527c;
        this.f31522d = new ArrayList(bVar.f31528d);
        ArrayList arrayList = new ArrayList(bVar.f31529e.size() + 1);
        this.f31523e = arrayList;
        arrayList.addAll(bVar.f31529e);
        arrayList.add(new a());
    }
}
