package Pm;

import Um.AbstractC3153b;
import org.eclipse.jdt.internal.core.JavaElement;

public class i extends Wm.a {

    public final Um.k f21792a;

    public String f21793b;

    public StringBuilder f21794c;

    public static class a extends Wm.b {
        @Override
        public Wm.f a(Wm.h hVar, Wm.g gVar) {
            int d10 = hVar.d();
            if (d10 >= Tm.d.f25544k) {
                return Wm.f.c();
            }
            int c10 = hVar.c();
            i j10 = i.j(hVar.b(), c10, d10);
            return j10 != null ? Wm.f.d(j10).b(c10 + j10.f21792a.s()) : Wm.f.c();
        }
    }

    public i(char c10, int i10, int i11) {
        Um.k kVar = new Um.k();
        this.f21792a = kVar;
        this.f21794c = new StringBuilder();
        kVar.v(c10);
        kVar.x(i10);
        kVar.w(i11);
    }

    public static i j(CharSequence charSequence, int i10, int i11) {
        int length = charSequence.length();
        int i12 = 0;
        int i13 = 0;
        for (int i14 = i10; i14 < length; i14++) {
            char charAt = charSequence.charAt(i14);
            if (charAt == '`') {
                i12++;
            } else {
                if (charAt != '~') {
                    break;
                }
                i13++;
            }
        }
        if (i12 >= 3 && i13 == 0) {
            if (Tm.d.b(JavaElement.JEM_MODULE, charSequence, i10 + i12) != -1) {
                return null;
            }
            return new i(JavaElement.JEM_MODULE, i12, i11);
        }
        if (i13 < 3 || i12 != 0) {
            return null;
        }
        return new i(JavaElement.JEM_METHOD, i13, i11);
    }

    @Override
    public void c(CharSequence charSequence) {
        if (this.f21793b == null) {
            this.f21793b = charSequence.toString();
        } else {
            this.f21794c.append(charSequence);
            this.f21794c.append('\n');
        }
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        int c10 = hVar.c();
        int index = hVar.getIndex();
        CharSequence b10 = hVar.b();
        if (hVar.d() < Tm.d.f25544k && k(b10, c10)) {
            return Wm.c.c();
        }
        int length = b10.length();
        for (int r10 = this.f21792a.r(); r10 > 0 && index < length && b10.charAt(index) == ' '; r10--) {
            index++;
        }
        return Wm.c.b(index);
    }

    @Override
    public void g() {
        this.f21792a.y(Tm.a.g(this.f21793b.trim()));
        this.f21792a.z(this.f21794c.toString());
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f21792a;
    }

    public final boolean k(CharSequence charSequence, int i10) {
        char q10 = this.f21792a.q();
        int s10 = this.f21792a.s();
        int k10 = Tm.d.k(q10, charSequence, i10, charSequence.length()) - i10;
        return k10 >= s10 && Tm.d.m(charSequence, i10 + k10, charSequence.length()) == charSequence.length();
    }
}
