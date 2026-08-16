package l2;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
public class C14044b {

    public static final InterfaceC14043a f95917a = new a();

    public static final InterfaceC14043a f95918b = new C1860b();

    public static final InterfaceC14043a f95919c = new c();

    public static final InterfaceC14043a f95920d = new d();

    public static class a implements InterfaceC14043a {
        @Override
        public C14045c a(float f10, float f11, float f12, float f13) {
            return C14045c.a(255, v.n(0, 255, f11, f12, f10));
        }
    }

    public static class C1860b implements InterfaceC14043a {
        @Override
        public C14045c a(float f10, float f11, float f12, float f13) {
            return C14045c.b(v.n(255, 0, f11, f12, f10), 255);
        }
    }

    public static class c implements InterfaceC14043a {
        @Override
        public C14045c a(float f10, float f11, float f12, float f13) {
            return C14045c.b(v.n(255, 0, f11, f12, f10), v.n(0, 255, f11, f12, f10));
        }
    }

    public static class d implements InterfaceC14043a {
        @Override
        public C14045c a(float f10, float f11, float f12, float f13) {
            float f14 = ((f12 - f11) * f13) + f11;
            return C14045c.b(v.n(255, 0, f11, f14, f10), v.n(0, 255, f14, f12, f10));
        }
    }

    public static InterfaceC14043a a(int i10, boolean z10) {
        if (i10 == 0) {
            return z10 ? f95917a : f95918b;
        }
        if (i10 == 1) {
            return z10 ? f95918b : f95917a;
        }
        if (i10 == 2) {
            return f95919c;
        }
        if (i10 == 3) {
            return f95920d;
        }
        throw new IllegalArgumentException("Invalid fade mode: " + i10);
    }
}
