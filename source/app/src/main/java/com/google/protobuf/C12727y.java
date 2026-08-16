package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class C12727y extends AbstractC12722w0 implements InterfaceC12730z {

    public static final long f69745d = 0;

    public static final int f69746e = 1;

    public static final C12727y f69747f = new C12727y();

    public static final InterfaceC12723w1<C12727y> f69748g = new a();

    public AbstractC12724x f69749b;

    public byte f69750c;

    public class a extends AbstractC12661c<C12727y> {
        @Override
        public C12727y parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b w62 = C12727y.w6();
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

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12730z {

        public int f69751b;

        public AbstractC12724x f69752c;

        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67825q;
        }

        @Override
        public C12727y buildPartial() {
            C12727y c12727y = new C12727y(this, null);
            if (this.f69751b != 0) {
                v3(c12727y);
            }
            onBuilt();
            return c12727y;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69751b = 0;
            this.f69752c = AbstractC12724x.f69696g;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67825q;
        }

        @Override
        public AbstractC12724x getValue() {
            return this.f69752c;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67826r.d(C12727y.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public C12727y build() {
            C12727y buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69751b &= -2;
            this.f69752c = C12727y.u6().getValue();
            onChanged();
            return this;
        }

        @Override
        public C12727y getDefaultInstanceForType() {
            return C12727y.u6();
        }

        public b s6(C12727y other) {
            if (other == C12727y.u6()) {
                return this;
            }
            if (other.getValue() != AbstractC12724x.f69696g) {
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
                            if (Z10 == 10) {
                                this.f69752c = input.y();
                                this.f69751b |= 1;
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
            if (other instanceof C12727y) {
                return s6((C12727y) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public final void v3(C12727y result) {
            if ((this.f69751b & 1) != 0) {
                result.f69749b = this.f69752c;
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

        public b x6(AbstractC12724x value) {
            value.getClass();
            this.f69752c = value;
            this.f69751b |= 1;
            onChanged();
            return this;
        }

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public b() {
            this.f69752c = AbstractC12724x.f69696g;
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69752c = AbstractC12724x.f69696g;
        }
    }

    public C12727y(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static C12727y A6(AbstractC12724x value) {
        return w6().x6(value).build();
    }

    public static C12727y B6(InputStream input) throws IOException {
        return (C12727y) AbstractC12722w0.parseDelimitedWithIOException(f69748g, input);
    }

    public static C12727y C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12727y) AbstractC12722w0.parseDelimitedWithIOException(f69748g, input, extensionRegistry);
    }

    public static C12727y D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69748g.parseFrom(data);
    }

    public static C12727y E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69748g.parseFrom(data, extensionRegistry);
    }

    public static C12727y F6(C input) throws IOException {
        return (C12727y) AbstractC12722w0.parseWithIOException(f69748g, input);
    }

    public static C12727y G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12727y) AbstractC12722w0.parseWithIOException(f69748g, input, extensionRegistry);
    }

    public static C12727y H6(InputStream input) throws IOException {
        return (C12727y) AbstractC12722w0.parseWithIOException(f69748g, input);
    }

    public static C12727y I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12727y) AbstractC12722w0.parseWithIOException(f69748g, input, extensionRegistry);
    }

    public static C12727y J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69748g.parseFrom(data);
    }

    public static C12727y K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69748g.parseFrom(data, extensionRegistry);
    }

    public static C12727y L6(byte[] data) throws InvalidProtocolBufferException {
        return f69748g.parseFrom(data);
    }

    public static C12727y M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69748g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67825q;
    }

    public static InterfaceC12723w1<C12727y> parser() {
        return f69748g;
    }

    public static C12727y u6() {
        return f69747f;
    }

    public static b w6() {
        return f69747f.toBuilder();
    }

    public static b x6(C12727y prototype) {
        return f69747f.toBuilder().s6(prototype);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69747f ? new b(aVar) : new b(aVar).s6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12727y)) {
            return super.equals(obj);
        }
        C12727y c12727y = (C12727y) obj;
        return getValue().equals(c12727y.getValue()) && getUnknownFields().equals(c12727y.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<C12727y> getParserForType() {
        return f69748g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int g02 = (!this.f69749b.isEmpty() ? CodedOutputStream.g0(1, this.f69749b) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getValue() {
        return this.f69749b;
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
        return B2.f67826r.d(C12727y.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69750c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69750c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12727y();
    }

    @Override
    public C12727y getDefaultInstanceForType() {
        return f69747f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!this.f69749b.isEmpty()) {
            output.h(1, this.f69749b);
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

    public C12727y(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69749b = AbstractC12724x.f69696g;
        this.f69750c = (byte) -1;
    }

    public C12727y() {
        AbstractC12724x abstractC12724x = AbstractC12724x.f69696g;
        this.f69750c = (byte) -1;
        this.f69749b = abstractC12724x;
    }
}
