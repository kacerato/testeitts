package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class m2 extends AbstractC12722w0 implements n2 {

    public static final long f69362d = 0;

    public static final int f69363e = 1;

    public static final m2 f69364f = new m2();

    public static final InterfaceC12723w1<m2> f69365g = new a();

    public int f69366b;

    public byte f69367c;

    public class a extends AbstractC12661c<m2> {
        @Override
        public m2 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b w62 = m2.w6();
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

    public static final class b extends AbstractC12722w0.b<b> implements n2 {

        public int f69368b;

        public int f69369c;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return B2.f67819k;
        }

        @Override
        public m2 buildPartial() {
            m2 m2Var = new m2(this, null);
            if (this.f69368b != 0) {
                v3(m2Var);
            }
            onBuilt();
            return m2Var;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69368b = 0;
            this.f69369c = 0;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return B2.f67819k;
        }

        @Override
        public int getValue() {
            return this.f69369c;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return B2.f67820l.d(m2.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public m2 build() {
            m2 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69368b &= -2;
            this.f69369c = 0;
            onChanged();
            return this;
        }

        @Override
        public m2 getDefaultInstanceForType() {
            return m2.u6();
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
                                this.f69369c = input.a0();
                                this.f69368b |= 1;
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
            if (other instanceof m2) {
                return u6((m2) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b u6(m2 other) {
            if (other == m2.u6()) {
                return this;
            }
            if (other.getValue() != 0) {
                x6(other.getValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public final void v3(m2 result) {
            if ((this.f69368b & 1) != 0) {
                result.f69366b = this.f69369c;
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
            this.f69369c = value;
            this.f69368b |= 1;
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

    public m2(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static m2 A6(int value) {
        return w6().x6(value).build();
    }

    public static m2 B6(InputStream input) throws IOException {
        return (m2) AbstractC12722w0.parseDelimitedWithIOException(f69365g, input);
    }

    public static m2 C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (m2) AbstractC12722w0.parseDelimitedWithIOException(f69365g, input, extensionRegistry);
    }

    public static m2 D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69365g.parseFrom(data);
    }

    public static m2 E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69365g.parseFrom(data, extensionRegistry);
    }

    public static m2 F6(C input) throws IOException {
        return (m2) AbstractC12722w0.parseWithIOException(f69365g, input);
    }

    public static m2 G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (m2) AbstractC12722w0.parseWithIOException(f69365g, input, extensionRegistry);
    }

    public static m2 H6(InputStream input) throws IOException {
        return (m2) AbstractC12722w0.parseWithIOException(f69365g, input);
    }

    public static m2 I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (m2) AbstractC12722w0.parseWithIOException(f69365g, input, extensionRegistry);
    }

    public static m2 J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69365g.parseFrom(data);
    }

    public static m2 K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69365g.parseFrom(data, extensionRegistry);
    }

    public static m2 L6(byte[] data) throws InvalidProtocolBufferException {
        return f69365g.parseFrom(data);
    }

    public static m2 M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69365g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return B2.f67819k;
    }

    public static InterfaceC12723w1<m2> parser() {
        return f69365g;
    }

    public static m2 u6() {
        return f69364f;
    }

    public static b w6() {
        return f69364f.toBuilder();
    }

    public static b x6(m2 prototype) {
        return f69364f.toBuilder().u6(prototype);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69364f ? new b(aVar) : new b(aVar).u6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m2)) {
            return super.equals(obj);
        }
        m2 m2Var = (m2) obj;
        return getValue() == m2Var.getValue() && getUnknownFields().equals(m2Var.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<m2> getParserForType() {
        return f69365g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.f69366b;
        int Y02 = (i11 != 0 ? CodedOutputStream.Y0(1, i11) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = Y02;
        return Y02;
    }

    @Override
    public int getValue() {
        return this.f69366b;
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
        return B2.f67820l.d(m2.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69367c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69367c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new m2();
    }

    @Override
    public m2 getDefaultInstanceForType() {
        return f69364f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        int i10 = this.f69366b;
        if (i10 != 0) {
            output.m(1, i10);
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

    public m2(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69366b = 0;
        this.f69367c = (byte) -1;
    }

    public m2() {
        this.f69366b = 0;
        this.f69367c = (byte) -1;
    }
}
