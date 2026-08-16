package Dj;

import Ek.C2492c;
import Ek.C2493d;
import Ek.C2494e;
import Ek.K;
import Ek.M;
import Ek.s;
import Fk.C2539k;
import Fk.C2551x;
import Fk.S;
import Qk.q;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import oh.C14549x;
import org.bouncycastle.operator.OperatorCreationException;

public class m extends k {

    public final s f5256f;

    public m(j jVar, q qVar, K.a aVar) {
        super(jVar, aVar);
        s B10;
        C14549x c14549x = Sh.d.f23337c;
        C13486b c13486b = new C13486b(c14549x);
        C14549x u10 = c13486b.u();
        try {
            Qk.p a10 = qVar.a(c13486b);
            try {
                OutputStream outputStream = a10.getOutputStream();
                outputStream.write(jVar.getEncoded());
                outputStream.close();
                byte[] b10 = a10.b();
                C2551x c2551x = new C2551x(org.bouncycastle.util.a.X(b10, b10.length - 8, b10.length));
                if (u10.A(c14549x)) {
                    B10 = s.A(c2551x);
                } else {
                    if (!u10.A(Sh.d.f23339d)) {
                        throw new IllegalStateException("unknown digest");
                    }
                    B10 = s.B(c2551x);
                }
                this.f5256f = B10;
            } catch (IOException e10) {
                throw new IllegalStateException(e10.getMessage(), e10);
            }
        } catch (OperatorCreationException e11) {
            throw new IllegalStateException(e11.getMessage(), e11);
        }
    }

    public j h(C2493d c2493d, BigInteger bigInteger, BigInteger bigInteger2) {
        return i(c2493d, bigInteger, bigInteger2, null);
    }

    public j i(C2493d c2493d, BigInteger bigInteger, BigInteger bigInteger2, S s10) {
        C2539k G10 = C2539k.G(bigInteger, bigInteger2);
        K.a aVar = new K.a(this.f5250a);
        aVar.j(c2493d);
        if (s10 != null) {
            aVar.i(s10);
        }
        aVar.m(M.y(G10));
        C2492c.a aVar2 = new C2492c.a();
        aVar2.j(this.f5252c);
        aVar2.i(C2494e.f5959g);
        aVar2.f(this.f5256f);
        aVar2.h(aVar.a());
        return new j(aVar2.b());
    }
}
