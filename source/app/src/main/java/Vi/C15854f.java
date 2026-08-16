package vi;

import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.cert.path.CertPathValidationException;
import org.bouncycastle.util.k;

public class C15854f {

    public final C15852d f121628a;

    public final List<Integer> f121629b = new ArrayList();

    public final List<Integer> f121630c = new ArrayList();

    public final List<CertPathValidationException> f121631d = new ArrayList();

    public C15854f(C15852d c15852d) {
        this.f121628a = c15852d;
    }

    public void a(int i10, int i11, CertPathValidationException certPathValidationException) {
        this.f121629b.add(k.j(i10));
        this.f121630c.add(k.j(i11));
        this.f121631d.add(certPathValidationException);
    }

    public C15853e b() {
        if (this.f121631d.isEmpty()) {
            return new C15853e(this.f121628a);
        }
        C15852d c15852d = this.f121628a;
        int[] c10 = c(this.f121629b);
        int[] c11 = c(this.f121630c);
        List<CertPathValidationException> list = this.f121631d;
        return new C15853e(c15852d, c10, c11, (CertPathValidationException[]) list.toArray(new CertPathValidationException[list.size()]));
    }

    public final int[] c(List<Integer> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 != size; i10++) {
            iArr[i10] = list.get(i10).intValue();
        }
        return iArr;
    }
}
