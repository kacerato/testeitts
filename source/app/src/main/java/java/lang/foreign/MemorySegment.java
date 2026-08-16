package java.lang.foreign;

import java.lang.foreign.ValueLayout;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
import java.util.Optional;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.stream.Stream;
import jdk.internal.foreign.AbstractMemorySegmentImpl;
import jdk.internal.foreign.SegmentBulkOperations;
import jdk.internal.foreign.SegmentFactories;
import jdk.internal.javac.Restricted;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.vm.annotation.ForceInline;

public interface MemorySegment {
    public static final MemorySegment NULL = ofAddress(0);

    public interface Scope {
        boolean isAlive();

        boolean equals(Object obj);

        int hashCode();
    }

    long address();

    Optional<Object> heapBase();

    Spliterator<MemorySegment> spliterator(MemoryLayout memoryLayout);

    Stream<MemorySegment> elements(MemoryLayout memoryLayout);

    Scope scope();

    boolean isAccessibleBy(Thread thread);

    long byteSize();

    long maxByteAlignment();

    MemorySegment asSlice(long j10, long j11);

    MemorySegment asSlice(long j10, long j11, long j12);

    MemorySegment asSlice(long j10, MemoryLayout memoryLayout);

    MemorySegment asSlice(long j10);

    @Restricted
    @CallerSensitive
    MemorySegment reinterpret(long j10);

    @Restricted
    @CallerSensitive
    MemorySegment reinterpret(Arena arena, Consumer<MemorySegment> consumer);

    @Restricted
    @CallerSensitive
    MemorySegment reinterpret(long j10, Arena arena, Consumer<MemorySegment> consumer);

    boolean isReadOnly();

    MemorySegment asReadOnly();

    boolean isNative();

    boolean isMapped();

    Optional<MemorySegment> asOverlappingSlice(MemorySegment memorySegment);

    MemorySegment fill(byte b10);

    MemorySegment copyFrom(MemorySegment memorySegment);

    long mismatch(MemorySegment memorySegment);

    boolean isLoaded();

    void load();

    void unload();

    void force();

    ByteBuffer asByteBuffer();

    byte[] toArray(ValueLayout.OfByte ofByte);

    short[] toArray(ValueLayout.OfShort ofShort);

    char[] toArray(ValueLayout.OfChar ofChar);

    int[] toArray(ValueLayout.OfInt ofInt);

    float[] toArray(ValueLayout.OfFloat ofFloat);

    long[] toArray(ValueLayout.OfLong ofLong);

    double[] toArray(ValueLayout.OfDouble ofDouble);

    String getString(long j10);

    String getString(long j10, Charset charset);

    void setString(long j10, String str);

    void setString(long j10, String str, Charset charset);

    byte get(ValueLayout.OfByte ofByte, long j10);

    void set(ValueLayout.OfByte ofByte, long j10, byte b10);

    boolean get(ValueLayout.OfBoolean ofBoolean, long j10);

    void set(ValueLayout.OfBoolean ofBoolean, long j10, boolean z10);

    char get(ValueLayout.OfChar ofChar, long j10);

    void set(ValueLayout.OfChar ofChar, long j10, char c10);

    short get(ValueLayout.OfShort ofShort, long j10);

    void set(ValueLayout.OfShort ofShort, long j10, short s10);

    int get(ValueLayout.OfInt ofInt, long j10);

    void set(ValueLayout.OfInt ofInt, long j10, int i10);

    float get(ValueLayout.OfFloat ofFloat, long j10);

    void set(ValueLayout.OfFloat ofFloat, long j10, float f10);

    long get(ValueLayout.OfLong ofLong, long j10);

    void set(ValueLayout.OfLong ofLong, long j10, long j11);

    double get(ValueLayout.OfDouble ofDouble, long j10);

    void set(ValueLayout.OfDouble ofDouble, long j10, double d10);

    MemorySegment get(AddressLayout addressLayout, long j10);

    void set(AddressLayout addressLayout, long j10, MemorySegment memorySegment);

    byte getAtIndex(ValueLayout.OfByte ofByte, long j10);

    boolean getAtIndex(ValueLayout.OfBoolean ofBoolean, long j10);

    char getAtIndex(ValueLayout.OfChar ofChar, long j10);

    void setAtIndex(ValueLayout.OfChar ofChar, long j10, char c10);

    short getAtIndex(ValueLayout.OfShort ofShort, long j10);

    void setAtIndex(ValueLayout.OfByte ofByte, long j10, byte b10);

