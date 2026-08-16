package pf;

import java.util.Enumeration;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public class J extends I {

    public static final class a<T> implements Iterator<T>, Nf.a {

        public final Enumeration<T> f103825b;

        public a(Enumeration<T> enumeration) {
            this.f103825b = enumeration;
        }

        @Override
        public boolean hasNext() {
            return this.f103825b.hasMoreElements();
        }

        @Override
        public T next() {
            return this.f103825b.nextElement();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @NotNull
    public static <T> Iterator<T> h0(@NotNull Enumeration<T> enumeration) {
        kotlin.jvm.internal.M.p(enumeration, "<this>");
        return new a(enumeration);
    }
}
