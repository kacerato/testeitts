package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class S1 extends AbstractC12722w0 implements T1 {

    public static final long f68905d = 0;

    public static final int f68906e = 1;

    public static final S1 f68907f = new S1();

    public static final InterfaceC12723w1<S1> f68908g = new a();

    public volatile Object f68909b;

    public byte f68910c;

    public class a extends AbstractC12661c<S1> {
        @Override
        public S1 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b x62 = S1.x6();
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

    public static final class b extends AbstractC12722w0.b<b> implements T1 {

        public int f68911b;

        public Object f68912c;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return U1.f68986a;
        }

        @Override
        public AbstractC12724x H2() {
            Object obj = this.f68912c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f68912c = w10;
            return w10;
        }

        @Override
        public S1 buildPartial() {
            S1 s12 = new S1(this, null);
            if (this.f68911b != 0) {
                v3(s12);
            }
            onBuilt();
            return s12;
        }

        @Override
        public b s6() {
            super.s6();
            this.f68911b = 0;
            this.f68912c = "";
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return U1.f68986a;
        }

        @Override
        public String getFileName() {
            Object obj = this.f68912c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f68912c = g02;
            return g02;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return U1.f68987b.d(S1.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public S1 build() {
            S1 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f68912c = S1.v6().getFileName();
            this.f68911b &= -2;
            onChanged();
            return this;
        }

        @Override
        public S1 getDefaultInstanceForType() {
            return S1.v6();
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
                                this.f68912c = input.Y();
                                this.f68911b |= 1;
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
            if (other instanceof S1) {
                return u6((S1) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b u6(S1 other) {
            if (other == S1.v6()) {
                return this;
            }
            if (!other.getFileName().isEmpty()) {
                this.f68912c = other.f68909b;
                this.f68911b |= 1;
                onChanged();
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public final void v3(S1 result) {
            if ((this.f68911b & 1) != 0) {
                result.f68909b = this.f68912c;
            }
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b w6(String value) {
            value.getClass();
            this.f68912c = value;
            this.f68911b |= 1;
            onChanged();
            return this;
        }

        public b x6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f68912c = value;
            this.f68911b |= 1;
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
            this.f68912c = "";
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f68912c = "";
        }
    }

    public S1(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static S1 B6(InputStream input) throws IOException {
        return (S1) AbstractC12722w0.parseDelimitedWithIOException(f68908g, input);
    }

    public static S1 C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (S1) AbstractC12722w0.parseDelimitedWithIOException(f68908g, input, extensionRegistry);
    }

    public static S1 D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f68908g.parseFrom(data);
    }

    public static S1 E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68908g.parseFrom(data, extensionRegistry);
    }

    public static S1 F6(C input) throws IOException {
        return (S1) AbstractC12722w0.parseWithIOException(f68908g, input);
    }

    public static S1 G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (S1) AbstractC12722w0.parseWithIOException(f68908g, input, extensionRegistry);
    }

    public static S1 H6(InputStream input) throws IOException {
        return (S1) AbstractC12722w0.parseWithIOException(f68908g, input);
    }

    public static S1 I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (S1) AbstractC12722w0.parseWithIOException(f68908g, input, extensionRegistry);
    }

    public static S1 J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f68908g.parseFrom(data);
    }

    public static S1 K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68908g.parseFrom(data, extensionRegistry);
    }

    public static S1 L6(byte[] data) throws InvalidProtocolBufferException {
        return f68908g.parseFrom(data);
    }

    public static S1 M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68908g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return U1.f68986a;
    }

    public static InterfaceC12723w1<S1> parser() {
        return f68908g;
    }

    public static S1 v6() {
        return f68907f;
    }

    public static b x6() {
        return f68907f.toBuilder();
    }

    public static b y6(S1 prototype) {
        return f68907f.toBuilder().u6(prototype);
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public AbstractC12724x H2() {
        Object obj = this.f68909b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f68909b = w10;
        return w10;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f68907f ? new b(aVar) : new b(aVar).u6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof S1)) {
            return super.equals(obj);
        }
        S1 s12 = (S1) obj;
        return getFileName().equals(s12.getFileName()) && getUnknownFields().equals(s12.getUnknownFields());
    }

    @Override
    public String getFileName() {
        Object obj = this.f68909b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f68909b = g02;
        return g02;
    }

    @Override
    public InterfaceC12723w1<S1> getParserForType() {
        return f68908g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (!AbstractC12722w0.isStringEmpty(this.f68909b) ? AbstractC12722w0.computeStringSize(1, this.f68909b) : 0) + getUnknownFields().getSerializedSize();
        this.memoizedSize = computeStringSize;
        return computeStringSize;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getFileName().hashCode()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return U1.f68987b.d(S1.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f68910c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f68910c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new S1();
    }

    @Override
    public S1 getDefaultInstanceForType() {
        return f68907f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f68909b)) {
            AbstractC12722w0.writeString(output, 1, this.f68909b);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public b newBuilderForType() {
        return x6();
    }

    public S1(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f68909b = "";
        this.f68910c = (byte) -1;
    }

    public S1() {
        this.f68909b = "";
        this.f68910c = (byte) -1;
        this.f68909b = "";
    }
}
