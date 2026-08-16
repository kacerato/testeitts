package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.C12717u1;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class W extends AbstractC12722w0 implements X {

    public static final long f69003f = 0;

    public static final int f69004g = 1;

    public static final int f69005h = 2;

    public static final int f69006i = 3;

    public static final W f69007j = new W();

    public static final InterfaceC12723w1<W> f69008k = new a();

    public volatile Object f69009b;

    public int f69010c;

    public List<C12717u1> f69011d;

    public byte f69012e;

    public class a extends AbstractC12661c<W> {
        @Override
        public W parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b A62 = W.A6();
            try {
                A62.mergeFrom(input, extensionRegistry);
                return A62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(A62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(A62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(A62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements X {

        public int f69013b;

        public Object f69014c;

        public int f69015d;

        public List<C12717u1> f69016e;

        public G1<C12717u1, C12717u1.b, InterfaceC12720v1> f69017f;

        public b(a aVar) {
            this();
        }

        private void B6() {
            if ((this.f69013b & 4) == 0) {
                this.f69016e = new ArrayList(this.f69016e);
                this.f69013b |= 4;
            }
        }

        private G1<C12717u1, C12717u1.b, InterfaceC12720v1> F6() {
            if (this.f69017f == null) {
                this.f69017f = new G1<>(this.f69016e, (this.f69013b & 4) != 0, getParentForChildren(), isClean());
                this.f69016e = null;
            }
            return this.f69017f;
        }

        public static final Descriptors.b getDescriptor() {
            return k2.f69336g;
        }

        public b A6() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                this.f69016e = Collections.emptyList();
                this.f69013b &= -5;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        @Override
        public W getDefaultInstanceForType() {
            return W.y6();
        }

        public C12717u1.b D6(int index) {
            return F6().l(index);
        }

        public List<C12717u1.b> E6() {
            return F6().m();
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
                                this.f69014c = input.Y();
                                this.f69013b |= 1;
                            } else if (Z10 == 16) {
                                this.f69015d = input.G();
                                this.f69013b |= 2;
                            } else if (Z10 == 26) {
                                C12717u1 c12717u1 = (C12717u1) input.I(C12717u1.parser(), extensionRegistry);
                                G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
                                if (g12 == null) {
                                    B6();
                                    this.f69016e.add(c12717u1);
                                } else {
                                    g12.f(c12717u1);
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

        public b H6(W other) {
            if (other == W.y6()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f69014c = other.f69009b;
                this.f69013b |= 1;
                onChanged();
            }
            if (other.getNumber() != 0) {
                N6(other.getNumber());
            }
            if (this.f69017f == null) {
                if (!other.f69011d.isEmpty()) {
                    if (this.f69016e.isEmpty()) {
                        this.f69016e = other.f69011d;
                        this.f69013b &= -5;
                    } else {
                        B6();
                        this.f69016e.addAll(other.f69011d);
                    }
                    onChanged();
                }
            } else if (!other.f69011d.isEmpty()) {
                if (this.f69017f.u()) {
                    this.f69017f.i();
                    this.f69017f = null;
                    this.f69016e = other.f69011d;
                    this.f69013b &= -5;
                    this.f69017f = AbstractC12722w0.alwaysUseFieldBuilders ? F6() : null;
                } else {
                    this.f69017f.b(other.f69011d);
                }
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        public b I1(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                B6();
                this.f69016e.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof W) {
                return H6((W) other);
            }
            super.mergeFrom(other);
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b K6(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                B6();
                this.f69016e.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        public b L6(String value) {
            value.getClass();
            this.f69014c = value;
            this.f69013b |= 1;
            onChanged();
            return this;
        }

        public b M6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69014c = value;
            this.f69013b |= 1;
            onChanged();
            return this;
        }

        public b N6(int value) {
            this.f69015d = value;
            this.f69013b |= 2;
            onChanged();
            return this;
        }

        public b O6(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                B6();
                this.f69016e.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        public b P6(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                value.getClass();
                B6();
                this.f69016e.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        public b a5(C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                B6();
                this.f69016e.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return k2.f69336g;
        }

        @Override
        public String getName() {
            Object obj = this.f69014c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69014c = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getNameBytes() {
            Object obj = this.f69014c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69014c = w10;
            return w10;
        }

        @Override
        public int getNumber() {
            return this.f69015d;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return k2.f69337h.d(W.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public List<C12717u1> j() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            return g12 == null ? Collections.unmodifiableList(this.f69016e) : g12.q();
        }

        @Override
        public C12717u1 k(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            return g12 == null ? this.f69016e.get(index) : g12.o(index);
        }

        @Override
        public InterfaceC12720v1 l(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            return g12 == null ? this.f69016e.get(index) : g12.r(index);
        }

        public b m1(Iterable<? extends C12717u1> values) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                B6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f69016e);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        @Override
        public int n() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            return g12 == null ? this.f69016e.size() : g12.n();
        }

        @Override
        public List<? extends InterfaceC12720v1> o() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f69016e);
        }

        public b q6(C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                value.getClass();
                B6();
                this.f69016e.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public C12717u1.b r6() {
            return F6().d(C12717u1.w6());
        }

        public C12717u1.b s6(int index) {
            return F6().c(index, C12717u1.w6());
        }

        @Override
        public W build() {
            W buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public W buildPartial() {
            W w10 = new W(this, null);
            w6(w10);
            if (this.f69013b != 0) {
                v6(w10);
            }
            onBuilt();
            return w10;
        }

        public b v3(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                value.getClass();
                B6();
                this.f69016e.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public final void v6(W result) {
            int i10 = this.f69013b;
            if ((i10 & 1) != 0) {
                result.f69009b = this.f69014c;
            }
            if ((i10 & 2) != 0) {
                result.f69010c = this.f69015d;
            }
        }

        public final void w6(W result) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 != null) {
                result.f69011d = g12.g();
                return;
            }
            if ((this.f69013b & 4) != 0) {
                this.f69016e = Collections.unmodifiableList(this.f69016e);
                this.f69013b &= -5;
            }
            result.f69011d = this.f69016e;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69013b = 0;
            this.f69014c = "";
            this.f69015d = 0;
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69017f;
            if (g12 == null) {
                this.f69016e = Collections.emptyList();
            } else {
                this.f69016e = null;
                g12.h();
            }
            this.f69013b &= -5;
            return this;
        }

        public b y6() {
            this.f69014c = W.y6().getName();
            this.f69013b &= -2;
            onChanged();
            return this;
        }

        public b z6() {
            this.f69013b &= -3;
            this.f69015d = 0;
            onChanged();
            return this;
        }

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public b() {
            this.f69014c = "";
            this.f69016e = Collections.emptyList();
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69014c = "";
            this.f69016e = Collections.emptyList();
        }
    }

    public W(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static b A6() {
        return f69007j.toBuilder();
    }

    public static b B6(W prototype) {
        return f69007j.toBuilder().H6(prototype);
    }

    public static W E6(InputStream input) throws IOException {
        return (W) AbstractC12722w0.parseDelimitedWithIOException(f69008k, input);
    }

    public static W F6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (W) AbstractC12722w0.parseDelimitedWithIOException(f69008k, input, extensionRegistry);
    }

    public static W G6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69008k.parseFrom(data);
    }

    public static W H6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69008k.parseFrom(data, extensionRegistry);
    }

    public static W I6(C input) throws IOException {
        return (W) AbstractC12722w0.parseWithIOException(f69008k, input);
    }

    public static W J6(C input, C12666d0 extensionRegistry) throws IOException {
        return (W) AbstractC12722w0.parseWithIOException(f69008k, input, extensionRegistry);
    }

    public static W K6(InputStream input) throws IOException {
        return (W) AbstractC12722w0.parseWithIOException(f69008k, input);
    }

    public static W L6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (W) AbstractC12722w0.parseWithIOException(f69008k, input, extensionRegistry);
    }

    public static W M6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69008k.parseFrom(data);
    }

    public static W N6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69008k.parseFrom(data, extensionRegistry);
    }

    public static W O6(byte[] data) throws InvalidProtocolBufferException {
        return f69008k.parseFrom(data);
    }

    public static W P6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69008k.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return k2.f69336g;
    }

    public static InterfaceC12723w1<W> parser() {
        return f69008k;
    }

    public static W y6() {
        return f69007j;
    }

    @Override
    public b newBuilderForType() {
        return A6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69007j ? new b(aVar) : new b(aVar).H6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof W)) {
            return super.equals(obj);
        }
        W w10 = (W) obj;
        return getName().equals(w10.getName()) && getNumber() == w10.getNumber() && j().equals(w10.j()) && getUnknownFields().equals(w10.getUnknownFields());
    }

    @Override
    public String getName() {
        Object obj = this.f69009b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69009b = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getNameBytes() {
        Object obj = this.f69009b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69009b = w10;
        return w10;
    }

    @Override
    public int getNumber() {
        return this.f69010c;
    }

    @Override
    public InterfaceC12723w1<W> getParserForType() {
        return f69008k;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f69009b) ? AbstractC12722w0.computeStringSize(1, this.f69009b) : 0;
        int i11 = this.f69010c;
        if (i11 != 0) {
            computeStringSize += CodedOutputStream.w0(2, i11);
        }
        for (int i12 = 0; i12 < this.f69011d.size(); i12++) {
            computeStringSize += CodedOutputStream.F0(3, this.f69011d.get(i12));
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getNumber();
        if (n() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + j().hashCode();
        }
        int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return k2.f69337h.d(W.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69012e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69012e = (byte) 1;
        return true;
    }

    @Override
    public List<C12717u1> j() {
        return this.f69011d;
    }

    @Override
    public C12717u1 k(int index) {
        return this.f69011d.get(index);
    }

    @Override
    public InterfaceC12720v1 l(int index) {
        return this.f69011d.get(index);
    }

    @Override
    public int n() {
        return this.f69011d.size();
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new W();
    }

    @Override
    public List<? extends InterfaceC12720v1> o() {
        return this.f69011d;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f69009b)) {
            AbstractC12722w0.writeString(output, 1, this.f69009b);
        }
        int i10 = this.f69010c;
        if (i10 != 0) {
            output.i(2, i10);
        }
        for (int i11 = 0; i11 < this.f69011d.size(); i11++) {
            output.L1(3, this.f69011d.get(i11));
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public W getDefaultInstanceForType() {
        return f69007j;
    }

    public W(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69009b = "";
        this.f69010c = 0;
        this.f69012e = (byte) -1;
    }

    public W() {
        this.f69009b = "";
        this.f69010c = 0;
        this.f69012e = (byte) -1;
        this.f69009b = "";
        this.f69011d = Collections.emptyList();
    }
}
