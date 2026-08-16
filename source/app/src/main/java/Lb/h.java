package Lb;

public abstract class h implements b {

    public class a implements Runnable {

        public final int f11681b;

        public a(final int val$count) {
            this.f11681b = val$count;
        }

        @Override
        public void run() {
            h.this.b(this.f11681b);
        }
    }

    @Override
    public void a(int count) {
        N7.c.j0(new a(count));
    }

    public abstract void b(int count);
}
