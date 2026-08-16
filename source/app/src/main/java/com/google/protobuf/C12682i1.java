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

public final class C12682i1 extends AbstractC12722w0 implements InterfaceC12685j1 {

    public static final long f69202j = 0;

    public static final int f69203k = 1;

    public static final int f69204l = 2;

    public static final int f69205m = 3;

    public static final int f69206n = 4;

    public static final int f69207o = 5;

    public static final int f69208p = 6;

    public static final int f69209q = 7;

    public static final C12682i1 f69210r = new C12682i1();

    public static final InterfaceC12723w1<C12682i1> f69211s = new a();

    public volatile Object f69212b;

    public volatile Object f69213c;

    public boolean f69214d;

    public volatile Object f69215e;

    public boolean f69216f;

    public List<C12717u1> f69217g;

    public int f69218h;

    public byte f69219i;

    public class a extends AbstractC12661c<C12682i1> {
        @Override
        public C12682i1 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b H62 = C12682i1.H6();
            try {
                H62.mergeFrom(input, extensionRegistry);
                return H62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(H62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(H62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(H62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12685j1 {

        public int f69220b;

        public Object f69221c;

        public Object f69222d;

        public boolean f69223e;

        public Object f69224f;

        public boolean f69225g;

        public List<C12717u1> f69226h;

        public G1<C12717u1, C12717u1.b, InterfaceC12720v1> f69227i;

        public int f69228j;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        private void F6() {
            if ((this.f69220b & 32) == 0) {
                this.f69226h = new ArrayList(this.f69226h);
                this.f69220b |= 32;
            }
        }

        private G1<C12717u1, C12717u1.b, InterfaceC12720v1> J6() {
            if (this.f69227i == null) {
                this.f69227i = new G1<>(this.f69226h, (this.f69220b & 32) != 0, getParentForChildren(), isClean());
                this.f69226h = null;
            }
            return this.f69227i;
        }

        public static final Descriptors.b getDescriptor() {
            return C12689l.f69343c;
        }

        public b A6() {
            this.f69220b &= -5;
            this.f69223e = false;
            onChanged();
            return this;
        }

        public b B6() {
            this.f69222d = C12682i1.F6().t4();
            this.f69220b &= -3;
            onChanged();
            return this;
        }

        public b C6() {
            this.f69220b &= -17;
            this.f69225g = false;
            onChanged();
            return this;
        }

        public b D6() {
            this.f69224f = C12682i1.F6().O4();
            this.f69220b &= -9;
            onChanged();
            return this;
        }

        public b E6() {
            this.f69220b &= -65;
            this.f69228j = 0;
            onChanged();
            return this;
        }

        @Override
        public AbstractC12724x G0() {
            Object obj = this.f69222d;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69222d = w10;
            return w10;
        }

        @Override
        public C12682i1 getDefaultInstanceForType() {
            return C12682i1.F6();
        }

        public C12717u1.b H6(int index) {
            return J6().l(index);
        }

        public b I1(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                F6();
                this.f69226h.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        public List<C12717u1.b> I6() {
            return J6().m();
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
                                this.f69221c = input.Y();
                                this.f69220b |= 1;
                            } else if (Z10 == 18) {
                                this.f69222d = input.Y();
                                this.f69220b |= 2;
                            } else if (Z10 == 24) {
                                this.f69223e = input.v();
                                this.f69220b |= 4;
                            } else if (Z10 == 34) {
                                this.f69224f = input.Y();
                                this.f69220b |= 8;
                            } else if (Z10 == 40) {
                                this.f69225g = input.v();
                                this.f69220b |= 16;
                            } else if (Z10 == 50) {
                                C12717u1 c12717u1 = (C12717u1) input.I(C12717u1.parser(), extensionRegistry);
                                G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
                                if (g12 == null) {
                                    F6();
                                    this.f69226h.add(c12717u1);
                                } else {
                                    g12.f(c12717u1);
                                }
                            } else if (Z10 == 56) {
                                this.f69228j = input.A();
                                this.f69220b |= 64;
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
            if (other instanceof C12682i1) {
                return M6((C12682i1) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b M6(C12682i1 other) {
            if (other == C12682i1.F6()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f69221c = other.f69212b;
                this.f69220b |= 1;
                onChanged();
            }
            if (!other.t4().isEmpty()) {
                this.f69222d = other.f69213c;
                this.f69220b |= 2;
                onChanged();
            }
            if (other.p1()) {
                T6(other.p1());
            }
            if (!other.O4().isEmpty()) {
                this.f69224f = other.f69215e;
                this.f69220b |= 8;
                onChanged();
            }
            if (other.U2()) {
                W6(other.U2());
            }
            if (this.f69227i == null) {
                if (!other.f69217g.isEmpty()) {
                    if (this.f69226h.isEmpty()) {
                        this.f69226h = other.f69217g;
                        this.f69220b &= -33;
                    } else {
                        F6();
                        this.f69226h.addAll(other.f69217g);
                    }
                    onChanged();
                }
            } else if (!other.f69217g.isEmpty()) {
                if (this.f69227i.u()) {
                    this.f69227i.i();
                    this.f69227i = null;
                    this.f69226h = other.f69217g;
                    this.f69220b &= -33;
                    this.f69227i = AbstractC12722w0.alwaysUseFieldBuilders ? J6() : null;
                } else {
                    this.f69227i.b(other.f69217g);
                }
            }
            if (other.f69218h != 0) {
                a7(other.p());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        @Override
        public String O4() {
            Object obj = this.f69224f;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69224f = g02;
            return g02;
        }

        public b O6(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                F6();
                this.f69226h.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        public b P6(String value) {
            value.getClass();
            this.f69221c = value;
            this.f69220b |= 1;
            onChanged();
            return this;
        }

        public b Q6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69221c = value;
            this.f69220b |= 1;
            onChanged();
            return this;
        }

        public b R6(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                F6();
                this.f69226h.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        public b S6(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                value.getClass();
                F6();
                this.f69226h.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        public b T6(boolean value) {
            this.f69223e = value;
            this.f69220b |= 4;
            onChanged();
            return this;
        }

        @Override
        public boolean U2() {
            return this.f69225g;
        }

        public b U6(String value) {
            value.getClass();
            this.f69222d = value;
            this.f69220b |= 2;
            onChanged();
            return this;
        }

        public b V6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69222d = value;
            this.f69220b |= 2;
            onChanged();
            return this;
        }

        public b W6(boolean value) {
            this.f69225g = value;
            this.f69220b |= 16;
            onChanged();
            return this;
        }

        public b X6(String value) {
            value.getClass();
            this.f69224f = value;
            this.f69220b |= 8;
            onChanged();
            return this;
        }

        public b Y6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69224f = value;
            this.f69220b |= 8;
            onChanged();
            return this;
        }

        public b Z6(EnumC12660b2 value) {
            value.getClass();
            this.f69220b |= 64;
            this.f69228j = value.getNumber();
            onChanged();
            return this;
        }

        public b a5(C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                F6();
                this.f69226h.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        public b a7(int value) {
            this.f69228j = value;
            this.f69220b |= 64;
            onChanged();
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return C12689l.f69343c;
        }

        @Override
        public String getName() {
            Object obj = this.f69221c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69221c = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getNameBytes() {
            Object obj = this.f69221c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69221c = w10;
            return w10;
        }

        @Override
        public AbstractC12724x i3() {
            Object obj = this.f69224f;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69224f = w10;
            return w10;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C12689l.f69344d.d(C12682i1.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public List<C12717u1> j() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            return g12 == null ? Collections.unmodifiableList(this.f69226h) : g12.q();
        }

        @Override
        public C12717u1 k(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            return g12 == null ? this.f69226h.get(index) : g12.o(index);
        }

        @Override
        public InterfaceC12720v1 l(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            return g12 == null ? this.f69226h.get(index) : g12.r(index);
        }

        @Override
        public EnumC12660b2 m() {
            EnumC12660b2 a10 = EnumC12660b2.a(this.f69228j);
            return a10 == null ? EnumC12660b2.UNRECOGNIZED : a10;
        }

        public b m1(Iterable<? extends C12717u1> values) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                F6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f69226h);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        @Override
        public int n() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            return g12 == null ? this.f69226h.size() : g12.n();
        }

        @Override
        public List<? extends InterfaceC12720v1> o() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f69226h);
        }

        @Override
        public int p() {
            return this.f69228j;
        }

        @Override
        public boolean p1() {
            return this.f69223e;
        }

        public b q6(C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                value.getClass();
                F6();
                this.f69226h.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public C12717u1.b r6() {
            return J6().d(C12717u1.w6());
        }

        public C12717u1.b s6(int index) {
            return J6().c(index, C12717u1.w6());
        }

        @Override
        public String t4() {
            Object obj = this.f69222d;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69222d = g02;
            return g02;
        }

        @Override
        public C12682i1 build() {
            C12682i1 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public C12682i1 buildPartial() {
            C12682i1 c12682i1 = new C12682i1(this, null);
            w6(c12682i1);
            if (this.f69220b != 0) {
                v6(c12682i1);
            }
            onBuilt();
            return c12682i1;
        }

        public b v3(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                value.getClass();
                F6();
                this.f69226h.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public final void v6(C12682i1 result) {
            int i10 = this.f69220b;
            if ((i10 & 1) != 0) {
                result.f69212b = this.f69221c;
            }
            if ((i10 & 2) != 0) {
                result.f69213c = this.f69222d;
            }
            if ((i10 & 4) != 0) {
                result.f69214d = this.f69223e;
            }
            if ((i10 & 8) != 0) {
                result.f69215e = this.f69224f;
            }
            if ((i10 & 16) != 0) {
                result.f69216f = this.f69225g;
            }
            if ((i10 & 64) != 0) {
                result.f69218h = this.f69228j;
            }
        }

        public final void w6(C12682i1 result) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 != null) {
                result.f69217g = g12.g();
                return;
            }
            if ((this.f69220b & 32) != 0) {
                this.f69226h = Collections.unmodifiableList(this.f69226h);
                this.f69220b &= -33;
            }
            result.f69217g = this.f69226h;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69220b = 0;
            this.f69221c = "";
            this.f69222d = "";
            this.f69223e = false;
            this.f69224f = "";
            this.f69225g = false;
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                this.f69226h = Collections.emptyList();
            } else {
                this.f69226h = null;
                g12.h();
            }
            this.f69220b &= -33;
            this.f69228j = 0;
            return this;
        }

        public b y6() {
            this.f69221c = C12682i1.F6().getName();
            this.f69220b &= -2;
            onChanged();
            return this;
        }

        public b z6() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69227i;
            if (g12 == null) {
                this.f69226h = Collections.emptyList();
                this.f69220b &= -33;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b(a aVar) {
            this();
        }

        public b() {
            this.f69221c = "";
            this.f69222d = "";
            this.f69224f = "";
            this.f69226h = Collections.emptyList();
            this.f69228j = 0;
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69221c = "";
            this.f69222d = "";
            this.f69224f = "";
            this.f69226h = Collections.emptyList();
            this.f69228j = 0;
        }
    }

    public C12682i1(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static C12682i1 F6() {
        return f69210r;
    }

    public static b H6() {
        return f69210r.toBuilder();
    }

    public static b I6(C12682i1 prototype) {
        return f69210r.toBuilder().M6(prototype);
    }

    public static C12682i1 L6(InputStream input) throws IOException {
        return (C12682i1) AbstractC12722w0.parseDelimitedWithIOException(f69211s, input);
    }

    public static C12682i1 M6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12682i1) AbstractC12722w0.parseDelimitedWithIOException(f69211s, input, extensionRegistry);
    }

    public static C12682i1 N6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69211s.parseFrom(data);
    }

    public static C12682i1 O6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69211s.parseFrom(data, extensionRegistry);
    }

    public static C12682i1 P6(C input) throws IOException {
        return (C12682i1) AbstractC12722w0.parseWithIOException(f69211s, input);
    }

    public static C12682i1 Q6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12682i1) AbstractC12722w0.parseWithIOException(f69211s, input, extensionRegistry);
    }

    public static C12682i1 R6(InputStream input) throws IOException {
        return (C12682i1) AbstractC12722w0.parseWithIOException(f69211s, input);
    }

    public static C12682i1 S6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12682i1) AbstractC12722w0.parseWithIOException(f69211s, input, extensionRegistry);
    }

    public static C12682i1 T6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69211s.parseFrom(data);
    }

    public static C12682i1 U6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69211s.parseFrom(data, extensionRegistry);
    }

    public static C12682i1 V6(byte[] data) throws InvalidProtocolBufferException {
        return f69211s.parseFrom(data);
    }

    public static C12682i1 W6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69211s.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return C12689l.f69343c;
    }

