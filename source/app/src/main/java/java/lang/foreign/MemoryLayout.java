package java.lang.foreign;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.VarHandle;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Stream;
import jdk.internal.foreign.LayoutPath;
import jdk.internal.foreign.Utils;
import jdk.internal.foreign.layout.MemoryLayoutUtil;
import jdk.internal.foreign.layout.PaddingLayoutImpl;
import jdk.internal.foreign.layout.SequenceLayoutImpl;
import jdk.internal.foreign.layout.StructLayoutImpl;
import jdk.internal.foreign.layout.UnionLayoutImpl;

public interface MemoryLayout {
    long byteSize();

    Optional<String> name();

    MemoryLayout withName(String str);

    MemoryLayout withoutName();

    long byteAlignment();

    MemoryLayout withByteAlignment(long j10);

    long scale(long j10, long j11);

    MethodHandle scaleHandle();

    long byteOffset(PathElement... pathElementArr);

    MethodHandle byteOffsetHandle(PathElement... pathElementArr);

    VarHandle varHandle(PathElement... pathElementArr);

    VarHandle arrayElementVarHandle(PathElement... pathElementArr);

    MethodHandle sliceHandle(PathElement... pathElementArr);

    MemoryLayout select(PathElement... pathElementArr);

    boolean equals(Object obj);

    int hashCode();

    String toString();

    public interface PathElement {
        static PathElement groupElement(String name) {
            return new LayoutPath.GroupElementByName(name);
        }

        static PathElement groupElement(long index) {
            return new LayoutPath.GroupElementByIndex(index);
        }

        static PathElement sequenceElement(long index) {
            return new LayoutPath.SequenceElementByIndex(index);
        }

        static PathElement sequenceElement(long start, long step) {
            return new LayoutPath.SequenceElementByRange(start, step);
        }

        static PathElement sequenceElement() {
            return LayoutPath.SequenceElement.instance();
        }

        static PathElement dereferenceElement() {
            return LayoutPath.DereferenceElement.instance();
        }
    }

    static PaddingLayout paddingLayout(long byteSize) {
        return PaddingLayoutImpl.of(MemoryLayoutUtil.requireByteSizeValid(byteSize, false));
    }

    static SequenceLayout sequenceLayout(long elementCount, MemoryLayout elementLayout) {
        Utils.checkNonNegativeArgument(elementCount, "elementCount");
        Objects.requireNonNull(elementLayout);
        Utils.checkElementAlignment(elementLayout, "Element layout size is not multiple of alignment");
        return (SequenceLayout) Utils.wrapOverflow(() -> {
            return SequenceLayoutImpl.of(elementCount, elementLayout);
        });
    }

    static StructLayout structLayout(MemoryLayout... elements) {
        Objects.requireNonNull(elements);
        return (StructLayout) Utils.wrapOverflow(() -> {
            return StructLayoutImpl.of(Stream.of((Object[]) elements).map((v0) -> {
                return Objects.requireNonNull(v0);
            }).toList());
        });
    }

    static UnionLayout unionLayout(MemoryLayout... elements) {
        Objects.requireNonNull(elements);
        return UnionLayoutImpl.of(Stream.of((Object[]) elements).map((v0) -> {
            return Objects.requireNonNull(v0);
        }).toList());
    }
}
