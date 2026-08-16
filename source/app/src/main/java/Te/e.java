package Te;

public final class e<T> extends c<T> {
    @Override
    public void h(T t10) {
        this.f24840b = t10;
    }

    @Override
    public void onError(Throwable th2) {
        this.f24840b = null;
        this.f24841c = th2;
        countDown();
    }
}
