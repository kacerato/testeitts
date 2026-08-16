package U;

public interface e {

    public enum a {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);

        private final boolean isComplete;

        a(boolean z10) {
            this.isComplete = z10;
        }

        public boolean a() {
            return this.isComplete;
        }
    }

    boolean a();

    boolean b(d dVar);

    boolean c(d dVar);

    void d(d dVar);

    boolean g(d dVar);

    e getRoot();

    void i(d dVar);
}
