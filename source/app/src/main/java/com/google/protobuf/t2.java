package com.google.protobuf;

import java.io.IOException;

@B
public class t2 extends q2<s2, s2> {
    @Override
    public s2 g(Object message) {
        return ((AbstractC12719v0) message).f69595c;
    }

    @Override
    public int h(s2 unknowns) {
        return unknowns.d();
    }

    @Override
    public int i(s2 unknowns) {
        return unknowns.e();
    }

    @Override
    public s2 k(s2 target, s2 source) {
        return s2.c().equals(source) ? target : s2.c().equals(target) ? s2.n(target, source) : target.k(source);
    }

    @Override
    public s2 n() {
        return s2.o();
    }

    @Override
    public void o(Object message, s2 fields) {
        p(message, fields);
    }

    @Override
    public void p(Object message, s2 fields) {
        ((AbstractC12719v0) message).f69595c = fields;
    }

    @Override
    public s2 r(s2 fields) {
        fields.h();
        return fields;
    }

    @Override
    public void s(s2 fields, C2 writer) throws IOException {
        fields.u(writer);
    }

    @Override
    public void t(s2 fields, C2 writer) throws IOException {
        fields.x(writer);
    }

    @Override
    public void j(Object message) {
        g(message).h();
    }

    @Override
    public boolean q(E1 reader) {
        return false;
    }

    @Override
    public void a(s2 fields, int number, int value) {
        fields.r(A2.c(number, 5), Integer.valueOf(value));
    }

    @Override
    public void b(s2 fields, int number, long value) {
        fields.r(A2.c(number, 1), Long.valueOf(value));
    }

    @Override
    public void c(s2 fields, int number, s2 subFieldSet) {
        fields.r(A2.c(number, 3), subFieldSet);
    }

    @Override
    public void d(s2 fields, int number, AbstractC12724x value) {
        fields.r(A2.c(number, 2), value);
    }

    @Override
    public void e(s2 fields, int number, long value) {
        fields.r(A2.c(number, 0), Long.valueOf(value));
    }

    @Override
    public s2 f(Object message) {
        s2 g10 = g(message);
        if (g10 != s2.c()) {
            return g10;
        }
        s2 o10 = s2.o();
        p(message, o10);
        return o10;
    }
}
