package Ai;

import Bi.C2376h;
import Bi.Y;
import Qk.t;
import Xi.C3335c;
import hi.C13486b;
import java.io.InputStream;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class l extends g {

    public class a implements t {

        public final C13486b f816a;

        public final Object f817b;

        public a(C13486b c13486b, Object obj) {
            this.f816a = c13486b;
            this.f817b = obj;
        }

        @Override
        public C13486b a() {
            return this.f816a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return this.f817b instanceof C2376h ? new Qi.a(inputStream, (C2376h) this.f817b) : new Qi.a(inputStream, (Y) this.f817b);
        }
    }

    public l(C3335c c3335c) {
        super(c3335c);
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        return new J0(new a(c13486b2, p.a(false, g(c13486b, c13486b2, bArr), c13486b2)));
    }
}
