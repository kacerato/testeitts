package be;

import be.InterfaceC3873f;

public abstract class AbstractC3874g<T extends InterfaceC3873f> implements InterfaceC3873f<T> {

    public volatile T f33079b;

    public volatile T f33080c;

    @Override
    public void a5(T t10) {
        this.f33080c = t10;
    }

    @Override
    public void ec(T t10) {
        this.f33079b = t10;
    }

    @Override
    public T getNext() {
        return this.f33079b;
    }

    @Override
    public T o7() {
        return this.f33080c;
    }
}
