package vi;

import li.C14146h;
import org.bouncycastle.cert.path.CertPathValidationException;

public class C15849a {

    public final C14146h[] f121615a;

    public C15849a(C14146h[] c14146hArr) {
        this.f121615a = a(c14146hArr);
    }

    public final C14146h[] a(C14146h[] c14146hArr) {
        int length = c14146hArr.length;
        C14146h[] c14146hArr2 = new C14146h[length];
        System.arraycopy(c14146hArr, 0, c14146hArr2, 0, length);
        return c14146hArr2;
    }

    public C15853e b(InterfaceC15851c[] interfaceC15851cArr) {
        C15852d c15852d = new C15852d(C15850b.a(this.f121615a));
        C15854f c15854f = new C15854f(c15852d);
        for (int i10 = 0; i10 != interfaceC15851cArr.length; i10++) {
            int length = this.f121615a.length - 1;
            while (length >= 0) {
                try {
                    c15852d.d(length == 0);
                    interfaceC15851cArr[i10].g(c15852d, this.f121615a[length]);
                } catch (CertPathValidationException e10) {
                    c15854f.a(length, i10, e10);
                }
                length--;
            }
        }
        return c15854f.b();
    }

    public C14146h[] c() {
        return a(this.f121615a);
    }

    public int d() {
        return this.f121615a.length;
    }

    public C15853e e(InterfaceC15851c[] interfaceC15851cArr) {
        C15852d c15852d = new C15852d(C15850b.a(this.f121615a));
        for (int i10 = 0; i10 != interfaceC15851cArr.length; i10++) {
            int length = this.f121615a.length - 1;
            while (length >= 0) {
                try {
                    c15852d.d(length == 0);
                    interfaceC15851cArr[i10].g(c15852d, this.f121615a[length]);
                    length--;
                } catch (CertPathValidationException e10) {
                    return new C15853e(c15852d, length, i10, e10);
                }
            }
        }
        return new C15853e(c15852d);
    }
}
