package Pm;

import Um.AbstractC3153b;
import Um.u;
import Um.w;

public class p extends Wm.a {

    public final Um.t f21845a;

    public boolean f21846b;

    public int f21847c;

    public static class a extends Wm.b {
        @Override
        public Wm.f a(Wm.h hVar, Wm.g gVar) {
            Wm.d a10 = gVar.a();
            if (hVar.d() >= Tm.d.f25544k) {
                return Wm.f.c();
            }
            b m10 = p.m(hVar.b(), hVar.c(), hVar.getColumn() + hVar.d(), gVar.b() != null);
            if (m10 == null) {
                return Wm.f.c();
            }
            int i10 = m10.f21849b;
            q qVar = new q(i10 - hVar.getColumn());
            if ((a10 instanceof p) && p.l((Um.t) a10.getBlock(), m10.f21848a)) {
                return Wm.f.d(qVar).a(i10);
            }
            p pVar = new p(m10.f21848a);
            m10.f21848a.r(true);
            return Wm.f.d(pVar, qVar).a(i10);
        }
    }

    public static class b {

        public final Um.t f21848a;

        public final int f21849b;

        public b(Um.t tVar, int i10) {
            this.f21848a = tVar;
            this.f21849b = i10;
        }
    }

    public static class c {

        public final Um.t f21850a;

        public final int f21851b;

        public c(Um.t tVar, int i10) {
            this.f21850a = tVar;
            this.f21851b = i10;
        }
    }

    public p(Um.t tVar) {
        this.f21845a = tVar;
    }

    public static boolean j(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static boolean k(CharSequence charSequence, int i10) {
        char charAt;
        return i10 >= charSequence.length() || (charAt = charSequence.charAt(i10)) == '\t' || charAt == ' ';
    }

    public static boolean l(Um.t tVar, Um.t tVar2) {
        if ((tVar instanceof Um.d) && (tVar2 instanceof Um.d)) {
            return j(Character.valueOf(((Um.d) tVar).s()), Character.valueOf(((Um.d) tVar2).s()));
        }
        if ((tVar instanceof w) && (tVar2 instanceof w)) {
            return j(Character.valueOf(((w) tVar).s()), Character.valueOf(((w) tVar2).s()));
        }
        return false;
    }

    public static b m(CharSequence charSequence, int i10, int i11, boolean z10) {
        boolean z11;
        c n10 = n(charSequence, i10);
        if (n10 == null) {
            return null;
        }
        Um.t tVar = n10.f21850a;
        int i12 = n10.f21851b;
        int i13 = i11 + (i12 - i10);
        int length = charSequence.length();
        int i14 = i13;
        while (true) {
            if (i12 >= length) {
                z11 = false;
                break;
            }
            char charAt = charSequence.charAt(i12);
            if (charAt != '\t') {
                if (charAt != ' ') {
                    z11 = true;
                    break;
                }
                i14++;
            } else {
                i14 += Tm.d.a(i14);
            }
            i12++;
        }
        if (z10 && (((tVar instanceof w) && ((w) tVar).t() != 1) || !z11)) {
            return null;
        }
        if (!z11 || i14 - i13 > Tm.d.f25544k) {
            i14 = i13 + 1;
        }
        return new b(tVar, i14);
    }

    public static c n(CharSequence charSequence, int i10) {
        char charAt = charSequence.charAt(i10);
        if (charAt != '*' && charAt != '+' && charAt != '-') {
            return o(charSequence, i10);
        }
        int i11 = i10 + 1;
        if (!k(charSequence, i11)) {
            return null;
        }
        Um.d dVar = new Um.d();
        dVar.t(charAt);
        return new c(dVar, i11);
    }

    public static c o(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        for (int i12 = i10; i12 < length; i12++) {
            char charAt = charSequence.charAt(i12);
            if (charAt == ')' || charAt == '.') {
                if (i11 >= 1) {
                    int i13 = i12 + 1;
                    if (k(charSequence, i13)) {
                        String charSequence2 = charSequence.subSequence(i10, i12).toString();
                        w wVar = new w();
                        wVar.v(Integer.parseInt(charSequence2));
                        wVar.u(charAt);
                        return new c(wVar, i13);
                    }
                }
                return null;
            }
            switch (charAt) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    i11++;
                    if (i11 > 9) {
                        return null;
                    }
                default:
                    return null;
            }
        }
        return null;
    }

    @Override
    public boolean a() {
        return true;
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        if (hVar.a()) {
            this.f21846b = true;
            this.f21847c = 0;
        } else if (this.f21846b) {
            this.f21847c++;
        }
        return Wm.c.b(hVar.getIndex());
    }

    @Override
    public boolean f(AbstractC3153b abstractC3153b) {
        if (!(abstractC3153b instanceof u)) {
            return false;
        }
        if (this.f21846b && this.f21847c == 1) {
            this.f21845a.r(false);
            this.f21846b = false;
        }
        return true;
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f21845a;
    }
}
