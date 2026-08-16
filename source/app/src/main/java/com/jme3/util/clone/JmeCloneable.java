package com.jme3.util.clone;

public interface JmeCloneable extends Cloneable {
    void cloneFields(Cloner cloner, Object obj);

    Object jmeClone();
}
