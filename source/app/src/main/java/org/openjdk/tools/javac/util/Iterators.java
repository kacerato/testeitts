package org.openjdk.tools.javac.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Function;
import java.util.function.Predicate;

public class Iterators {
    private static final Iterator EMPTY = new Iterator() {
        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public Object next() {
            return null;
        }
    };

    public static class CompoundIterator<I, O> implements Iterator<O> {
        private final Function<I, Iterator<O>> convertor;
        private Iterator<O> currentIterator = Iterators.EMPTY;
        private final Iterator<I> inputs;

        public CompoundIterator(Iterable<I> iterable, Function<I, Iterator<O>> function) {
            this.inputs = iterable.iterator();
            this.convertor = function;
        }

        private void update() {
            while (this.inputs.hasNext()) {
                Iterator<O> it = (Iterator) this.convertor.apply(this.inputs.next());
                this.currentIterator = it;
                if (it.hasNext()) {
                    return;
                }
            }
            this.currentIterator = null;
        }

        @Override
        public boolean hasNext() {
            Iterator<O> it = this.currentIterator;
            if (it != null && !it.hasNext()) {
                update();
            }
            return this.currentIterator != null;
        }

        @Override
        public O next() {
            if (this.currentIterator != Iterators.EMPTY || hasNext()) {
                return this.currentIterator.next();
            }
            throw new NoSuchElementException();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static <I, O> Iterator<O> createCompoundIterator(Iterable<I> iterable, Function<I, Iterator<O>> function) {
        return new CompoundIterator(iterable, function);
    }

    public static <E> Iterator<E> createFilterIterator(final Iterator<E> it, final Predicate<E> predicate) {
        return new Iterator<E>() {
            private E current = update();

            private E update() {
                while (Iterator.this.hasNext()) {
                    E e10 = (E) Iterator.this.next();
                    if (predicate.test(e10)) {
                        return e10;
                    }
                }
                return null;
            }

            @Override
            public boolean hasNext() {
                return this.current != null;
            }

            @Override
            public E next() {
                E e10 = this.current;
                this.current = update();
                return e10;
            }
        };
    }
}
