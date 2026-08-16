package Hj;

import Hj.v;
import java.security.InvalidParameterException;
import java.security.cert.CertPathParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class u implements CertPathParameters {

    public final v f8548b;

    public final Set<X509Certificate> f8549c;

    public final int f8550d;

    public static class b {

        public final v f8551a;

        public int f8552b;

        public Set<X509Certificate> f8553c;

        public b(v vVar) {
            this.f8552b = 5;
            this.f8553c = new HashSet();
            this.f8551a = vVar;
        }

        public b d(Set<X509Certificate> set) {
            this.f8553c.addAll(set);
            return this;
        }

        public u e() {
            return new u(this);
        }

        public b f(int i10) {
            if (i10 < -1) {
                throw new InvalidParameterException("The maximum path length parameter can not be less than -1.");
            }
            this.f8552b = i10;
            return this;
        }

        public b(PKIXBuilderParameters pKIXBuilderParameters) {
            this.f8552b = 5;
            this.f8553c = new HashSet();
            this.f8551a = new v.b(pKIXBuilderParameters).q();
            this.f8552b = pKIXBuilderParameters.getMaxPathLength();
        }
    }

    public u(b bVar) {
        this.f8548b = bVar.f8551a;
        this.f8549c = Collections.unmodifiableSet(bVar.f8553c);
        this.f8550d = bVar.f8552b;
    }

    public v a() {
        return this.f8548b;
    }

    public Set b() {
        return this.f8549c;
    }

    public int c() {
        return this.f8550d;
    }

    @Override
    public Object clone() {
        return this;
    }
}
