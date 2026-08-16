package Pm;

import Um.AbstractC3153b;
import Um.x;
import java.util.List;

public class r extends Wm.a {

    public final x f21855a = new x();

    public o f21856b = new o();

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public void c(CharSequence charSequence) {
        this.f21856b.g(charSequence);
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        return !hVar.a() ? Wm.c.b(hVar.getIndex()) : Wm.c.d();
    }

    @Override
    public void e(Vm.a aVar) {
        CharSequence d10 = this.f21856b.d();
        if (d10.length() > 0) {
            aVar.a(d10.toString(), this.f21855a);
        }
    }

    @Override
    public void g() {
        if (this.f21856b.d().length() == 0) {
            this.f21855a.o();
        }
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f21855a;
    }

    public CharSequence h() {
        return this.f21856b.d();
    }

    public List<Um.s> i() {
        return this.f21856b.c();
    }
}
