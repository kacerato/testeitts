package java.lang.foreign;

import java.lang.foreign.ValueLayout;
import java.nio.charset.Charset;
import java.util.Objects;
import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.foreign.ArenaImpl;
import jdk.internal.foreign.SlicingAllocator;
import jdk.internal.foreign.StringSupport;
import jdk.internal.vm.annotation.ForceInline;
import sun.nio.cs.UTF_8;

@FunctionalInterface
public interface SegmentAllocator {
    MemorySegment allocate(long j10, long j11);

    @ForceInline
    default MemorySegment allocateFrom(String str) {
        Objects.requireNonNull(str);
        return allocateFrom(str, (Charset) UTF_8.INSTANCE);
    }

    @ForceInline
    default MemorySegment allocateFrom(String str, Charset charset) {
        int length;
        MemorySegment segment;
        Objects.requireNonNull(charset);
        Objects.requireNonNull(str);
        int termCharSize = StringSupport.CharsetKind.of(charset).terminatorCharSize();
        if (StringSupport.bytesCompatible(str, charset)) {
            length = str.length();
            segment = allocateNoInit(length + termCharSize);
            StringSupport.copyToSegmentRaw(str, segment, 0L);
        } else {
            byte[] bytes = str.getBytes(charset);
            length = bytes.length;
            segment = allocateNoInit(bytes.length + termCharSize);
            MemorySegment.copy(bytes, 0, segment, ValueLayout.JAVA_BYTE, 0L, bytes.length);
        }
        for (int i10 = 0; i10 < termCharSize; i10++) {
            segment.set(ValueLayout.JAVA_BYTE, length + i10, (byte) 0);
        }
        return segment;
    }

    default MemorySegment allocateFrom(ValueLayout.OfByte layout, byte value) {
        Objects.requireNonNull(layout);
        MemorySegment seg = allocateNoInit(layout);
        seg.set(layout, 0L, value);
        return seg;
    }

    default MemorySegment allocateFrom(ValueLayout.OfChar layout, char value) {
        Objects.requireNonNull(layout);
        MemorySegment seg = allocateNoInit(layout);
        seg.set(layout, 0L, value);
        return seg;
    }

    default MemorySegment allocateFrom(ValueLayout.OfShort layout, short value) {
        Objects.requireNonNull(layout);
        MemorySegment seg = allocateNoInit(layout);
        seg.set(layout, 0L, value);
        return seg;
    }

    default MemorySegment allocateFrom(ValueLayout.OfInt layout, int value) {
        Objects.requireNonNull(layout);
        MemorySegment seg = allocateNoInit(layout);
        seg.set(layout, 0L, value);
        return seg;
    }

    default MemorySegment allocateFrom(ValueLayout.OfFloat layout, float value) {
        Objects.requireNonNull(layout);
        MemorySegment seg = allocateNoInit(layout);
        seg.set(layout, 0L, value);
        return seg;
    }

    default MemorySegment allocateFrom(ValueLayout.OfLong layout, long value) {
        Objects.requireNonNull(layout);
        MemorySegment seg = allocateNoInit(layout);
        seg.set(layout, 0L, value);
        return seg;
    }

    default MemorySegment allocateFrom(ValueLayout.OfDouble layout, double value) {
        Objects.requireNonNull(layout);
        MemorySegment seg = allocateNoInit(layout);
        seg.set(layout, 0L, value);
        return seg;
    }

    default MemorySegment allocateFrom(AddressLayout layout, MemorySegment value) {
        Objects.requireNonNull(value);
        Objects.requireNonNull(layout);
        MemorySegment segment = allocateNoInit(layout);
        segment.set(layout, 0L, value);
        return segment;
    }

    @ForceInline
    default MemorySegment allocateFrom(ValueLayout elementLayout, MemorySegment source, ValueLayout sourceElementLayout, long sourceOffset, long elementCount) {
        Objects.requireNonNull(source);
        Objects.requireNonNull(sourceElementLayout);
        Objects.requireNonNull(elementLayout);
        MemorySegment dest = allocateNoInit(elementLayout, elementCount);
        MemorySegment.copy(source, sourceElementLayout, sourceOffset, dest, elementLayout, 0L, elementCount);
        return dest;
    }

