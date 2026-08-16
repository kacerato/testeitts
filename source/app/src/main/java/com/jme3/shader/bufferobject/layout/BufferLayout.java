package com.jme3.shader.bufferobject.layout;

import com.jme3.math.FastMath;
import com.jme3.shader.bufferobject.layout.BufferLayout;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public abstract class BufferLayout {
    protected List<ObjectSerializer<?>> serializers = new ArrayList();

    public static abstract class ObjectSerializer<T> {
        private Predicate<Object> filter;

        public ObjectSerializer(final Class<T> cls) {
            this((Predicate<Object>) new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$new$0;
                    lambda$new$0 = BufferLayout.ObjectSerializer.lambda$new$0(Class.this, obj);
                    return lambda$new$0;
                }
            });
        }

        public static boolean lambda$new$0(Class cls, Object obj) {
            return cls.isAssignableFrom(obj instanceof Class ? (Class) obj : obj.getClass());
        }

        public abstract int basicAlignment(BufferLayout bufferLayout, T t10);

        public final boolean canSerialize(Object obj) {
            return this.filter.test(obj);
        }

        public abstract int length(BufferLayout bufferLayout, T t10);

        public abstract void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, T t10);

        public ObjectSerializer(Predicate<Object> predicate) {
            this.filter = predicate;
        }
    }

    public int align(int i10, int i11) {
        return i10 == 0 ? i10 : FastMath.alignToPowerOfTwo(i10, i11);
    }

    public int estimateSize(Object obj) {
        return getSerializer(obj).length(this, obj);
    }

    public int getBasicAlignment(Object obj) {
        return getSerializer(obj).basicAlignment(this, obj);
    }

    public abstract String getId();

    public ObjectSerializer<?> getSerializer(Object obj) {
        for (int size = this.serializers.size() - 1; size >= 0; size--) {
            ObjectSerializer<?> objectSerializer = this.serializers.get(size);
            if (objectSerializer.canSerialize(obj)) {
                return objectSerializer;
            }
        }
        throw new RuntimeException("Serializer not found for " + obj + " of type " + ((Object) obj.getClass()));
    }

    public void registerSerializer(ObjectSerializer<?> objectSerializer) {
        this.serializers.add(objectSerializer);
    }

    public void write(ByteBuffer byteBuffer, Object obj) {
        getSerializer(obj).write(this, byteBuffer, obj);
    }
}
