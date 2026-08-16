package k2;

public class C13916b {

    public static final InterfaceC13915a f94644a = new a();

    public static final InterfaceC13915a f94645b = new C1830b();

    public static final InterfaceC13915a f94646c = new c();

    public static final InterfaceC13915a f94647d = new d();

    public static class a implements InterfaceC13915a {
        @Override
        public C13917c a(float f10, float f11, float f12, float f13) {
            return C13917c.a(255, u.n(0, 255, f11, f12, f10));
        }
    }

    public static class C1830b implements InterfaceC13915a {
        @Override
        public C13917c a(float f10, float f11, float f12, float f13) {
            return C13917c.b(u.n(255, 0, f11, f12, f10), 255);
        }
    }

    public static class c implements InterfaceC13915a {
        @Override
        public C13917c a(float f10, float f11, float f12, float f13) {
            return C13917c.b(u.n(255, 0, f11, f12, f10), u.n(0, 255, f11, f12, f10));
        }
    }

    public static class d implements InterfaceC13915a {
        @Override
        public C13917c a(float f10, float f11, float f12, float f13) {
            float f14 = ((f12 - f11) * f13) + f11;
            return C13917c.b(u.n(255, 0, f11, f14, f10), u.n(0, 255, f14, f12, f10));
        }
    }

    public static InterfaceC13915a a(int i10, boolean z10) {
        if (i10 == 0) {
            return z10 ? f94644a : f94645b;
        }
        if (i10 == 1) {
            return z10 ? f94645b : f94644a;
        }
        if (i10 == 2) {
            return f94646c;
        }
        if (i10 == 3) {
            return f94647d;
        }
        throw new IllegalArgumentException("Invalid fade mode: " + i10);
    }
}
