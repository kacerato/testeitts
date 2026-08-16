package oh;

import java.io.InputStream;

public abstract class g1 extends InputStream {

    public final InputStream f98883b;

    public int f98884c;

    public g1(InputStream inputStream, int i10) {
        this.f98883b = inputStream;
        this.f98884c = i10;
    }

    public int c() {
        return this.f98884c;
    }

    public void d(boolean z10) {
        InputStream inputStream = this.f98883b;
        if (inputStream instanceof d1) {
            ((d1) inputStream).f(z10);
        }
    }
}