    void setAtIndex(ValueLayout.OfBoolean ofBoolean, long j10, boolean z10);

    void setAtIndex(ValueLayout.OfShort ofShort, long j10, short s10);

    int getAtIndex(ValueLayout.OfInt ofInt, long j10);

    void setAtIndex(ValueLayout.OfInt ofInt, long j10, int i10);

    float getAtIndex(ValueLayout.OfFloat ofFloat, long j10);

    void setAtIndex(ValueLayout.OfFloat ofFloat, long j10, float f10);

    long getAtIndex(ValueLayout.OfLong ofLong, long j10);

    void setAtIndex(ValueLayout.OfLong ofLong, long j10, long j11);

    double getAtIndex(ValueLayout.OfDouble ofDouble, long j10);

    void setAtIndex(ValueLayout.OfDouble ofDouble, long j10, double d10);

    MemorySegment getAtIndex(AddressLayout addressLayout, long j10);

    void setAtIndex(AddressLayout addressLayout, long j10, MemorySegment memorySegment);

    boolean equals(Object obj);

    int hashCode();

    static MemorySegment ofBuffer(Buffer buffer) {
        return AbstractMemorySegmentImpl.ofBuffer(buffer);
    }

    static MemorySegment ofArray(byte[] byteArray) {
        return SegmentFactories.fromArray(byteArray);
    }

    static MemorySegment ofArray(char[] charArray) {
        return SegmentFactories.fromArray(charArray);
    }

    static MemorySegment ofArray(short[] shortArray) {
        return SegmentFactories.fromArray(shortArray);
    }

    static MemorySegment ofArray(int[] intArray) {
        return SegmentFactories.fromArray(intArray);
    }

    static MemorySegment ofArray(float[] floatArray) {
        return SegmentFactories.fromArray(floatArray);
    }

    static MemorySegment ofArray(long[] longArray) {
        return SegmentFactories.fromArray(longArray);
    }

    static MemorySegment ofArray(double[] doubleArray) {
        return SegmentFactories.fromArray(doubleArray);
    }

    static MemorySegment ofAddress(long address) {
        return SegmentFactories.makeNativeSegmentUnchecked(address, 0L);
    }

    @ForceInline
    static void copy(MemorySegment srcSegment, long srcOffset, MemorySegment dstSegment, long dstOffset, long bytes) {
        SegmentBulkOperations.copy((AbstractMemorySegmentImpl) srcSegment, srcOffset, (AbstractMemorySegmentImpl) dstSegment, dstOffset, bytes);
    }

    @ForceInline
    static void copy(MemorySegment srcSegment, ValueLayout srcElementLayout, long srcOffset, MemorySegment dstSegment, ValueLayout dstElementLayout, long dstOffset, long elementCount) {
        Objects.requireNonNull(srcSegment);
        Objects.requireNonNull(srcElementLayout);
        Objects.requireNonNull(dstSegment);
        Objects.requireNonNull(dstElementLayout);
        AbstractMemorySegmentImpl.copy(srcSegment, srcElementLayout, srcOffset, dstSegment, dstElementLayout, dstOffset, elementCount);
    }

    @ForceInline
    static void copy(MemorySegment srcSegment, ValueLayout srcLayout, long srcOffset, Object dstArray, int dstIndex, int elementCount) {
        Objects.requireNonNull(srcSegment);
        Objects.requireNonNull(dstArray);
        Objects.requireNonNull(srcLayout);
        AbstractMemorySegmentImpl.copy(srcSegment, srcLayout, srcOffset, dstArray, dstIndex, elementCount);
    }

    @ForceInline
    static void copy(Object srcArray, int srcIndex, MemorySegment dstSegment, ValueLayout dstLayout, long dstOffset, int elementCount) {
        Objects.requireNonNull(srcArray);
        Objects.requireNonNull(dstSegment);
        Objects.requireNonNull(dstLayout);
        AbstractMemorySegmentImpl.copy(srcArray, srcIndex, dstSegment, dstLayout, dstOffset, elementCount);
    }

    static long mismatch(MemorySegment srcSegment, long srcFromOffset, long srcToOffset, MemorySegment dstSegment, long dstFromOffset, long dstToOffset) {
        return SegmentBulkOperations.mismatch((AbstractMemorySegmentImpl) Objects.requireNonNull(srcSegment), srcFromOffset, srcToOffset, (AbstractMemorySegmentImpl) Objects.requireNonNull(dstSegment), dstFromOffset, dstToOffset);
    }
}
