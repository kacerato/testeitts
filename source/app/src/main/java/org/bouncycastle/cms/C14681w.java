package org.bouncycastle.cms;

import hi.C13486b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import oh.C14509c0;
import uh.C15624o;
import uh.C15628t;
import uh.InterfaceC15621l;

public class C14681w extends C14682x {
    public final C14680v b(V v10, Qk.F f10) throws CMSException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            OutputStream d10 = f10.d(byteArrayOutputStream);
            v10.b(d10);
            d10.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            C13486b a10 = f10.a();
            new C14509c0(byteArray);
            return new C14680v(new C15624o(InterfaceC15621l.f120710r8, new C15628t(X.s(v10.a(), a10, byteArray), X.m(this.f101028a))));
        } catch (IOException unused) {
            throw new CMSException("");
        }
    }

    public C14680v c(V v10, Qk.F f10) throws CMSException {
        return b(v10, f10);
    }
}
