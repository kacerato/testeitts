package java.lang.foreign;

public interface UnionLayout extends GroupLayout {
    @Override
    UnionLayout withName(String str);

    @Override
    UnionLayout withoutName();

    @Override
    UnionLayout withByteAlignment(long j10);
}
