package com.github.javaparser.ast;

public abstract class DataKey<T> {
    public boolean equals(Object obj) {
        return obj != null && getClass().equals(obj.getClass());
    }

    public int hashCode() {
        return getClass().hashCode();
    }
}
