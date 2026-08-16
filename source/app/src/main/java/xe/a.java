package Xe;

public enum a implements Fe.c<Long, Throwable, a> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override
    public a apply(Long l10, Throwable th2) {
        return this;
    }
}
