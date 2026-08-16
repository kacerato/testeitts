package com.github.javaparser.printer.lexicalpreservation;

import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public class PeekingIterator<E> implements ListIterator<E>, LookaheadIterator<E> {
    private boolean exhausted;
    private final ListIterator<E> iterator;
    private E slot;
    private boolean slotFilled;

    public PeekingIterator(final ListIterator<E> iterator) {
        this.iterator = iterator;
    }

    private void fill() {
        if (this.exhausted || this.slotFilled) {
            return;
        }
        if (this.iterator.hasNext()) {
            this.slot = this.iterator.next();
            this.slotFilled = true;
        } else {
            this.exhausted = true;
            this.slot = null;
            this.slotFilled = false;
        }
    }

    @Override
    public void add(E e10) {
        if (this.slotFilled) {
            throw new IllegalStateException("peek() or element() called before add()");
        }
        this.iterator.add(e10);
    }

    public int currentIndex() {
        return !hasPrevious() ? previousIndex() : nextIndex() - 1;
    }

    @Override
    public E element() {
        fill();
        if (this.exhausted) {
            throw new NoSuchElementException();
        }
        return this.slot;
    }

    @Override
    public boolean hasNext() {
        if (this.exhausted) {
            return false;
        }
        return this.slotFilled || this.iterator.hasNext();
    }

    @Override
    public boolean hasPrevious() {
        return this.iterator.hasPrevious();
    }

    @Override
    public E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        E next = this.slotFilled ? this.slot : this.iterator.next();
        this.slot = null;
        this.slotFilled = false;
        return next;
    }

    @Override
    public int nextIndex() {
        return this.iterator.nextIndex();
    }

    @Override
    public E peek() {
        fill();
        if (this.exhausted) {
            return null;
        }
        return this.slot;
    }

    public <E> PeekingIterator<E> peekingIterator(final ListIterator<E> iterator) {
        Objects.requireNonNull(iterator, "iterator");
        return iterator instanceof PeekingIterator ? (PeekingIterator) iterator : new PeekingIterator<>(iterator);
    }

    @Override
    public E previous() {
        return this.iterator.previous();
    }

    @Override
    public int previousIndex() {
        return this.iterator.previousIndex();
    }

    @Override
    public void remove() {
        if (this.slotFilled) {
            throw new IllegalStateException("peek() or element() called before remove()");
        }
        this.iterator.remove();
    }

    @Override
    public void set(E e10) {
        if (this.slotFilled) {
            throw new IllegalStateException("peek() or element() called before set()");
        }
        this.iterator.set(e10);
    }

    public PeekingIterator(final List<E> list) {
        this.iterator = list.listIterator();
    }
}
