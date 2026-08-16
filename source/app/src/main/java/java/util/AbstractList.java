package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/AbstractList.class
 */
public abstract class AbstractList<E> extends AbstractCollection<E> implements List<E> {
    protected transient int modCount;

    public abstract E get(int i10);

    public AbstractList() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean add(E e10) {
        throw new RuntimeException("Stub!");
    }

    public E set(int index, E element) {
        throw new RuntimeException("Stub!");
    }

    public void add(int index, E element) {
        throw new RuntimeException("Stub!");
    }

    public E remove(int index) {
        throw new RuntimeException("Stub!");
    }

    public int indexOf(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int lastIndexOf(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    public boolean addAll(int index, Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Iterator<E> iterator() {
        throw new RuntimeException("Stub!");
    }

    public ListIterator<E> listIterator() {
        throw new RuntimeException("Stub!");
    }

    public ListIterator<E> listIterator(int index) {
        throw new RuntimeException("Stub!");
    }

    public List<E> subList(int fromIndex, int toIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public void removeRange(int fromIndex, int toIndex) {
        throw new RuntimeException("Stub!");
    }
}
