package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class C12728y0 extends AbstractC12722w0 implements InterfaceC12731z0 {

    public static final long f69753d = 0;

    public static final int f69754e = 1;

    public static final C12728y0 f69755f = new C12728y0();

    public static final InterfaceC12723w1<C12728y0> f69756g = new a();

    public int f69757b;

    public byte f69758c;

    public class a extends AbstractC12661c<C12728y0> {
        @Override
        public C12728y0 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b w62 = C12728y0.w6();
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

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12731z0 {

        public int f69759b;

        public int f69760c;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67817i;
        }

        @Override
        public C12728y0 buildPartial() {
            C12728y0 c12728y0 = new C12728y0(this, null);
            if (this.f69759b != 0) {
                v3(c12728y0);
            }
            onBuilt();
            return c12728y0;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69759b = 0;
            this.f69760c = 0;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67817i;
        }

        @Override
        public int getValue() {
            return this.f69760c;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67818j.d(C12728y0.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public C12728y0 build() {
            C12728y0 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69759b &= -2;
            this.f69760c = 0;
            onChanged();
            return this;
        }

        @Override
        public C12728y0 getDefaultInstanceForType() {
            return C12728y0.u6();
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
                                this.f69760c = input.G();
                                this.f69759b |= 1;
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

        public b t6(C12728y0 other) {
            if (other == C12728y0.u6()) {
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
            if (other instanceof C12728y0) {
                return t6((C12728y0) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public final void v3(C12728y0 result) {
            if ((this.f69759b & 1) != 0) {
                result.f69757b = this.f69760c;
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

        public b x6(int value) {
            this.f69760c = value;
            this.f69759b |= 1;
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

    public C12728y0(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static C12728y0 A6(int value) {
        return w6().x6(value).build();
    }

    public static C12728y0 B6(InputStream input) throws IOException {
        return (C12728y0) AbstractC12722w0.parseDelimitedWithIOException(f69756g, input);
    }

    public static C12728y0 C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12728y0) AbstractC12722w0.parseDelimitedWithIOException(f69756g, input, extensionRegistry);
    }

    public static C12728y0 D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69756g.parseFrom(data);
    }

    public static C12728y0 E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69756g.parseFrom(data, extensionRegistry);
    }

    public static C12728y0 F6(C input) throws IOException {
        return (C12728y0) AbstractC12722w0.parseWithIOException(f69756g, input);
    }

    public static C12728y0 G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12728y0) AbstractC12722w0.parseWithIOException(f69756g, input, extensionRegistry);
    }

    public static C12728y0 H6(InputStream input) throws IOException {
        return (C12728y0) AbstractC12722w0.parseWithIOException(f69756g, input);
    }

    public static C12728y0 I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12728y0) AbstractC12722w0.parseWithIOException(f69756g, input, extensionRegistry);
    }

    public static C12728y0 J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69756g.parseFrom(data);
    }

    public static C12728y0 K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69756g.parseFrom(data, extensionRegistry);
    }

    public static C12728y0 L6(byte[] data) throws InvalidProtocolBufferException {
        return f69756g.parseFrom(data);
    }

    public static C12728y0 M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69756g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67817i;
    }

    public static InterfaceC12723w1<C12728y0> parser() {
        return f69756g;
    }

    public static C12728y0 u6() {
        return f69755f;
    }

    public static b w6() {
        return f69755f.toBuilder();
    }

    public static b x6(C12728y0 prototype) {
        return f69755f.toBuilder().t6(prototype);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69755f ? new b(aVar) : new b(aVar).t6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12728y0)) {
            return super.equals(obj);
        }
        C12728y0 c12728y0 = (C12728y0) obj;
        return getValue() == c12728y0.getValue() && getUnknownFields().equals(c12728y0.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<C12728y0> getParserForType() {
        return f69756g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.f69757b;
        int w02 = (i11 != 0 ? CodedOutputStream.w0(1, i11) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = w02;
        return w02;
    }

    @Override
    public int getValue() {
        return this.f69757b;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getValue()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return B2.f67818j.d(C12728y0.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69758c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69758c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12728y0();
    }

    @Override
    public C12728y0 getDefaultInstanceForType() {
        return f69755f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        int i10 = this.f69757b;
        if (i10 != 0) {
            output.i(1, i10);
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

    public C12728y0(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69757b = 0;
        this.f69758c = (byte) -1;
    }

    public C12728y0() {
        this.f69757b = 0;
        this.f69758c = (byte) -1;
    }
}
