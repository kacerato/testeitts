package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class Q extends AbstractC12722w0 implements S {

    public static final long f68835c = 0;

    public static final Q f68836d = new Q();

    public static final InterfaceC12723w1<Q> f68837e = new a();

    public byte f68838b;

    public class a extends AbstractC12661c<Q> {
        @Override
        public Q parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b v62 = Q.v6();
            try {
                v62.mergeFrom(input, extensionRegistry);
                return v62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(v62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(v62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(v62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements S {
        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return T.f68913a;
        }

        @Override
        public Q buildPartial() {
            Q q10 = new Q(this, null);
            onBuilt();
            return q10;
        }

        @Override
        public Q getDefaultInstanceForType() {
            return Q.t6();
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return T.f68913a;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return T.f68914b.d(Q.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public Q build() {
            Q buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public b mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
            extensionRegistry.getClass();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int Z10 = input.Z();
                        if (Z10 == 0 || !super.parseUnknownField(input, extensionRegistry, Z10)) {
                            z10 = true;
                        }
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.unwrapIOException();
                    }
                } finally {
                    onChanged();
                }
            }
            return this;
        }

        public b r6(Q other) {
            if (other == Q.t6()) {
                return this;
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof Q) {
                return r6((Q) other);
            }
            super.mergeFrom(other);
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        @Override
        public b s6() {
            super.s6();
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

    public Q(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static Q A6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (Q) AbstractC12722w0.parseDelimitedWithIOException(f68837e, input, extensionRegistry);
    }

    public static Q B6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f68837e.parseFrom(data);
    }

    public static Q C6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68837e.parseFrom(data, extensionRegistry);
    }

    public static Q D6(C input) throws IOException {
        return (Q) AbstractC12722w0.parseWithIOException(f68837e, input);
    }

    public static Q E6(C input, C12666d0 extensionRegistry) throws IOException {
        return (Q) AbstractC12722w0.parseWithIOException(f68837e, input, extensionRegistry);
    }

    public static Q F6(InputStream input) throws IOException {
        return (Q) AbstractC12722w0.parseWithIOException(f68837e, input);
    }

    public static Q G6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (Q) AbstractC12722w0.parseWithIOException(f68837e, input, extensionRegistry);
    }

    public static Q H6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f68837e.parseFrom(data);
    }

    public static Q I6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68837e.parseFrom(data, extensionRegistry);
    }

    public static Q J6(byte[] data) throws InvalidProtocolBufferException {
        return f68837e.parseFrom(data);
    }

    public static Q K6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68837e.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return T.f68913a;
    }

    public static InterfaceC12723w1<Q> parser() {
        return f68837e;
    }

    public static Q t6() {
        return f68836d;
    }

    public static b v6() {
        return f68836d.toBuilder();
    }

    public static b w6(Q prototype) {
        return f68836d.toBuilder().r6(prototype);
    }

    public static Q z6(InputStream input) throws IOException {
        return (Q) AbstractC12722w0.parseDelimitedWithIOException(f68837e, input);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f68836d ? new b(aVar) : new b(aVar).r6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        return !(obj instanceof Q) ? super.equals(obj) : getUnknownFields().equals(((Q) obj).getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<Q> getParserForType() {
        return f68837e;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int serializedSize = getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((779 + getDescriptor().hashCode()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return T.f68914b.d(Q.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f68838b;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f68838b = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new Q();
    }

    @Override
    public Q getDefaultInstanceForType() {
        return f68836d;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        getUnknownFields().writeTo(output);
    }

    @Override
    public b newBuilderForType() {
        return v6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    public Q(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f68838b = (byte) -1;
    }

    public Q() {
        this.f68838b = (byte) -1;
    }
}
