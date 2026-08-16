package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.y2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class M0 extends AbstractC12722w0 implements N0 {

    public static final long f68797d = 0;

    public static final int f68798e = 1;

    public static final M0 f68799f = new M0();

    public static final InterfaceC12723w1<M0> f68800g = new a();

    public List<y2> f68801b;

    public byte f68802c;

    public class a extends AbstractC12661c<M0> {
        @Override
        public M0 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b x62 = M0.x6();
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

    public static final class b extends AbstractC12722w0.b<b> implements N0 {

        public int f68803b;

        public List<y2> f68804c;

        public G1<y2, y2.c, z2> f68805d;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return Z1.f69035g;
        }

        @Override
        public M0 getDefaultInstanceForType() {
            return M0.v6();
        }

        public y2.c B6(int index) {
            return D6().l(index);
        }

        public List<y2.c> C6() {
            return D6().m();
        }

        public final G1<y2, y2.c, z2> D6() {
            if (this.f68805d == null) {
                this.f68805d = new G1<>(this.f68804c, (this.f68803b & 1) != 0, getParentForChildren(), isClean());
                this.f68804c = null;
            }
            return this.f68805d;
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
                                y2 y2Var = (y2) input.I(y2.parser(), extensionRegistry);
                                G1<y2, y2.c, z2> g12 = this.f68805d;
                                if (g12 == null) {
                                    z6();
                                    this.f68804c.add(y2Var);
                                } else {
                                    g12.f(y2Var);
                                }
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

        public b F6(M0 other) {
            if (other == M0.v6()) {
                return this;
            }
            if (this.f68805d == null) {
                if (!other.f68801b.isEmpty()) {
                    if (this.f68804c.isEmpty()) {
                        this.f68804c = other.f68801b;
                        this.f68803b &= -2;
                    } else {
                        z6();
                        this.f68804c.addAll(other.f68801b);
                    }
                    onChanged();
                }
            } else if (!other.f68801b.isEmpty()) {
                if (this.f68805d.u()) {
                    this.f68805d.i();
                    this.f68805d = null;
                    this.f68804c = other.f68801b;
                    this.f68803b &= -2;
                    this.f68805d = AbstractC12722w0.alwaysUseFieldBuilders ? D6() : null;
                } else {
                    this.f68805d.b(other.f68801b);
                }
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof M0) {
                return F6((M0) other);
            }
            super.mergeFrom(other);
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b I1(int index, y2.c builderForValue) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                z6();
                this.f68804c.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        public b I6(int index) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                z6();
                this.f68804c.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        public b K6(int index, y2.c builderForValue) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                z6();
                this.f68804c.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        public b L6(int index, y2 value) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                value.getClass();
                z6();
                this.f68804c.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        @Override
        public int S1() {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            return g12 == null ? this.f68804c.size() : g12.n();
        }

        @Override
        public List<y2> W5() {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            return g12 == null ? Collections.unmodifiableList(this.f68804c) : g12.q();
        }

        public b a5(y2.c builderForValue) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                z6();
                this.f68804c.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        @Override
        public List<? extends z2> b6() {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f68804c);
        }

        @Override
        public z2 d5(int index) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            return g12 == null ? this.f68804c.get(index) : g12.r(index);
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return Z1.f69035g;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return Z1.f69036h.d(M0.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public y2 j6(int index) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            return g12 == null ? this.f68804c.get(index) : g12.o(index);
        }

        public b m1(Iterable<? extends y2> values) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                z6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f68804c);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        public b q6(y2 value) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                value.getClass();
                z6();
                this.f68804c.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public y2.c r6() {
            return D6().d(y2.w6());
        }

        public y2.c s6(int index) {
            return D6().c(index, y2.w6());
        }

        @Override
        public M0 build() {
            M0 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public M0 buildPartial() {
            M0 m02 = new M0(this, null);
            w6(m02);
            if (this.f68803b != 0) {
                v6(m02);
            }
            onBuilt();
            return m02;
        }

        public b v3(int index, y2 value) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                value.getClass();
                z6();
                this.f68804c.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public final void v6(M0 result) {
        }

        public final void w6(M0 result) {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 != null) {
                result.f68801b = g12.g();
                return;
            }
            if ((this.f68803b & 1) != 0) {
                this.f68804c = Collections.unmodifiableList(this.f68804c);
                this.f68803b &= -2;
            }
            result.f68801b = this.f68804c;
        }

        @Override
        public b s6() {
            super.s6();
            this.f68803b = 0;
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                this.f68804c = Collections.emptyList();
            } else {
                this.f68804c = null;
                g12.h();
            }
            this.f68803b &= -2;
            return this;
        }

        public b y6() {
            G1<y2, y2.c, z2> g12 = this.f68805d;
            if (g12 == null) {
                this.f68804c = Collections.emptyList();
                this.f68803b &= -2;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public final void z6() {
            if ((this.f68803b & 1) == 0) {
                this.f68804c = new ArrayList(this.f68804c);
                this.f68803b |= 1;
            }
        }

        public b(a aVar) {
            this();
        }

        public b() {
            this.f68804c = Collections.emptyList();
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f68804c = Collections.emptyList();
        }
    }

    public M0(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static M0 B6(InputStream input) throws IOException {
        return (M0) AbstractC12722w0.parseDelimitedWithIOException(f68800g, input);
    }

    public static M0 C6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (M0) AbstractC12722w0.parseDelimitedWithIOException(f68800g, input, extensionRegistry);
    }

    public static M0 D6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f68800g.parseFrom(data);
    }

    public static M0 E6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68800g.parseFrom(data, extensionRegistry);
    }

    public static M0 F6(C input) throws IOException {
        return (M0) AbstractC12722w0.parseWithIOException(f68800g, input);
    }

    public static M0 G6(C input, C12666d0 extensionRegistry) throws IOException {
        return (M0) AbstractC12722w0.parseWithIOException(f68800g, input, extensionRegistry);
    }

    public static M0 H6(InputStream input) throws IOException {
        return (M0) AbstractC12722w0.parseWithIOException(f68800g, input);
    }

    public static M0 I6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (M0) AbstractC12722w0.parseWithIOException(f68800g, input, extensionRegistry);
    }

    public static M0 J6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f68800g.parseFrom(data);
    }

    public static M0 K6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68800g.parseFrom(data, extensionRegistry);
    }

    public static M0 L6(byte[] data) throws InvalidProtocolBufferException {
        return f68800g.parseFrom(data);
    }

    public static M0 M6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68800g.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return Z1.f69035g;
    }

    public static InterfaceC12723w1<M0> parser() {
        return f68800g;
    }

    public static M0 v6() {
        return f68799f;
    }

    public static b x6() {
        return f68799f.toBuilder();
    }

    public static b y6(M0 prototype) {
        return f68799f.toBuilder().F6(prototype);
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f68799f ? new b(aVar) : new b(aVar).F6(this);
    }

    @Override
    public int S1() {
        return this.f68801b.size();
    }

    @Override
    public List<y2> W5() {
        return this.f68801b;
    }

    @Override
    public List<? extends z2> b6() {
        return this.f68801b;
    }

    @Override
    public z2 d5(int index) {
        return this.f68801b.get(index);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof M0)) {
            return super.equals(obj);
        }
        M0 m02 = (M0) obj;
        return W5().equals(m02.W5()) && getUnknownFields().equals(m02.getUnknownFields());
    }

    @Override
    public InterfaceC12723w1<M0> getParserForType() {
        return f68800g;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f68801b.size(); i12++) {
            i11 += CodedOutputStream.F0(1, this.f68801b.get(i12));
        }
        int serializedSize = i11 + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (S1() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + W5().hashCode();
        }
        int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return Z1.f69036h.d(M0.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f68802c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f68802c = (byte) 1;
        return true;
    }

    @Override
    public y2 j6(int index) {
        return this.f68801b.get(index);
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new M0();
    }

    @Override
    public M0 getDefaultInstanceForType() {
        return f68799f;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        for (int i10 = 0; i10 < this.f68801b.size(); i10++) {
            output.L1(1, this.f68801b.get(i10));
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public b newBuilderForType() {
        return x6();
    }

    public M0(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f68802c = (byte) -1;
    }

    public M0() {
        this.f68802c = (byte) -1;
        this.f68801b = Collections.emptyList();
    }
}
