package dm;

import ci.C4191b;
import ci.C4193d;
import ci.C4198i;
import ci.C4199j;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import oh.InterfaceC14520i;
import org.bouncycastle.tsp.TSPException;
import org.bouncycastle.tsp.ers.ERSException;
import uh.C15624o;

public class C12970d {

    public final Qk.p f84858a;

    public List<g> f84859b = new ArrayList();

    public p f84860c = new C12967a();

    public byte[] f84861d;

    public C12970d(Qk.p pVar) {
        this.f84858a = pVar;
    }

    public void a(List<g> list) {
        this.f84859b.addAll(list);
    }

    public void b(g gVar) {
        this.f84859b.add(gVar);
    }

    public void c(C4193d c4193d) throws IOException {
        OutputStream outputStream = this.f84858a.getOutputStream();
        outputStream.write(c4193d.s(InterfaceC14520i.f98892a));
        outputStream.close();
        this.f84861d = this.f84858a.b();
    }

    public C12969c d(org.bouncycastle.tsp.f fVar) throws TSPException, ERSException {
        b[] h10 = h();
        if (h10.length != 1) {
            throw new ERSException("multiple reduced hash trees found");
        }
        byte[] b10 = this.f84860c.b(this.f84858a, h10);
        if (fVar.d() != 0) {
            throw new TSPException("TSP response error status: " + fVar.e());
        }
        C4199j n10 = fVar.f().i().n();
        if (!n10.z().u().equals(this.f84858a.a())) {
            throw new ERSException("time stamp imprint for wrong algorithm");
        }
        if (org.bouncycastle.util.a.g(n10.z().v(), b10)) {
            return h10[0].x() == 1 ? new C12969c(new C4191b(null, null, fVar.f().l().s()), this.f84858a) : new C12969c(new C4191b(this.f84858a.a(), h10, fVar.f().l().s()), this.f84858a);
        }
        throw new ERSException("time stamp imprint for wrong root hash");
    }

    public List<C12969c> e(org.bouncycastle.tsp.f fVar) throws TSPException, ERSException {
        b[] h10 = h();
        byte[] b10 = this.f84860c.b(this.f84858a, h10);
        if (fVar.d() != 0) {
            throw new TSPException("TSP response error status: " + fVar.e());
        }
        C4199j n10 = fVar.f().i().n();
        if (!n10.z().u().equals(this.f84858a.a())) {
            throw new ERSException("time stamp imprint for wrong algorithm");
        }
        if (!org.bouncycastle.util.a.g(n10.z().v(), b10)) {
            throw new ERSException("time stamp imprint for wrong root hash");
        }
        C15624o s10 = fVar.f().l().s();
        ArrayList arrayList = new ArrayList();
        if (h10.length == 1 && h10[0].x() == 1) {
            arrayList.add(new C12969c(new C4191b(null, null, s10), this.f84858a));
        } else {
            C12969c[] c12969cArr = new C12969c[h10.length];
            for (int i10 = 0; i10 != h10.length; i10++) {
                c12969cArr[h10[i10].f84862c] = new C12969c(new C4191b(this.f84858a.a(), this.f84860c.c(this.f84858a, h10[i10], i10), s10), this.f84858a);
            }
            for (int i11 = 0; i11 != h10.length; i11++) {
                arrayList.add(c12969cArr[i11]);
            }
        }
        return arrayList;
    }

    public org.bouncycastle.tsp.d f(org.bouncycastle.tsp.e eVar) throws TSPException, IOException {
        return eVar.e(this.f84858a.a(), this.f84860c.b(this.f84858a, h()));
    }

    public org.bouncycastle.tsp.d g(org.bouncycastle.tsp.e eVar, BigInteger bigInteger) throws TSPException, IOException {
        return eVar.f(this.f84858a.a(), this.f84860c.b(this.f84858a, h()), bigInteger);
    }

    public final b[] h() {
        List<s> b10 = q.b(this.f84858a, this.f84859b, this.f84861d);
        b[] bVarArr = new b[b10.size()];
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 != this.f84859b.size(); i10++) {
            if (this.f84859b.get(i10) instanceof h) {
                hashSet.add((h) this.f84859b.get(i10));
            }
        }
        for (int i11 = 0; i11 != b10.size(); i11++) {
            byte[] bArr = b10.get(i11).f84886b;
            g gVar = this.f84859b.get(b10.get(i11).f84885a);
            if (gVar instanceof h) {
                List<byte[]> c10 = ((h) gVar).c(this.f84858a, this.f84861d);
                bVarArr[i11] = new b(b10.get(i11).f84885a, (byte[][]) c10.toArray(new byte[c10.size()]));
            } else {
                bVarArr[i11] = new b(b10.get(i11).f84885a, bArr);
            }
        }
        return bVarArr;
    }

    public static class b extends C4198i {

        public final int f84862c;

        public b(int i10, byte[] bArr) {
            super(bArr);
            this.f84862c = i10;
        }

        public b(int i10, byte[][] bArr) {
            super(bArr);
            this.f84862c = i10;
        }
    }
}
