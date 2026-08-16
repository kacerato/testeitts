package com.github.javaparser.ast;

import com.github.javaparser.HasParentNode;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.AstObserver;
import com.github.javaparser.ast.observer.Observable;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.Visitable;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.InternalProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Optional;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class NodeList<N extends Node> implements List<N>, Iterable<N>, HasParentNode<NodeList<N>>, Visitable, Observable {

    @InternalProperty
    private final List<N> innerList;
    private final List<AstObserver> observers;
    private Node parentNode;

    public class NodeListIterator implements ListIterator<N> {
        N current = null;
        ListIterator<N> iterator;

        public NodeListIterator(List<N> list) {
            this.iterator = list.listIterator();
        }

        @Override
        public void forEachRemaining(Consumer<? super N> action) {
            this.iterator.forEachRemaining(action);
        }

        @Override
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override
        public boolean hasPrevious() {
            return this.iterator.hasPrevious();
        }

        @Override
        public int nextIndex() {
            return this.iterator.nextIndex();
        }

        @Override
        public int previousIndex() {
            return this.iterator.previousIndex();
        }

        @Override
        public void remove() {
            int indexOf = NodeList.this.innerList.indexOf(this.current);
            if (indexOf != -1) {
                NodeList.this.notifyElementRemoved(indexOf, this.current);
                this.current.setParentNode(null);
            }
            this.iterator.remove();
        }

        @Override
        public void add(N n10) {
            NodeList nodeList = NodeList.this;
            nodeList.notifyElementAdded(nodeList.innerList.size(), n10);
            NodeList.this.own(n10);
            this.iterator.add(n10);
        }

        @Override
        public N next() {
            N next = this.iterator.next();
            this.current = next;
            return next;
        }

        @Override
        public N previous() {
            N previous = this.iterator.previous();
            this.current = previous;
            return previous;
        }

        @Override
        public void set(N n10) {
            int indexOf = NodeList.this.innerList.indexOf(this.current);
            if (indexOf >= 0 && indexOf < NodeList.this.innerList.size()) {
                if (n10 != NodeList.this.innerList.get(indexOf)) {
                    NodeList.this.notifyElementReplaced(indexOf, n10);
                    ((Node) NodeList.this.innerList.get(indexOf)).setParentNode((Node) null);
                    NodeList.this.setAsParentNodeOf(n10);
                    this.iterator.set(n10);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Illegal index. The index should be between 0 and " + NodeList.this.innerList.size() + " excluded. It is instead " + indexOf);
        }

        public NodeListIterator(List<N> list, int index) {
            this.iterator = list.listIterator(index);
        }
    }

    public NodeList() {
        this.innerList = new ArrayList(0);
        this.observers = new ArrayList();
        this.parentNode = null;
    }

    public void lambda$notifyElementAdded$1(final int index, final Node nodeAddedOrRemoved, AstObserver o10) {
        o10.listChange(this, AstObserver.ListChangeType.ADDITION, index, nodeAddedOrRemoved);
    }

    public void lambda$notifyElementRemoved$2(final int index, final Node nodeAddedOrRemoved, AstObserver o10) {
        o10.listChange(this, AstObserver.ListChangeType.REMOVAL, index, nodeAddedOrRemoved);
    }

    public void lambda$notifyElementReplaced$3(final int index, final Node nodeAddedOrRemoved, AstObserver o10) {
        o10.listReplacement(this, index, get(index), nodeAddedOrRemoved);
    }

    public static boolean lambda$retainAll$0(final Collection c10, Node it) {
        return !c10.contains(it);
    }

    public static NodeList lambda$toNodeList$4(NodeList left, NodeList right) {
        left.addAll(right);
        return left;
    }

    @SafeVarargs
    public static <X extends Node> NodeList<X> nodeList(X... nodes) {
        NodeList<X> nodeList = new NodeList<>();
        Collections.addAll(nodeList, nodes);
        return nodeList;
    }

    public void notifyElementAdded(final int index, final Node nodeAddedOrRemoved) {
        this.observers.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NodeList.this.lambda$notifyElementAdded$1(index, nodeAddedOrRemoved, (AstObserver) obj);
            }
        });
    }

    public void notifyElementRemoved(final int index, final Node nodeAddedOrRemoved) {
        this.observers.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NodeList.this.lambda$notifyElementRemoved$2(index, nodeAddedOrRemoved, (AstObserver) obj);
            }
        });
    }

    public void notifyElementReplaced(final int index, final Node nodeAddedOrRemoved) {
        this.observers.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NodeList.this.lambda$notifyElementReplaced$3(index, nodeAddedOrRemoved, (AstObserver) obj);
            }
        });
    }

    public void own(N node) {
        if (node == null) {
            return;
        }
        setAsParentNodeOf(node);
    }

    private void setAsParentNodeOf(List<? extends Node> childNodes) {
        if (childNodes != null) {
            Iterator<? extends Node> it = childNodes.iterator();
            while (it.hasNext()) {
                it.next().setParentNode(getParentNodeForChildren());
            }
        }
    }

    public static <T extends Node> Collector<T, NodeList<T>, NodeList<T>> toNodeList() {
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return new NodeList();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((NodeList) obj).add((NodeList) obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                NodeList lambda$toNodeList$4;
                lambda$toNodeList$4 = NodeList.lambda$toNodeList$4((NodeList) obj, (NodeList) obj2);
                return lambda$toNodeList$4;
            }
        }, new Collector.Characteristics[0]);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (NodeList<N>) arg);
    }

    public NodeList<N> addAfter(N node, N afterThisNode) {
        int indexOf = indexOf(afterThisNode);
        if (indexOf == -1) {
            throw new IllegalArgumentException("Can't find node to insert after.");
        }
        add(indexOf + 1, (int) node);
        return this;
    }

    public void addAll(NodeList<N> otherList) {
        Iterator<N> it = otherList.iterator();
        while (it.hasNext()) {
            add((NodeList<N>) it.next());
        }
    }

    public NodeList<N> addBefore(N node, N beforeThisNode) {
        int indexOf = indexOf(beforeThisNode);
        if (indexOf == -1) {
            throw new IllegalArgumentException("Can't find node to insert before.");
        }
        add(indexOf, (int) node);
        return this;
    }

    public NodeList<N> addFirst(N node) {
        add(0, (int) node);
        return this;
    }

    public NodeList<N> addLast(N node) {
        add((NodeList<N>) node);
        return this;
    }

    @Override
    public void clear() {
        while (!isEmpty()) {
            remove(0);
        }
    }

    public boolean contains(N node) {
        return this.innerList.contains(node);
    }

    @Override
    public boolean containsAll(Collection<?> c10) {
        return this.innerList.containsAll(c10);
    }

    @Override
    public boolean equals(Object o10) {
        return this.innerList.equals(o10);
    }

    @Override
    public void forEach(Consumer<? super N> action) {
        this.innerList.forEach(action);
    }

    public Optional<N> getFirst() {
        return isEmpty() ? Optional.empty() : Optional.of(get(0));
    }

    public Optional<N> getLast() {
        return isEmpty() ? Optional.empty() : Optional.of(get(size() - 1));
    }

    @Override
    public Optional<Node> getParentNode() {
        return Optional.ofNullable(this.parentNode);
    }

    @Override
    public Node getParentNodeForChildren() {
        return this.parentNode;
    }

    @Override
    public int hashCode() {
        return this.innerList.hashCode();
    }

    public void ifNonEmpty(Consumer<? super NodeList<N>> consumer) {
        if (isNonEmpty()) {
            consumer.accept(this);
        }
    }

    @Override
    public int indexOf(Object o10) {
        return this.innerList.indexOf(o10);
    }

    @Override
    public boolean isEmpty() {
        return this.innerList.isEmpty();
    }

    public boolean isNonEmpty() {
        return !isEmpty();
    }

    @Override
    public boolean isRegistered(AstObserver observer) {
        return this.observers.contains(observer);
    }

    @Override
    public Iterator<N> iterator() {
        return new NodeListIterator(this.innerList);
    }

    @Override
    public int lastIndexOf(Object o10) {
        return this.innerList.lastIndexOf(o10);
    }

    @Override
    public ListIterator<N> listIterator() {
        return new NodeListIterator(this.innerList);
    }

    @Override
    public Stream<N> parallelStream() {
        return this.innerList.parallelStream();
    }

    @Override
    public void register(AstObserver observer) {
        if (this.observers.contains(observer)) {
            return;
        }
        this.observers.add(observer);
    }

    @Override
    public boolean removeAll(Collection<?> c10) {
        Iterator<?> it = c10.iterator();
        while (true) {
            boolean z10 = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    public N removeFirst() {
        return remove(0);
    }

    @Override
    public boolean removeIf(Predicate<? super N> filter) {
        boolean z10 = false;
        for (Object obj : stream().filter(filter).toArray()) {
            z10 = remove(obj) || z10;
        }
        return z10;
    }

    public N removeLast() {
        return remove(this.innerList.size() - 1);
    }

    public boolean replace(N old, N replacement) {
        int indexOf = indexOf(old);
        if (indexOf == -1) {
            return false;
        }
        set(indexOf, (int) replacement);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void replaceAll(UnaryOperator<N> operator) {
        for (int i10 = 0; i10 < size(); i10++) {
            set(i10, (int) operator.apply(get(i10)));
        }
    }

    @Override
    public boolean retainAll(final Collection<?> c10) {
        boolean z10 = false;
        for (Object obj : stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                boolean lambda$retainAll$0;
                lambda$retainAll$0 = NodeList.lambda$retainAll$0(Collection.this, (Node) obj2);
                return lambda$retainAll$0;
            }
        }).toArray()) {
            if (!c10.contains(obj)) {
                z10 = remove(obj) || z10;
            }
        }
        return z10;
    }

    @Override
    public int size() {
        return this.innerList.size();
    }

    @Override
    public void sort(Comparator<? super N> comparator) {
        this.innerList.sort(comparator);
    }

    @Override
    public Spliterator<N> spliterator() {
        return this.innerList.spliterator();
    }

    @Override
    public List<N> subList(int fromIndex, int toIndex) {
        return this.innerList.subList(fromIndex, toIndex);
    }

    @Override
    public Object[] toArray() {
        return this.innerList.toArray();
    }

    public String toString() {
        return (String) this.innerList.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Node) obj).toString();
            }
        }).collect(Collectors.joining(", ", "[", "]"));
    }

    @Override
    public void unregister(AstObserver observer) {
        this.observers.remove(observer);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (NodeList<N>) arg);
    }

    @Override
    public boolean contains(Object o10) {
        return this.innerList.contains(o10);
    }

    @Override
    public N get(int i10) {
        return this.innerList.get(i10);
    }

    @Override
    public ListIterator<N> listIterator(int index) {
        return new NodeListIterator(this.innerList, index);
    }

    public boolean remove(Node node) {
        int indexOf = this.innerList.indexOf(node);
        if (indexOf != -1) {
            notifyElementRemoved(indexOf, node);
            node.setParentNode((Node) null);
        }
        return this.innerList.remove(node);
    }

    @Override
    public N set(int index, N element) {
        if (index >= 0 && index < this.innerList.size()) {
            if (element == this.innerList.get(index)) {
                return element;
            }
            notifyElementReplaced(index, element);
            this.innerList.get(index).setParentNode(null);
            setAsParentNodeOf(element);
            return this.innerList.set(index, element);
        }
        throw new IllegalArgumentException("Illegal index. The index should be between 0 and " + this.innerList.size() + " excluded. It is instead " + index);
    }

    @Override
    public NodeList<N> setParentNode(Node parentNode) {
        this.parentNode = parentNode;
        setAsParentNodeOf((List<? extends Node>) this.innerList);
        return this;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.innerList.toArray(tArr);
    }

    public static <X extends Node> NodeList<X> nodeList(Collection<X> nodes) {
        NodeList<X> nodeList = new NodeList<>();
        nodeList.addAll((Collection<? extends X>) nodes);
        return nodeList;
    }

    public void setAsParentNodeOf(Node childNode) {
        if (childNode != null) {
            childNode.setParentNode(getParentNodeForChildren());
        }
    }

    @Override
    public boolean add(N node) {
        notifyElementAdded(this.innerList.size(), node);
        own(node);
        return this.innerList.add(node);
    }

    @Override
    public boolean addAll(Collection<? extends N> c10) {
        c10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NodeList.this.add((NodeList) obj);
            }
        });
        return !c10.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NodeList(Collection<N> n10) {
        this.innerList = new ArrayList(0);
        this.observers = new ArrayList();
        addAll(n10);
    }

    public static <X extends Node> NodeList<X> nodeList(NodeList<X> nodes) {
        NodeList<X> nodeList = new NodeList<>();
        nodeList.addAll(nodes);
        return nodeList;
    }

    @Override
    public boolean addAll(int index, Collection<? extends N> c10) {
        Iterator<? extends N> it = c10.iterator();
        while (it.hasNext()) {
            add(index, (int) it.next());
            index++;
        }
        return !c10.isEmpty();
    }

    @Override
    public void add(int index, N node) {
        notifyElementAdded(index, node);
        own(node);
        this.innerList.add(index, node);
    }

    @Override
    public N remove(int index) {
        notifyElementRemoved(index, this.innerList.get(index));
        N remove = this.innerList.remove(index);
        if (remove != null) {
            remove.setParentNode(null);
        }
        return remove;
    }

    @SafeVarargs
    public NodeList(N... n10) {
        this.innerList = new ArrayList(0);
        this.observers = new ArrayList();
        addAll(Arrays.asList(n10));
    }

    @Override
    public boolean remove(Object o10) {
        if (o10 instanceof Node) {
            return remove((Node) o10);
        }
        return false;
    }
}
