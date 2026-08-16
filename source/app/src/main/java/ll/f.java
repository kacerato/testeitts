package ll;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;

public class f implements InterfaceC2372d {

    public C14158d f96573g;

    public n f96574h;

    public static class a {

        public static final int[] f96575a;

        static {
            int[] iArr = new int[n.values().length];
            f96575a = iArr;
            try {
                iArr[n.CLASSIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f96575a[n.CIRCUMZENITHAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f96575a[n.COMPRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void c(G g10) {
        h c10 = ((C14159e) g10).c();
        this.f96573g = new C14158d(c10, g10.a());
        this.f96574h = c10.l();
    }

    @Override
    public C2371c a() {
        int i10 = a.f96575a[this.f96574h.ordinal()];
        if (i10 == 1) {
            return this.f96573g.j();
        }
        if (i10 == 2) {
            return this.f96573g.i();
        }
        if (i10 == 3) {
            return this.f96573g.k();
        }
        throw new IllegalArgumentException("No valid version. Please choose one of the following: classic, circumzenithal, compressed");
    }

    @Override
    public void b(G g10) {
        c(g10);
    }
}
