package org.bouncycastle.cms;

import java.io.IOException;
import java.io.InputStream;
import uh.C15625p;

public class C14678t {

    public C15625p f101017a;

    public InputStream f101018b;

    public C14678t(InputStream inputStream) throws CMSException {
        this.f101018b = inputStream;
        try {
            oh.F f10 = (oh.F) new oh.I(inputStream).j();
            if (f10 == null) {
                throw new CMSException("No content found.");
            }
            this.f101017a = new C15625p(f10);
        } catch (IOException e10) {
            throw new CMSException("IOException reading content.", e10);
        } catch (ClassCastException e11) {
            throw new CMSException("Unexpected object reading content.", e11);
        }
    }

    public void a() throws IOException {
        this.f101018b.close();
    }
}
