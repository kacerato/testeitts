package ri;

import Qk.p;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.cert.dane.DANEException;
import org.bouncycastle.util.w;

public class C15188g {

    public final p f109047a;

    public C15188g(p pVar) {
        this.f109047a = pVar;
    }

    public C15187f a(String str) throws DANEException {
        byte[] n10 = w.n(str.substring(0, str.indexOf(64)));
        try {
            OutputStream outputStream = this.f109047a.getOutputStream();
            outputStream.write(n10);
            outputStream.close();
            return new C15187f(w.c(em.h.h(this.f109047a.b())) + "._smimecert." + str.substring(str.indexOf(64) + 1));
        } catch (IOException e10) {
            throw new DANEException("Unable to calculate digest string: " + e10.getMessage(), e10);
        }
    }
}
