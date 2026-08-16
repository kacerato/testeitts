package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/SortedSet.class
 */
public interface SortedSet<E> extends Set<E> {
    Comparator<? super E> comparator();

    SortedSet<E> subSet(E e10, E e11);

    SortedSet<E> headSet(E e10);

    SortedSet<E> tailSet(E e10);

    E first();

    E last();

    @Override
    default Spliterator<E> spliterator() {
        throw new RuntimeException("Stub!");
    }
}
