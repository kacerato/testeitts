package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Queue.class
 */
public interface Queue<E> extends Collection<E> {
    @Override
    boolean add(E e10);

    boolean offer(E e10);

    E remove();

    E poll();

    E element();

    E peek();
}
