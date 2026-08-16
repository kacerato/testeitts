package Ai;

import Bi.C2376h;
import Bi.Y;
import Qk.t;
import hi.C13486b;
import java.io.InputStream;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class i extends j {

    public class a implements t {

        public final C13486b f811a;

        public final Object f812b;

        public a(C13486b c13486b, Object obj) {
            this.f811a = c13486b;
            this.f812b = obj;
        }

        @Override
        public C13486b a() {
            return this.f811a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return this.f812b instanceof C2376h ? new Qi.a(inputStream, (C2376h) this.f812b) : new Qi.a(inputStream, (Y) this.f812b);
        }
    }

    public i(char[] cArr) {
        super(cArr);
    }

    @Override
    public J0 d(C13486b c13486b, C13486b c13486b2, byte[] bArr, byte[] bArr2) throws CMSException {
        return new J0(new a(c13486b2, p.a(false, g(c13486b, c13486b2, bArr, bArr2), c13486b2)));
    }
}
