package com.google.protobuf;

import com.google.protobuf.R0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@B
public interface C2 {

    public enum a {
        ASCENDING,
        DESCENDING
    }

    void A(int fieldNumber, List<String> value) throws IOException;

    @Deprecated
    void B(int fieldNumber, Object value, L1 schema) throws IOException;

    void C(int fieldNumber, long value) throws IOException;

    void D(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    void E(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    @Deprecated
    void F(int fieldNumber, List<?> value, L1 schema) throws IOException;

    void G(int fieldNumber, double value) throws IOException;

    void H(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    void I(int fieldNumber, Object value, L1 schema) throws IOException;

    a J();

    void K(int fieldNumber, Object value) throws IOException;

    void L(int fieldNumber, long value) throws IOException;

    void M(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    void N(int fieldNumber, List<Boolean> value, boolean packed) throws IOException;

    @Deprecated
    void O(int fieldNumber, Object value) throws IOException;

    void P(int fieldNumber, float value) throws IOException;

    void Q(int fieldNumber, int value) throws IOException;

    void R(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    void S(int fieldNumber, int value) throws IOException;

    void a(int fieldNumber, List<Float> value, boolean packed) throws IOException;

    void b(int fieldNumber, Object value) throws IOException;

    void c(int fieldNumber, int value) throws IOException;

    @Deprecated
    void d(int fieldNumber, List<?> value) throws IOException;

    void e(int fieldNumber, String value) throws IOException;

    void f(int fieldNumber, long value) throws IOException;

    void g(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    void h(int fieldNumber, AbstractC12724x value) throws IOException;

    void i(int fieldNumber, int value) throws IOException;

    void j(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    void k(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    void l(int fieldNumber, long value) throws IOException;

    void m(int fieldNumber, int value) throws IOException;

    void n(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    void o(int fieldNumber, long value) throws IOException;

    void p(int fieldNumber, List<?> value) throws IOException;

    void q(int fieldNumber, boolean value) throws IOException;

    void r(int fieldNumber, int value) throws IOException;

    @Deprecated
    void s(int fieldNumber) throws IOException;

    void t(int fieldNumber, List<Long> value, boolean packed) throws IOException;

    <K, V> void u(int fieldNumber, R0.b<K, V> metadata, Map<K, V> map) throws IOException;

    @Deprecated
    void v(int fieldNumber) throws IOException;

    void w(int fieldNumber, List<Integer> value, boolean packed) throws IOException;

    void x(int fieldNumber, List<Double> value, boolean packed) throws IOException;

    void y(int fieldNumber, List<AbstractC12724x> value) throws IOException;

    void z(int fieldNumber, List<?> value, L1 schema) throws IOException;
}
