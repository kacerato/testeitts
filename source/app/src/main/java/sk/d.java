package Sk;

import Qk.A;
import Xh.s;
import hi.C13486b;
import hi.C13510w;
import java.io.OutputStream;
import org.bouncycastle.pkcs.PKCSException;

public class d {

    public g f23609a;

    public d(g gVar) {
        this.f23609a = gVar;
    }

    public Xh.n a(char[] cArr, byte[] bArr) throws PKCSException {
        try {
            A a10 = this.f23609a.a(cArr);
            OutputStream outputStream = a10.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            C13486b a11 = a10.a();
            C13510w c13510w = new C13510w(this.f23609a.b(), a10.e());
            s v10 = s.v(a11.x());
            return new Xh.n(c13510w, v10.u(), v10.x().intValue());
        } catch (Exception e10) {
            throw new PKCSException("unable to process data: " + e10.getMessage(), e10);
        }
    }
}
