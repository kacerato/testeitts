package com.google.protobuf;

import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;

public enum EnumC12711s1 implements B1 {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public static final int NULL_VALUE_VALUE = 0;
    private final int value;
    private static final D0.d<EnumC12711s1> internalValueMap = new D0.d<EnumC12711s1>() {
        @Override
        public EnumC12711s1 findValueByNumber(int number) {
            return EnumC12711s1.a(number);
        }
    };
    private static final EnumC12711s1[] VALUES = values();

    EnumC12711s1(int value) {
        this.value = value;
    }

    public static EnumC12711s1 a(int value) {
        if (value != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    public static final Descriptors.d b() {
        return Z1.a().s().get(0);
    }

    public static D0.d<EnumC12711s1> c() {
        return internalValueMap;
    }

    @Deprecated
    public static EnumC12711s1 e(int value) {
        return a(value);
    }

    public static EnumC12711s1 g(Descriptors.e desc) {
        if (desc.i() == b()) {
            return desc.g() == -1 ? UNRECOGNIZED : VALUES[desc.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }

    @Override
    public final Descriptors.d getDescriptorForType() {
        return b();
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override
    public final Descriptors.e getValueDescriptor() {
        if (this != UNRECOGNIZED) {
            return b().t().get(ordinal());
        }
        throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
    }
}
