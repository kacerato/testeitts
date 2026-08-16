package eg;

import org.jetbrains.annotations.NotNull;

public final class t1<U, T extends U> extends mg.O<T> implements Runnable {

    @Lf.g
    public final long f85782f;

    public t1(long j10, @NotNull yf.f<? super U> fVar) {
        super(fVar.getContext(), fVar);
        this.f85782f = j10;
    }

    @Override
    @NotNull
    public String Y0() {
        return super.Y0() + "(timeMillis=" + this.f85782f + ')';
    }

    @Override
    public void run() {
        j0(u1.a(this.f85782f, C13108c0.d(getContext()), this));
    }
}
