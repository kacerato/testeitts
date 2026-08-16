package org.eclipse.jdt.internal.core.nd;

import java.util.function.Supplier;
import org.eclipse.jdt.internal.core.nd.NdNode;

public class DatabaseRef<T extends NdNode> implements Supplier<T> {
    private T lastResult;

    private final Nd f102530nd;
    private final Supplier<T> searchFunction;
    private long writeCounter;

    public DatabaseRef(Nd nd2, Supplier<T> supplier) {
        this.f102530nd = nd2;
        this.searchFunction = supplier;
        this.writeCounter = -1L;
    }

    public Nd getNd() {
        return this.f102530nd;
    }

    public IReader lock() {
        return this.f102530nd.acquireReadLock();
    }

    @Override
    public T get() {
        long writeNumber = this.f102530nd.getWriteNumber();
        if (this.writeCounter == writeNumber) {
            return this.lastResult;
        }
        T t10 = this.searchFunction.get();
        this.writeCounter = writeNumber;
        this.lastResult = t10;
        return t10;
    }

    public DatabaseRef(Nd nd2, Supplier<T> supplier, T t10) {
        this.f102530nd = nd2;
        this.searchFunction = supplier;
        this.lastResult = t10;
        this.writeCounter = nd2.getWriteNumber();
    }
}