    @ForceInline
    default MemorySegment allocateFrom(ValueLayout.OfByte elementLayout, byte... elements) {
        return allocateFrom(elementLayout, MemorySegment.ofArray(elements), ValueLayout.JAVA_BYTE, 0L, elements.length);
    }

    @ForceInline
    default MemorySegment allocateFrom(ValueLayout.OfShort elementLayout, short... elements) {
        return allocateFrom(elementLayout, MemorySegment.ofArray(elements), ValueLayout.JAVA_SHORT, 0L, elements.length);
    }

    @ForceInline
    default MemorySegment allocateFrom(ValueLayout.OfChar elementLayout, char... elements) {
        return allocateFrom(elementLayout, MemorySegment.ofArray(elements), ValueLayout.JAVA_CHAR, 0L, elements.length);
    }

    @ForceInline
    default MemorySegment allocateFrom(ValueLayout.OfInt elementLayout, int... elements) {
        return allocateFrom(elementLayout, MemorySegment.ofArray(elements), ValueLayout.JAVA_INT, 0L, elements.length);
    }

    @ForceInline
    default MemorySegment allocateFrom(ValueLayout.OfFloat elementLayout, float... elements) {
        return allocateFrom(elementLayout, MemorySegment.ofArray(elements), ValueLayout.JAVA_FLOAT, 0L, elements.length);
    }

    @ForceInline
    default MemorySegment allocateFrom(ValueLayout.OfLong elementLayout, long... elements) {
        return allocateFrom(elementLayout, MemorySegment.ofArray(elements), ValueLayout.JAVA_LONG, 0L, elements.length);
    }

    @ForceInline
    default MemorySegment allocateFrom(ValueLayout.OfDouble elementLayout, double... elements) {
        return allocateFrom(elementLayout, MemorySegment.ofArray(elements), ValueLayout.JAVA_DOUBLE, 0L, elements.length);
    }

    default MemorySegment allocate(MemoryLayout layout) {
        Objects.requireNonNull(layout);
        return allocate(layout.byteSize(), layout.byteAlignment());
    }

    default MemorySegment allocate(MemoryLayout elementLayout, long count) {
        Objects.requireNonNull(elementLayout);
        if (count < 0) {
            throw new IllegalArgumentException("Negative array size");
        }
        return allocate(MemoryLayout.sequenceLayout(count, elementLayout));
    }

    default MemorySegment allocate(long byteSize) {
        return allocate(byteSize, 1L);
    }

    static SegmentAllocator slicingAllocator(MemorySegment segment) {
        assertWritable(segment);
        return new SlicingAllocator(segment);
    }

    static SegmentAllocator prefixAllocator(MemorySegment segment) {
        assertWritable(segment);
        return (AbstractMemorySegmentImpl) segment;
    }

    private static void assertWritable(MemorySegment segment) {
        if (segment.isReadOnly()) {
            throw new IllegalArgumentException("read-only segment");
        }
    }

    @ForceInline
    private default MemorySegment allocateNoInit(long byteSize) {
        if (this instanceof ArenaImpl) {
            ArenaImpl arenaImpl = (ArenaImpl) this;
            return arenaImpl.allocateNoInit(byteSize, 1L);
        }
        return allocate(byteSize);
    }

    @ForceInline
    private default MemorySegment allocateNoInit(MemoryLayout layout) {
        if (this instanceof ArenaImpl) {
            ArenaImpl arenaImpl = (ArenaImpl) this;
            return arenaImpl.allocateNoInit(layout.byteSize(), layout.byteAlignment());
        }
        return allocate(layout);
    }

    @ForceInline
    private default MemorySegment allocateNoInit(MemoryLayout layout, long size) {
        if (this instanceof ArenaImpl) {
            ArenaImpl arenaImpl = (ArenaImpl) this;
            return arenaImpl.allocateNoInit(layout.byteSize() * size, layout.byteAlignment());
        }
        return allocate(layout, size);
    }
}
