package wg;

import b3.s;

public class C16001d {
    public boolean a(C16002e c16002e, String str) {
        if (c16002e == null || str == null) {
            return true;
        }
        String[] split = str.split(s.f32937c);
        if (split.length != 3) {
            return true;
        }
        byte[] c10 = C15998a.c(split[0]);
        int parseInt = Integer.parseInt(split[1]);
        byte[] c11 = C15998a.c(split[2]);
        c16002e.j(c10);
        c16002e.i(parseInt);
        c16002e.f(c11);
        return false;
    }

    public String b(C16002e c16002e) {
        return C15998a.a(c16002e.e()) + s.f32937c + String.valueOf(c16002e.d()) + s.f32937c + C15998a.a(c16002e.a());
    }
}
