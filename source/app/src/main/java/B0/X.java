package B0;

import java.util.concurrent.Callable;

public final class X extends Z {

    public final Callable f1164f;

    public X(Callable callable, Y y10) {
        super();
        this.f1164f = callable;
    }

    @Override
    public final String a() {
        try {
            return (String) this.f1164f.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
