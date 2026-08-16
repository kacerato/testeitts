package org.bouncycastle.cms;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import oh.C14509c0;
import uh.C15622m;
import uh.C15624o;
import uh.InterfaceC15621l;

public class C14672p {

    public static final String f101005a = InterfaceC15621l.f120715w8.J();

    public C14670o a(V v10, Qk.E e10) throws CMSException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStream d10 = e10.d(byteArrayOutputStream);
            v10.b(d10);
            d10.close();
            return new C14670o(new C15624o(InterfaceC15621l.f120712t8, new C15622m(e10.a(), new C15624o(v10.a(), new C14509c0(byteArrayOutputStream.toByteArray())))));
        } catch (IOException e11) {
            throw new CMSException("exception encoding data.", e11);
        }
    }
}
