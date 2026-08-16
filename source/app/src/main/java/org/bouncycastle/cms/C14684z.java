package org.bouncycastle.cms;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import oh.C14518h;
import uh.C15624o;
import uh.C15629u;
import uh.InterfaceC15621l;

public class C14684z extends C {
    public final C14683y d(V v10, Qk.F f10) throws CMSException {
        C14518h v11 = X.v(f10.getKey(), this.f100497a);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            OutputStream d10 = f10.d(byteArrayOutputStream);
            v10.b(d10);
            d10.close();
            if (f10 instanceof Qk.D) {
                byte[] b10 = ((Qk.D) f10).b();
                byteArrayOutputStream.write(b10, 0, b10.length);
            }
            return new C14683y(new C15624o(InterfaceC15621l.f120707o8, new C15629u(this.f100499c, new oh.I0(v11), X.t(v10, f10, byteArrayOutputStream.toByteArray()), X.m(this.f100498b))));
        } catch (IOException unused) {
            throw new CMSException("");
        }
    }

    public C14683y e(V v10, Qk.F f10) throws CMSException {
        return d(v10, f10);
    }
}
