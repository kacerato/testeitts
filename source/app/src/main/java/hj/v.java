package Hj;

import Hj.t;
import hi.C13481E;
import java.security.cert.CertPathParameters;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class v implements CertPathParameters {

    public static final int f8554n = 0;

    public static final int f8555o = 1;

    public final PKIXParameters f8556b;

    public final t f8557c;

    public final Date f8558d;

    public final Date f8559e;

    public final List<s> f8560f;

    public final Map<C13481E, s> f8561g;

    public final List<o> f8562h;

    public final Map<C13481E, o> f8563i;

    public final boolean f8564j;

    public final boolean f8565k;

    public final int f8566l;

    public final Set<TrustAnchor> f8567m;

    public static class b {

        public final PKIXParameters f8568a;

        public final Date f8569b;

        public final Date f8570c;

        public t f8571d;

        public List<s> f8572e;

        public Map<C13481E, s> f8573f;

        public List<o> f8574g;

        public Map<C13481E, o> f8575h;

        public boolean f8576i;

        public int f8577j;

        public boolean f8578k;

        public Set<TrustAnchor> f8579l;

        public b(v vVar) {
            this.f8572e = new ArrayList();
            this.f8573f = new HashMap();
            this.f8574g = new ArrayList();
            this.f8575h = new HashMap();
            this.f8577j = 0;
            this.f8578k = false;
            this.f8568a = vVar.f8556b;
            this.f8569b = vVar.f8558d;
            this.f8570c = vVar.f8559e;
            this.f8571d = vVar.f8557c;
            this.f8572e = new ArrayList(vVar.f8560f);
            this.f8573f = new HashMap(vVar.f8561g);
            this.f8574g = new ArrayList(vVar.f8562h);
            this.f8575h = new HashMap(vVar.f8563i);
            this.f8578k = vVar.f8565k;
            this.f8577j = vVar.f8566l;
            this.f8576i = vVar.B();
            this.f8579l = vVar.v();
        }

        public b m(o oVar) {
            this.f8574g.add(oVar);
            return this;
        }

        public b n(s sVar) {
            this.f8572e.add(sVar);
            return this;
        }

        public b o(C13481E c13481e, o oVar) {
            this.f8575h.put(c13481e, oVar);
            return this;
        }

        public b p(C13481E c13481e, s sVar) {
            this.f8573f.put(c13481e, sVar);
            return this;
        }

        public v q() {
            return new v(this);
        }

        public void r(boolean z10) {
            this.f8576i = z10;
        }

        public b s(t tVar) {
            this.f8571d = tVar;
            return this;
        }

        public b t(TrustAnchor trustAnchor) {
            this.f8579l = Collections.singleton(trustAnchor);
            return this;
        }

        public b u(Set<TrustAnchor> set) {
            this.f8579l = set;
            return this;
        }

        public b v(boolean z10) {
            this.f8578k = z10;
            return this;
        }

        public b w(int i10) {
            this.f8577j = i10;
            return this;
        }

        public b(PKIXParameters pKIXParameters) {
            this.f8572e = new ArrayList();
            this.f8573f = new HashMap();
            this.f8574g = new ArrayList();
            this.f8575h = new HashMap();
            this.f8577j = 0;
            this.f8578k = false;
            this.f8568a = (PKIXParameters) pKIXParameters.clone();
            CertSelector targetCertConstraints = pKIXParameters.getTargetCertConstraints();
            if (targetCertConstraints != null) {
                this.f8571d = new t.b(targetCertConstraints).a();
            }
            Date date = pKIXParameters.getDate();
            this.f8569b = date;
            this.f8570c = date == null ? new Date() : date;
            this.f8576i = pKIXParameters.isRevocationEnabled();
            this.f8579l = pKIXParameters.getTrustAnchors();
        }
    }

    public v(b bVar) {
        this.f8556b = bVar.f8568a;
        this.f8558d = bVar.f8569b;
        this.f8559e = bVar.f8570c;
        this.f8560f = Collections.unmodifiableList(bVar.f8572e);
        this.f8561g = Collections.unmodifiableMap(new HashMap(bVar.f8573f));
        this.f8562h = Collections.unmodifiableList(bVar.f8574g);
        this.f8563i = Collections.unmodifiableMap(new HashMap(bVar.f8575h));
        this.f8557c = bVar.f8571d;
        this.f8564j = bVar.f8576i;
        this.f8565k = bVar.f8578k;
        this.f8566l = bVar.f8577j;
        this.f8567m = Collections.unmodifiableSet(bVar.f8579l);
    }

    public boolean A() {
        return this.f8556b.isPolicyMappingInhibited();
    }

    public boolean B() {
        return this.f8564j;
    }

    public boolean C() {
        return this.f8565k;
    }

    @Override
    public Object clone() {
        return this;
    }

    public List<o> k() {
        return this.f8562h;
    }

    public List l() {
        return this.f8556b.getCertPathCheckers();
    }

    public List<CertStore> m() {
        return this.f8556b.getCertStores();
    }

    public List<s> n() {
        return this.f8560f;
    }

    public Date o() {
        return new Date(this.f8559e.getTime());
    }

    public Set p() {
        return this.f8556b.getInitialPolicies();
    }

    public Map<C13481E, o> q() {
        return this.f8563i;
    }

    public Map<C13481E, s> r() {
        return this.f8561g;
    }

    public boolean s() {
        return this.f8556b.getPolicyQualifiersRejected();
    }

    public String t() {
        return this.f8556b.getSigProvider();
    }

    public t u() {
        return this.f8557c;
    }

    public Set v() {
        return this.f8567m;
    }

    public Date w() {
        if (this.f8558d == null) {
            return null;
        }
        return new Date(this.f8558d.getTime());
    }

    public int x() {
        return this.f8566l;
    }

    public boolean y() {
        return this.f8556b.isAnyPolicyInhibited();
    }

    public boolean z() {
        return this.f8556b.isExplicitPolicyRequired();
    }
}
