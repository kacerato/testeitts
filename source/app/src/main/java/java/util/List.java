package java.util;

import java.util.function.UnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/List.class
 */
public interface List<E> extends Collection<E> {
    @Override
    int size();

    @Override
    boolean isEmpty();

    @Override
    boolean contains(Object obj);

    @Override
    Iterator<E> iterator();

    @Override
    Object[] toArray();

    @Override
    <T> T[] toArray(T[] tArr);

    @Override
    boolean add(E e10);

    @Override
    boolean remove(Object obj);

    @Override
    boolean containsAll(Collection<?> collection);

    @Override
    boolean addAll(Collection<? extends E> collection);

    boolean addAll(int i10, Collection<? extends E> collection);

    @Override
    boolean removeAll(Collection<?> collection);

    @Override
    boolean retainAll(Collection<?> collection);

    @Override
    void clear();

    @Override
    boolean equals(Object obj);

    @Override
    int hashCode();

    E get(int i10);

    E set(int i10, E e10);

    void add(int i10, E e10);

    E remove(int i10);

    int indexOf(Object obj);

    int lastIndexOf(Object obj);

    ListIterator<E> listIterator();

    ListIterator<E> listIterator(int i10);

    List<E> subList(int i10, int i11);

    default void replaceAll(UnaryOperator<E> operator) {
        throw new RuntimeException("Stub!");
    }

    default void sort(Comparator<? super E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default Spliterator<E> spliterator() {
        throw new RuntimeException("Stub!");
    }
}
