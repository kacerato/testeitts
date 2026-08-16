package java.lang.ref;

public class FinalReference<T> extends Reference<T> {
    public FinalReference(T referent, ReferenceQueue<? super T> q10) {
        super(referent, q10);
    }

    @Override
    public T get() {
        return getFromInactiveFinalReference();
    }

    @Override
    public void clear() {
        clearInactiveFinalReference();
    }

    @Override
    public boolean enqueue() {
        throw new InternalError("should never reach here");
    }
}
