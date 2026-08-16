package Dj;

import Ek.C2490a;
import Ek.C2498i;
import Ek.D;
import Ek.J;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class b {

    public final List<f> f5236a = new ArrayList();

    public void a(f fVar) {
        this.f5236a.add(fVar);
    }

    public a b(Gj.c cVar, byte[] bArr) {
        byte[] a10 = cVar.a(bArr);
        byte[] key = cVar.getKey();
        byte[] b10 = cVar.b();
        D.a u10 = D.u();
        Iterator<f> it = this.f5236a.iterator();
        while (it.hasNext()) {
            u10.a(it.next().a(key));
        }
        return new a(C2498i.u().c(u10.b()).b(J.u(C2490a.u().c(a10).e(b10).a())).a());
    }
}
