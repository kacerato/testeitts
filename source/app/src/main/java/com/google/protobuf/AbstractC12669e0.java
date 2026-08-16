package com.google.protobuf;

import com.google.protobuf.C12699o0;
import com.google.protobuf.C12699o0.c;
import java.io.IOException;
import java.util.Map;

@B
public abstract class AbstractC12669e0<T extends C12699o0.c<T>> {
    public abstract int a(Map.Entry<?, ?> extension);

    public abstract Object b(C12666d0 extensionRegistry, InterfaceC12659b1 defaultInstance, int number);

    public abstract C12699o0<T> c(Object message);

    public abstract C12699o0<T> d(Object message);

    public abstract boolean e(InterfaceC12659b1 prototype);

    public abstract void f(Object message);

    public abstract <UT, UB> UB g(Object containerMessage, E1 reader, Object extension, C12666d0 extensionRegistry, C12699o0<T> extensions, UB unknownFields, q2<UT, UB> unknownFieldSchema) throws IOException;

    public abstract void h(E1 reader, Object extension, C12666d0 extensionRegistry, C12699o0<T> extensions) throws IOException;

    public abstract void i(AbstractC12724x data, Object extension, C12666d0 extensionRegistry, C12699o0<T> extensions) throws IOException;

    public abstract void j(C2 writer, Map.Entry<?, ?> extension) throws IOException;

    public abstract void k(Object message, C12699o0<T> extensions);
}
