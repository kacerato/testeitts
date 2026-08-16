package an;

import Um.v;
import java.util.ArrayList;
import java.util.List;

public class d implements Ym.b {

    public final boolean f32398a;

    public final List<an.c> f32399b;

    public class a implements an.c {
        public a() {
        }

        @Override
        public Ym.a a(an.b bVar) {
            return new an.a(bVar);
        }
    }

    public static class b {

        public boolean f32401a = false;

        public List<an.c> f32402b = new ArrayList();

        public d c() {
            return new d(this, null);
        }

        public b d(Iterable<? extends Mm.a> iterable) {
            for (Mm.a aVar : iterable) {
                if (aVar instanceof InterfaceC0863d) {
                    ((InterfaceC0863d) aVar).a(this);
                }
            }
            return this;
        }

        public b e(an.c cVar) {
            this.f32402b.add(cVar);
            return this;
        }

        public b f(boolean z10) {
            this.f32401a = z10;
            return this;
        }
    }

    public class c implements an.b {

        public final e f32403a;

        public final Rm.a f32404b;

        public c(d dVar, e eVar, a aVar) {
            this(eVar);
        }

        @Override
        public void a(v vVar) {
            this.f32404b.b(vVar);
        }

        @Override
        public e b() {
            return this.f32403a;
        }

        @Override
        public boolean c() {
            return d.this.f32398a;
        }

        public c(e eVar) {
            this.f32404b = new Rm.a();
            this.f32403a = eVar;
            for (int size = d.this.f32399b.size() - 1; size >= 0; size--) {
                this.f32404b.a(((an.c) d.this.f32399b.get(size)).a(this));
            }
        }
    }

    public interface InterfaceC0863d extends Mm.a {
        void a(b bVar);
    }

    public d(b bVar, a aVar) {
        this(bVar);
    }

    public static b e() {
        return new b();
    }

    @Override
    public String a(v vVar) {
        StringBuilder sb2 = new StringBuilder();
        b(vVar, sb2);
        return sb2.toString();
    }

    @Override
    public void b(v vVar, Appendable appendable) {
        new c(this, new e(appendable), null).a(vVar);
    }

    public d(b bVar) {
        this.f32398a = bVar.f32401a;
        ArrayList arrayList = new ArrayList(bVar.f32402b.size() + 1);
        this.f32399b = arrayList;
        arrayList.addAll(bVar.f32402b);
        arrayList.add(new a());
    }
}
