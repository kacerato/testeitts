package Te;

public final class d<T> extends c<T> {
    @Override
    public void h(T t10) {
        if (this.f24840b == null) {
            this.f24840b = t10;
            this.f24842d.cancel();
            countDown();
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f24840b == null) {
            this.f24841c = th2;
        } else {
            Ye.a.Y(th2);
        }
        countDown();
    }
}
