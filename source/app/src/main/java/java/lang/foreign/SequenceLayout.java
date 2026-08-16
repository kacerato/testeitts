package java.lang.foreign;

public interface SequenceLayout extends MemoryLayout {
    MemoryLayout elementLayout();

    long elementCount();

    SequenceLayout withElementCount(long j10);

    SequenceLayout reshape(long... jArr);

    SequenceLayout flatten();

    @Override
    SequenceLayout withName(String str);

    @Override
    MemoryLayout withoutName();

    @Override
    SequenceLayout withByteAlignment(long j10);
}
