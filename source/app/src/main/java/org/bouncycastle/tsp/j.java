package org.bouncycastle.tsp;

import ci.C4190a;
import ci.C4199j;
import hi.C13479C;
import hi.C13481E;
import hi.C13486b;
import java.io.IOException;
import java.math.BigInteger;
import java.text.ParseException;
import java.util.Date;
import oh.C14549x;

public class j {

    public C4199j f102311a;

    public Date f102312b;

    public j(C4199j c4199j) throws TSPException, IOException {
        this.f102311a = c4199j;
        try {
            this.f102312b = c4199j.x().I();
        } catch (ParseException unused) {
            throw new TSPException("unable to parse genTime field");
        }
    }

    public C4190a a() {
        return this.f102311a.u();
    }

    public byte[] b() throws IOException {
        return this.f102311a.getEncoded();
    }

    public C13479C c() {
        return this.f102311a.v();
    }

    public Date d() {
        return this.f102312b;
    }

    public a e() {
        if (a() != null) {
            return new a(a());
        }
        return null;
    }

    public C13486b f() {
        return this.f102311a.z().u();
    }

    public C14549x g() {
        return this.f102311a.z().u().u();
    }

    public byte[] h() {
        return this.f102311a.z().v();
    }

    public BigInteger i() {
        if (this.f102311a.A() != null) {
            return this.f102311a.A().I();
        }
        return null;
    }

    public C14549x j() {
        return this.f102311a.C();
    }

    public BigInteger k() {
        return this.f102311a.D().I();
    }

    public C13481E l() {
        return this.f102311a.E();
    }

    public boolean m() {
        return this.f102311a.B().J();
    }

    public C4199j n() {
        return this.f102311a;
    }

    public C4199j o() {
        return this.f102311a;
    }
}
