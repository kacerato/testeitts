package Se;

public final class l extends a implements Runnable {

    public static final long f23144g = 1811839108042568751L;

    public l(Runnable runnable) {
        super(runnable);
    }

    @Override
    public Runnable a() {
        return super.a();
    }

    @Override
    public void run() {
        this.f23054c = Thread.currentThread();
        try {
            this.f23053b.run();
            this.f23054c = null;
        } catch (Throwable th2) {
            this.f23054c = null;
            lazySet(a.f23051e);
            Ye.a.Y(th2);
        }
    }
}
