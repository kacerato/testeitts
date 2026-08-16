package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class C12674g extends AbstractC12722w0 implements InterfaceC12677h {

    public static final long f69113f = 0;

    public static final int f69114g = 1;

    public static final int f69115h = 2;

    public static final C12674g f69116i = new C12674g();

    public static final InterfaceC12723w1<C12674g> f69117j = new a();

    public volatile Y0 f69118b;

    public volatile Object f69119c;

    public AbstractC12724x f69120d;

    public byte f69121e;

    public class a extends AbstractC12661c<C12674g> {
        @Override
        public C12674g parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b C62 = C12674g.C6();
            try {
                C62.mergeFrom(input, extensionRegistry);
                return C62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(C62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(C62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(C62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12677h {

        public int f69122b;

        public Object f69123c;

        public AbstractC12724x f69124d;

        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return C12680i.f69163a;
        }

        public b A6(AbstractC12724x value) {
            value.getClass();
            this.f69124d = value;
            this.f69122b |= 2;
            onChanged();
            return this;
        }

        @Override
        public C12674g buildPartial() {
            C12674g c12674g = new C12674g(this, null);
            if (this.f69122b != 0) {
                v3(c12674g);
            }
            onBuilt();
            return c12674g;
        }

        @Override
        public AbstractC12724x K() {
            Object obj = this.f69123c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69123c = w10;
            return w10;
        }

        @Override
        public String O() {
            Object obj = this.f69123c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69123c = g02;
            return g02;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69122b = 0;
            this.f69123c = "";
            this.f69124d = AbstractC12724x.f69696g;
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return C12680i.f69163a;
        }

        @Override
        public AbstractC12724x getValue() {
            return this.f69124d;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C12680i.f69164b.d(C12674g.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public C12674g build() {
            C12674g buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69123c = C12674g.w6().O();
            this.f69122b &= -2;
            onChanged();
            return this;
        }

        public b r6() {
            this.f69122b &= -3;
            this.f69124d = C12674g.w6().getValue();
            onChanged();
            return this;
        }

        @Override
        public C12674g getDefaultInstanceForType() {
            return C12674g.w6();
        }

        public b t6(C12674g other) {
            if (other == C12674g.w6()) {
                return this;
            }
            if (!other.O().isEmpty()) {
                this.f69123c = other.f69119c;
                this.f69122b |= 1;
                onChanged();
            }
            if (other.getValue() != AbstractC12724x.f69696g) {
                A6(other.getValue());
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
                                this.f69123c = input.Y();
                                this.f69122b |= 1;
                            } else if (Z10 == 18) {
                                this.f69124d = input.y();
                                this.f69122b |= 2;
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

        public final void v3(C12674g result) {
            int i10 = this.f69122b;
            if ((i10 & 1) != 0) {
                result.f69119c = this.f69123c;
            }
            if ((i10 & 2) != 0) {
                result.f69120d = this.f69124d;
            }
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof C12674g) {
                return t6((C12674g) other);
            }
            super.mergeFrom(other);
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b x6(String value) {
            value.getClass();
            this.f69123c = value;
            this.f69122b |= 1;
            onChanged();
            return this;
        }

        public b y6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69123c = value;
            this.f69122b |= 1;
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
            this.f69123c = "";
            this.f69124d = AbstractC12724x.f69696g;
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69123c = "";
            this.f69124d = AbstractC12724x.f69696g;
        }
    }

    public C12674g(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static b C6() {
        return f69116i.toBuilder();
    }

    public static b D6(C12674g prototype) {
        return f69116i.toBuilder().t6(prototype);
    }

    public static <T extends Y0> C12674g G6(T message) {
        return C6().x6(z6("type.googleapis.com", message.getDescriptorForType())).A6(message.toByteString()).build();
    }

    public static <T extends Y0> C12674g H6(T message, String typeUrlPrefix) {
        return C6().x6(z6(typeUrlPrefix, message.getDescriptorForType())).A6(message.toByteString()).build();
    }

    public static C12674g I6(InputStream input) throws IOException {
        return (C12674g) AbstractC12722w0.parseDelimitedWithIOException(f69117j, input);
    }

    public static C12674g J6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12674g) AbstractC12722w0.parseDelimitedWithIOException(f69117j, input, extensionRegistry);
    }

    public static C12674g K6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69117j.parseFrom(data);
    }

    public static C12674g L6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69117j.parseFrom(data, extensionRegistry);
    }

    public static C12674g M6(C input) throws IOException {
        return (C12674g) AbstractC12722w0.parseWithIOException(f69117j, input);
    }

    public static C12674g N6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12674g) AbstractC12722w0.parseWithIOException(f69117j, input, extensionRegistry);
    }

    public static C12674g O6(InputStream input) throws IOException {
        return (C12674g) AbstractC12722w0.parseWithIOException(f69117j, input);
    }

    public static C12674g P6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12674g) AbstractC12722w0.parseWithIOException(f69117j, input, extensionRegistry);
    }

    public static C12674g Q6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69117j.parseFrom(data);
    }

    public static C12674g R6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69117j.parseFrom(data, extensionRegistry);
    }

    public static C12674g S6(byte[] data) throws InvalidProtocolBufferException {
        return f69117j.parseFrom(data);
    }

    public static C12674g T6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69117j.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return C12680i.f69163a;
    }

    public static InterfaceC12723w1<C12674g> parser() {
        return f69117j;
    }

    public static C12674g w6() {
        return f69116i;
    }

    public static String y6(String typeUrl) {
        int lastIndexOf = typeUrl.lastIndexOf(47);
        return lastIndexOf == -1 ? "" : typeUrl.substring(lastIndexOf + 1);
    }

    public static String z6(String typeUrlPrefix, Descriptors.b descriptor) {
        if (typeUrlPrefix.endsWith("/")) {
            return typeUrlPrefix + descriptor.b();
        }
        return typeUrlPrefix + "/" + descriptor.b();
    }

    public <T extends Y0> boolean A6(Class<T> clazz) {
        return y6(O()).equals(((Y0) D0.j(clazz)).getDescriptorForType().b());
    }

    public boolean B6(Y0 message) {
        return y6(O()).equals(message.getDescriptorForType().b());
    }

    @Override
    public b newBuilderForType() {
        return C6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public AbstractC12724x K() {
        Object obj = this.f69119c;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69119c = w10;
        return w10;
    }

    @Override
    public String O() {
        Object obj = this.f69119c;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69119c = g02;
        return g02;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69116i ? new b(aVar) : new b(aVar).t6(this);
    }

    public <T extends Y0> T V6(Class<T> cls) throws InvalidProtocolBufferException {
        if (this.f69118b != null) {
            if (this.f69118b.getClass() == cls) {
                return (T) this.f69118b;
            }
        } else if (A6(cls)) {
            T t10 = (T) ((Y0) D0.j(cls)).getParserForType().parseFrom(getValue());
            this.f69118b = t10;
            return t10;
        }
        throw new InvalidProtocolBufferException("Type of the Any message does not match the given class.");
    }

    public <T extends Y0> T W6(T t10) throws InvalidProtocolBufferException {
        if (this.f69118b != null) {
            if (this.f69118b.getClass() == t10.getClass()) {
                return (T) this.f69118b;
            }
        } else if (B6(t10)) {
            T t11 = (T) t10.getParserForType().parseFrom(getValue());
            this.f69118b = t11;
            return t11;
        }
        throw new InvalidProtocolBufferException("Type of the Any message does not match the given exemplar.");
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12674g)) {
            return super.equals(obj);
        }
        C12674g c12674g = (C12674g) obj;
        return O().equals(c12674g.O()) && getValue().equals(c12674g.getValue()) && getUnknownFields().equals(c12674g.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<C12674g> getParserForType() {
        return f69117j;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f69119c) ? AbstractC12722w0.computeStringSize(1, this.f69119c) : 0;
        if (!this.f69120d.isEmpty()) {
            computeStringSize += CodedOutputStream.g0(2, this.f69120d);
        }
        int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public AbstractC12724x getValue() {
        return this.f69120d;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + O().hashCode()) * 37) + 2) * 53) + getValue().hashCode()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return C12680i.f69164b.d(C12674g.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69121e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69121e = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12674g();
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f69119c)) {
            AbstractC12722w0.writeString(output, 1, this.f69119c);
        }
        if (!this.f69120d.isEmpty()) {
            output.h(2, this.f69120d);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public C12674g getDefaultInstanceForType() {
        return f69116i;
    }

    public C12674g(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69119c = "";
        this.f69120d = AbstractC12724x.f69696g;
        this.f69121e = (byte) -1;
    }

    public C12674g() {
        this.f69119c = "";
        AbstractC12724x abstractC12724x = AbstractC12724x.f69696g;
        this.f69120d = abstractC12724x;
        this.f69121e = (byte) -1;
        this.f69119c = "";
        this.f69120d = abstractC12724x;
    }
}
