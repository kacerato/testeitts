package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/NavigableSet.class
 */
public interface NavigableSet<E> extends SortedSet<E> {
    E lower(E e10);

    E floor(E e10);

    E ceiling(E e10);

    E higher(E e10);

    E pollFirst();

    E pollLast();

    @Override
    Iterator<E> iterator();

    NavigableSet<E> descendingSet();

    Iterator<E> descendingIterator();

    NavigableSet<E> subSet(E e10, boolean z10, E e11, boolean z11);

    NavigableSet<E> headSet(E e10, boolean z10);

    NavigableSet<E> tailSet(E e10, boolean z10);

    @Override
    SortedSet<E> subSet(E e10, E e11);

    @Override
    SortedSet<E> headSet(E e10);

    @Override
    SortedSet<E> tailSet(E e10);
}
