package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;

public final class X1 extends AbstractC12722w0 implements Y1 {

    public static final long f69020d = 0;

    public static final int f69021e = 1;

    public static final X1 f69022f = new X1();

    public static final InterfaceC12723w1<X1> f69023g = new a();

    public S0<String, y2> f69024b;

    public byte f69025c;

    public class a extends AbstractC12661c<X1> {
        @Override
        public X1 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b z62 = X1.z6();
            try {
                z62.mergeFrom(input, extensionRegistry);
                return z62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(z62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(z62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(z62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements Y1 {

        public int f69026b;

        public S0<String, y2> f69027c;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return Z1.f69029a;
        }

        public b A6(String key, y2 value) {
            if (key == null) {
                throw new NullPointerException("map key");
            }
            if (value == null) {
                throw new NullPointerException("map value");
            }
            u6().m().put(key, value);
            this.f69026b |= 1;
            return this;
        }

        public b B6(String key) {
            if (key == null) {
                throw new NullPointerException("map key");
            }
            u6().m().remove(key);
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        @Override
        public X1 buildPartial() {
            X1 x12 = new X1(this, null);
            if (this.f69026b != 0) {
                v3(x12);
            }
            onBuilt();
            return x12;
        }

        @Override
        public y2 P2(String key, y2 defaultValue) {
            if (key == null) {
                throw new NullPointerException("map key");
            }
            Map<String, y2> j10 = t6().j();
            return j10.containsKey(key) ? j10.get(key) : defaultValue;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69026b = 0;
            u6().b();
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return Z1.f69029a;
        }

        @Override
        @Deprecated
        public Map<String, y2> getFields() {
            return s2();
        }

        @Override
        public int getFieldsCount() {
            return t6().j().size();
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return Z1.f69030b.d(X1.class, b.class);
        }

        @Override
        public S0 internalGetMapField(int number) {
            if (number == 1) {
                return t6();
            }
            throw new RuntimeException("Invalid map field number: " + number);
        }

        @Override
        public S0 internalGetMutableMapField(int number) {
            if (number == 1) {
                return u6();
            }
            throw new RuntimeException("Invalid map field number: " + number);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public y2 k3(String key) {
            if (key == null) {
                throw new NullPointerException("map key");
            }
            Map<String, y2> j10 = t6().j();
            if (j10.containsKey(key)) {
                return j10.get(key);
            }
            throw new IllegalArgumentException();
        }

        @Override
        public X1 build() {
            X1 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public boolean n5(String key) {
            if (key != null) {
                return t6().j().containsKey(key);
            }
            throw new NullPointerException("map key");
        }

        public b q6() {
            this.f69026b &= -2;
            u6().m().clear();
            return this;
        }

        @Override
        public X1 getDefaultInstanceForType() {
            return X1.w6();
        }

        @Override
        public Map<String, y2> s2() {
            return t6().j();
        }

        @Deprecated
        public Map<String, y2> s6() {
            this.f69026b |= 1;
            return u6().m();
        }

        public final S0<String, y2> t6() {
            S0<String, y2> s02 = this.f69027c;
            return s02 == null ? S0.h(c.f69028a) : s02;
        }

        public final S0<String, y2> u6() {
            if (this.f69027c == null) {
                this.f69027c = S0.q(c.f69028a);
            }
            if (!this.f69027c.n()) {
                this.f69027c = this.f69027c.g();
            }
            this.f69026b |= 1;
            onChanged();
            return this.f69027c;
        }

        public final void v3(X1 result) {
            if ((this.f69026b & 1) != 0) {
                result.f69024b = t6();
                result.f69024b.o();
            }
        }

        @Override
        public b mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
            extensionRegistry.getClass();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int Z10 = input.Z();
                        if (Z10 != 0) {
                            if (Z10 == 10) {
                                Q0 q02 = (Q0) input.I(c.f69028a.getParserForType(), extensionRegistry);
                                u6().m().put((String) q02.s6(), (y2) q02.u6());
                                this.f69026b |= 1;
                            } else if (!super.parseUnknownField(input, extensionRegistry, Z10)) {
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.unwrapIOException();
                    }
                } catch (Throwable th2) {
                    onChanged();
                    throw th2;
                }
            }
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof X1) {
                return x6((X1) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b x6(X1 other) {
            if (other == X1.w6()) {
                return this;
            }
            u6().p(other.y6());
            this.f69026b |= 1;
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b z6(Map<String, y2> values) {
            u6().m().putAll(values);
            this.f69026b |= 1;
            return this;
        }

        public b(a aVar) {
            this();
        }

        public b() {
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
        }
    }

    public static final class c {

        public static final Q0<String, y2> f69028a = Q0.x6(Z1.f69031c, A2.b.STRING, "", A2.b.MESSAGE, y2.w6());
    }

    public X1(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static b A6(X1 prototype) {
        return f69022f.toBuilder().x6(prototype);
    }

    public static X1 D6(InputStream input) throws IOException {
        return (X1) AbstractC12722w0.parseDelimitedWithIOException(f69023g, input);
    }

    public static X1 E6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (X1) AbstractC12722w0.parseDelimitedWithIOException(f69023g, input, extensionRegistry);
    }

    public static X1 F6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69023g.parseFrom(data);
    }

    public static X1 G6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69023g.parseFrom(data, extensionRegistry);
    }

    public static X1 H6(C input) throws IOException {
        return (X1) AbstractC12722w0.parseWithIOException(f69023g, input);
    }

    public static X1 I6(C input, C12666d0 extensionRegistry) throws IOException {
        return (X1) AbstractC12722w0.parseWithIOException(f69023g, input, extensionRegistry);
    }

    public static X1 J6(InputStream input) throws IOException {
        return (X1) AbstractC12722w0.parseWithIOException(f69023g, input);
    }

    public static X1 K6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (X1) AbstractC12722w0.parseWithIOException(f69023g, input, extensionRegistry);
    }

    public static X1 L6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69023g.parseFrom(data);
    }

    public static X1 M6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69023g.parseFrom(data, extensionRegistry);
    }

    public static X1 N6(byte[] data) throws InvalidProtocolBufferException {
        return f69023g.parseFrom(data);
    }

    public static X1 O6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69023g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return Z1.f69029a;
    }

    public static InterfaceC12723w1<X1> parser() {
        return f69023g;
    }

    public static X1 w6() {
        return f69022f;
    }

    public S0<String, y2> y6() {
        S0<String, y2> s02 = this.f69024b;
        return s02 == null ? S0.h(c.f69028a) : s02;
    }

    public static b z6() {
        return f69022f.toBuilder();
    }

    @Override
    public b newBuilderForType() {
        return z6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public y2 P2(String key, y2 defaultValue) {
        if (key == null) {
            throw new NullPointerException("map key");
        }
        Map<String, y2> j10 = y6().j();
        return j10.containsKey(key) ? j10.get(key) : defaultValue;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69022f ? new b(aVar) : new b(aVar).x6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X1)) {
            return super.equals(obj);
        }
        X1 x12 = (X1) obj;
        return y6().equals(x12.y6()) && getUnknownFields().equals(x12.getUnknownFields());
    }

