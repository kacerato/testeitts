package p7;

import java.util.LinkedList;
import java.util.List;

@Deprecated
public class e {

    public List<C14936d> f103642a = new LinkedList();

    public int f103643b;

    public class a implements f {

        public final int f103644a;

        public final C14936d f103645b;

        public a(final int val$finalI, final C14936d val$button) {
            this.f103644a = val$finalI;
            this.f103645b = val$button;
        }

        @Override
        public void a(boolean value) {
            if (!value) {
                if (this.f103644a == e.this.f103643b) {
                    this.f103645b.x(true, false);
                }
            } else if (this.f103644a != e.this.f103643b) {
                if (e.this.f103643b >= 0 && e.this.f103643b < e.this.f103642a.size()) {
                    ((C14936d) e.this.f103642a.get(e.this.f103643b)).x(false, false);
                }
                e.this.f103643b = this.f103644a;
            }
        }
    }

    public e(C14936d... togglesArray) {
        int i10 = -1;
        this.f103643b = -1;
        if (togglesArray == null || togglesArray.length == 0) {
            throw new NullPointerException("togglesArray can't be null or empty");
        }
        for (int i11 = 0; i11 < togglesArray.length; i11++) {
            C14936d c14936d = togglesArray[i11];
            c14936d.o(new a(i11, c14936d));
            this.f103642a.add(c14936d);
        }
        for (int i12 = 0; i12 < this.f103642a.size(); i12++) {
            C14936d c14936d2 = this.f103642a.get(i12);
            if (i10 < 0) {
                if (c14936d2.u()) {
                    this.f103643b = i12;
                    i10 = i12;
                }
            } else if (i12 != i10) {
                c14936d2.x(false, false);
            }
        }
        if (i10 < 0) {
            e(0);
        }
    }

    public int d() {
        return this.f103643b;
    }

    public void e(int idx) {
        this.f103642a.get(idx).w(true);
    }
}
