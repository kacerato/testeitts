package og;

import eg.AbstractC13100M;
import eg.InterfaceC13153z0;
import mg.C14258t;
import org.jetbrains.annotations.NotNull;

public final class d extends i {

    @NotNull
    public static final d f98729h = new d();

    public d() {
        super(o.f98753c, o.f98754d, o.f98755e, o.f98751a);
    }

    public final void B() {
        super.close();
    }

    @Override
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override
    @InterfaceC13153z0
    @NotNull
    public AbstractC13100M limitedParallelism(int i10) {
        C14258t.a(i10);
        return i10 >= o.f98753c ? this : super.limitedParallelism(i10);
    }

    @Override
    @NotNull
    public String toString() {
        return "Dispatchers.Default";
    }
}