    @Override
    @Deprecated
    public Map<String, y2> getFields() {
        return s2();
    }

    @Override
    public int getFieldsCount() {
        return y6().j().size();
    }

    @Override
    public InterfaceC12723w1<X1> getParserForType() {
        return f69023g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (Map.Entry<String, y2> entry : y6().j().entrySet()) {
            i11 += CodedOutputStream.F0(1, c.f69028a.newBuilderForType().w6(entry.getKey()).z6(entry.getValue()).build());
        }
        int serializedSize = i11 + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (!y6().j().isEmpty()) {
            hashCode = (((hashCode * 37) + 1) * 53) + y6().hashCode();
        }
        int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return Z1.f69030b.d(X1.class, b.class);
    }

    @Override
    public S0 internalGetMapField(int number) {
        if (number == 1) {
            return y6();
        }
        throw new RuntimeException("Invalid map field number: " + number);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69025c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69025c = (byte) 1;
        return true;
    }

    @Override
    public y2 k3(String key) {
        if (key == null) {
            throw new NullPointerException("map key");
        }
        Map<String, y2> j10 = y6().j();
        if (j10.containsKey(key)) {
            return j10.get(key);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public boolean n5(String key) {
        if (key != null) {
            return y6().j().containsKey(key);
        }
        throw new NullPointerException("map key");
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new X1();
    }

    @Override
    public Map<String, y2> s2() {
        return y6().j();
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        AbstractC12722w0.serializeStringMapTo(output, y6(), c.f69028a, 1);
        getUnknownFields().writeTo(output);
    }

    @Override
    public X1 getDefaultInstanceForType() {
        return f69022f;
    }

    public X1(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69025c = (byte) -1;
    }

    public X1() {
        this.f69025c = (byte) -1;
    }
}
