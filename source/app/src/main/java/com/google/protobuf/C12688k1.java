package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class C12688k1 extends AbstractC12722w0 implements InterfaceC12691l1 {

    public static final long f69319e = 0;

    public static final int f69320f = 1;

    public static final int f69321g = 2;

    public static final C12688k1 f69322h = new C12688k1();

    public static final InterfaceC12723w1<C12688k1> f69323i = new a();

    public volatile Object f69324b;

    public volatile Object f69325c;

    public byte f69326d;

    public class a extends AbstractC12661c<C12688k1> {
        @Override
        public C12688k1 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b z62 = C12688k1.z6();
            try {
                z62.mergeFrom(input, extensionRegistry);
                return z62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(z62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(z62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(z62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12691l1 {

        public int f69327b;

        public Object f69328c;

        public Object f69329d;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return C12689l.f69345e;
        }

        public b A6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69329d = value;
            this.f69327b |= 2;
            onChanged();
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        @Override
        public AbstractC12724x C0() {
            Object obj = this.f69329d;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69329d = w10;
            return w10;
        }

        @Override
        public C12688k1 buildPartial() {
            C12688k1 c12688k1 = new C12688k1(this, null);
            if (this.f69327b != 0) {
                v3(c12688k1);
            }
            onBuilt();
            return c12688k1;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69327b = 0;
            this.f69328c = "";
            this.f69329d = "";
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return C12689l.f69345e;
        }

        @Override
        public String getName() {
            Object obj = this.f69328c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69328c = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getNameBytes() {
            Object obj = this.f69328c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69328c = w10;
            return w10;
        }

        @Override
        public String getRoot() {
            Object obj = this.f69329d;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69329d = g02;
            return g02;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C12689l.f69346f.d(C12688k1.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public C12688k1 build() {
            C12688k1 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69328c = C12688k1.x6().getName();
            this.f69327b &= -2;
            onChanged();
            return this;
        }

        public b r6() {
            this.f69329d = C12688k1.x6().getRoot();
            this.f69327b &= -3;
            onChanged();
            return this;
        }

        @Override
        public C12688k1 getDefaultInstanceForType() {
            return C12688k1.x6();
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
                                this.f69328c = input.Y();
                                this.f69327b |= 1;
                            } else if (Z10 == 18) {
                                this.f69329d = input.Y();
                                this.f69327b |= 2;
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
            if (other instanceof C12688k1) {
                return v6((C12688k1) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public final void v3(C12688k1 result) {
            int i10 = this.f69327b;
            if ((i10 & 1) != 0) {
                result.f69324b = this.f69328c;
            }
            if ((i10 & 2) != 0) {
                result.f69325c = this.f69329d;
            }
        }

        public b v6(C12688k1 other) {
            if (other == C12688k1.x6()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f69328c = other.f69324b;
                this.f69327b |= 1;
                onChanged();
            }
            if (!other.getRoot().isEmpty()) {
                this.f69329d = other.f69325c;
                this.f69327b |= 2;
                onChanged();
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b x6(String value) {
            value.getClass();
            this.f69328c = value;
            this.f69327b |= 1;
            onChanged();
            return this;
        }

        public b y6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69328c = value;
            this.f69327b |= 1;
            onChanged();
            return this;
        }

        public b z6(String value) {
            value.getClass();
            this.f69329d = value;
            this.f69327b |= 2;
            onChanged();
            return this;
        }

        public b(a aVar) {
            this();
        }

        public b() {
            this.f69328c = "";
            this.f69329d = "";
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69328c = "";
            this.f69329d = "";
        }
    }

    public C12688k1(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static b A6(C12688k1 prototype) {
        return f69322h.toBuilder().v6(prototype);
    }

    public static C12688k1 D6(InputStream input) throws IOException {
        return (C12688k1) AbstractC12722w0.parseDelimitedWithIOException(f69323i, input);
    }

    public static C12688k1 E6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12688k1) AbstractC12722w0.parseDelimitedWithIOException(f69323i, input, extensionRegistry);
    }

    public static C12688k1 F6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69323i.parseFrom(data);
    }

    public static C12688k1 G6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69323i.parseFrom(data, extensionRegistry);
    }

    public static C12688k1 H6(C input) throws IOException {
        return (C12688k1) AbstractC12722w0.parseWithIOException(f69323i, input);
    }

    public static C12688k1 I6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12688k1) AbstractC12722w0.parseWithIOException(f69323i, input, extensionRegistry);
    }

    public static C12688k1 J6(InputStream input) throws IOException {
        return (C12688k1) AbstractC12722w0.parseWithIOException(f69323i, input);
    }

    public static C12688k1 K6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12688k1) AbstractC12722w0.parseWithIOException(f69323i, input, extensionRegistry);
    }

    public static C12688k1 L6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69323i.parseFrom(data);
    }

    public static C12688k1 M6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69323i.parseFrom(data, extensionRegistry);
    }

    public static C12688k1 N6(byte[] data) throws InvalidProtocolBufferException {
        return f69323i.parseFrom(data);
    }

    public static C12688k1 O6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69323i.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return C12689l.f69345e;
    }

    public static InterfaceC12723w1<C12688k1> parser() {
        return f69323i;
    }

    public static C12688k1 x6() {
        return f69322h;
    }

    public static b z6() {
        return f69322h.toBuilder();
    }

    @Override
    public b newBuilderForType() {
        return z6();
    }

    @Override
    public AbstractC12724x C0() {
        Object obj = this.f69325c;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69325c = w10;
        return w10;
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69322h ? new b(aVar) : new b(aVar).v6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12688k1)) {
            return super.equals(obj);
        }
        C12688k1 c12688k1 = (C12688k1) obj;
        return getName().equals(c12688k1.getName()) && getRoot().equals(c12688k1.getRoot()) && getUnknownFields().equals(c12688k1.getUnknownFields());
    }

    @Override
    public String getName() {
        Object obj = this.f69324b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69324b = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getNameBytes() {
        Object obj = this.f69324b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69324b = w10;
        return w10;
    }

    @Override
    public InterfaceC12723w1<C12688k1> getParserForType() {
        return f69323i;
    }

    @Override
    public String getRoot() {
        Object obj = this.f69325c;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69325c = g02;
        return g02;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f69324b) ? AbstractC12722w0.computeStringSize(1, this.f69324b) : 0;
        if (!AbstractC12722w0.isStringEmpty(this.f69325c)) {
            computeStringSize += AbstractC12722w0.computeStringSize(2, this.f69325c);
        }
        int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getRoot().hashCode()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return C12689l.f69346f.d(C12688k1.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69326d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69326d = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12688k1();
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f69324b)) {
            AbstractC12722w0.writeString(output, 1, this.f69324b);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69325c)) {
            AbstractC12722w0.writeString(output, 2, this.f69325c);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public C12688k1 getDefaultInstanceForType() {
        return f69322h;
    }

    public C12688k1(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69324b = "";
        this.f69325c = "";
        this.f69326d = (byte) -1;
    }

    public C12688k1() {
        this.f69324b = "";
        this.f69325c = "";
        this.f69326d = (byte) -1;
        this.f69324b = "";
        this.f69325c = "";
    }
}
