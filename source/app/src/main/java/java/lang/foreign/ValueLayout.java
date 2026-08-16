package java.lang.foreign;

import java.lang.invoke.VarHandle;
import java.nio.ByteOrder;
import jdk.internal.foreign.layout.ValueLayouts;

public interface ValueLayout extends MemoryLayout {
    public static final AddressLayout ADDRESS = ValueLayouts.OfAddressImpl.of(ByteOrder.nativeOrder());
    public static final OfByte JAVA_BYTE = ValueLayouts.OfByteImpl.of(ByteOrder.nativeOrder());
    public static final OfBoolean JAVA_BOOLEAN = ValueLayouts.OfBooleanImpl.of(ByteOrder.nativeOrder());
    public static final OfChar JAVA_CHAR = ValueLayouts.OfCharImpl.of(ByteOrder.nativeOrder());
    public static final OfShort JAVA_SHORT = ValueLayouts.OfShortImpl.of(ByteOrder.nativeOrder());
    public static final OfInt JAVA_INT = ValueLayouts.OfIntImpl.of(ByteOrder.nativeOrder());
    public static final OfLong JAVA_LONG = ValueLayouts.OfLongImpl.of(ByteOrder.nativeOrder());
    public static final OfFloat JAVA_FLOAT = ValueLayouts.OfFloatImpl.of(ByteOrder.nativeOrder());
    public static final OfDouble JAVA_DOUBLE = ValueLayouts.OfDoubleImpl.of(ByteOrder.nativeOrder());
    public static final AddressLayout ADDRESS_UNALIGNED = ADDRESS.withByteAlignment(1L);
    public static final OfChar JAVA_CHAR_UNALIGNED = JAVA_CHAR.withByteAlignment(1L);
    public static final OfShort JAVA_SHORT_UNALIGNED = JAVA_SHORT.withByteAlignment(1L);
    public static final OfInt JAVA_INT_UNALIGNED = JAVA_INT.withByteAlignment(1L);
    public static final OfLong JAVA_LONG_UNALIGNED = JAVA_LONG.withByteAlignment(1L);
    public static final OfFloat JAVA_FLOAT_UNALIGNED = JAVA_FLOAT.withByteAlignment(1L);
    public static final OfDouble JAVA_DOUBLE_UNALIGNED = JAVA_DOUBLE.withByteAlignment(1L);

    public interface OfBoolean extends ValueLayout {
        @Override
        OfBoolean withName(String str);

        @Override
        OfBoolean withoutName();

        @Override
        OfBoolean withByteAlignment(long j10);

        @Override
        OfBoolean withOrder(ByteOrder byteOrder);
    }

    public interface OfByte extends ValueLayout {
        @Override
        OfByte withName(String str);

        @Override
        OfByte withoutName();

        @Override
        OfByte withByteAlignment(long j10);

        @Override
        OfByte withOrder(ByteOrder byteOrder);
    }

    public interface OfChar extends ValueLayout {
        @Override
        OfChar withName(String str);

        @Override
        OfChar withoutName();

        @Override
        OfChar withByteAlignment(long j10);

        @Override
        OfChar withOrder(ByteOrder byteOrder);
    }

    public interface OfDouble extends ValueLayout {
        @Override
        OfDouble withName(String str);

        @Override
        OfDouble withoutName();

        @Override
        OfDouble withByteAlignment(long j10);

        @Override
        OfDouble withOrder(ByteOrder byteOrder);
    }

    public interface OfFloat extends ValueLayout {
        @Override
        OfFloat withName(String str);

        @Override
        OfFloat withoutName();

        @Override
        OfFloat withByteAlignment(long j10);

        @Override
        OfFloat withOrder(ByteOrder byteOrder);
    }

    public interface OfInt extends ValueLayout {
        @Override
        OfInt withName(String str);

        @Override
        OfInt withoutName();

        @Override
        OfInt withByteAlignment(long j10);

        @Override
        OfInt withOrder(ByteOrder byteOrder);
    }

    public interface OfLong extends ValueLayout {
        @Override
        OfLong withName(String str);

        @Override
        OfLong withoutName();

        @Override
        OfLong withByteAlignment(long j10);

        @Override
        OfLong withOrder(ByteOrder byteOrder);
    }

    public interface OfShort extends ValueLayout {
        @Override
        OfShort withName(String str);

        @Override
        OfShort withoutName();

        @Override
        OfShort withByteAlignment(long j10);

        @Override
        OfShort withOrder(ByteOrder byteOrder);
    }

    ByteOrder order();

    ValueLayout withOrder(ByteOrder byteOrder);

    @Override
    ValueLayout withoutName();

    Class<?> carrier();

    @Override
    ValueLayout withName(String str);

    @Override
    ValueLayout withByteAlignment(long j10);

    VarHandle varHandle();
}
