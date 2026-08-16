package F0;

import G0.A;
import androidx.annotation.NonNull;
import java.util.NoSuchElementException;

@C0.a
public class k<T> extends c<T> {

    public Object f6133d;

    public k(@NonNull b bVar) {
        super(bVar);
    }

    @Override
    @NonNull
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException("Cannot advance the iterator beyond " + this.f6124c);
        }
        int i10 = this.f6124c + 1;
        this.f6124c = i10;
        if (i10 == 0) {
            Object r10 = A.r(this.f6123b.get(0));
            this.f6133d = r10;
            if (!(r10 instanceof f)) {
                throw new IllegalStateException("DataBuffer reference of type " + String.valueOf(r10.getClass()) + " is not movable");
            }
        } else {
            ((f) A.r(this.f6133d)).n(this.f6124c);
        }
        return this.f6133d;
    }
}
