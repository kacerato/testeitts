package com.github.javaparser.utils;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.Visitable;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.utils.VisitorSet;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.tools.doclint.DocLint;

public class VisitorSet<N extends Node> implements Set<N> {
    private final GenericVisitor<Boolean, Visitable> equalsVisitor;
    private final GenericVisitor<Integer, Void> hashcodeVisitor;
    private final Set<VisitorSet<N>.EqualsHashcodeOverridingFacade> innerSet = new HashSet();

    public class EqualsHashcodeOverridingFacade implements Visitable {
        private final N overridden;

        public EqualsHashcodeOverridingFacade(N overridden) {
            this.overridden = overridden;
        }

        public static Node access$100(EqualsHashcodeOverridingFacade equalsHashcodeOverridingFacade) {
            return equalsHashcodeOverridingFacade.overridden;
        }

        @Override
        public <R, A> R accept(GenericVisitor<R, A> v10, A arg) {
            throw new AssertionError();
        }

        public boolean equals(final Object obj) {
            if (obj == null || !(obj instanceof EqualsHashcodeOverridingFacade)) {
                return false;
            }
            return ((Boolean) this.overridden.accept(VisitorSet.this.equalsVisitor, ((EqualsHashcodeOverridingFacade) obj).overridden)).booleanValue();
        }

        public final int hashCode() {
            return ((Integer) this.overridden.accept(VisitorSet.this.hashcodeVisitor, null)).intValue();
        }

        @Override
        public <A> void accept(VoidVisitor<A> v10, A arg) {
            throw new AssertionError();
        }
    }

    public VisitorSet(GenericVisitor<Integer, Void> hashcodeVisitor, GenericVisitor<Boolean, Visitable> equalsVisitor) {
        this.hashcodeVisitor = hashcodeVisitor;
        this.equalsVisitor = equalsVisitor;
    }

    public static String lambda$toString$2(EqualsHashcodeOverridingFacade facade) {
        return facade.overridden.toString();
    }

    @Override
    public boolean addAll(Collection<? extends N> col) {
        Iterator<? extends N> it = col.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add((VisitorSet<N>) it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        this.innerSet.clear();
    }

    @Override
    public boolean contains(Object elem) {
        return this.innerSet.contains(new EqualsHashcodeOverridingFacade((Node) elem));
    }

    @Override
    public boolean containsAll(Collection<?> col) {
        Iterator<?> it = col.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isEmpty() {
        return this.innerSet.isEmpty();
    }

    @Override
    public Iterator<N> iterator() {
        return (Iterator<N>) new Iterator<N>() {
            final Iterator<VisitorSet<N>.EqualsHashcodeOverridingFacade> itr;

            {
                this.itr = VisitorSet.this.innerSet.iterator();
            }

            @Override
            public boolean hasNext() {
                return this.itr.hasNext();
            }

            @Override
            public void remove() {
                this.itr.remove();
            }

            @Override
            public N next() {
                return (N) ((EqualsHashcodeOverridingFacade) this.itr.next()).overridden;
            }
        };
    }

    @Override
    public boolean remove(Object elem) {
        return this.innerSet.remove(new EqualsHashcodeOverridingFacade((Node) elem));
    }

    @Override
    public boolean removeAll(Collection<?> col) {
        Iterator<?> it = col.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (remove(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean retainAll(Collection<?> col) {
        int size = size();
        clear();
        addAll(col);
        return size() != size;
    }

    @Override
    public int size() {
        return this.innerSet.size();
    }

    @Override
    public Object[] toArray() {
        return ((List) this.innerSet.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Node access$100;
                access$100 = VisitorSet.EqualsHashcodeOverridingFacade.access$100((VisitorSet.EqualsHashcodeOverridingFacade) obj);
                return access$100;
            }
        }).collect(Collectors.toList())).toArray();
    }

    public String toString() {
        return (String) this.innerSet.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$toString$2;
                lambda$toString$2 = VisitorSet.lambda$toString$2((VisitorSet.EqualsHashcodeOverridingFacade) obj);
                return lambda$toString$2;
            }
        }).collect(Collectors.joining(DocLint.SEPARATOR, "[", "]"));
    }

    @Override
    public boolean add(N elem) {
        return this.innerSet.add(new EqualsHashcodeOverridingFacade(elem));
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) ((List) this.innerSet.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Node access$100;
                access$100 = VisitorSet.EqualsHashcodeOverridingFacade.access$100((VisitorSet.EqualsHashcodeOverridingFacade) obj);
                return access$100;
            }
        }).collect(Collectors.toList())).toArray(tArr);
    }
}
