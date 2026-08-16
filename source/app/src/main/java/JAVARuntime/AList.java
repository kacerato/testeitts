package JAVARuntime;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Stream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AList.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AList.class
  classes.dex
 */
@ClassCategory(cat = {"Lists"})
public class AList<T> implements List<T> {
    private final transient List<T> list = null;

    public AList() {
    }

    public AList(List<T> list) {
    }

    public AList(int i10) {
    }

    @Override
    public int size() {
        return this.list.size();
    }

    @Override
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override
    public boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    @Override
    public Iterator<T> iterator() {
        return this.list.iterator();
    }

    @Override
    public Object[] toArray() {
        return this.list.toArray();
    }

    @Override
    public <E> E[] toArray(E[] eArr) {
        return (E[]) this.list.toArray(eArr);
    }

    @Override
    public boolean add(T t10) {
        return this.list.add(t10);
    }

    @Override
    public boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    @Override
    public boolean addAll(Collection<? extends T> collection) {
        return this.list.addAll(collection);
    }

    @Override
    public boolean addAll(int i10, Collection<? extends T> collection) {
        return this.list.addAll(i10, collection);
    }

    @Override
    public void clear() {
        this.list.clear();
    }

    @Override
    public boolean equals(Object obj) {
        return this.list.equals(obj);
    }

    @Override
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override
    public T get(int i10) {
        return this.list.get(i10);
    }

    @Override
    public T set(int i10, T t10) {
        return this.list.set(i10, t10);
    }

    @Override
    public void add(int i10, T t10) {
        this.list.add(i10, t10);
    }

    @Override
    public T remove(int i10) {
        return this.list.remove(i10);
    }

    @Override
    public int indexOf(Object obj) {
        return this.list.indexOf(obj);
    }

    @Override
    public int lastIndexOf(Object obj) {
        return this.list.lastIndexOf(obj);
    }

    @Override
    public ListIterator<T> listIterator() {
        return this.list.listIterator();
    }

    @Override
    public ListIterator<T> listIterator(int i10) {
        return this.list.listIterator(i10);
    }

    @Override
    public List<T> subList(int i10, int i11) {
        return this.list.subList(i10, i11);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        return this.list.retainAll(collection);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        return this.list.removeAll(collection);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    @Override
    public void forEach(Consumer<? super T> consumer) {
        this.list.forEach(consumer);
    }

    @Override
    public void replaceAll(UnaryOperator<T> unaryOperator) {
        this.list.replaceAll(unaryOperator);
    }

    @Override
    public void sort(Comparator<? super T> comparator) {
        this.list.sort(comparator);
    }

    @Override
    public boolean removeIf(Predicate<? super T> predicate) {
        return this.list.removeIf(predicate);
    }

    @Override
    public Spliterator<T> spliterator() {
        return this.list.spliterator();
    }

    @Override
    public Stream<T> stream() {
        return this.list.stream();
    }

    @Override
    public Stream<T> parallelStream() {
        return this.list.parallelStream();
    }

    public List<T> getInternalList() {
        return this.list;
    }
}
