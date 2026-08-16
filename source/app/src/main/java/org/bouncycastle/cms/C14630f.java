package org.bouncycastle.cms;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import oh.C14518h;
import uh.C15613d;
import uh.C15624o;
import uh.InterfaceC15621l;

public class C14630f extends C14636i {
    public final C14628e f(V v10, Qk.D d10) throws CMSException {
        C14518h v11 = X.v(d10.getKey(), this.f100779C);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            OutputStream d11 = d10.d(byteArrayOutputStream);
            v10.b(d11);
            oh.G E10 = X.E(this.f100780D, d10);
            d11.close();
            return new C14628e(new C15624o(InterfaceC15621l.f120713u8, new C15613d(this.f100782F, new oh.I0(v11), X.t(v10, d10, byteArrayOutputStream.toByteArray()), E10, new oh.C0(d10.b()), X.n(this.f100781E))));
        } catch (IOException e10) {
            throw new CMSException("unable to process authenticated content: " + e10.getMessage(), e10);
        }
    }

    public C14628e g(V v10, Qk.D d10) throws CMSException {
        return f(v10, d10);
    }
}
