package org.apache.commons.lang3.concurrent;

public interface Computable<I, O> {
    O compute(I i10) throws InterruptedException;
}
