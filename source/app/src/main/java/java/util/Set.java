package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Set.class
 */
public interface Set<E> extends Collection<E> {
    int size();

    @Override
    boolean isEmpty();

    boolean contains(Object obj);

    Iterator<E> iterator();

    @Override
    Object[] toArray();

    @Override
    <T> T[] toArray(T[] tArr);

    @Override
    boolean add(E e10);

    boolean remove(Object obj);

    @Override
    boolean containsAll(Collection<?> collection);

    @Override
    boolean addAll(Collection<? extends E> collection);

    @Override
    boolean retainAll(Collection<?> collection);

    @Override
    boolean removeAll(Collection<?> collection);

    @Override
    void clear();

    @Override
    boolean equals(Object obj);

    @Override
    int hashCode();

    @Override
    default Spliterator<E> spliterator() {
        throw new RuntimeException("Stub!");
    }
}
