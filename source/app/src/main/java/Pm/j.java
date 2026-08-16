package Pm;

import Um.AbstractC3153b;
import org.eclipse.jdt.internal.core.JavaElement;

public class j extends Wm.a {

    public final Um.m f21795a;

    public final String f21796b;

    public static class a extends Wm.b {
        @Override
        public Wm.f a(Wm.h hVar, Wm.g gVar) {
            CharSequence b10;
            if (hVar.d() >= Tm.d.f25544k) {
                return Wm.f.c();
            }
            CharSequence b11 = hVar.b();
            int c10 = hVar.c();
            j j10 = j.j(b11, c10);
            if (j10 != null) {
                return Wm.f.d(j10).b(b11.length());
            }
            int k10 = j.k(b11, c10);
            return (k10 <= 0 || (b10 = gVar.b()) == null) ? Wm.f.c() : Wm.f.d(new j(k10, b10.toString())).b(b11.length()).e();
        }
    }

    public j(int i10, String str) {
        Um.m mVar = new Um.m();
        this.f21795a = mVar;
        mVar.r(i10);
        this.f21796b = str;
    }

    public static j j(CharSequence charSequence, int i10) {
        int k10 = Tm.d.k(JavaElement.JEM_IMPORTDECLARATION, charSequence, i10, charSequence.length()) - i10;
        if (k10 == 0 || k10 > 6) {
            return null;
        }
        int i11 = i10 + k10;
        if (i11 >= charSequence.length()) {
            return new j(k10, "");
        }
        char charAt = charSequence.charAt(i11);
        if (charAt != ' ' && charAt != '\t') {
            return null;
        }
        int n10 = Tm.d.n(charSequence, charSequence.length() - 1, i11);
        int l10 = Tm.d.l(JavaElement.JEM_IMPORTDECLARATION, charSequence, n10, i11);
        int n11 = Tm.d.n(charSequence, l10, i11);
        return n11 != l10 ? new j(k10, charSequence.subSequence(i11, n11 + 1).toString()) : new j(k10, charSequence.subSequence(i11, n10 + 1).toString());
    }

    public static int k(CharSequence charSequence, int i10) {
        char charAt = charSequence.charAt(i10);
        if (charAt != '-') {
            if (charAt != '=') {
                return 0;
            }
            if (l(charSequence, i10 + 1, '=')) {
                return 1;
            }
        }
        return l(charSequence, i10 + 1, '-') ? 2 : 0;
    }

    public static boolean l(CharSequence charSequence, int i10, char c10) {
        return Tm.d.m(charSequence, Tm.d.k(c10, charSequence, i10, charSequence.length()), charSequence.length()) >= charSequence.length();
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        return Wm.c.d();
    }

    @Override
    public void e(Vm.a aVar) {
        aVar.a(this.f21796b, this.f21795a);
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f21795a;
    }
}
