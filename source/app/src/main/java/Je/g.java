package Je;

public final class g<T> extends e<T> {
    @Override
    public void h(T t10) {
        this.f10461b = t10;
    }

    @Override
    public void onError(Throwable th2) {
        this.f10461b = null;
        this.f10462c = th2;
        countDown();
    }
}
