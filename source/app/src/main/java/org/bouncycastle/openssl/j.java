package org.bouncycastle.openssl;

import gm.InterfaceC13402c;
import java.io.IOException;
import java.io.Writer;
import org.bouncycastle.util.io.pem.PemGenerationException;

public class j extends gm.f {
    public j(Writer writer) {
        super(writer);
    }

    @Override
    public void c(InterfaceC13402c interfaceC13402c) throws IOException {
        super.c(interfaceC13402c);
    }

    public void f(Object obj) throws IOException {
        g(obj, null);
    }

    public void g(Object obj, f fVar) throws IOException {
        try {
            super.c(new Pk.a(obj, fVar));
        } catch (PemGenerationException e10) {
            if (!(e10.getCause() instanceof IOException)) {
                throw e10;
            }
            throw ((IOException) e10.getCause());
        }
    }
}
