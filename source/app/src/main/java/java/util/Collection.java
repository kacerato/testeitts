package java.util;

import java.util.function.Predicate;
import java.util.stream.Stream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Collection.class
 */
public interface Collection<E> extends Iterable<E> {
    int size();

    boolean isEmpty();

    boolean contains(Object obj);

    @Override
    Iterator<E> iterator();

    Object[] toArray();

    <T> T[] toArray(T[] tArr);

    boolean add(E e10);

    boolean remove(Object obj);

    boolean containsAll(Collection<?> collection);

    boolean addAll(Collection<? extends E> collection);

    boolean removeAll(Collection<?> collection);

    boolean retainAll(Collection<?> collection);

    void clear();

    boolean equals(Object obj);

    int hashCode();

    default boolean removeIf(Predicate<? super E> filter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    default Spliterator<E> spliterator() {
        throw new RuntimeException("Stub!");
    }

    default Stream<E> stream() {
        throw new RuntimeException("Stub!");
    }

    default Stream<E> parallelStream() {
        throw new RuntimeException("Stub!");
    }
}
