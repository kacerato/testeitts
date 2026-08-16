package com.jme3.util.clone;

public interface CloneFunction<T> {
    void cloneFields(Cloner cloner, T t10, T t11);

    T cloneObject(Cloner cloner, T t10);
}
