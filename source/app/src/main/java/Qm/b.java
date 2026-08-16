package Qm;

import Um.A;
import Um.j;
import Um.v;
import Um.z;

public abstract class b implements Xm.a {

    public final char f22496a;

    public b(char c10) {
        this.f22496a = c10;
    }

    @Override
    public char a() {
        return this.f22496a;
    }

    @Override
    public int b() {
        return 1;
    }

    @Override
    public char c() {
        return this.f22496a;
    }

    @Override
    public int d(Xm.b bVar, Xm.b bVar2) {
        if ((bVar.a() || bVar2.c()) && bVar2.b() % 3 != 0 && (bVar.b() + bVar2.b()) % 3 == 0) {
            return 0;
        }
        return (bVar.length() < 2 || bVar2.length() < 2) ? 1 : 2;
    }

    @Override
    public void e(A a10, A a11, int i10) {
        v zVar;
        String valueOf = String.valueOf(c());
        if (i10 == 1) {
            zVar = new j(valueOf);
        } else {
            zVar = new z(valueOf + valueOf);
        }
        v g10 = a10.g();
        while (g10 != null && g10 != a11) {
            v g11 = g10.g();
            zVar.d(g10);
            g10 = g11;
        }
        a10.j(zVar);
    }
}
