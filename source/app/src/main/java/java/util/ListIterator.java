package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/ListIterator.class
 */
public interface ListIterator<E> extends Iterator<E> {
    @Override
    boolean hasNext();

    @Override
    E next();

    boolean hasPrevious();

    E previous();

    int nextIndex();

    int previousIndex();

    @Override
    void remove();

    void set(E e10);

    void add(E e10);
}
