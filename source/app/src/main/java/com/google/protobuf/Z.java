package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.InterfaceC12659b1;

public abstract class Z<ContainingType extends InterfaceC12659b1, Type> extends AbstractC12654a0<ContainingType, Type> {

    public enum a {
        IMMUTABLE,
        MUTABLE,
        PROTO1
    }

    public enum b {
        PROTO1,
        PROTO2
    }

    @Override
    public final boolean e() {
        return false;
    }

    public abstract Object g(Object value);

    public abstract Descriptors.f h();

    public abstract a i();

    @Override
    public abstract Y0 c();

    public b k() {
        return b.PROTO2;
    }

    public abstract Object l(Object value);

    public abstract Object m(Object value);

    public abstract Object n(Object value);
}
