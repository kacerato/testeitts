package Pm;

import Um.AbstractC3153b;
import Um.B;

public class t extends Wm.a {

    public final B f21860a = new B();

    public static class a extends Wm.b {
        @Override
        public Wm.f a(Wm.h hVar, Wm.g gVar) {
            if (hVar.d() >= 4) {
                return Wm.f.c();
            }
            int c10 = hVar.c();
            CharSequence b10 = hVar.b();
            return t.i(b10, c10) ? Wm.f.d(new t()).b(b10.length()) : Wm.f.c();
        }
    }

    public static boolean i(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            if (charAt != '\t' && charAt != ' ') {
                if (charAt == '*') {
                    i13++;
                } else if (charAt == '-') {
                    i11++;
                } else {
                    if (charAt != '_') {
                        return false;
                    }
                    i12++;
                }
            }
            i10++;
        }
        return (i11 >= 3 && i12 == 0 && i13 == 0) || (i12 >= 3 && i11 == 0 && i13 == 0) || (i13 >= 3 && i11 == 0 && i12 == 0);
    }

    @Override
    public Wm.c d(Wm.h hVar) {
        return Wm.c.d();
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f21860a;
    }
}
