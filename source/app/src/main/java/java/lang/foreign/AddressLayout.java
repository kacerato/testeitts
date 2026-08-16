package java.lang.foreign;

import java.nio.ByteOrder;
import java.util.Optional;
import jdk.internal.javac.Restricted;
import jdk.internal.reflect.CallerSensitive;

public interface AddressLayout extends ValueLayout {
    @Override
    AddressLayout withName(String str);

    @Override
    AddressLayout withoutName();

    @Override
    AddressLayout withByteAlignment(long j10);

    @Override
    AddressLayout withOrder(ByteOrder byteOrder);

    @Restricted
    @CallerSensitive
    AddressLayout withTargetLayout(MemoryLayout memoryLayout);

    AddressLayout withoutTargetLayout();

    Optional<MemoryLayout> targetLayout();
}
