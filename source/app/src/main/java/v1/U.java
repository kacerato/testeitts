package v1;

import java.util.concurrent.Callable;

public final class U implements Runnable {

    public final C15779Q f121141b;

    public final Callable f121142c;

    public U(C15779Q c15779q, Callable callable) {
        this.f121141b = c15779q;
        this.f121142c = callable;
    }

    @Override
    public final void run() {
        try {
            this.f121141b.z(this.f121142c.call());
        } catch (Exception e10) {
            this.f121141b.y(e10);
        } catch (Throwable th2) {
            this.f121141b.y(new RuntimeException(th2));
        }
    }
}
