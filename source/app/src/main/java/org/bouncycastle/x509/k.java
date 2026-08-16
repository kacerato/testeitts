package org.bouncycastle.x509;

import hi.C13478B;
import hi.C13481E;
import hi.l0;
import hi.m0;
import hi.n0;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import oh.B;
import oh.C0;

public class k implements org.bouncycastle.util.r {

    public a f102399b;

    public b f102400c;

    public BigInteger f102401d;

    public Date f102402e;

    public l f102403f;

    public Collection f102404g = new HashSet();

    public Collection f102405h = new HashSet();

    @Override
    public boolean Z2(Object obj) {
        byte[] extensionValue;
        n0[] v10;
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        l lVar2 = this.f102403f;
        if (lVar2 != null && !lVar2.equals(lVar)) {
            return false;
        }
        if (this.f102401d != null && !lVar.getSerialNumber().equals(this.f102401d)) {
            return false;
        }
        if (this.f102399b != null && !lVar.getHolder().equals(this.f102399b)) {
            return false;
        }
        if (this.f102400c != null && !lVar.f().equals(this.f102400c)) {
            return false;
        }
        Date date = this.f102402e;
        if (date != null) {
            try {
                lVar.checkValidity(date);
            } catch (CertificateExpiredException | CertificateNotYetValidException unused) {
                return false;
            }
        }
        if ((!this.f102404g.isEmpty() || !this.f102405h.isEmpty()) && (extensionValue = lVar.getExtensionValue(C13478B.f90523I.J())) != null) {
            try {
                v10 = m0.u(new oh.r(((C0) B.B(extensionValue)).H()).k()).v();
                if (!this.f102404g.isEmpty()) {
                    boolean z10 = false;
                    for (n0 n0Var : v10) {
                        l0[] v11 = n0Var.v();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= v11.length) {
                                break;
                            }
                            if (this.f102404g.contains(C13481E.v(v11[i10].x()))) {
                                z10 = true;
                                break;
                            }
                            i10++;
                        }
                    }
                    if (!z10) {
                        return false;
                    }
                }
            } catch (IOException | IllegalArgumentException unused2) {
            }
            if (!this.f102405h.isEmpty()) {
                boolean z11 = false;
                for (n0 n0Var2 : v10) {
                    l0[] v12 = n0Var2.v();
                    int i11 = 0;
                    while (true) {
                        if (i11 >= v12.length) {
                            break;
                        }
                        if (this.f102405h.contains(C13481E.v(v12[i11].v()))) {
                            z11 = true;
                            break;
                        }
                        i11++;
                    }
                }
                if (!z11) {
                    return false;
                }
            }
        }
        return true;
    }

    public void a(C13481E c13481e) {
        this.f102405h.add(c13481e);
    }

    public void b(byte[] bArr) throws IOException {
        a(C13481E.v(B.B(bArr)));
    }

    public void c(C13481E c13481e) {
        this.f102404g.add(c13481e);
    }

    @Override
    public Object clone() {
        k kVar = new k();
        kVar.f102403f = this.f102403f;
        kVar.f102402e = g();
        kVar.f102399b = this.f102399b;
        kVar.f102400c = this.f102400c;
        kVar.f102401d = this.f102401d;
        kVar.f102405h = k();
        kVar.f102404g = l();
        return kVar;
    }

    public void d(byte[] bArr) throws IOException {
        c(C13481E.v(B.B(bArr)));
    }

    public final Set e(Collection collection) throws IOException {
        if (collection == null || collection.isEmpty()) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        for (Object obj : collection) {
            if (!(obj instanceof C13481E)) {
                obj = C13481E.v(B.B((byte[]) obj));
            }
            hashSet.add(obj);
        }
        return hashSet;
    }

    public l f() {
        return this.f102403f;
    }

    public Date g() {
        if (this.f102402e != null) {
            return new Date(this.f102402e.getTime());
        }
        return null;
    }

    public a h() {
        return this.f102399b;
    }

    public b i() {
        return this.f102400c;
    }

    public BigInteger j() {
        return this.f102401d;
    }

    public Collection k() {
        return Collections.unmodifiableCollection(this.f102405h);
    }

    public Collection l() {
        return Collections.unmodifiableCollection(this.f102404g);
    }

    public void m(l lVar) {
        this.f102403f = lVar;
    }

    public void n(Date date) {
        if (date != null) {
            this.f102402e = new Date(date.getTime());
        } else {
            this.f102402e = null;
        }
    }

    public void o(a aVar) {
        this.f102399b = aVar;
    }

    public void p(b bVar) {
        this.f102400c = bVar;
    }

    public void q(BigInteger bigInteger) {
        this.f102401d = bigInteger;
    }

    public void r(Collection collection) throws IOException {
        this.f102405h = e(collection);
    }

    public void s(Collection collection) throws IOException {
        this.f102404g = e(collection);
    }
}
