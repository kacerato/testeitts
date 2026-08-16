package org.bouncycastle.jce.provider;

import Bi.r;
import Xi.C3363q;
import Xi.C3375z;
import ck.C4210c;
import hk.C13525e;
import java.security.Permission;
import java.security.spec.DSAParameterSpec;
import java.security.spec.ECParameterSpec;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.spec.DHParameterSpec;

public class C14721b implements Tj.c {

    public static Permission f101727g = new Tj.d(C14720a.f101701e, Tj.a.f25390y0);

    public static Permission f101728h = new Tj.d(C14720a.f101701e, Tj.a.f25391z0);

    public static Permission f101729i = new Tj.d(C14720a.f101701e, Tj.a.f25386A0);

    public static Permission f101730j = new Tj.d(C14720a.f101701e, Tj.a.f25387B0);

    public static Permission f101731k = new Tj.d(C14720a.f101701e, Tj.a.f25388C0);

    public static Permission f101732l = new Tj.d(C14720a.f101701e, Tj.a.f25389E0);

    public volatile C13525e f101735c;

    public volatile Object f101736d;

    public ThreadLocal f101733a = new ThreadLocal();

    public ThreadLocal f101734b = new ThreadLocal();

    public volatile Set f101737e = new HashSet();

    public volatile Map f101738f = new HashMap();

    @Override
    public DSAParameterSpec a(int i10) {
        C3375z c3375z = (C3375z) Bi.r.k(r.d.f1890e, i10);
        if (c3375z != null) {
            return new DSAParameterSpec(c3375z.b(), c3375z.c(), c3375z.a());
        }
        return null;
    }

    @Override
    public C13525e b() {
        C13525e c13525e = (C13525e) this.f101733a.get();
        return c13525e != null ? c13525e : this.f101735c;
    }

    @Override
    public Set c() {
        return Collections.unmodifiableSet(this.f101737e);
    }

    @Override
    public Map d() {
        return Collections.unmodifiableMap(this.f101738f);
    }

    @Override
    public DHParameterSpec e(int i10) {
        Object obj = this.f101734b.get();
        if (obj == null) {
            obj = this.f101736d;
        }
        if (obj instanceof DHParameterSpec) {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) obj;
            if (dHParameterSpec.getP().bitLength() == i10) {
                return dHParameterSpec;
            }
        } else if (obj instanceof DHParameterSpec[]) {
            DHParameterSpec[] dHParameterSpecArr = (DHParameterSpec[]) obj;
            for (int i11 = 0; i11 != dHParameterSpecArr.length; i11++) {
                if (dHParameterSpecArr[i11].getP().bitLength() == i10) {
                    return dHParameterSpecArr[i11];
                }
            }
        }
        C3363q c3363q = (C3363q) Bi.r.k(r.d.f1889d, i10);
        if (c3363q != null) {
            return new C4210c(c3363q);
        }
        return null;
    }

    public void f(String str, Object obj) {
        ThreadLocal threadLocal;
        SecurityManager securityManager = System.getSecurityManager();
        if (str.equals(Tj.a.f25390y0)) {
            if (securityManager != null) {
                securityManager.checkPermission(f101727g);
            }
            C13525e g10 = ((obj instanceof C13525e) || obj == null) ? (C13525e) obj : org.bouncycastle.jcajce.provider.asymmetric.util.h.g((ECParameterSpec) obj);
            if (g10 != null) {
                this.f101733a.set(g10);
                return;
            }
            threadLocal = this.f101733a;
        } else {
            if (str.equals(Tj.a.f25391z0)) {
                if (securityManager != null) {
                    securityManager.checkPermission(f101728h);
                }
                if ((obj instanceof C13525e) || obj == null) {
                    this.f101735c = (C13525e) obj;
                    return;
                } else {
                    this.f101735c = org.bouncycastle.jcajce.provider.asymmetric.util.h.g((ECParameterSpec) obj);
                    return;
                }
            }
            if (!str.equals(Tj.a.f25386A0)) {
                if (str.equals(Tj.a.f25387B0)) {
                    if (securityManager != null) {
                        securityManager.checkPermission(f101730j);
                    }
                    if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                        throw new IllegalArgumentException("not a valid DHParameterSpec or DHParameterSpec[]");
                    }
                    this.f101736d = obj;
                    return;
                }
                if (str.equals(Tj.a.f25388C0)) {
                    if (securityManager != null) {
                        securityManager.checkPermission(f101731k);
                    }
                    this.f101737e = (Set) obj;
                    return;
                } else {
                    if (str.equals(Tj.a.f25389E0)) {
                        if (securityManager != null) {
                            securityManager.checkPermission(f101732l);
                        }
                        this.f101738f = (Map) obj;
                        return;
                    }
                    return;
                }
            }
            if (securityManager != null) {
                securityManager.checkPermission(f101729i);
            }
            if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                throw new IllegalArgumentException("not a valid DHParameterSpec");
            }
            threadLocal = this.f101734b;
            if (obj != null) {
                threadLocal.set(obj);
                return;
            }
        }
        threadLocal.remove();
    }
}
