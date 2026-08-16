package com.jme3.util.clone;

import java.util.List;

public class ListCloneFunction<T extends List> implements CloneFunction<T> {
    @Override
    public void cloneFields(Cloner cloner, T t10, T t11) {
        for (int i10 = 0; i10 < t10.size(); i10++) {
            t10.set(i10, cloner.clone(t10.get(i10)));
        }
    }

    @Override
    public T cloneObject(Cloner cloner, T t10) {
        try {
            return (T) cloner.javaClone(t10);
        } catch (CloneNotSupportedException e10) {
            throw new IllegalArgumentException("Clone not supported for type:" + ((Object) t10.getClass()), e10);
        }
    }
}
