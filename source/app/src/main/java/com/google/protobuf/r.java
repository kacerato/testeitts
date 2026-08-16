package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class r extends AbstractC12722w0 implements InterfaceC12709s {

    public static final long f69436d = 0;

    public static final int f69437e = 1;

    public static final r f69438f = new r();

    public static final InterfaceC12723w1<r> f69439g = new a();

    public boolean f69440b;

    public byte f69441c;

    public class a extends AbstractC12661c<r> {
        @Override
        public r parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b w62 = r.w6();
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

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12709s {

        public int f69442b;

        public boolean f69443c;

        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67821m;
        }

        @Override
        public r buildPartial() {
            r rVar = new r(this, null);
            if (this.f69442b != 0) {
                v3(rVar);
            }
            onBuilt();
            return rVar;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69442b = 0;
            this.f69443c = false;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67821m;
        }

        @Override
        public boolean getValue() {
            return this.f69443c;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67822n.d(r.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public r build() {
            r buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69442b &= -2;
            this.f69443c = false;
            onChanged();
            return this;
        }

        @Override
        public r getDefaultInstanceForType() {
            return r.u6();
        }

        public b s6(r other) {
            if (other == r.u6()) {
                return this;
            }
            if (other.getValue()) {
                x6(other.getValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
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
                                this.f69443c = input.v();
                                this.f69442b |= 1;
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
            if (other instanceof r) {
                return s6((r) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public final void v3(r result) {
            if ((this.f69442b & 1) != 0) {
                result.f69440b = this.f69443c;
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

        public b x6(boolean value) {
            this.f69443c = value;
            this.f69442b |= 1;
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

    public r(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static r A6(boolean value) {
        return w6().x6(value).build();
    }

    public static r B6(InputStream input) throws IOException {
        return (r) AbstractC12722w0.parseDelimitedWithIOException(f69439g, input);
    }

    public static r C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (r) AbstractC12722w0.parseDelimitedWithIOException(f69439g, input, extensionRegistry);
    }

    public static r D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69439g.parseFrom(data);
    }

    public static r E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69439g.parseFrom(data, extensionRegistry);
    }

    public static r F6(C input) throws IOException {
        return (r) AbstractC12722w0.parseWithIOException(f69439g, input);
    }

    public static r G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (r) AbstractC12722w0.parseWithIOException(f69439g, input, extensionRegistry);
    }

    public static r H6(InputStream input) throws IOException {
        return (r) AbstractC12722w0.parseWithIOException(f69439g, input);
    }

    public static r I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (r) AbstractC12722w0.parseWithIOException(f69439g, input, extensionRegistry);
    }

    public static r J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69439g.parseFrom(data);
    }

    public static r K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69439g.parseFrom(data, extensionRegistry);
    }

    public static r L6(byte[] data) throws InvalidProtocolBufferException {
        return f69439g.parseFrom(data);
    }

    public static r M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69439g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67821m;
    }

    public static InterfaceC12723w1<r> parser() {
        return f69439g;
    }

    public static r u6() {
        return f69438f;
    }

    public static b w6() {
        return f69438f.toBuilder();
    }

    public static b x6(r prototype) {
        return f69438f.toBuilder().s6(prototype);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69438f ? new b(aVar) : new b(aVar).s6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return super.equals(obj);
        }
        r rVar = (r) obj;
        return getValue() == rVar.getValue() && getUnknownFields().equals(rVar.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<r> getParserForType() {
        return f69439g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        boolean z10 = this.f69440b;
        int a02 = (z10 ? CodedOutputStream.a0(1, z10) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = a02;
        return a02;
    }

    @Override
    public boolean getValue() {
        return this.f69440b;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + D0.k(getValue())) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return B2.f67822n.d(r.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69441c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69441c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new r();
    }

    @Override
    public r getDefaultInstanceForType() {
        return f69438f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        boolean z10 = this.f69440b;
        if (z10) {
            output.q(1, z10);
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

    public r(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69440b = false;
        this.f69441c = (byte) -1;
    }

    public r() {
        this.f69440b = false;
        this.f69441c = (byte) -1;
    }
}
