package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.ExecutionException;

public final class C15799u<T> implements InterfaceC15798t<T> {

    public final Object f121151a = new Object();

    public final int f121152b;

    public final C15779Q f121153c;

    public int f121154d;

    public int f121155e;

    public int f121156f;

    public Exception f121157g;

    public boolean f121158h;

    public C15799u(int i10, C15779Q c15779q) {
        this.f121152b = i10;
        this.f121153c = c15779q;
    }

    private final void d() {
        if (this.f121154d + this.f121155e + this.f121156f == this.f121152b) {
            if (this.f121157g == null) {
                if (this.f121158h) {
                    this.f121153c.A();
                    return;
                } else {
                    this.f121153c.z(null);
                    return;
                }
            }
            this.f121153c.y(new ExecutionException(this.f121155e + " out of " + this.f121152b + " underlying tasks failed", this.f121157g));
        }
    }

    @Override
    public final void a() {
        synchronized (this.f121151a) {
            this.f121156f++;
            this.f121158h = true;
            d();
        }
    }

    @Override
    public final void b(T t10) {
        synchronized (this.f121151a) {
            this.f121154d++;
            d();
        }
    }

    @Override
    public final void c(@NonNull Exception exc) {
        synchronized (this.f121151a) {
            this.f121155e++;
            this.f121157g = exc;
            d();
        }
    }
}
