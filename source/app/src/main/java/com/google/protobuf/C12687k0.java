package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public final class C12687k0 extends AbstractC12722w0 implements InterfaceC12690l0 {

    public static final long f69311d = 0;

    public static final int f69312e = 1;

    public static final C12687k0 f69313f = new C12687k0();

    public static final InterfaceC12723w1<C12687k0> f69314g = new a();

    public J0 f69315b;

    public byte f69316c;

    public class a extends AbstractC12661c<C12687k0> {
        @Override
        public C12687k0 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b y62 = C12687k0.y6();
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

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12690l0 {

        public int f69317b;

        public J0 f69318c;

        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return C12693m0.f69358a;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b B6(int index, String value) {
            value.getClass();
            u6();
            this.f69318c.set(index, value);
            this.f69317b |= 1;
            onChanged();
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        public b I1(String value) {
            value.getClass();
            u6();
            this.f69318c.add(value);
            this.f69317b |= 1;
            onChanged();
            return this;
        }

        @Override
        public int M3() {
            return this.f69318c.size();
        }

        @Override
        public C12687k0 build() {
            C12687k0 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public String c3(int index) {
            return this.f69318c.get(index);
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return C12693m0.f69358a;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C12693m0.f69359b.d(C12687k0.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        public b m1(Iterable<String> values) {
            u6();
            AbstractC12657b.a.addAll((Iterable) values, (List) this.f69318c);
            this.f69317b |= 1;
            onChanged();
            return this;
        }

        @Override
        public C12687k0 buildPartial() {
            C12687k0 c12687k0 = new C12687k0(this, null);
            if (this.f69317b != 0) {
                r6(c12687k0);
            }
            onBuilt();
            return c12687k0;
        }

        @Override
        public AbstractC12724x r1(int index) {
            return this.f69318c.ub(index);
        }

        public final void r6(C12687k0 result) {
            if ((this.f69317b & 1) != 0) {
                this.f69318c.r9();
                result.f69315b = this.f69318c;
            }
        }

        @Override
        public b s6() {
            super.s6();
            this.f69317b = 0;
            this.f69318c = J0.n();
            return this;
        }

        public b t6() {
            this.f69318c = J0.n();
            this.f69317b &= -2;
            onChanged();
            return this;
        }

        public final void u6() {
            if (!this.f69318c.hc()) {
                this.f69318c = new J0((K0) this.f69318c);
            }
            this.f69317b |= 1;
        }

        public b v3(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            u6();
            this.f69318c.b3(value);
            this.f69317b |= 1;
            onChanged();
            return this;
        }

        @Override
        public C12687k0 getDefaultInstanceForType() {
            return C12687k0.v6();
        }

        @Override
        public C1 I3() {
            this.f69318c.r9();
            return this.f69318c;
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
                                String Y10 = input.Y();
                                u6();
                                this.f69318c.add(Y10);
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

        public b y6(C12687k0 other) {
            if (other == C12687k0.v6()) {
                return this;
            }
            if (!other.f69315b.isEmpty()) {
                if (this.f69318c.isEmpty()) {
                    this.f69318c = other.f69315b;
                    this.f69317b |= 1;
                } else {
                    u6();
                    this.f69318c.addAll(other.f69315b);
                }
                onChanged();
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof C12687k0) {
                return y6((C12687k0) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public b() {
            this.f69318c = J0.n();
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69318c = J0.n();
        }
    }

    public C12687k0(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static C12687k0 C6(InputStream input) throws IOException {
        return (C12687k0) AbstractC12722w0.parseDelimitedWithIOException(f69314g, input);
    }

    public static C12687k0 D6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12687k0) AbstractC12722w0.parseDelimitedWithIOException(f69314g, input, extensionRegistry);
    }

    public static C12687k0 E6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69314g.parseFrom(data);
    }

    public static C12687k0 F6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69314g.parseFrom(data, extensionRegistry);
    }

    public static C12687k0 G6(C input) throws IOException {
        return (C12687k0) AbstractC12722w0.parseWithIOException(f69314g, input);
    }

    public static C12687k0 H6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12687k0) AbstractC12722w0.parseWithIOException(f69314g, input, extensionRegistry);
    }

    public static C12687k0 I6(InputStream input) throws IOException {
        return (C12687k0) AbstractC12722w0.parseWithIOException(f69314g, input);
    }

    public static C12687k0 J6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12687k0) AbstractC12722w0.parseWithIOException(f69314g, input, extensionRegistry);
    }

    public static C12687k0 K6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69314g.parseFrom(data);
    }

    public static C12687k0 L6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69314g.parseFrom(data, extensionRegistry);
    }

    public static C12687k0 M6(byte[] data) throws InvalidProtocolBufferException {
        return f69314g.parseFrom(data);
    }

    public static C12687k0 N6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69314g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return C12693m0.f69358a;
    }

    public static InterfaceC12723w1<C12687k0> parser() {
        return f69314g;
    }

    public static C12687k0 v6() {
        return f69313f;
    }

    public static b y6() {
        return f69313f.toBuilder();
    }

    public static b z6(C12687k0 prototype) {
        return f69313f.toBuilder().y6(prototype);
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
    public int M3() {
        return this.f69315b.size();
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69313f ? new b(aVar) : new b(aVar).y6(this);
    }

    @Override
    public String c3(int index) {
        return this.f69315b.get(index);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12687k0)) {
            return super.equals(obj);
        }
        C12687k0 c12687k0 = (C12687k0) obj;
        return I3().equals(c12687k0.I3()) && getUnknownFields().equals(c12687k0.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<C12687k0> getParserForType() {
        return f69314g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f69315b.size(); i12++) {
            i11 += AbstractC12722w0.computeStringSizeNoTag(this.f69315b.Ee(i12));
        }
        int size = i11 + I3().size() + getUnknownFields().getSerializedSize();
        this.memoizedSize = size;
        return size;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (M3() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + I3().hashCode();
        }
        int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return C12693m0.f69359b.d(C12687k0.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69316c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69316c = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12687k0();
    }

    @Override
    public AbstractC12724x r1(int index) {
        return this.f69315b.ub(index);
    }

    @Override
    public C12687k0 getDefaultInstanceForType() {
        return f69313f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        for (int i10 = 0; i10 < this.f69315b.size(); i10++) {
            AbstractC12722w0.writeString(output, 1, this.f69315b.Ee(i10));
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public C1 I3() {
        return this.f69315b;
    }

    public C12687k0(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69315b = J0.n();
        this.f69316c = (byte) -1;
    }

    public C12687k0() {
        this.f69315b = J0.n();
        this.f69316c = (byte) -1;
        this.f69315b = J0.n();
    }
}
