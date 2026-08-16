package java.lang.foreign;

import java.lang.foreign.MemorySegment;
import jdk.internal.foreign.MemorySessionImpl;
import jdk.internal.ref.CleanerFactory;

public interface Arena extends SegmentAllocator, AutoCloseable {
    @Override
    MemorySegment allocate(long j10, long j11);

    MemorySegment.Scope scope();

    @Override
    void close();

    static Arena ofAuto() {
        return MemorySessionImpl.createImplicit(CleanerFactory.cleaner()).asArena();
    }

    class C1Holder {
        static final Arena GLOBAL = MemorySessionImpl.GLOBAL_SESSION.asArena();

        C1Holder() {
        }
    }

    static Arena global() {
        return C1Holder.GLOBAL;
    }

    static Arena ofConfined() {
        return MemorySessionImpl.createConfined(Thread.currentThread()).asArena();
    }

    static Arena ofShared() {
        return MemorySessionImpl.createShared().asArena();
    }
}
