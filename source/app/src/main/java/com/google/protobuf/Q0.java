package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.Descriptors;
import com.google.protobuf.R0;
import com.google.protobuf.Y0;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class Q0<K, V> extends AbstractC12653a {

    public final K f68839b;

    public final V f68840c;

    public final c<K, V> f68841d;

    public volatile int f68842e;

    public static final class c<K, V> extends R0.b<K, V> {

        public final Descriptors.b f68848e;

        public final InterfaceC12723w1<Q0<K, V>> f68849f;

        public class a extends AbstractC12661c<Q0<K, V>> {
            public a() {
            }

            @Override
            public Q0<K, V> parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
                return new Q0<>(c.this, input, extensionRegistry);
            }
        }

        public c(Descriptors.b descriptor, Q0<K, V> defaultInstance, A2.b keyType, A2.b valueType) {
            super(keyType, defaultInstance.f68839b, valueType, defaultInstance.f68840c);
            this.f68848e = descriptor;
            this.f68849f = new a();
        }
    }

    private void q6(Descriptors.f field) {
        if (field.q() == this.f68841d.f68848e) {
            return;
        }
        throw new RuntimeException("Wrong FieldDescriptor \"" + field.b() + "\" used in message \"" + this.f68841d.f68848e.b());
    }

    public static <V> boolean v6(c metadata, V value) {
        if (metadata.f68863c.a() == A2.c.MESSAGE) {
            return ((InterfaceC12659b1) value).isInitialized();
        }
        return true;
    }

    public static <K, V> Q0<K, V> x6(Descriptors.b descriptor, A2.b keyType, K defaultKey, A2.b valueType, V defaultValue) {
        return new Q0<>(descriptor, keyType, defaultKey, valueType, defaultValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Map<Descriptors.f, Object> getAllFields() {
        TreeMap treeMap = new TreeMap();
        for (Descriptors.f fVar : this.f68841d.f68848e.s()) {
            if (hasField(fVar)) {
                treeMap.put(fVar, getField(fVar));
            }
        }
        return Collections.unmodifiableMap(treeMap);
    }

    @Override
    public Descriptors.b getDescriptorForType() {
        return this.f68841d.f68848e;
    }

    @Override
    public Object getField(Descriptors.f field) {
        q6(field);
        Object s62 = field.getNumber() == 1 ? s6() : u6();
        return field.A() == Descriptors.f.c.ENUM ? field.W1().k(((Integer) s62).intValue()) : s62;
    }

    @Override
    public InterfaceC12723w1<Q0<K, V>> getParserForType() {
        return this.f68841d.f68849f;
    }

    @Override
    public Object getRepeatedField(Descriptors.f field, int index) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override
    public int getRepeatedFieldCount(Descriptors.f field) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override
    public int getSerializedSize() {
        if (this.f68842e != -1) {
            return this.f68842e;
        }
        int b10 = R0.b(this.f68841d, this.f68839b, this.f68840c);
        this.f68842e = b10;
        return b10;
    }

    @Override
    public r2 getUnknownFields() {
        return r2.b0();
    }

    @Override
    public boolean hasField(Descriptors.f field) {
        q6(field);
        return true;
    }

    @Override
    public boolean isInitialized() {
        return v6(this.f68841d, this.f68840c);
    }

    @Override
    public Q0<K, V> getDefaultInstanceForType() {
        c<K, V> cVar = this.f68841d;
        return new Q0<>(cVar, cVar.f68862b, cVar.f68864d);
    }

    public K s6() {
        return this.f68839b;
    }

    public final c<K, V> t6() {
        return this.f68841d;
    }

    public V u6() {
        return this.f68840c;
    }

    @Override
    public b<K, V> newBuilderForType() {
        return new b<>(this.f68841d);
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        R0.l(output, this.f68841d, this.f68839b, this.f68840c);
    }

    @Override
    public b<K, V> toBuilder() {
        return new b<>(this.f68841d, this.f68839b, this.f68840c, true, true);
    }

    public static class b<K, V> extends AbstractC12653a.AbstractC1035a<b<K, V>> {

        public final c<K, V> f68843b;

        public K f68844c;

        public V f68845d;

        public boolean f68846e;

        public boolean f68847f;

        public final void I1(Descriptors.f field) {
            if (field.q() == this.f68843b.f68848e) {
                return;
            }
            throw new RuntimeException("Wrong FieldDescriptor \"" + field.b() + "\" used in message \"" + this.f68843b.f68848e.b());
        }

        @Override
        public b<K, V> addRepeatedField(Descriptors.f field, Object value) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override
        public Q0<K, V> build() {
            Q0<K, V> buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b<K, V> a5() {
            this.f68844c = this.f68843b.f68862b;
            this.f68846e = false;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Map<Descriptors.f, Object> getAllFields() {
            TreeMap treeMap = new TreeMap();
            for (Descriptors.f fVar : this.f68843b.f68848e.s()) {
                if (hasField(fVar)) {
                    treeMap.put(fVar, getField(fVar));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return this.f68843b.f68848e;
        }

        @Override
        public Object getField(Descriptors.f field) {
            I1(field);
            Object t62 = field.getNumber() == 1 ? t6() : u6();
            return field.A() == Descriptors.f.c.ENUM ? field.W1().k(((Integer) t62).intValue()) : t62;
        }

        @Override
        public Object getRepeatedField(Descriptors.f field, int index) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override
        public int getRepeatedFieldCount(Descriptors.f field) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override
        public r2 getUnknownFields() {
            return r2.b0();
        }

        @Override
        public boolean hasField(Descriptors.f field) {
            I1(field);
            return field.getNumber() == 1 ? this.f68846e : this.f68847f;
        }

        @Override
        public boolean isInitialized() {
            return Q0.v6(this.f68843b, this.f68845d);
        }

        @Override
        public Q0<K, V> buildPartial() {
            return new Q0<>(this.f68843b, this.f68844c, this.f68845d);
        }

        @Override
        public Y0.a newBuilderForField(Descriptors.f field) {
            I1(field);
            if (field.getNumber() == 2 && field.v() == Descriptors.f.b.MESSAGE) {
                return ((Y0) this.f68845d).newBuilderForType();
            }
            throw new RuntimeException(JavadocConstants.ANCHOR_PREFIX_END + field.b() + "\" is not a message value field.");
        }

        public b<K, V> q6() {
            this.f68845d = this.f68843b.f68864d;
            this.f68847f = false;
            return this;
        }

        @Override
        public b<K, V> mo1246clone() {
            return new b<>(this.f68843b, this.f68844c, this.f68845d, this.f68846e, this.f68847f);
        }

        @Override
        public Q0<K, V> getDefaultInstanceForType() {
            c<K, V> cVar = this.f68843b;
            return new Q0<>(cVar, cVar.f68862b, cVar.f68864d);
        }

        public K t6() {
            return this.f68844c;
        }

        public V u6() {
            return this.f68845d;
        }

        @Override
        public b<K, V> clearField(Descriptors.f field) {
            I1(field);
            if (field.getNumber() == 1) {
                a5();
            } else {
                q6();
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public b<K, V> setField(Descriptors.f field, Object value) {
            I1(field);
            if (value == null) {
                throw new NullPointerException(field.b() + " is null");
            }
            if (field.getNumber() == 1) {
                w6(value);
            } else {
                if (field.A() == Descriptors.f.c.ENUM) {
                    value = Integer.valueOf(((Descriptors.e) value).getNumber());
                } else if (field.A() == Descriptors.f.c.MESSAGE && !this.f68843b.f68864d.getClass().isInstance(value)) {
                    value = ((Y0) this.f68843b.f68864d).toBuilder().mergeFrom((Y0) value).build();
                }
                z6(value);
            }
            return this;
        }

        public b<K, V> w6(K key) {
            this.f68844c = key;
            this.f68846e = true;
            return this;
        }

        @Override
        public b<K, V> setRepeatedField(Descriptors.f field, int index, Object value) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override
        public b<K, V> setUnknownFields(r2 unknownFields) {
            return this;
        }

        public b<K, V> z6(V value) {
            this.f68845d = value;
            this.f68847f = true;
            return this;
        }

        public b(c<K, V> metadata) {
            this(metadata, metadata.f68862b, metadata.f68864d, false, false);
        }

        public b(c<K, V> metadata, K key, V value, boolean hasKey, boolean hasValue) {
            this.f68843b = metadata;
            this.f68844c = key;
            this.f68845d = value;
            this.f68846e = hasKey;
            this.f68847f = hasValue;
        }
    }

    public Q0(Descriptors.b descriptor, A2.b keyType, K defaultKey, A2.b valueType, V defaultValue) {
        this.f68842e = -1;
        this.f68839b = defaultKey;
        this.f68840c = defaultValue;
        this.f68841d = new c<>(descriptor, this, keyType, valueType);
    }

    public Q0(c metadata, K key, V value) {
        this.f68842e = -1;
        this.f68839b = key;
        this.f68840c = value;
        this.f68841d = metadata;
    }

    public Q0(c<K, V> cVar, C c10, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        this.f68842e = -1;
        try {
            this.f68841d = cVar;
            Map.Entry h10 = R0.h(c10, cVar, c12666d0);
            this.f68839b = (K) h10.getKey();
            this.f68840c = (V) h10.getValue();
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(this);
        } catch (IOException e11) {
            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
        }
    }
}
