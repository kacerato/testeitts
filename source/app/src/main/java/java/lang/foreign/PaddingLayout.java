package java.lang.foreign;

public interface PaddingLayout extends MemoryLayout {
    @Override
    PaddingLayout withName(String str);

    @Override
    PaddingLayout withoutName();

    @Override
    PaddingLayout withByteAlignment(long j10);
}
