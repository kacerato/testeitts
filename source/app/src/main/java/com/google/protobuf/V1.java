package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class V1 extends AbstractC12722w0 implements W1 {

    public static final long f68995d = 0;

    public static final int f68996e = 1;

    public static final V1 f68997f = new V1();

    public static final InterfaceC12723w1<V1> f68998g = new a();

    public volatile Object f68999b;

    public byte f69000c;

    public class a extends AbstractC12661c<V1> {
        @Override
        public V1 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b x62 = V1.x6();
            try {
                x62.mergeFrom(input, extensionRegistry);
                return x62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(x62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(x62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(x62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements W1 {

        public int f69001b;

        public Object f69002c;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67823o;
        }

        @Override
        public V1 buildPartial() {
            V1 v12 = new V1(this, null);
            if (this.f69001b != 0) {
                v3(v12);
            }
            onBuilt();
            return v12;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69001b = 0;
            this.f69002c = "";
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67823o;
        }

        @Override
        public String getValue() {
            Object obj = this.f69002c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69002c = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getValueBytes() {
            Object obj = this.f69002c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69002c = w10;
            return w10;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67824p.d(V1.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public V1 build() {
            V1 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69002c = V1.v6().getValue();
            this.f69001b &= -2;
            onChanged();
            return this;
        }

        @Override
        public V1 getDefaultInstanceForType() {
            return V1.v6();
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
                                this.f69002c = input.Y();
                                this.f69001b |= 1;
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
            if (other instanceof V1) {
                return u6((V1) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b u6(V1 other) {
            if (other == V1.v6()) {
                return this;
            }
            if (!other.getValue().isEmpty()) {
                this.f69002c = other.f68999b;
                this.f69001b |= 1;
                onChanged();
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public final void v3(V1 result) {
            if ((this.f69001b & 1) != 0) {
                result.f68999b = this.f69002c;
            }
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        public b x6(String value) {
            value.getClass();
            this.f69002c = value;
            this.f69001b |= 1;
            onChanged();
            return this;
        }

        public b y6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69002c = value;
            this.f69001b |= 1;
            onChanged();
            return this;
        }

        public b(a aVar) {
            this();
        }

        public b() {
            this.f69002c = "";
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69002c = "";
        }
    }

    public V1(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static V1 B6(String value) {
        return x6().x6(value).build();
    }

    public static V1 C6(InputStream input) throws IOException {
        return (V1) AbstractC12722w0.parseDelimitedWithIOException(f68998g, input);
    }

    public static V1 D6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (V1) AbstractC12722w0.parseDelimitedWithIOException(f68998g, input, extensionRegistry);
    }

    public static V1 E6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f68998g.parseFrom(data);
    }

    public static V1 F6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68998g.parseFrom(data, extensionRegistry);
    }

    public static V1 G6(C input) throws IOException {
        return (V1) AbstractC12722w0.parseWithIOException(f68998g, input);
    }

    public static V1 H6(C input, C12666d0 extensionRegistry) throws IOException {
        return (V1) AbstractC12722w0.parseWithIOException(f68998g, input, extensionRegistry);
    }

    public static V1 I6(InputStream input) throws IOException {
        return (V1) AbstractC12722w0.parseWithIOException(f68998g, input);
    }

    public static V1 J6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (V1) AbstractC12722w0.parseWithIOException(f68998g, input, extensionRegistry);
    }

    public static V1 K6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f68998g.parseFrom(data);
    }

    public static V1 L6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68998g.parseFrom(data, extensionRegistry);
    }

    public static V1 M6(byte[] data) throws InvalidProtocolBufferException {
        return f68998g.parseFrom(data);
    }

    public static V1 N6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68998g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67823o;
    }

    public static InterfaceC12723w1<V1> parser() {
        return f68998g;
    }

    public static V1 v6() {
        return f68997f;
    }

    public static b x6() {
        return f68997f.toBuilder();
    }

    public static b y6(V1 prototype) {
        return f68997f.toBuilder().u6(prototype);
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f68997f ? new b(aVar) : new b(aVar).u6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof V1)) {
            return super.equals(obj);
        }
        V1 v12 = (V1) obj;
        return getValue().equals(v12.getValue()) && getUnknownFields().equals(v12.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<V1> getParserForType() {
        return f68998g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (!AbstractC12722w0.isStringEmpty(this.f68999b) ? AbstractC12722w0.computeStringSize(1, this.f68999b) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = computeStringSize;
        return computeStringSize;
    }

    @Override
    public String getValue() {
        Object obj = this.f68999b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f68999b = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getValueBytes() {
        Object obj = this.f68999b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f68999b = w10;
        return w10;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getValue().hashCode()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return B2.f67824p.d(V1.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69000c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69000c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new V1();
    }

    @Override
    public V1 getDefaultInstanceForType() {
        return f68997f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f68999b)) {
            AbstractC12722w0.writeString(output, 1, this.f68999b);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public b newBuilderForType() {
        return x6();
    }

    public V1(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f68999b = "";
        this.f69000c = (byte) -1;
    }

    public V1() {
        this.f68999b = "";
        this.f69000c = (byte) -1;
        this.f68999b = "";
    }
}
