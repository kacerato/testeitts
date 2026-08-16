package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class A0 extends AbstractC12722w0 implements B0 {

    public static final long f67777d = 0;

    public static final int f67778e = 1;

    public static final A0 f67779f = new A0();

    public static final InterfaceC12723w1<A0> f67780g = new a();

    public long f67781b;

    public byte f67782c;

    public class a extends AbstractC12661c<A0> {
        @Override
        public A0 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b w62 = A0.w6();
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

    public static final class b extends AbstractC12722w0.b<b> implements B0 {

        public int f67783b;

        public long f67784c;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67813e;
        }

        @Override
        public A0 buildPartial() {
            A0 a02 = new A0(this, null);
            if (this.f67783b != 0) {
                v3(a02);
            }
            onBuilt();
            return a02;
        }

        @Override
        public b s6() {
            super.s6();
            this.f67783b = 0;
            this.f67784c = 0L;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67813e;
        }

        @Override
        public long getValue() {
            return this.f67784c;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67814f.d(A0.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public A0 build() {
            A0 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f67783b &= -2;
            this.f67784c = 0L;
            onChanged();
            return this;
        }

        @Override
        public A0 getDefaultInstanceForType() {
            return A0.u6();
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
                            if (Z10 == 8) {
                                this.f67784c = input.H();
                                this.f67783b |= 1;
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

        public b t6(A0 other) {
            if (other == A0.u6()) {
                return this;
            }
            if (other.getValue() != 0) {
                x6(other.getValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof A0) {
                return t6((A0) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public final void v3(A0 result) {
            if ((this.f67783b & 1) != 0) {
                result.f67781b = this.f67784c;
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

        public b x6(long value) {
            this.f67784c = value;
            this.f67783b |= 1;
            onChanged();
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

    public A0(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static A0 A6(long value) {
        return w6().x6(value).build();
    }

    public static A0 B6(InputStream input) throws IOException {
        return (A0) AbstractC12722w0.parseDelimitedWithIOException(f67780g, input);
    }

    public static A0 C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (A0) AbstractC12722w0.parseDelimitedWithIOException(f67780g, input, extensionRegistry);
    }

    public static A0 D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f67780g.parseFrom(data);
    }

    public static A0 E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f67780g.parseFrom(data, extensionRegistry);
    }

    public static A0 F6(C input) throws IOException {
        return (A0) AbstractC12722w0.parseWithIOException(f67780g, input);
    }

    public static A0 G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (A0) AbstractC12722w0.parseWithIOException(f67780g, input, extensionRegistry);
    }

    public static A0 H6(InputStream input) throws IOException {
        return (A0) AbstractC12722w0.parseWithIOException(f67780g, input);
    }

    public static A0 I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (A0) AbstractC12722w0.parseWithIOException(f67780g, input, extensionRegistry);
    }

    public static A0 J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f67780g.parseFrom(data);
    }

    public static A0 K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f67780g.parseFrom(data, extensionRegistry);
    }

    public static A0 L6(byte[] data) throws InvalidProtocolBufferException {
        return f67780g.parseFrom(data);
    }

    public static A0 M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f67780g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67813e;
    }

    public static InterfaceC12723w1<A0> parser() {
        return f67780g;
    }

    public static A0 u6() {
        return f67779f;
    }

    public static b w6() {
        return f67779f.toBuilder();
    }

    public static b x6(A0 prototype) {
        return f67779f.toBuilder().t6(prototype);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f67779f ? new b(aVar) : new b(aVar).t6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof A0)) {
            return super.equals(obj);
        }
        A0 a02 = (A0) obj;
        return getValue() == a02.getValue() && getUnknownFields().equals(a02.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<A0> getParserForType() {
        return f67780g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        long j10 = this.f67781b;
        int y02 = (j10 != 0 ? CodedOutputStream.y0(1, j10) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = y02;
        return y02;
    }

    @Override
    public long getValue() {
        return this.f67781b;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + D0.s(getValue())) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return B2.f67814f.d(A0.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f67782c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f67782c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new A0();
    }

    @Override
    public A0 getDefaultInstanceForType() {
        return f67779f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        long j10 = this.f67781b;
        if (j10 != 0) {
            output.L(1, j10);
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

    public A0(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f67781b = 0L;
        this.f67782c = (byte) -1;
    }

    public A0() {
        this.f67781b = 0L;
        this.f67782c = (byte) -1;
    }
}
