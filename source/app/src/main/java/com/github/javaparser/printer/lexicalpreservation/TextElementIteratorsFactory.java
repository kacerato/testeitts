package com.github.javaparser.printer.lexicalpreservation;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class TextElementIteratorsFactory {

    public static class CascadingIterator<E> implements Iterator<E> {
        private Iterator<E> current;
        private boolean lastReturnedFromCurrent = false;
        private boolean lastReturnedFromNext = false;
        private Iterator<E> next;
        private final Provider<E> nextProvider;

        public interface Provider<E> {
            Iterator<E> provide();
        }

        public CascadingIterator(Iterator<E> current, Provider<E> nextProvider) {
            this.nextProvider = nextProvider;
            this.current = current;
        }

        @Override
        public boolean hasNext() {
            if (this.current.hasNext()) {
                return true;
            }
            if (this.next == null) {
                this.next = this.nextProvider.provide();
            }
            return this.next.hasNext();
        }

        @Override
        public E next() {
            if (this.current.hasNext()) {
                this.lastReturnedFromCurrent = true;
                this.lastReturnedFromNext = false;
                return this.current.next();
            }
            if (this.next == null) {
                this.next = this.nextProvider.provide();
            }
            this.lastReturnedFromCurrent = false;
            this.lastReturnedFromNext = true;
            return this.next.next();
        }

        @Override
        public void remove() {
            if (this.lastReturnedFromCurrent) {
                this.current.remove();
            } else {
                if (!this.lastReturnedFromNext) {
                    throw new IllegalArgumentException();
                }
                this.next.remove();
            }
        }
    }

    public static class ComposedIterator<E> implements Iterator<E> {
        private int currIndex = 0;
        private final List<Iterator<E>> elements;

        public ComposedIterator(List<Iterator<E>> elements) {
            this.elements = elements;
        }

        @Override
        public boolean hasNext() {
            if (this.currIndex >= this.elements.size()) {
                return false;
            }
            if (this.elements.get(this.currIndex).hasNext()) {
                return true;
            }
            this.currIndex++;
            return hasNext();
        }

        @Override
        public E next() {
            if (hasNext()) {
                return this.elements.get(this.currIndex).next();
            }
            throw new IllegalArgumentException();
        }

        @Override
        public void remove() {
            this.elements.get(this.currIndex).remove();
        }
    }

    public static class EmptyIterator<E> implements Iterator<E> {
        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public E next() {
            throw new IllegalArgumentException();
        }
    }

    public static class SingleElementIterator<E> implements Iterator<E> {
        private final E element;
        private boolean returned;

        public SingleElementIterator(E element) {
            this.element = element;
        }

        @Override
        public boolean hasNext() {
            return !this.returned;
        }

        @Override
        public E next() {
            this.returned = true;
            return this.element;
        }

        @Override
        public void remove() {
        }
    }

    public static Iterator<TokenTextElement> partialReverseIterator(NodeText nodeText, int fromIndex) {
        LinkedList linkedList = new LinkedList();
        while (fromIndex >= 0) {
            linkedList.add(reverseIterator(nodeText, fromIndex));
            fromIndex--;
        }
        return new ComposedIterator(linkedList);
    }

    private static Iterator<TokenTextElement> reverseIterator(final NodeText nodeText, final int index) {
        TextElement textElement = nodeText.getTextElement(index);
        if (textElement instanceof TokenTextElement) {
            return new SingleElementIterator<TokenTextElement>((TokenTextElement) textElement) {
                @Override
                public void remove() {
                    nodeText.removeElement(index);
                }
            };
        }
        if (textElement instanceof ChildTextElement) {
            return reverseIterator(((ChildTextElement) textElement).getNodeTextForWrappedNode());
        }
        throw new IllegalArgumentException();
    }

    public static Iterator<TokenTextElement> reverseIterator(NodeText nodeText) {
        return partialReverseIterator(nodeText, nodeText.numberOfElements() - 1);
    }
}
