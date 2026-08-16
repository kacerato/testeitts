package com.google.protobuf;

import com.google.protobuf.R0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@B
public interface E1 {

    public static final int f68043a = Integer.MAX_VALUE;

    public static final int f68044b = 0;

    void A(List<Integer> target) throws IOException;

    @Deprecated
    <T> void B(List<T> target, L1<T> targetType, C12666d0 extensionRegistry) throws IOException;

    boolean C() throws IOException;

    <T> void D(List<T> target, L1<T> schema, C12666d0 extensionRegistry) throws IOException;

    void E(List<Long> target) throws IOException;

    void F(List<Long> target) throws IOException;

    void G(List<Integer> target) throws IOException;

    @Deprecated
    <T> T H(Class<T> clazz, C12666d0 extensionRegistry) throws IOException;

    void I(List<String> target) throws IOException;

    int J() throws IOException;

    void K(List<Long> target) throws IOException;

    void L(List<Integer> target) throws IOException;

    <T> T M(Class<T> clazz, C12666d0 extensionRegistry) throws IOException;

    int N() throws IOException;

    @Deprecated
    <T> void O(List<T> target, Class<T> targetType, C12666d0 extensionRegistry) throws IOException;

    long P() throws IOException;

    String Q() throws IOException;

    <T> T R(L1<T> schema, C12666d0 extensionRegistry) throws IOException;

    int S() throws IOException;

    String T() throws IOException;

    void a(List<Long> target) throws IOException;

    long b() throws IOException;

    int c() throws IOException;

    int d() throws IOException;

    int e() throws IOException;

    void f(List<Boolean> target) throws IOException;

    <K, V> void g(Map<K, V> target, R0.b<K, V> mapDefaultEntry, C12666d0 extensionRegistry) throws IOException;

    int getTag();

    AbstractC12724x h() throws IOException;

    void i(List<Integer> target) throws IOException;

    long j() throws IOException;

    <T> void k(T target, L1<T> schema, C12666d0 extensionRegistry) throws IOException;

    @Deprecated
    <T> T l(L1<T> schema, C12666d0 extensionRegistry) throws IOException;

    <T> void m(List<T> target, Class<T> targetType, C12666d0 extensionRegistry) throws IOException;

    void n(List<Long> target) throws IOException;

    void o(List<Integer> target) throws IOException;

    void p(List<Integer> target) throws IOException;

    int q() throws IOException;

    void r(List<String> target) throws IOException;

    double readDouble() throws IOException;

    float readFloat() throws IOException;

    <T> void s(T target, L1<T> schema, C12666d0 extensionRegistry) throws IOException;

    void t(List<Float> target) throws IOException;

    boolean u();

    boolean v() throws IOException;

    void w(List<AbstractC12724x> target) throws IOException;

    void x(List<Double> target) throws IOException;

    long y() throws IOException;

    long z() throws IOException;
}
