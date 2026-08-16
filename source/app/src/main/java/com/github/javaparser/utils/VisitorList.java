package com.github.javaparser.utils;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.Visitable;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.utils.VisitorList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.Function;
import java.util.stream.Collectors;

public class VisitorList<N extends Node> implements List<N> {
    protected final GenericVisitor<Boolean, Visitable> equalsVisitor;
    protected final GenericVisitor<Integer, Void> hashcodeVisitor;
    protected List<VisitorList<N>.EqualsHashcodeOverridingFacade> innerList = new ArrayList();

    public class EqualsHashcodeOverridingFacade implements Visitable {
        private final N overridden;

        public EqualsHashcodeOverridingFacade(N overridden) {
            this.overridden = overridden;
        }

        public static Node access$000(EqualsHashcodeOverridingFacade equalsHashcodeOverridingFacade) {
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
            return ((Boolean) this.overridden.accept(VisitorList.this.equalsVisitor, ((EqualsHashcodeOverridingFacade) obj).overridden)).booleanValue();
        }

        public final int hashCode() {
            return ((Integer) this.overridden.accept(VisitorList.this.hashcodeVisitor, null)).intValue();
        }

        @Override
        public <A> void accept(VoidVisitor<A> v10, A arg) {
            throw new AssertionError();
        }
    }

    public VisitorList(GenericVisitor<Integer, Void> hashcodeVisitor, GenericVisitor<Boolean, Visitable> equalsVisitor) {
        this.hashcodeVisitor = hashcodeVisitor;
        this.equalsVisitor = equalsVisitor;
    }

    @Override
    public boolean addAll(Collection<? extends N> col) {
        Iterator<? extends N> it = col.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add((VisitorList<N>) it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        this.innerList.clear();
    }

    @Override
    public boolean contains(Object elem) {
        return this.innerList.contains(new EqualsHashcodeOverridingFacade((Node) elem));
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
    public int indexOf(Object elem) {
        return this.innerList.indexOf(new EqualsHashcodeOverridingFacade((Node) elem));
    }

    @Override
    public boolean isEmpty() {
        return this.innerList.isEmpty();
    }

    @Override
    public Iterator<N> iterator() {
        return (Iterator<N>) new Iterator<N>() {
            final Iterator<VisitorList<N>.EqualsHashcodeOverridingFacade> itr;

            {
                this.itr = VisitorList.this.innerList.iterator();
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
    public int lastIndexOf(Object elem) {
        return this.innerList.lastIndexOf(new EqualsHashcodeOverridingFacade((Node) elem));
    }

    @Override
    public ListIterator<N> listIterator() {
        return listIterator(0);
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
        return this.innerList.size();
    }

    @Override
    public List<N> subList(int i10, int i11) {
        return new VisitorList<N>(this.hashcodeVisitor, this.equalsVisitor, i10, i11) {
            final int val$fromIndex;
            final int val$toIndex;

            {
                this.val$fromIndex = i10;
                this.val$toIndex = i11;
                this.innerList = VisitorList.this.innerList.subList(i10, i11);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void add(int index, Object elem) {
                super.add(index, (int) elem);
            }

            @Override
            public Object get(int index) {
                return super.get(index);
            }

            @Override
            public Object remove(int index) {
                return super.remove(index);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public Object set(int index, Object elem) {
                return super.set(index, (int) elem);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean add(Object elem) {
                return super.add((AnonymousClass3) elem);
            }
        };
    }

    @Override
    public Object[] toArray() {
        return ((List) this.innerList.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Node access$000;
                access$000 = VisitorList.EqualsHashcodeOverridingFacade.access$000((VisitorList.EqualsHashcodeOverridingFacade) obj);
                return access$000;
            }
        }).collect(Collectors.toList())).toArray();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("[");
        if (size() == 0) {
            sb2.append("]");
            return sb2.toString();
        }
        Iterator<VisitorList<N>.EqualsHashcodeOverridingFacade> it = this.innerList.iterator();
        while (it.hasNext()) {
            sb2.append(((EqualsHashcodeOverridingFacade) it.next()).overridden.toString() + ", ");
        }
        return sb2.replace(sb2.length() - 2, sb2.length(), "]").toString();
    }

    @Override
    public boolean addAll(int index, Collection<? extends N> col) {
        if (col.isEmpty()) {
            return false;
        }
        for (N n10 : col) {
            if (index == size()) {
                add((VisitorList<N>) n10);
            } else {
                add(index, (int) n10);
            }
            index++;
        }
        return true;
    }

    @Override
    public N get(int i10) {
        return (N) ((EqualsHashcodeOverridingFacade) this.innerList.get(i10)).overridden;
    }

    @Override
    public ListIterator<N> listIterator(int i10) {
        return (ListIterator<N>) new ListIterator<N>(i10) {
            final ListIterator<VisitorList<N>.EqualsHashcodeOverridingFacade> itr;
            final int val$index;

            {
                this.val$index = i10;
                this.itr = VisitorList.this.innerList.listIterator(i10);
            }

            @Override
            public boolean hasNext() {
                return this.itr.hasNext();
            }

            @Override
            public boolean hasPrevious() {
                return this.itr.hasPrevious();
            }

            @Override
            public int nextIndex() {
                return this.itr.nextIndex();
            }

            @Override
            public int previousIndex() {
                return this.itr.previousIndex();
            }

            @Override
            public void remove() {
                this.itr.remove();
            }

            @Override
            public void add(N elem) {
                this.itr.add(new EqualsHashcodeOverridingFacade(elem));
            }

            @Override
            public N next() {
                return (N) ((EqualsHashcodeOverridingFacade) this.itr.next()).overridden;
            }

            @Override
            public N previous() {
                return (N) ((EqualsHashcodeOverridingFacade) this.itr.previous()).overridden;
            }

            @Override
            public void set(N elem) {
                this.itr.set(new EqualsHashcodeOverridingFacade(elem));
            }
        };
    }

    @Override
    public boolean remove(Object elem) {
        return this.innerList.remove(new EqualsHashcodeOverridingFacade((Node) elem));
    }

    @Override
    public N set(int i10, N n10) {
        return (N) ((EqualsHashcodeOverridingFacade) this.innerList.set(i10, new EqualsHashcodeOverridingFacade(n10))).overridden;
    }

    @Override
    public boolean add(N elem) {
        return this.innerList.add(new EqualsHashcodeOverridingFacade(elem));
    }

    @Override
    public N remove(int i10) {
        return (N) ((EqualsHashcodeOverridingFacade) this.innerList.remove(i10)).overridden;
    }

    @Override
    public void add(int index, N elem) {
        this.innerList.add(index, new EqualsHashcodeOverridingFacade(elem));
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) ((List) this.innerList.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Node access$000;
                access$000 = VisitorList.EqualsHashcodeOverridingFacade.access$000((VisitorList.EqualsHashcodeOverridingFacade) obj);
                return access$000;
            }
        }).collect(Collectors.toList())).toArray(tArr);
    }
}
