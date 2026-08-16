package org.bouncycastle.tsp;

import ci.C4200k;
import hi.C13478B;
import hi.C13479C;
import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import oh.C14549x;
import oh.r;

public class d {

    public static Set f102265c = Collections.unmodifiableSet(new HashSet());

    public C4200k f102266a;

    public C13479C f102267b;

    public d(C4200k c4200k) {
        this.f102266a = c4200k;
        this.f102267b = c4200k.x();
    }

    public static C4200k p(InputStream inputStream) throws IOException {
        try {
            return C4200k.y(new r(inputStream).k());
        } catch (ClassCastException e10) {
            throw new IOException("malformed request: " + ((Object) e10));
        } catch (IllegalArgumentException e11) {
            throw new IOException("malformed request: " + ((Object) e11));
        }
    }

    public final Set a(Set set) {
        if (set == null) {
            return set;
        }
        HashSet hashSet = new HashSet(set.size());
        for (Object obj : set) {
            if (obj instanceof String) {
                hashSet.add(new C14549x((String) obj));
            } else {
                hashSet.add(obj);
            }
        }
        return hashSet;
    }

    public boolean b() {
        if (this.f102266a.v() != null) {
            return this.f102266a.v().J();
        }
        return false;
    }

    public Set c() {
        return this.f102267b == null ? f102265c : Collections.unmodifiableSet(new HashSet(Arrays.asList(this.f102267b.v())));
    }

    public byte[] d() throws IOException {
        return this.f102266a.getEncoded();
    }

    public C13478B e(C14549x c14549x) {
        C13479C c13479c = this.f102267b;
        if (c13479c != null) {
            return c13479c.x(c14549x);
        }
        return null;
    }

    public List f() {
        return c.c(this.f102267b);
    }

    public C13479C g() {
        return this.f102267b;
    }

    public C13486b h() {
        return this.f102266a.z().u();
    }

    public C14549x i() {
        return this.f102266a.z().u().u();
    }

    public byte[] j() {
        return this.f102266a.z().v();
    }

    public Set k() {
        return this.f102267b == null ? f102265c : Collections.unmodifiableSet(new HashSet(Arrays.asList(this.f102267b.E())));
    }

    public BigInteger l() {
        if (this.f102266a.A() != null) {
            return this.f102266a.A().I();
        }
        return null;
    }

    public C14549x m() {
        if (this.f102266a.B() != null) {
            return this.f102266a.B();
        }
        return null;
    }

    public int n() {
        return this.f102266a.C().O();
    }

    public boolean o() {
        return this.f102267b != null;
    }

    public void q(Set set, Set set2, Set set3) throws TSPException {
        Set a10 = a(set);
        Set a11 = a(set2);
        Set a12 = a(set3);
        if (!a10.contains(i())) {
            throw new TSPValidationException("request contains unknown algorithm", 128);
        }
        if (a11 != null && m() != null && !a11.contains(m())) {
            throw new TSPValidationException("request contains unknown policy", 256);
        }
        if (g() != null && a12 != null) {
            Enumeration F10 = g().F();
            while (F10.hasMoreElements()) {
                if (!a12.contains((C14549x) F10.nextElement())) {
                    throw new TSPValidationException("request contains unknown extension", 8388608);
                }
            }
        }
        if (c.b(i().J()) != j().length) {
            throw new TSPValidationException("imprint digest the wrong length", 4);
        }
    }

    public d(InputStream inputStream) throws IOException {
        this(p(inputStream));
    }

    public d(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
