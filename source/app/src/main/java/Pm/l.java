package Pm;

import Um.AbstractC3153b;
import Um.x;
import java.util.ArrayList;
import java.util.List;

public class l extends Wm.a {

    public final Um.q f21802a = new Um.q();

    public final List<CharSequence> f21803b = new ArrayList();

    public static class a extends Wm.b {
        @Override
        public Wm.f a(Wm.h hVar, Wm.g gVar) {
            return (hVar.d() < Tm.d.f25544k || hVar.a() || (hVar.e().getBlock() instanceof x)) ? Wm.f.c() : Wm.f.d(new l()).a(hVar.getColumn() + Tm.d.f25544k);
        }
    }

    @Override
    public void c(CharSequence charSequence) {
        this.f21803b.add(charSequence);
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        return hVar.d() >= Tm.d.f25544k ? Wm.c.a(hVar.getColumn() + Tm.d.f25544k) : hVar.a() ? Wm.c.b(hVar.c()) : Wm.c.d();
    }

    @Override
    public void g() {
        int size = this.f21803b.size() - 1;
        while (size >= 0 && Tm.d.f(this.f21803b.get(size))) {
            size--;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < size + 1; i10++) {
            sb2.append(this.f21803b.get(i10));
            sb2.append('\n');
        }
        this.f21802a.r(sb2.toString());
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f21802a;
    }
}
