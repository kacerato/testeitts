package W;

import android.graphics.drawable.Drawable;

public class c implements g<Drawable> {

    public final int f27182a;

    public final boolean f27183b;

    public d f27184c;

    public static class a {

        public static final int f27185c = 300;

        public final int f27186a;

        public boolean f27187b;

        public a() {
            this(300);
        }

        public c a() {
            return new c(this.f27186a, this.f27187b);
        }

        public a b(boolean z10) {
            this.f27187b = z10;
            return this;
        }

        public a(int i10) {
            this.f27186a = i10;
        }
    }

    public c(int i10, boolean z10) {
        this.f27182a = i10;
        this.f27183b = z10;
    }

    @Override
    public f<Drawable> a(C.a aVar, boolean z10) {
        return aVar == C.a.MEMORY_CACHE ? e.b() : b();
    }

    public final f<Drawable> b() {
        if (this.f27184c == null) {
            this.f27184c = new d(this.f27182a, this.f27183b);
        }
        return this.f27184c;
    }
}
