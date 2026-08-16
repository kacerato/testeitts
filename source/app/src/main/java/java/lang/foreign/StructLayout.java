package java.lang.foreign;

public interface StructLayout extends GroupLayout {
    @Override
    StructLayout withName(String str);

    @Override
    StructLayout withoutName();

    @Override
    StructLayout withByteAlignment(long j10);
}
