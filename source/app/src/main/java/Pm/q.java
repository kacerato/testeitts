package Pm;

import Um.AbstractC3153b;
import Um.u;
import Um.x;

public class q extends Wm.a {

    public final u f21852a = new u();

    public int f21853b;

    public boolean f21854c;

    public q(int i10) {
        this.f21853b = i10;
    }

    @Override
    public boolean a() {
        return true;
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        if (!hVar.a()) {
            return hVar.d() >= this.f21853b ? Wm.c.a(hVar.getColumn() + this.f21853b) : Wm.c.d();
        }
        if (this.f21852a.e() == null) {
            return Wm.c.d();
        }
        AbstractC3153b block = hVar.e().getBlock();
        this.f21854c = (block instanceof x) || (block instanceof u);
        return Wm.c.b(hVar.c());
    }

    @Override
    public boolean f(AbstractC3153b abstractC3153b) {
        if (!this.f21854c) {
            return true;
        }
        AbstractC3153b h10 = this.f21852a.h();
        if (!(h10 instanceof Um.t)) {
            return true;
        }
        ((Um.t) h10).r(false);
        return true;
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f21852a;
    }
}
