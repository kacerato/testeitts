package ni;

import Xh.t;
import java.io.IOException;
import java.io.OutputStream;
import li.C14146h;
import oh.C14549x;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.V;
import th.C15426b;

public class C14449b implements V {

    public final C15426b f98235a;

    public C14449b(C14146h c14146h) {
        this(new C15426b(c14146h.x()));
    }

    @Override
    public C14549x a() {
        return t.f29014G1;
    }

    @Override
    public void b(OutputStream outputStream) throws IOException, CMSException {
        outputStream.write(this.f98235a.getEncoded());
    }

    @Override
    public Object getContent() {
        return this.f98235a;
    }

    public C14449b(C15426b c15426b) {
        this.f98235a = c15426b;
    }
}
