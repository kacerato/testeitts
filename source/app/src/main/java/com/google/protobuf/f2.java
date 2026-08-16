package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class f2 extends AbstractC12722w0 implements g2 {

    public static final long f69102e = 0;

    public static final int f69103f = 1;

    public static final int f69104g = 2;

    public static final f2 f69105h = new f2();

    public static final InterfaceC12723w1<f2> f69106i = new a();

    public long f69107b;

    public int f69108c;

    public byte f69109d;

    public class a extends AbstractC12661c<f2> {
        @Override
        public f2 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b x62 = f2.x6();
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

    public static final class b extends AbstractC12722w0.b<b> implements g2 {

        public int f69110b;

        public long f69111c;

        public int f69112d;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return h2.f69160a;
        }

        @Override
        public int D() {
            return this.f69112d;
        }

        @Override
        public f2 buildPartial() {
            f2 f2Var = new f2(this, null);
            if (this.f69110b != 0) {
                v3(f2Var);
            }
            onBuilt();
            return f2Var;
        }

        @Override
        public long T() {
            return this.f69111c;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69110b = 0;
            this.f69111c = 0L;
            this.f69112d = 0;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return h2.f69160a;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return h2.f69161b.d(f2.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public f2 build() {
            f2 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69110b &= -3;
            this.f69112d = 0;
            onChanged();
            return this;
        }

        public b r6() {
            this.f69110b &= -2;
            this.f69111c = 0L;
            onChanged();
            return this;
        }

        @Override
        public f2 getDefaultInstanceForType() {
            return f2.v6();
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
                                this.f69111c = input.H();
                                this.f69110b |= 1;
                            } else if (Z10 == 16) {
                                this.f69112d = input.G();
                                this.f69110b |= 2;
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
            if (other instanceof f2) {
                return v6((f2) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public final void v3(f2 result) {
            int i10 = this.f69110b;
            if ((i10 & 1) != 0) {
                result.f69107b = this.f69111c;
            }
            if ((i10 & 2) != 0) {
                result.f69108c = this.f69112d;
            }
        }

        public b v6(f2 other) {
            if (other == f2.v6()) {
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

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b x6(int value) {
            this.f69112d = value;
            this.f69110b |= 2;
            onChanged();
            return this;
        }

        public b y6(long value) {
            this.f69111c = value;
            this.f69110b |= 1;
            onChanged();
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
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

    public f2(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static f2 B6(InputStream input) throws IOException {
        return (f2) AbstractC12722w0.parseDelimitedWithIOException(f69106i, input);
    }

    public static f2 C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (f2) AbstractC12722w0.parseDelimitedWithIOException(f69106i, input, extensionRegistry);
    }

    public static f2 D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69106i.parseFrom(data);
    }

    public static f2 E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69106i.parseFrom(data, extensionRegistry);
    }

    public static f2 F6(C input) throws IOException {
        return (f2) AbstractC12722w0.parseWithIOException(f69106i, input);
    }

    public static f2 G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (f2) AbstractC12722w0.parseWithIOException(f69106i, input, extensionRegistry);
    }

    public static f2 H6(InputStream input) throws IOException {
        return (f2) AbstractC12722w0.parseWithIOException(f69106i, input);
    }

    public static f2 I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (f2) AbstractC12722w0.parseWithIOException(f69106i, input, extensionRegistry);
    }

    public static f2 J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69106i.parseFrom(data);
    }

    public static f2 K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69106i.parseFrom(data, extensionRegistry);
    }

    public static f2 L6(byte[] data) throws InvalidProtocolBufferException {
        return f69106i.parseFrom(data);
    }

    public static f2 M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69106i.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return h2.f69160a;
    }

    public static InterfaceC12723w1<f2> parser() {
        return f69106i;
    }

    public static f2 v6() {
        return f69105h;
    }

    public static b x6() {
        return f69105h.toBuilder();
    }

    public static b y6(f2 prototype) {
        return f69105h.toBuilder().v6(prototype);
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public int D() {
        return this.f69108c;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69105h ? new b(aVar) : new b(aVar).v6(this);
    }

    @Override
    public long T() {
        return this.f69107b;
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f2)) {
            return super.equals(obj);
        }
        f2 f2Var = (f2) obj;
        return T() == f2Var.T() && D() == f2Var.D() && getUnknownFields().equals(f2Var.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<f2> getParserForType() {
        return f69106i;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        long j10 = this.f69107b;
        int y02 = j10 != 0 ? CodedOutputStream.y0(1, j10) : 0;
        int i11 = this.f69108c;
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
        return h2.f69161b.d(f2.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69109d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69109d = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new f2();
    }

    @Override
    public f2 getDefaultInstanceForType() {
        return f69105h;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        long j10 = this.f69107b;
        if (j10 != 0) {
            output.L(1, j10);
        }
        int i10 = this.f69108c;
        if (i10 != 0) {
            output.i(2, i10);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public b newBuilderForType() {
        return x6();
    }

    public f2(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69107b = 0L;
        this.f69108c = 0;
        this.f69109d = (byte) -1;
    }

    public f2() {
        this.f69107b = 0L;
        this.f69108c = 0;
        this.f69109d = (byte) -1;
    }
}
