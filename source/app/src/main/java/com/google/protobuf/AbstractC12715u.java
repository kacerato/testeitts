package com.google.protobuf;

import java.nio.ByteBuffer;

@B
public abstract class AbstractC12715u {

    public static final AbstractC12715u f69568a = new a();

    public class a extends AbstractC12715u {
        @Override
        public AbstractC12668e a(int capacity) {
            return AbstractC12668e.j(ByteBuffer.allocateDirect(capacity));
        }

        @Override
        public AbstractC12668e b(int capacity) {
            return AbstractC12668e.k(new byte[capacity]);
        }
    }

    public static AbstractC12715u c() {
        return f69568a;
    }

    public abstract AbstractC12668e a(int capacity);

    public abstract AbstractC12668e b(int capacity);
}
