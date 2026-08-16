package org.openjdk.tools.sjavac.options;

import java.util.Iterator;

public class ArgumentIterator implements Iterator<String> {
    private String buffered;
    private String current;
    private Iterator<String> iter;

    public ArgumentIterator(Iterable<String> iterable) {
        this.iter = iterable.iterator();
    }

    private void fillBuffer() {
        if (this.buffered == null && this.iter.hasNext()) {
            this.buffered = this.iter.next();
        }
    }

    public String current() {
        return this.current;
    }

    @Override
    public boolean hasNext() {
        return this.buffered != null || this.iter.hasNext();
    }

    public String peek() {
        fillBuffer();
        return this.buffered;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override
    public String next() {
        fillBuffer();
        String str = this.buffered;
        this.current = str;
        this.buffered = null;
        return str;
    }
}
