package pf;

import java.util.AbstractList;
import java.util.List;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;

@InterfaceC14422l0(version = "1.1")
public abstract class AbstractC14975h<E> extends AbstractList<E> implements List<E>, Nf.e {
    public abstract int a();

    @Override
    public abstract void add(int i10, E e10);

    @InterfaceC14394D
    public abstract E j(int i10);

    @Override
    public final E remove(int i10) {
        return j(i10);
    }

    @Override
    @InterfaceC14394D
    public abstract E set(int i10, E e10);

    @Override
    public final int size() {
        return a();
    }
}
