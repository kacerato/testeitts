package Ai;

import Bi.C2376h;
import Bi.Y;
import Qk.t;
import Rk.v;
import Xi.C3360o0;
import hi.C13486b;
import java.io.InputStream;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class d extends e {

    public class a implements t {

        public final C13486b f806a;

        public final Object f807b;

        public a(C13486b c13486b, Object obj) {
            this.f806a = c13486b;
            this.f807b = obj;
        }

        @Override
        public C13486b a() {
            return this.f806a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return this.f807b instanceof C2376h ? new Qi.a(inputStream, (C2376h) this.f807b) : new Qi.a(inputStream, (Y) this.f807b);
        }
    }

    public d(v vVar) {
        super(vVar);
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        return new J0(new a(c13486b2, p.a(false, (C3360o0) g(c13486b, c13486b2, bArr), c13486b2)));
    }
}
