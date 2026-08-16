package java.lang;

import java.util.Enumeration;
import java.util.NoSuchElementException;

public final class CompoundEnumeration<E> implements Enumeration<E> {
    private final Enumeration<E>[] enums;
    private int index;

    public CompoundEnumeration(Enumeration<E>[] enums) {
        this.enums = enums;
    }

    private boolean next() {
        while (this.index < this.enums.length) {
            if (this.enums[this.index] != null && this.enums[this.index].hasMoreElements()) {
                return true;
            }
            this.index++;
        }
        return false;
    }

    @Override
    public boolean hasMoreElements() {
        return next();
    }

    @Override
    public E nextElement() {
        if (!next()) {
            throw new NoSuchElementException();
        }
        return this.enums[this.index].nextElement();
    }
}
