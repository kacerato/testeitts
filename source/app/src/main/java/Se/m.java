package Se;

import java.util.concurrent.Callable;

public final class m extends a implements Callable<Void> {

    public static final long f23145g = 1811839108042568751L;

    public m(Runnable runnable) {
        super(runnable);
    }

    @Override
    public Runnable a() {
        return super.a();
    }

    @Override
    public Void call() throws Exception {
        this.f23054c = Thread.currentThread();
        try {
            this.f23053b.run();
            return null;
        } finally {
            lazySet(a.f23051e);
            this.f23054c = null;
        }
    }
}
