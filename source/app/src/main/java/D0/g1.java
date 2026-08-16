package D0;

import android.os.Bundle;

public final class g1 implements Runnable {

    public final C2446h f4657b;

    public final String f4658c;

    public final h1 f4659d;

    public g1(h1 h1Var, C2446h c2446h, String str) {
        this.f4657b = c2446h;
        this.f4658c = str;
        this.f4659d = h1Var;
    }

    @Override
    public final void run() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        h1 h1Var = this.f4659d;
        i10 = h1Var.f4662b;
        if (i10 > 0) {
            C2446h c2446h = this.f4657b;
            bundle = h1Var.f4663c;
            if (bundle != null) {
                String str = this.f4658c;
                bundle3 = h1Var.f4663c;
                bundle2 = bundle3.getBundle(str);
            } else {
                bundle2 = null;
            }
            c2446h.g(bundle2);
        }
        i11 = this.f4659d.f4662b;
        if (i11 >= 2) {
            this.f4657b.k();
        }
        i12 = this.f4659d.f4662b;
        if (i12 >= 3) {
            this.f4657b.i();
        }
        i13 = this.f4659d.f4662b;
        if (i13 >= 4) {
            this.f4657b.l();
        }
        i14 = this.f4659d.f4662b;
        if (i14 >= 5) {
            this.f4657b.h();
        }
    }
}
