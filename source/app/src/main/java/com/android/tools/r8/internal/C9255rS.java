package com.android.tools.r8.internal;

import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C9255rS implements Iterator {

    public final HashSet f52040b;

    public C9589tS f52041c;

    public C9589tS f52042d;

    public int f52043e;

    public final C10090wS f52044f;

    public C9255rS(C10090wS c10090wS) {
        this.f52044f = c10090wS;
        this.f52040b = new HashSet(AbstractC9595tV.a(c10090wS.keySet().size()));
        this.f52041c = c10090wS.f53505f;
        this.f52043e = c10090wS.f53509j;
    }

    @Override
    public final boolean hasNext() {
        if (this.f52044f.f53509j == this.f52043e) {
            return this.f52041c != null;
        }
        throw new ConcurrentModificationException();
    }

    @Override
    public final Object next() {
        C9589tS c9589tS;
        if (this.f52044f.f53509j != this.f52043e) {
            throw new ConcurrentModificationException();
        }
        C9589tS c9589tS2 = this.f52041c;
        if (c9589tS2 == null) {
            throw new NoSuchElementException();
        }
        this.f52042d = c9589tS2;
        this.f52040b.add(c9589tS2.f52605b);
        do {
            c9589tS = this.f52041c.f52607d;
            this.f52041c = c9589tS;
            if (c9589tS == null) {
                break;
            }
        } while (!this.f52040b.add(c9589tS.f52605b));
        return this.f52042d.f52605b;
    }

    @Override
    public final void remove() {
        C10090wS c10090wS = this.f52044f;
        if (c10090wS.f53509j != this.f52043e) {
            throw new ConcurrentModificationException();
        }
        C9589tS c9589tS = this.f52042d;
        if (!(c9589tS != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        C9923vS c9923vS = new C9923vS(c10090wS, c9589tS.f52605b);
        while (c9923vS.hasNext()) {
            c9923vS.next();
            c9923vS.remove();
        }
        this.f52042d = null;
        this.f52043e = this.f52044f.f53509j;
    }
}
