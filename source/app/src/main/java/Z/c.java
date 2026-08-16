package Z;

import androidx.annotation.NonNull;

public abstract class c {

    public static final boolean f30659a = false;

    public static class b extends c {

        public volatile RuntimeException f30660b;

        public b() {
            super();
        }

        @Override
        public void b(boolean z10) {
            if (z10) {
                this.f30660b = new RuntimeException("Released");
            } else {
                this.f30660b = null;
            }
        }

        @Override
        public void c() {
            if (this.f30660b != null) {
                throw new IllegalStateException("Already released", this.f30660b);
            }
        }
    }

    public static class C0807c extends c {

        public volatile boolean f30661b;

        public C0807c() {
            super();
        }

        @Override
        public void b(boolean z10) {
            this.f30661b = z10;
        }

        @Override
        public void c() {
            if (this.f30661b) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    @NonNull
    public static c a() {
        return new C0807c();
    }

    public abstract void b(boolean z10);

    public abstract void c();

    public c() {
    }
}
