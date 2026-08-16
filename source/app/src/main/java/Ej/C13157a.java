package ej;

import Ah.d;
import Ah.e;
import Ah.f;
import Ah.g;
import Ah.m;
import Ah.n;
import gj.InterfaceC13386b;
import java.io.OutputStream;
import oh.C0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.K0;
import org.bouncycastle.eac.EACException;

public class C13157a {

    public static final byte[] f85814g = {0};

    public n f85815a;

    public e f85816b;

    public m f85817c;

    public m f85818d;

    public f f85819e;

    public g f85820f;

    public C13157a(g gVar, n nVar, f fVar, e eVar, m mVar, m mVar2) {
        this.f85820f = gVar;
        this.f85815a = nVar;
        this.f85819e = fVar;
        this.f85816b = eVar;
        this.f85817c = mVar;
        this.f85818d = mVar2;
    }

    public C13158b a(InterfaceC13386b interfaceC13386b) throws EACException {
        try {
            d b10 = b();
            OutputStream outputStream = interfaceC13386b.getOutputStream();
            outputStream.write(b10.s(InterfaceC14520i.f98892a));
            outputStream.close();
            return new C13158b(new Ah.b(b10, interfaceC13386b.getSignature()));
        } catch (Exception e10) {
            throw new EACException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public final d b() {
        return new d(new K0(false, 64, 41, (InterfaceC14516g) new C0(f85814g)), this.f85820f, this.f85815a, this.f85819e, this.f85816b, this.f85817c, this.f85818d);
    }
}
