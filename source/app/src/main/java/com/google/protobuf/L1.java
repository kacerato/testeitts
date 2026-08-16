package com.google.protobuf;

import com.google.protobuf.C12692m;
import java.io.IOException;

@B
public interface L1<T> {
    boolean I1(T message, T other);

    void J1(T message, C2 writer) throws IOException;

    boolean K1(T message);

    void L1(T message, byte[] data, int position, int limit, C12692m.b registers) throws IOException;

    void M1(T message);

    int N1(T message);

    int O1(T message);

    void P1(T message, E1 reader, C12666d0 extensionRegistry) throws IOException;

    T a();

    void b(T message, T other);
}
