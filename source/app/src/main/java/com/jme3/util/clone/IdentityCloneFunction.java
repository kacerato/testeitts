package com.jme3.util.clone;

public class IdentityCloneFunction<T> implements CloneFunction<T> {
    @Override
    public void cloneFields(Cloner cloner, T t10, T t11) {
    }

    @Override
    public T cloneObject(Cloner cloner, T t10) {
        return t10;
    }
}
