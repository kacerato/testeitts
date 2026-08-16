package Je;

public final class f<T> extends e<T> {
    @Override
    public void h(T t10) {
        if (this.f10461b == null) {
            this.f10461b = t10;
            this.f10463d.dispose();
            countDown();
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f10461b == null) {
            this.f10462c = th2;
        }
        countDown();
    }
}
