package cm;

import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import oh.C14509c0;
import oh.C14554z0;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.tsp.h;
import uh.C15624o;
import uh.C15631w;
import uh.InterfaceC15621l;
import uh.a0;
import uh.b0;
import uh.c0;

public class C4225b extends C4227d {
    public C4224a f(h hVar) throws CMSException {
        return g(hVar, null);
    }

    public C4224a g(h hVar, InputStream inputStream) throws CMSException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (inputStream != null) {
            try {
                C13260d.b(inputStream, byteArrayOutputStream);
            } catch (IOException e10) {
                throw new CMSException("exception encapsulating content: " + e10.getMessage(), e10);
            }
        }
        return new C4224a(new C15624o(InterfaceC15621l.f120714v8, new c0(this.f35048b != null ? new C14554z0(this.f35048b.toString()) : null, this.f35047a, byteArrayOutputStream.size() != 0 ? new C14509c0(byteArrayOutputStream.toByteArray()) : null, new C15631w(new b0(new a0(hVar.l().s()))))));
    }

    public C4224a h(h hVar, byte[] bArr) throws CMSException {
        return g(hVar, new ByteArrayInputStream(bArr));
    }
}
