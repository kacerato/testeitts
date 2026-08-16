package F0;

import G0.A;
import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.NoSuchElementException;

@C0.a
public class c<T> implements Iterator<T> {

    @NonNull
    public final b f6123b;

    public int f6124c = -1;

    public c(@NonNull b bVar) {
        this.f6123b = (b) A.r(bVar);
    }

    @Override
    public final boolean hasNext() {
        return this.f6124c < this.f6123b.getCount() + (-1);
    }

    @Override
    @NonNull
    public Object next() {
        if (hasNext()) {
            b bVar = this.f6123b;
            int i10 = this.f6124c + 1;
            this.f6124c = i10;
            return bVar.get(i10);
        }
        throw new NoSuchElementException("Cannot advance the iterator beyond " + this.f6124c);
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
