package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class o2 extends AbstractC12722w0 implements p2 {

    public static final long f69420d = 0;

    public static final int f69421e = 1;

    public static final o2 f69422f = new o2();

    public static final InterfaceC12723w1<o2> f69423g = new a();

    public long f69424b;

    public byte f69425c;

    public class a extends AbstractC12661c<o2> {
        @Override
        public o2 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b w62 = o2.w6();
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

    public static final class b extends AbstractC12722w0.b<b> implements p2 {

        public int f69426b;

        public long f69427c;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67815g;
        }

        @Override
        public o2 buildPartial() {
            o2 o2Var = new o2(this, null);
            if (this.f69426b != 0) {
                v3(o2Var);
            }
            onBuilt();
            return o2Var;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69426b = 0;
            this.f69427c = 0L;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67815g;
        }

        @Override
        public long getValue() {
            return this.f69427c;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67816h.d(o2.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public o2 build() {
            o2 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69426b &= -2;
            this.f69427c = 0L;
            onChanged();
            return this;
        }

        @Override
        public o2 getDefaultInstanceForType() {
            return o2.u6();
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
                                this.f69427c = input.b0();
                                this.f69426b |= 1;
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
            if (other instanceof o2) {
                return u6((o2) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b u6(o2 other) {
            if (other == o2.u6()) {
                return this;
            }
            if (other.getValue() != 0) {
                x6(other.getValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public final void v3(o2 result) {
            if ((this.f69426b & 1) != 0) {
                result.f69424b = this.f69427c;
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
            this.f69427c = value;
            this.f69426b |= 1;
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

    public o2(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static o2 A6(long value) {
        return w6().x6(value).build();
    }

    public static o2 B6(InputStream input) throws IOException {
        return (o2) AbstractC12722w0.parseDelimitedWithIOException(f69423g, input);
    }

    public static o2 C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (o2) AbstractC12722w0.parseDelimitedWithIOException(f69423g, input, extensionRegistry);
    }

    public static o2 D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69423g.parseFrom(data);
    }

    public static o2 E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69423g.parseFrom(data, extensionRegistry);
    }

    public static o2 F6(C input) throws IOException {
        return (o2) AbstractC12722w0.parseWithIOException(f69423g, input);
    }

    public static o2 G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (o2) AbstractC12722w0.parseWithIOException(f69423g, input, extensionRegistry);
    }

    public static o2 H6(InputStream input) throws IOException {
        return (o2) AbstractC12722w0.parseWithIOException(f69423g, input);
    }

    public static o2 I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (o2) AbstractC12722w0.parseWithIOException(f69423g, input, extensionRegistry);
    }

    public static o2 J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69423g.parseFrom(data);
    }

    public static o2 K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69423g.parseFrom(data, extensionRegistry);
    }

    public static o2 L6(byte[] data) throws InvalidProtocolBufferException {
        return f69423g.parseFrom(data);
    }

    public static o2 M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69423g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67815g;
    }

    public static InterfaceC12723w1<o2> parser() {
        return f69423g;
    }

    public static o2 u6() {
        return f69422f;
    }

    public static b w6() {
        return f69422f.toBuilder();
    }

    public static b x6(o2 prototype) {
        return f69422f.toBuilder().u6(prototype);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69422f ? new b(aVar) : new b(aVar).u6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o2)) {
            return super.equals(obj);
        }
        o2 o2Var = (o2) obj;
        return getValue() == o2Var.getValue() && getUnknownFields().equals(o2Var.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<o2> getParserForType() {
        return f69423g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        long j10 = this.f69424b;
        int a12 = (j10 != 0 ? CodedOutputStream.a1(1, j10) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = a12;
        return a12;
    }

    @Override
    public long getValue() {
        return this.f69424b;
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
        return B2.f67816h.d(o2.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69425c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69425c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new o2();
    }

    @Override
    public o2 getDefaultInstanceForType() {
        return f69422f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        long j10 = this.f69424b;
        if (j10 != 0) {
            output.f(1, j10);
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

    public o2(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69424b = 0L;
        this.f69425c = (byte) -1;
    }

    public o2() {
        this.f69424b = 0L;
        this.f69425c = (byte) -1;
    }
}
