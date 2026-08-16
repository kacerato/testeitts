package com.google.protobuf;

import java.io.IOException;

@B
public abstract class q2<T, B> {
    public abstract void a(B fields, int number, int value);

    public abstract void b(B fields, int number, long value);

    public abstract void c(B fields, int number, T subFieldSet);

    public abstract void d(B fields, int number, AbstractC12724x value);

    public abstract void e(B fields, int number, long value);

    public abstract B f(Object message);

    public abstract T g(Object message);

    public abstract int h(T unknowns);

    public abstract int i(T message);

    public abstract void j(Object message);

    public abstract T k(T destination, T source);

    public final void l(B unknownFields, E1 reader) throws IOException {
        while (reader.q() != Integer.MAX_VALUE && m(unknownFields, reader)) {
        }
    }

    public final boolean m(B unknownFields, E1 reader) throws IOException {
        int tag = reader.getTag();
        int a10 = A2.a(tag);
        int b10 = A2.b(tag);
        if (b10 == 0) {
            e(unknownFields, a10, reader.y());
            return true;
        }
        if (b10 == 1) {
            b(unknownFields, a10, reader.z());
            return true;
        }
        if (b10 == 2) {
            d(unknownFields, a10, reader.h());
            return true;
        }
        if (b10 != 3) {
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            a(unknownFields, a10, reader.N());
            return true;
        }
        B n10 = n();
        int c10 = A2.c(a10, 4);
        l(n10, reader);
        if (c10 != reader.getTag()) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        c(unknownFields, a10, r(n10));
        return true;
    }

    public abstract B n();

    public abstract void o(Object message, B builder);

    public abstract void p(Object message, T fields);

    public abstract boolean q(E1 reader);

    public abstract T r(B fields);

    public abstract void s(T unknownFields, C2 writer) throws IOException;

    public abstract void t(T unknownFields, C2 writer) throws IOException;
}
