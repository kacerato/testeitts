package com.google.protobuf;

import com.google.protobuf.r2;
import java.io.IOException;

public class u2 extends q2<r2, r2.b> {

    public final boolean f69582a;

    public u2(boolean proto3) {
        this.f69582a = proto3;
    }

    @Override
    public r2 g(Object message) {
        return ((AbstractC12722w0) message).unknownFields;
    }

    @Override
    public int h(r2 message) {
        return message.getSerializedSize();
    }

    @Override
    public int i(r2 unknowns) {
        return unknowns.m1();
    }

    @Override
    public r2 k(r2 message, r2 other) {
        return message.toBuilder().B6(other).build();
    }

    @Override
    public r2.b n() {
        return r2.Q1();
    }

    @Override
    public void o(Object message, r2.b builder) {
        ((AbstractC12722w0) message).unknownFields = builder.build();
    }

    @Override
    public void p(Object message, r2 fields) {
        ((AbstractC12722w0) message).unknownFields = fields;
    }

    @Override
    public r2 r(r2.b fields) {
        return fields.build();
    }

    @Override
    public void s(r2 message, C2 writer) throws IOException {
        message.q6(writer);
    }

    @Override
    public void t(r2 message, C2 writer) throws IOException {
        message.r6(writer);
    }

    @Override
    public void j(Object message) {
    }

    @Override
    public boolean q(E1 reader) {
        return reader.u();
    }

    @Override
    public void a(r2.b fields, int number, int value) {
        fields.u6(number, r2.c.u().b(value).g());
    }

    @Override
    public void b(r2.b fields, int number, long value) {
        fields.u6(number, r2.c.u().c(value).g());
    }

    @Override
    public void c(r2.b fields, int number, r2 subFieldSet) {
        fields.u6(number, r2.c.u().d(subFieldSet).g());
    }

    @Override
    public void d(r2.b fields, int number, AbstractC12724x value) {
        fields.u6(number, r2.c.u().e(value).g());
    }

    @Override
    public void e(r2.b fields, int number, long value) {
        fields.u6(number, r2.c.u().f(value).g());
    }

    @Override
    public r2.b f(Object message) {
        return ((AbstractC12722w0) message).unknownFields.toBuilder();
    }
}
