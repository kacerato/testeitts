package pf;

import java.util.List;
import java.util.RandomAccess;
import org.jetbrains.annotations.NotNull;

public final class r0<E> extends AbstractC14967d<E> implements RandomAccess {

    @NotNull
    public final List<E> f103883d;

    public int f103884e;

    public int f103885f;

    /* JADX WARN: Multi-variable type inference failed */
    public r0(@NotNull List<? extends E> list) {
        kotlin.jvm.internal.M.p(list, "list");
        this.f103883d = list;
    }

    @Override
    public int b() {
        return this.f103885f;
    }

    public final void e(int i10, int i11) {
        AbstractC14967d.f103841b.d(i10, i11, this.f103883d.size());
        this.f103884e = i10;
        this.f103885f = i11 - i10;
    }

    @Override
    public E get(int i10) {
        AbstractC14967d.f103841b.b(i10, this.f103885f);
        return this.f103883d.get(this.f103884e + i10);
    }
}
