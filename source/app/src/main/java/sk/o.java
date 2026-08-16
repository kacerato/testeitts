package Sk;

import Qk.F;
import Xh.v;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class o {

    public v f23630a;

    public o(v vVar) {
        this.f23630a = vVar;
    }

    public n a(F f10) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStream d10 = f10.d(byteArrayOutputStream);
            d10.write(this.f23630a.getEncoded());
            d10.close();
            return new n(new Xh.j(f10.a(), byteArrayOutputStream.toByteArray()));
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode privateKeyInfo");
        }
    }

    public o(byte[] bArr) {
        this(v.v(bArr));
    }
}
