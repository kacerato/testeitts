package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class K extends AbstractC12722w0 implements L {

    public static final long f68775d = 0;

    public static final int f68776e = 1;

    public static final K f68777f = new K();

    public static final InterfaceC12723w1<K> f68778g = new a();

    public double f68779b;

    public byte f68780c;

    public class a extends AbstractC12661c<K> {
        @Override
        public K parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b w62 = K.w6();
            try {
                w62.mergeFrom(input, extensionRegistry);
                return w62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(w62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(w62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(w62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements L {

        public int f68781b;

        public double f68782c;

        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67809a;
        }

        @Override
        public K buildPartial() {
            K k10 = new K(this, null);
            if (this.f68781b != 0) {
                v3(k10);
            }
            onBuilt();
            return k10;
        }

        @Override
        public b s6() {
            super.s6();
            this.f68781b = 0;
            this.f68782c = 0.0d;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67809a;
        }

        @Override
        public double getValue() {
            return this.f68782c;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67810b.d(K.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public K build() {
            K buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f68781b &= -2;
            this.f68782c = 0.0d;
            onChanged();
            return this;
        }

        @Override
        public K getDefaultInstanceForType() {
            return K.u6();
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
                            if (Z10 == 9) {
                                this.f68782c = input.z();
                                this.f68781b |= 1;
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

        public b t6(K other) {
            if (other == K.u6()) {
                return this;
            }
            if (other.getValue() != 0.0d) {
                x6(other.getValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof K) {
                return t6((K) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public final void v3(K result) {
            if ((this.f68781b & 1) != 0) {
                result.f68779b = this.f68782c;
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

        public b x6(double value) {
            this.f68782c = value;
            this.f68781b |= 1;
            onChanged();
            return this;
        }

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public b() {
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
        }
    }

    public K(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static K A6(double value) {
        return w6().x6(value).build();
    }

    public static K B6(InputStream input) throws IOException {
        return (K) AbstractC12722w0.parseDelimitedWithIOException(f68778g, input);
    }

    public static K C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (K) AbstractC12722w0.parseDelimitedWithIOException(f68778g, input, extensionRegistry);
    }

    public static K D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f68778g.parseFrom(data);
    }

    public static K E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68778g.parseFrom(data, extensionRegistry);
    }

    public static K F6(C input) throws IOException {
        return (K) AbstractC12722w0.parseWithIOException(f68778g, input);
    }

    public static K G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (K) AbstractC12722w0.parseWithIOException(f68778g, input, extensionRegistry);
    }

    public static K H6(InputStream input) throws IOException {
        return (K) AbstractC12722w0.parseWithIOException(f68778g, input);
    }

    public static K I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (K) AbstractC12722w0.parseWithIOException(f68778g, input, extensionRegistry);
    }

    public static K J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f68778g.parseFrom(data);
    }

    public static K K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68778g.parseFrom(data, extensionRegistry);
    }

    public static K L6(byte[] data) throws InvalidProtocolBufferException {
        return f68778g.parseFrom(data);
    }

    public static K M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68778g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67809a;
    }

    public static InterfaceC12723w1<K> parser() {
        return f68778g;
    }

    public static K u6() {
        return f68777f;
    }

    public static b w6() {
        return f68777f.toBuilder();
    }

    public static b x6(K prototype) {
        return f68777f.toBuilder().t6(prototype);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f68777f ? new b(aVar) : new b(aVar).t6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof K)) {
            return super.equals(obj);
        }
        K k10 = (K) obj;
        return Double.doubleToLongBits(getValue()) == Double.doubleToLongBits(k10.getValue()) && getUnknownFields().equals(k10.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<K> getParserForType() {
        return f68778g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i02 = (Double.doubleToRawLongBits(this.f68779b) != 0 ? CodedOutputStream.i0(1, this.f68779b) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = i02;
        return i02;
    }

    @Override
    public double getValue() {
        return this.f68779b;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + D0.s(Double.doubleToLongBits(getValue()))) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return B2.f67810b.d(K.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f68780c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f68780c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new K();
    }

    @Override
    public K getDefaultInstanceForType() {
        return f68777f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (Double.doubleToRawLongBits(this.f68779b) != 0) {
            output.G(1, this.f68779b);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public b newBuilderForType() {
        return w6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    public K(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f68779b = 0.0d;
        this.f68780c = (byte) -1;
    }

    public K() {
        this.f68779b = 0.0d;
        this.f68780c = (byte) -1;
    }
}
