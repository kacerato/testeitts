package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class M extends AbstractC12722w0 implements N {

    public static final long f68786e = 0;

    public static final int f68787f = 1;

    public static final int f68788g = 2;

    public static final M f68789h = new M();

    public static final InterfaceC12723w1<M> f68790i = new a();

    public long f68791b;

    public int f68792c;

    public byte f68793d;

    public class a extends AbstractC12661c<M> {
        @Override
        public M parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b x62 = M.x6();
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

    public static final class b extends AbstractC12722w0.b<b> implements N {

        public int f68794b;

        public long f68795c;

        public int f68796d;

        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return O.f68811a;
        }

        @Override
        public int D() {
            return this.f68796d;
        }

        @Override
        public M buildPartial() {
            M m10 = new M(this, null);
            if (this.f68794b != 0) {
                v3(m10);
            }
            onBuilt();
            return m10;
        }

        @Override
        public long T() {
            return this.f68795c;
        }

        @Override
        public b s6() {
            super.s6();
            this.f68794b = 0;
            this.f68795c = 0L;
            this.f68796d = 0;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return O.f68811a;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return O.f68812b.d(M.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public M build() {
            M buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f68794b &= -3;
            this.f68796d = 0;
            onChanged();
            return this;
        }

        public b r6() {
            this.f68794b &= -2;
            this.f68795c = 0L;
            onChanged();
            return this;
        }

        @Override
        public M getDefaultInstanceForType() {
            return M.v6();
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
                                this.f68795c = input.H();
                                this.f68794b |= 1;
                            } else if (Z10 == 16) {
                                this.f68796d = input.G();
                                this.f68794b |= 2;
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

        public b u6(M other) {
            if (other == M.v6()) {
                return this;
            }
            if (other.T() != 0) {
                y6(other.T());
            }
            if (other.D() != 0) {
                x6(other.D());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public final void v3(M result) {
            int i10 = this.f68794b;
            if ((i10 & 1) != 0) {
                result.f68791b = this.f68795c;
            }
            if ((i10 & 2) != 0) {
                result.f68792c = this.f68796d;
            }
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof M) {
                return u6((M) other);
            }
            super.mergeFrom(other);
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b x6(int value) {
            this.f68796d = value;
            this.f68794b |= 2;
            onChanged();
            return this;
        }

        public b y6(long value) {
            this.f68795c = value;
            this.f68794b |= 1;
            onChanged();
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
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

    public M(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static M B6(InputStream input) throws IOException {
        return (M) AbstractC12722w0.parseDelimitedWithIOException(f68790i, input);
    }

    public static M C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (M) AbstractC12722w0.parseDelimitedWithIOException(f68790i, input, extensionRegistry);
    }

    public static M D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f68790i.parseFrom(data);
    }

    public static M E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68790i.parseFrom(data, extensionRegistry);
    }

    public static M F6(C input) throws IOException {
        return (M) AbstractC12722w0.parseWithIOException(f68790i, input);
    }

    public static M G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (M) AbstractC12722w0.parseWithIOException(f68790i, input, extensionRegistry);
    }

    public static M H6(InputStream input) throws IOException {
        return (M) AbstractC12722w0.parseWithIOException(f68790i, input);
    }

    public static M I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (M) AbstractC12722w0.parseWithIOException(f68790i, input, extensionRegistry);
    }

    public static M J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f68790i.parseFrom(data);
    }

    public static M K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68790i.parseFrom(data, extensionRegistry);
    }

    public static M L6(byte[] data) throws InvalidProtocolBufferException {
        return f68790i.parseFrom(data);
    }

    public static M M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68790i.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return O.f68811a;
    }

    public static InterfaceC12723w1<M> parser() {
        return f68790i;
    }

    public static M v6() {
        return f68789h;
    }

    public static b x6() {
        return f68789h.toBuilder();
    }

    public static b y6(M prototype) {
        return f68789h.toBuilder().u6(prototype);
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public int D() {
        return this.f68792c;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f68789h ? new b(aVar) : new b(aVar).u6(this);
    }

    @Override
    public long T() {
        return this.f68791b;
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof M)) {
            return super.equals(obj);
        }
        M m10 = (M) obj;
        return T() == m10.T() && D() == m10.D() && getUnknownFields().equals(m10.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<M> getParserForType() {
        return f68790i;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        long j10 = this.f68791b;
        int y02 = j10 != 0 ? CodedOutputStream.y0(1, j10) : 0;
        int i11 = this.f68792c;
        if (i11 != 0) {
            y02 += CodedOutputStream.w0(2, i11);
        }
        int serializedSize = y02 + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + D0.s(T())) * 37) + 2) * 53) + D()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return O.f68812b.d(M.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f68793d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f68793d = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new M();
    }

    @Override
    public M getDefaultInstanceForType() {
        return f68789h;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        long j10 = this.f68791b;
        if (j10 != 0) {
            output.L(1, j10);
        }
        int i10 = this.f68792c;
        if (i10 != 0) {
            output.i(2, i10);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public b newBuilderForType() {
        return x6();
    }

    public M(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f68791b = 0L;
        this.f68792c = 0;
        this.f68793d = (byte) -1;
    }

    public M() {
        this.f68791b = 0L;
        this.f68792c = 0;
        this.f68793d = (byte) -1;
    }
}
