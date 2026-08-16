package com.github.javaparser.printer.lexicalpreservation;

public interface LookaheadIterator<E> {
    E element();

    E peek();
}
