package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.C12674g;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class C12717u1 extends AbstractC12722w0 implements InterfaceC12720v1 {

    public static final long f69570e = 0;

    public static final int f69571f = 1;

    public static final int f69572g = 2;

    public static final C12717u1 f69573h = new C12717u1();

    public static final InterfaceC12723w1<C12717u1> f69574i = new a();

    public volatile Object f69575b;

    public C12674g f69576c;

    public byte f69577d;

    public class a extends AbstractC12661c<C12717u1> {
        @Override
        public C12717u1 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b y62 = C12717u1.y6();
            try {
                y62.mergeFrom(input, extensionRegistry);
                return y62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(y62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(y62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(y62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12720v1 {

        public int f69578b;

        public Object f69579c;

        public C12674g f69580d;

        public Q1<C12674g, C12674g.b, InterfaceC12677h> f69581e;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return k2.f69338i;
        }

        public b A6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69579c = value;
            this.f69578b |= 1;
            onChanged();
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        public b C6(C12674g.b builderForValue) {
            Q1<C12674g, C12674g.b, InterfaceC12677h> q12 = this.f69581e;
            if (q12 == null) {
                this.f69580d = builderForValue.build();
            } else {
                q12.j(builderForValue.build());
            }
            this.f69578b |= 2;
            onChanged();
            return this;
        }

        public b D6(C12674g value) {
            Q1<C12674g, C12674g.b, InterfaceC12677h> q12 = this.f69581e;
            if (q12 == null) {
                value.getClass();
                this.f69580d = value;
            } else {
                q12.j(value);
            }
            this.f69578b |= 2;
            onChanged();
            return this;
        }

        @Override
        public C12717u1 buildPartial() {
            C12717u1 c12717u1 = new C12717u1(this, null);
            if (this.f69578b != 0) {
                v3(c12717u1);
            }
            onBuilt();
            return c12717u1;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69578b = 0;
            this.f69579c = "";
            this.f69580d = null;
            Q1<C12674g, C12674g.b, InterfaceC12677h> q12 = this.f69581e;
            if (q12 != null) {
                q12.d();
                this.f69581e = null;
            }
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return k2.f69338i;
        }

        @Override
        public String getName() {
            Object obj = this.f69579c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69579c = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getNameBytes() {
            Object obj = this.f69579c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69579c = w10;
            return w10;
        }

        @Override
        public C12674g getValue() {
            Q1<C12674g, C12674g.b, InterfaceC12677h> q12 = this.f69581e;
            if (q12 != null) {
                return q12.f();
            }
            C12674g c12674g = this.f69580d;
            return c12674g == null ? C12674g.w6() : c12674g;
        }

        public final Q1<C12674g, C12674g.b, InterfaceC12677h> getValueFieldBuilder() {
            if (this.f69581e == null) {
                this.f69581e = new Q1<>(getValue(), getParentForChildren(), isClean());
                this.f69580d = null;
            }
            return this.f69581e;
        }

        @Override
        public InterfaceC12677h getValueOrBuilder() {
            Q1<C12674g, C12674g.b, InterfaceC12677h> q12 = this.f69581e;
            if (q12 != null) {
                return q12.g();
            }
            C12674g c12674g = this.f69580d;
            return c12674g == null ? C12674g.w6() : c12674g;
        }

        @Override
        public boolean hasValue() {
            return (this.f69578b & 2) != 0;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return k2.f69339j.d(C12717u1.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public C12717u1 build() {
            C12717u1 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b q6() {
            this.f69579c = C12717u1.w6().getName();
            this.f69578b &= -2;
            onChanged();
            return this;
        }

        public b r6() {
            this.f69578b &= -3;
            this.f69580d = null;
            Q1<C12674g, C12674g.b, InterfaceC12677h> q12 = this.f69581e;
            if (q12 != null) {
                q12.d();
                this.f69581e = null;
            }
            onChanged();
            return this;
        }

        @Override
        public C12717u1 getDefaultInstanceForType() {
            return C12717u1.w6();
        }

        public C12674g.b t6() {
            this.f69578b |= 2;
            onChanged();
            return getValueFieldBuilder().e();
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
                                this.f69579c = input.Y();
                                this.f69578b |= 1;
                            } else if (Z10 == 18) {
                                input.J(getValueFieldBuilder().e(), extensionRegistry);
                                this.f69578b |= 2;
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

        public final void v3(C12717u1 result) {
            int i10 = this.f69578b;
            if ((i10 & 1) != 0) {
                result.f69575b = this.f69579c;
            }
            if ((i10 & 2) != 0) {
                Q1<C12674g, C12674g.b, InterfaceC12677h> q12 = this.f69581e;
                result.f69576c = q12 == null ? this.f69580d : q12.b();
            }
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof C12717u1) {
                return w6((C12717u1) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b w6(C12717u1 other) {
            if (other == C12717u1.w6()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f69579c = other.f69575b;
                this.f69578b |= 1;
                onChanged();
            }
            if (other.hasValue()) {
                y6(other.getValue());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b y6(C12674g value) {
            C12674g c12674g;
            Q1<C12674g, C12674g.b, InterfaceC12677h> q12 = this.f69581e;
            if (q12 != null) {
                q12.h(value);
            } else if ((this.f69578b & 2) == 0 || (c12674g = this.f69580d) == null || c12674g == C12674g.w6()) {
                this.f69580d = value;
            } else {
                t6().t6(value);
            }
            this.f69578b |= 2;
            onChanged();
            return this;
        }

        public b z6(String value) {
            value.getClass();
            this.f69579c = value;
            this.f69578b |= 1;
            onChanged();
            return this;
        }

        public b(a aVar) {
            this();
        }

        public b() {
            this.f69579c = "";
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69579c = "";
        }
    }

    public C12717u1(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static C12717u1 C6(InputStream input) throws IOException {
        return (C12717u1) AbstractC12722w0.parseDelimitedWithIOException(f69574i, input);
    }

    public static C12717u1 D6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12717u1) AbstractC12722w0.parseDelimitedWithIOException(f69574i, input, extensionRegistry);
    }

    public static C12717u1 E6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69574i.parseFrom(data);
    }

    public static C12717u1 F6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69574i.parseFrom(data, extensionRegistry);
    }

    public static C12717u1 G6(C input) throws IOException {
        return (C12717u1) AbstractC12722w0.parseWithIOException(f69574i, input);
    }

    public static C12717u1 H6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12717u1) AbstractC12722w0.parseWithIOException(f69574i, input, extensionRegistry);
    }

    public static C12717u1 I6(InputStream input) throws IOException {
        return (C12717u1) AbstractC12722w0.parseWithIOException(f69574i, input);
    }

    public static C12717u1 J6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12717u1) AbstractC12722w0.parseWithIOException(f69574i, input, extensionRegistry);
    }

    public static C12717u1 K6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69574i.parseFrom(data);
    }

    public static C12717u1 L6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69574i.parseFrom(data, extensionRegistry);
    }

    public static C12717u1 M6(byte[] data) throws InvalidProtocolBufferException {
        return f69574i.parseFrom(data);
    }

    public static C12717u1 N6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69574i.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return k2.f69338i;
    }

    public static InterfaceC12723w1<C12717u1> parser() {
        return f69574i;
    }

    public static C12717u1 w6() {
        return f69573h;
    }

    public static b y6() {
        return f69573h.toBuilder();
    }

    public static b z6(C12717u1 prototype) {
        return f69573h.toBuilder().w6(prototype);
    }

    @Override
    public b newBuilderForType() {
        return y6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69573h ? new b(aVar) : new b(aVar).w6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12717u1)) {
            return super.equals(obj);
        }
        C12717u1 c12717u1 = (C12717u1) obj;
        if (getName().equals(c12717u1.getName()) && hasValue() == c12717u1.hasValue()) {
            return (!hasValue() || getValue().equals(c12717u1.getValue())) && getUnknownFields().equals(c12717u1.getUnknownFields());
        }
        return false;
    }

    @Override
    public String getName() {
        Object obj = this.f69575b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69575b = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getNameBytes() {
        Object obj = this.f69575b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69575b = w10;
        return w10;
    }

    @Override
    public InterfaceC12723w1<C12717u1> getParserForType() {
        return f69574i;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f69575b) ? AbstractC12722w0.computeStringSize(1, this.f69575b) : 0;
        if (this.f69576c != null) {
            computeStringSize += CodedOutputStream.F0(2, getValue());
        }
        int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public C12674g getValue() {
        C12674g c12674g = this.f69576c;
        return c12674g == null ? C12674g.w6() : c12674g;
    }

    @Override
    public InterfaceC12677h getValueOrBuilder() {
        C12674g c12674g = this.f69576c;
        return c12674g == null ? C12674g.w6() : c12674g;
    }

    @Override
    public boolean hasValue() {
        return this.f69576c != null;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasValue()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getValue().hashCode();
        }
        int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return k2.f69339j.d(C12717u1.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69577d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69577d = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12717u1();
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f69575b)) {
            AbstractC12722w0.writeString(output, 1, this.f69575b);
        }
        if (this.f69576c != null) {
            output.L1(2, getValue());
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public C12717u1 getDefaultInstanceForType() {
        return f69573h;
    }

    public C12717u1(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69575b = "";
        this.f69577d = (byte) -1;
    }

    public C12717u1() {
        this.f69575b = "";
        this.f69577d = (byte) -1;
        this.f69575b = "";
    }
}
