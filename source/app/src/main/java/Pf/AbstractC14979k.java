package pf;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.1")
public abstract class AbstractC14979k<E> extends AbstractC14963b<E> implements Set<E>, Nf.a {

    @NotNull
    public static final a f103862b = new a(null);

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final boolean a(@NotNull Set<?> c10, @NotNull Set<?> other) {
            kotlin.jvm.internal.M.p(c10, "c");
            kotlin.jvm.internal.M.p(other, "other");
            if (c10.size() != other.size()) {
                return false;
            }
            return c10.containsAll(other);
        }

        public final int b(@NotNull Collection<?> c10) {
            kotlin.jvm.internal.M.p(c10, "c");
            Iterator<?> it = c10.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                i10 += next != null ? next.hashCode() : 0;
            }
            return i10;
        }

        public a() {
        }
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            return f103862b.a(this, (Set) obj);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return f103862b.b(this);
    }

    @Override
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
