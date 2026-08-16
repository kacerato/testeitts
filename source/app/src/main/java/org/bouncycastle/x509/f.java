package org.bouncycastle.x509;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CertSelector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class f extends PKIXParameters {

    public static final int f102370l = 0;

    public static final int f102371m = 1;

    public List f102372b;

    public org.bouncycastle.util.r f102373c;

    public boolean f102374d;

    public List f102375e;

    public Set f102376f;

    public Set f102377g;

    public Set f102378h;

    public Set f102379i;

    public int f102380j;

    public boolean f102381k;

    public f(Set set) throws InvalidAlgorithmParameterException {
        super((Set<TrustAnchor>) set);
        this.f102380j = 0;
        this.f102381k = false;
        this.f102372b = new ArrayList();
        this.f102375e = new ArrayList();
        this.f102376f = new HashSet();
        this.f102377g = new HashSet();
        this.f102378h = new HashSet();
        this.f102379i = new HashSet();
    }

    public static f f(PKIXParameters pKIXParameters) {
        try {
            f fVar = new f(pKIXParameters.getTrustAnchors());
            fVar.r(pKIXParameters);
            return fVar;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public void a(org.bouncycastle.util.t tVar) {
        b(tVar);
    }

    public void b(org.bouncycastle.util.t tVar) {
        if (tVar != null) {
            this.f102375e.add(tVar);
        }
    }

    public void c(org.bouncycastle.util.t tVar) {
        if (tVar != null) {
            this.f102372b.add(tVar);
        }
    }

    @Override
    public Object clone() {
        try {
            f fVar = new f(getTrustAnchors());
            fVar.r(this);
            return fVar;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public List d() {
        return Collections.unmodifiableList(this.f102375e);
    }

    public Set e() {
        return Collections.unmodifiableSet(this.f102379i);
    }

    public Set g() {
        return Collections.unmodifiableSet(this.f102377g);
    }

    public Set h() {
        return Collections.unmodifiableSet(this.f102378h);
    }

    public List i() {
        return Collections.unmodifiableList(new ArrayList(this.f102372b));
    }

    public org.bouncycastle.util.r j() {
        org.bouncycastle.util.r rVar = this.f102373c;
        if (rVar != null) {
            return (org.bouncycastle.util.r) rVar.clone();
        }
        return null;
    }

    public Set k() {
        return Collections.unmodifiableSet(this.f102376f);
    }

    public int l() {
        return this.f102380j;
    }

    public boolean m() {
        return this.f102374d;
    }

    public boolean n() {
        return this.f102381k;
    }

    public void o(boolean z10) {
        this.f102374d = z10;
    }

    public void p(Set set) {
        if (set == null) {
            this.f102379i.clear();
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof g)) {
                throw new ClassCastException("All elements of set must be of type " + g.class.getName() + ".");
            }
        }
        this.f102379i.clear();
        this.f102379i.addAll(set);
    }

    public void q(Set set) {
        if (set == null) {
            this.f102377g.clear();
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof String)) {
                throw new ClassCastException("All elements of set must be of type String.");
            }
        }
        this.f102377g.clear();
        this.f102377g.addAll(set);
    }

    public void r(PKIXParameters pKIXParameters) {
        setDate(pKIXParameters.getDate());
        setCertPathCheckers(pKIXParameters.getCertPathCheckers());
        setCertStores(pKIXParameters.getCertStores());
        setAnyPolicyInhibited(pKIXParameters.isAnyPolicyInhibited());
        setExplicitPolicyRequired(pKIXParameters.isExplicitPolicyRequired());
        setPolicyMappingInhibited(pKIXParameters.isPolicyMappingInhibited());
        setRevocationEnabled(pKIXParameters.isRevocationEnabled());
        setInitialPolicies(pKIXParameters.getInitialPolicies());
        setPolicyQualifiersRejected(pKIXParameters.getPolicyQualifiersRejected());
        setSigProvider(pKIXParameters.getSigProvider());
        setTargetCertConstraints(pKIXParameters.getTargetCertConstraints());
        try {
            setTrustAnchors(pKIXParameters.getTrustAnchors());
            if (pKIXParameters instanceof f) {
                f fVar = (f) pKIXParameters;
                this.f102380j = fVar.f102380j;
                this.f102381k = fVar.f102381k;
                this.f102374d = fVar.f102374d;
                org.bouncycastle.util.r rVar = fVar.f102373c;
                this.f102373c = rVar == null ? null : (org.bouncycastle.util.r) rVar.clone();
                this.f102372b = new ArrayList(fVar.f102372b);
                this.f102375e = new ArrayList(fVar.f102375e);
                this.f102376f = new HashSet(fVar.f102376f);
                this.f102378h = new HashSet(fVar.f102378h);
                this.f102377g = new HashSet(fVar.f102377g);
                this.f102379i = new HashSet(fVar.f102379i);
            }
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public void s(Set set) {
        if (set == null) {
            this.f102378h.clear();
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof String)) {
                throw new ClassCastException("All elements of set must be of type String.");
            }
        }
        this.f102378h.clear();
        this.f102378h.addAll(set);
    }

    @Override
    public void setCertStores(List list) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                addCertStore((CertStore) it.next());
            }
        }
    }

    @Override
    public void setTargetCertConstraints(CertSelector certSelector) {
        super.setTargetCertConstraints(certSelector);
        this.f102373c = certSelector != null ? o.a((X509CertSelector) certSelector) : null;
    }

    public void t(List list) {
        if (list == null) {
            this.f102372b = new ArrayList();
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof org.bouncycastle.util.t)) {
                throw new ClassCastException("All elements of list must be of type org.bouncycastle.util.Store.");
            }
        }
        this.f102372b = new ArrayList(list);
    }

    public void u(org.bouncycastle.util.r rVar) {
        this.f102373c = rVar != null ? (org.bouncycastle.util.r) rVar.clone() : null;
    }

    public void v(Set set) {
        if (set == null) {
            this.f102376f.clear();
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof TrustAnchor)) {
                throw new ClassCastException("All elements of set must be of type " + TrustAnchor.class.getName() + ".");
            }
        }
        this.f102376f.clear();
        this.f102376f.addAll(set);
    }

    public void w(boolean z10) {
        this.f102381k = z10;
    }

    public void x(int i10) {
        this.f102380j = i10;
    }
}