    public static InterfaceC12723w1<C12682i1> parser() {
        return f69211s;
    }

    @Override
    public AbstractC12724x G0() {
        Object obj = this.f69213c;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69213c = w10;
        return w10;
    }

    @Override
    public C12682i1 getDefaultInstanceForType() {
        return f69210r;
    }

    @Override
    public b newBuilderForType() {
        return H6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public String O4() {
        Object obj = this.f69215e;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69215e = g02;
        return g02;
    }

    @Override
    public boolean U2() {
        return this.f69216f;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69210r ? new b(aVar) : new b(aVar).M6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12682i1)) {
            return super.equals(obj);
        }
        C12682i1 c12682i1 = (C12682i1) obj;
        return getName().equals(c12682i1.getName()) && t4().equals(c12682i1.t4()) && p1() == c12682i1.p1() && O4().equals(c12682i1.O4()) && U2() == c12682i1.U2() && j().equals(c12682i1.j()) && this.f69218h == c12682i1.f69218h && getUnknownFields().equals(c12682i1.getUnknownFields());
    }

    @Override
    public String getName() {
        Object obj = this.f69212b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69212b = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getNameBytes() {
        Object obj = this.f69212b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69212b = w10;
        return w10;
    }

    @Override
    public InterfaceC12723w1<C12682i1> getParserForType() {
        return f69211s;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f69212b) ? AbstractC12722w0.computeStringSize(1, this.f69212b) : 0;
        if (!AbstractC12722w0.isStringEmpty(this.f69213c)) {
            computeStringSize += AbstractC12722w0.computeStringSize(2, this.f69213c);
        }
        boolean z10 = this.f69214d;
        if (z10) {
            computeStringSize += CodedOutputStream.a0(3, z10);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69215e)) {
            computeStringSize += AbstractC12722w0.computeStringSize(4, this.f69215e);
        }
        boolean z11 = this.f69216f;
        if (z11) {
            computeStringSize += CodedOutputStream.a0(5, z11);
        }
        for (int i11 = 0; i11 < this.f69217g.size(); i11++) {
            computeStringSize += CodedOutputStream.F0(6, this.f69217g.get(i11));
        }
        if (this.f69218h != EnumC12660b2.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.k0(7, this.f69218h);
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
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + t4().hashCode()) * 37) + 3) * 53) + D0.k(p1())) * 37) + 4) * 53) + O4().hashCode()) * 37) + 5) * 53) + D0.k(U2());
        if (n() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + j().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 7) * 53) + this.f69218h) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12724x i3() {
        Object obj = this.f69215e;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69215e = w10;
        return w10;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return C12689l.f69344d.d(C12682i1.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69219i;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69219i = (byte) 1;
        return true;
    }

    @Override
    public List<C12717u1> j() {
        return this.f69217g;
    }

    @Override
    public C12717u1 k(int index) {
        return this.f69217g.get(index);
    }

    @Override
    public InterfaceC12720v1 l(int index) {
        return this.f69217g.get(index);
    }

    @Override
    public EnumC12660b2 m() {
        EnumC12660b2 a10 = EnumC12660b2.a(this.f69218h);
        return a10 == null ? EnumC12660b2.UNRECOGNIZED : a10;
    }

    @Override
    public int n() {
        return this.f69217g.size();
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12682i1();
    }

    @Override
    public List<? extends InterfaceC12720v1> o() {
        return this.f69217g;
    }

    @Override
    public int p() {
        return this.f69218h;
    }

    @Override
    public boolean p1() {
        return this.f69214d;
    }

    @Override
    public String t4() {
        Object obj = this.f69213c;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69213c = g02;
        return g02;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f69212b)) {
            AbstractC12722w0.writeString(output, 1, this.f69212b);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69213c)) {
            AbstractC12722w0.writeString(output, 2, this.f69213c);
        }
        boolean z10 = this.f69214d;
        if (z10) {
            output.q(3, z10);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69215e)) {
            AbstractC12722w0.writeString(output, 4, this.f69215e);
        }
        boolean z11 = this.f69216f;
        if (z11) {
            output.q(5, z11);
        }
        for (int i10 = 0; i10 < this.f69217g.size(); i10++) {
            output.L1(6, this.f69217g.get(i10));
        }
        if (this.f69218h != EnumC12660b2.SYNTAX_PROTO2.getNumber()) {
            output.Q(7, this.f69218h);
        }
        getUnknownFields().writeTo(output);
    }

    public C12682i1(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69212b = "";
        this.f69213c = "";
        this.f69214d = false;
        this.f69215e = "";
        this.f69216f = false;
        this.f69218h = 0;
        this.f69219i = (byte) -1;
    }

    public C12682i1() {
        this.f69212b = "";
        this.f69213c = "";
        this.f69214d = false;
        this.f69215e = "";
        this.f69216f = false;
        this.f69218h = 0;
        this.f69219i = (byte) -1;
        this.f69212b = "";
        this.f69213c = "";
        this.f69215e = "";
        this.f69217g = Collections.emptyList();
        this.f69218h = 0;
    }
}
