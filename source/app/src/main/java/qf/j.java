package qf;

import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14978j;

public final class j<E> extends AbstractC14978j<E> implements Set<E>, Serializable, Nf.h {

    @NotNull
    public static final a f107900c = new a(null);

    @NotNull
    public static final j f107901d = new j(d.f107862o.e());

    @NotNull
    public final d<E, ?> f107902b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public j(@NotNull d<E, ?> backing) {
        M.p(backing, "backing");
        this.f107902b = backing;
    }

    private final void c(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object d() {
        if (this.f107902b.H()) {
            return new h(this, 1);
        }
        throw new NotSerializableException("The set cannot be serialized while it is being built.");
    }

    @Override
    public int a() {
        return this.f107902b.size();
    }

    @Override
    public boolean add(E e10) {
        return this.f107902b.l(e10) >= 0;
    }

    @Override
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        M.p(elements, "elements");
        this.f107902b.o();
        return super.addAll(elements);
    }

    @NotNull
    public final Set<E> b() {
        this.f107902b.n();
        return size() > 0 ? this : f107901d;
    }

    @Override
    public void clear() {
        this.f107902b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.f107902b.containsKey(obj);
    }

    @Override
    public boolean isEmpty() {
        return this.f107902b.isEmpty();
    }

    @Override
    @NotNull
    public Iterator<E> iterator() {
        return this.f107902b.I();
    }

    @Override
    public boolean remove(Object obj) {
        return this.f107902b.T(obj);
    }

    @Override
    public boolean removeAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        this.f107902b.o();
        return super.removeAll(elements);
    }

    @Override
    public boolean retainAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        this.f107902b.o();
        return super.retainAll(elements);
    }

    public j() {
        this(new d());
    }

    public j(int i10) {
        this(new d(i10));
    }
}
