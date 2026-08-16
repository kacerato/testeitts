package Cf;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.RandomAccess;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14967d;
import pf.C14960A;

@InterfaceC14422l0(version = "1.8")
public final class d<T extends Enum<T>> extends AbstractC14967d<T> implements a<T>, RandomAccess, Serializable {

    @NotNull
    public final T[] f4310d;

    public d(@NotNull T[] entries) {
        M.p(entries, "entries");
        this.f4310d = entries;
    }

    @Override
    public int b() {
        return this.f4310d.length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Enum) {
            return d((Enum) obj);
        }
        return false;
    }

    public boolean d(@NotNull T element) {
        M.p(element, "element");
        return ((Enum) C14960A.hf(this.f4310d, element.ordinal())) == element;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof Enum) {
            return k((Enum) obj);
        }
        return -1;
    }

    @Override
    @NotNull
    public T get(int i10) {
        AbstractC14967d.f103841b.b(i10, this.f4310d.length);
        return this.f4310d[i10];
    }

    public int k(@NotNull T element) {
        M.p(element, "element");
        int ordinal = element.ordinal();
        if (((Enum) C14960A.hf(this.f4310d, ordinal)) == element) {
            return ordinal;
        }
        return -1;
    }

    public int l(@NotNull T element) {
        M.p(element, "element");
        return k(element);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Enum) {
            return l((Enum) obj);
        }
        return -1;
    }

    public final void m(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    public final Object n() {
        return new e(this.f4310d);
    }
}
