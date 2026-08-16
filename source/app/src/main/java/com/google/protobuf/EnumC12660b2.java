package com.google.protobuf;

import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;

public enum EnumC12660b2 implements B1 {
    SYNTAX_PROTO2(0),
    SYNTAX_PROTO3(1),
    UNRECOGNIZED(-1);

    public static final int SYNTAX_PROTO2_VALUE = 0;
    public static final int SYNTAX_PROTO3_VALUE = 1;
    private final int value;
    private static final D0.d<EnumC12660b2> internalValueMap = new D0.d<EnumC12660b2>() {
        @Override
        public EnumC12660b2 findValueByNumber(int number) {
            return EnumC12660b2.a(number);
        }
    };
    private static final EnumC12660b2[] VALUES = values();

    EnumC12660b2(int value) {
        this.value = value;
    }

    public static EnumC12660b2 a(int value) {
        if (value == 0) {
            return SYNTAX_PROTO2;
        }
        if (value != 1) {
            return null;
        }
        return SYNTAX_PROTO3;
    }

    public static final Descriptors.d b() {
        return k2.a().s().get(0);
    }

    public static D0.d<EnumC12660b2> c() {
        return internalValueMap;
    }

    @Deprecated
    public static EnumC12660b2 e(int value) {
        return a(value);
    }

    public static EnumC12660b2 g(Descriptors.e desc) {
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
