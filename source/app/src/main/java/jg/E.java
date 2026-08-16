package jg;

public interface E<T> extends U<T>, D<T> {
    boolean compareAndSet(T t10, T t11);

    @Override
    T getValue();

    void setValue(T t10);
}
