package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class C12707r0 extends AbstractC12722w0 implements InterfaceC12710s0 {

    public static final long f69444d = 0;

    public static final int f69445e = 1;

    public static final C12707r0 f69446f = new C12707r0();

    public static final InterfaceC12723w1<C12707r0> f69447g = new a();

    public float f69448b;

    public byte f69449c;

    public class a extends AbstractC12661c<C12707r0> {
        @Override
        public C12707r0 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b w62 = C12707r0.w6();
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

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12710s0 {

        public int f69450b;

        public float f69451c;

        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67811c;
        }

        @Override
        public C12707r0 buildPartial() {
            C12707r0 c12707r0 = new C12707r0(this, null);
            if (this.f69450b != 0) {
                v3(c12707r0);
            }
            onBuilt();
            return c12707r0;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69450b = 0;
            this.f69451c = 0.0f;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67811c;
        }

        @Override
        public float getValue() {
            return this.f69451c;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67812d.d(C12707r0.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public C12707r0 build() {
            C12707r0 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69450b &= -2;
            this.f69451c = 0.0f;
            onChanged();
            return this;
        }

        @Override
        public C12707r0 getDefaultInstanceForType() {
            return C12707r0.u6();
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
                            if (Z10 == 13) {
                                this.f69451c = input.D();
                                this.f69450b |= 1;
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

        public b t6(C12707r0 other) {
            if (other == C12707r0.u6()) {
                return this;
            }
            if (other.getValue() != 0.0f) {
                x6(other.getValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof C12707r0) {
                return t6((C12707r0) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public final void v3(C12707r0 result) {
            if ((this.f69450b & 1) != 0) {
                result.f69448b = this.f69451c;
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

        public b x6(float value) {
            this.f69451c = value;
            this.f69450b |= 1;
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

    public C12707r0(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static C12707r0 A6(float value) {
        return w6().x6(value).build();
    }

    public static C12707r0 B6(InputStream input) throws IOException {
        return (C12707r0) AbstractC12722w0.parseDelimitedWithIOException(f69447g, input);
    }

    public static C12707r0 C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12707r0) AbstractC12722w0.parseDelimitedWithIOException(f69447g, input, extensionRegistry);
    }

    public static C12707r0 D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69447g.parseFrom(data);
    }

    public static C12707r0 E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69447g.parseFrom(data, extensionRegistry);
    }

    public static C12707r0 F6(C input) throws IOException {
        return (C12707r0) AbstractC12722w0.parseWithIOException(f69447g, input);
    }

    public static C12707r0 G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12707r0) AbstractC12722w0.parseWithIOException(f69447g, input, extensionRegistry);
    }

    public static C12707r0 H6(InputStream input) throws IOException {
        return (C12707r0) AbstractC12722w0.parseWithIOException(f69447g, input);
    }

    public static C12707r0 I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12707r0) AbstractC12722w0.parseWithIOException(f69447g, input, extensionRegistry);
    }

    public static C12707r0 J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69447g.parseFrom(data);
    }

    public static C12707r0 K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69447g.parseFrom(data, extensionRegistry);
    }

    public static C12707r0 L6(byte[] data) throws InvalidProtocolBufferException {
        return f69447g.parseFrom(data);
    }

    public static C12707r0 M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69447g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67811c;
    }

    public static InterfaceC12723w1<C12707r0> parser() {
        return f69447g;
    }

    public static C12707r0 u6() {
        return f69446f;
    }

    public static b w6() {
        return f69446f.toBuilder();
    }

    public static b x6(C12707r0 prototype) {
        return f69446f.toBuilder().t6(prototype);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69446f ? new b(aVar) : new b(aVar).t6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12707r0)) {
            return super.equals(obj);
        }
        C12707r0 c12707r0 = (C12707r0) obj;
        return Float.floatToIntBits(getValue()) == Float.floatToIntBits(c12707r0.getValue()) && getUnknownFields().equals(c12707r0.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<C12707r0> getParserForType() {
        return f69447g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int q02 = (Float.floatToRawIntBits(this.f69448b) != 0 ? CodedOutputStream.q0(1, this.f69448b) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = q02;
        return q02;
    }

    @Override
    public float getValue() {
        return this.f69448b;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Float.floatToIntBits(getValue())) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return B2.f67812d.d(C12707r0.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69449c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69449c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12707r0();
    }

    @Override
    public C12707r0 getDefaultInstanceForType() {
        return f69446f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (Float.floatToRawIntBits(this.f69448b) != 0) {
            output.P(1, this.f69448b);
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

    public C12707r0(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69448b = 0.0f;
        this.f69449c = (byte) -1;
    }

    public C12707r0() {
        this.f69448b = 0.0f;
        this.f69449c = (byte) -1;
    }
}
