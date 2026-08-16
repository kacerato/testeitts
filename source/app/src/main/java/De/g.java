package De;

public final class g extends f<Runnable> {

    public static final long f5162c = -8219729196779211169L;

    public g(Runnable runnable) {
        super(runnable);
    }

    @Override
    public void a(@Ce.f Runnable runnable) {
        runnable.run();
    }

    @Override
    public String toString() {
        return "RunnableDisposable(disposed=" + d() + ", " + ((Object) get()) + ")";
    }
}
