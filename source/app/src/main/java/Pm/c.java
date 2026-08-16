package Pm;

import Um.AbstractC3153b;
import Um.C3154c;

public class c extends Wm.a {

    public final C3154c f21753a = new C3154c();

    public static class a extends Wm.b {
        @Override
        public Wm.f a(Wm.h hVar, Wm.g gVar) {
            int c10 = hVar.c();
            if (!c.j(hVar, c10)) {
                return Wm.f.c();
            }
            int column = hVar.getColumn() + hVar.d();
            int i10 = column + 1;
            if (Tm.d.i(hVar.b(), c10 + 1)) {
                i10 = column + 2;
            }
            return Wm.f.d(new c()).a(i10);
        }
    }

    public static boolean j(Wm.h hVar, int i10) {
        CharSequence b10 = hVar.b();
        return hVar.d() < Tm.d.f25544k && i10 < b10.length() && b10.charAt(i10) == '>';
    }

    @Override
    public boolean a() {
        return true;
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        int c10 = hVar.c();
        if (!j(hVar, c10)) {
            return Wm.c.d();
        }
        int column = hVar.getColumn() + hVar.d();
        int i10 = column + 1;
        if (Tm.d.i(hVar.b(), c10 + 1)) {
            i10 = column + 2;
        }
        return Wm.c.a(i10);
    }

    @Override
    public boolean f(AbstractC3153b abstractC3153b) {
        return true;
    }

    @Override
    public C3154c getBlock() {
        return this.f21753a;
    }
}
