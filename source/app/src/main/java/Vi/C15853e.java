package vi;

import java.util.Collections;
import java.util.Set;
import org.bouncycastle.cert.path.CertPathValidationException;

public class C15853e {

    public final boolean f121620a;

    public final CertPathValidationException f121621b;

    public final Set f121622c;

    public final int f121623d;

    public final int f121624e;

    public CertPathValidationException[] f121625f;

    public int[] f121626g;

    public int[] f121627h;

    public C15853e(C15852d c15852d) {
        Set unmodifiableSet = Collections.unmodifiableSet(c15852d.b());
        this.f121622c = unmodifiableSet;
        this.f121620a = unmodifiableSet.isEmpty();
        this.f121623d = -1;
        this.f121624e = -1;
        this.f121621b = null;
    }

    public CertPathValidationException a() {
        CertPathValidationException certPathValidationException = this.f121621b;
        if (certPathValidationException != null) {
            return certPathValidationException;
        }
        if (this.f121622c.isEmpty()) {
            return null;
        }
        return new CertPathValidationException("Unhandled Critical Extensions");
    }

    public CertPathValidationException[] b() {
        CertPathValidationException[] certPathValidationExceptionArr = this.f121625f;
        if (certPathValidationExceptionArr != null) {
            CertPathValidationException[] certPathValidationExceptionArr2 = new CertPathValidationException[certPathValidationExceptionArr.length];
            System.arraycopy(certPathValidationExceptionArr, 0, certPathValidationExceptionArr2, 0, certPathValidationExceptionArr.length);
            return certPathValidationExceptionArr2;
        }
        if (this.f121622c.isEmpty()) {
            return null;
        }
        return new CertPathValidationException[]{new CertPathValidationException("Unhandled Critical Extensions")};
    }

    public int c() {
        return this.f121623d;
    }

    public int[] d() {
        return org.bouncycastle.util.a.s(this.f121626g);
    }

    public int e() {
        return this.f121624e;
    }

    public int[] f() {
        return org.bouncycastle.util.a.s(this.f121627h);
    }

    public Set g() {
        return this.f121622c;
    }

    public boolean h() {
        return this.f121626g != null;
    }

    public boolean i() {
        return this.f121620a;
    }

    public C15853e(C15852d c15852d, int i10, int i11, CertPathValidationException certPathValidationException) {
        this.f121622c = Collections.unmodifiableSet(c15852d.b());
        this.f121620a = false;
        this.f121623d = i10;
        this.f121624e = i11;
        this.f121621b = certPathValidationException;
    }

    public C15853e(C15852d c15852d, int[] iArr, int[] iArr2, CertPathValidationException[] certPathValidationExceptionArr) {
        this.f121622c = Collections.unmodifiableSet(c15852d.b());
        this.f121620a = false;
        this.f121621b = certPathValidationExceptionArr[0];
        this.f121623d = iArr[0];
        this.f121624e = iArr2[0];
        this.f121625f = certPathValidationExceptionArr;
        this.f121626g = iArr;
        this.f121627h = iArr2;
    }
}
