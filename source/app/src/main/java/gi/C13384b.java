package gi;

import fi.C13227c;
import fi.C13228d;

public class C13384b extends c {

    public static final fi.f f89928U = new C13384b();

    @Override
    public boolean d(C13228d c13228d, C13228d c13228d2) {
        if (c13228d.size() != c13228d2.size()) {
            return false;
        }
        C13227c[] z10 = c13228d.z();
        C13227c[] z11 = c13228d2.z();
        for (int i10 = 0; i10 != z10.length; i10++) {
            if (!l(z10[i10], z11[i10])) {
                return false;
            }
        }
        return true;
    }
}
