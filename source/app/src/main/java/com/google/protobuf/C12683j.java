package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.C12682i1;
import com.google.protobuf.C12688k1;
import com.google.protobuf.C12717u1;
import com.google.protobuf.Descriptors;
import com.google.protobuf.S1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C12683j extends AbstractC12722w0 implements InterfaceC12686k {

    public static final long f69255j = 0;

    public static final int f69256k = 1;

    public static final int f69257l = 2;

    public static final int f69258m = 3;

    public static final int f69259n = 4;

    public static final int f69260o = 5;

    public static final int f69261p = 6;

    public static final int f69262q = 7;

    public static final C12683j f69263r = new C12683j();

    public static final InterfaceC12723w1<C12683j> f69264s = new a();

    public volatile Object f69265b;

    public List<C12682i1> f69266c;

    public List<C12717u1> f69267d;

    public volatile Object f69268e;

    public S1 f69269f;

    public List<C12688k1> f69270g;

    public int f69271h;

    public byte f69272i;

    public class a extends AbstractC12661c<C12683j> {
        @Override
        public C12683j parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b I62 = C12683j.I6();
            try {
                I62.mergeFrom(input, extensionRegistry);
                return I62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(I62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(I62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(I62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12686k {

        public int f69273b;

        public Object f69274c;

        public List<C12682i1> f69275d;

        public G1<C12682i1, C12682i1.b, InterfaceC12685j1> f69276e;

        public List<C12717u1> f69277f;

        public G1<C12717u1, C12717u1.b, InterfaceC12720v1> f69278g;

        public Object f69279h;

        public S1 f69280i;

        public Q1<S1, S1.b, T1> f69281j;

        public List<C12688k1> f69282k;

        public G1<C12688k1, C12688k1.b, InterfaceC12691l1> f69283l;

        public int f69284m;

        public b(a aVar) {
            this();
        }

        public static final Descriptors.b getDescriptor() {
            return C12689l.f69341a;
        }

        public C12688k1.b A6(int index) {
            return c7().c(index, C12688k1.x6());
        }

        public b A7(EnumC12660b2 value) {
            value.getClass();
            this.f69273b |= 64;
            this.f69284m = value.getNumber();
            onChanged();
            return this;
        }

        public b B6(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                V6();
                this.f69277f.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        public b B7(int value) {
            this.f69284m = value;
            this.f69273b |= 64;
            onChanged();
            return this;
        }

        public b C6(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                value.getClass();
                V6();
                this.f69277f.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        public b D6(C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                V6();
                this.f69277f.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        public b D7(String value) {
            value.getClass();
            this.f69279h = value;
            this.f69273b |= 8;
            onChanged();
            return this;
        }

        public b E6(C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                value.getClass();
                V6();
                this.f69277f.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public b E7(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69279h = value;
            this.f69273b |= 8;
            onChanged();
            return this;
        }

        public C12717u1.b F6() {
            return f7().d(C12717u1.w6());
        }

        @Override
        public int G1() {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            return g12 == null ? this.f69282k.size() : g12.n();
        }

        public C12717u1.b G6(int index) {
            return f7().c(index, C12717u1.w6());
        }

        @Override
        public C12683j build() {
            C12683j buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        public b I1(Iterable<? extends C12688k1> values) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                U6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f69282k);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        @Override
        public C12683j buildPartial() {
            C12683j c12683j = new C12683j(this, null);
            K6(c12683j);
            if (this.f69273b != 0) {
                J6(c12683j);
            }
            onBuilt();
            return c12683j;
        }

        @Override
        public InterfaceC12691l1 J0(int index) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            return g12 == null ? this.f69282k.get(index) : g12.r(index);
        }

        @Override
        public List<C12688k1> J3() {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            return g12 == null ? Collections.unmodifiableList(this.f69282k) : g12.q();
        }

        public final void J6(C12683j result) {
            int i10 = this.f69273b;
            if ((i10 & 1) != 0) {
                result.f69265b = this.f69274c;
            }
            if ((i10 & 8) != 0) {
                result.f69268e = this.f69279h;
            }
            if ((i10 & 16) != 0) {
                Q1<S1, S1.b, T1> q12 = this.f69281j;
                result.f69269f = q12 == null ? this.f69280i : q12.b();
            }
            if ((i10 & 64) != 0) {
                result.f69271h = this.f69284m;
            }
        }

        @Override
        public List<? extends InterfaceC12685j1> K1() {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f69275d);
        }

        public final void K6(C12683j result) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                if ((this.f69273b & 2) != 0) {
                    this.f69275d = Collections.unmodifiableList(this.f69275d);
                    this.f69273b &= -3;
                }
                result.f69266c = this.f69275d;
            } else {
                result.f69266c = g12.g();
            }
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f69278g;
            if (g13 == null) {
                if ((this.f69273b & 4) != 0) {
                    this.f69277f = Collections.unmodifiableList(this.f69277f);
                    this.f69273b &= -5;
                }
                result.f69267d = this.f69277f;
            } else {
                result.f69267d = g13.g();
            }
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g14 = this.f69283l;
            if (g14 != null) {
                result.f69270g = g14.g();
                return;
            }
            if ((this.f69273b & 32) != 0) {
                this.f69282k = Collections.unmodifiableList(this.f69282k);
                this.f69273b &= -33;
            }
            result.f69270g = this.f69282k;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69273b = 0;
            this.f69274c = "";
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                this.f69275d = Collections.emptyList();
            } else {
                this.f69275d = null;
                g12.h();
            }
            this.f69273b &= -3;
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f69278g;
            if (g13 == null) {
                this.f69277f = Collections.emptyList();
            } else {
                this.f69277f = null;
                g13.h();
            }
            this.f69273b &= -5;
            this.f69279h = "";
            this.f69280i = null;
            Q1<S1, S1.b, T1> q12 = this.f69281j;
            if (q12 != null) {
                q12.d();
                this.f69281j = null;
            }
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g14 = this.f69283l;
            if (g14 == null) {
                this.f69282k = Collections.emptyList();
            } else {
                this.f69282k = null;
                g14.h();
            }
            this.f69273b &= -33;
            this.f69284m = 0;
            return this;
        }

        public b M6() {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                this.f69275d = Collections.emptyList();
                this.f69273b &= -3;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b N6() {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                this.f69282k = Collections.emptyList();
                this.f69273b &= -33;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b O6() {
            this.f69274c = C12683j.G6().getName();
            this.f69273b &= -2;
            onChanged();
            return this;
        }

        public b P6() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                this.f69277f = Collections.emptyList();
                this.f69273b &= -5;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b Q6() {
            this.f69273b &= -17;
            this.f69280i = null;
            Q1<S1, S1.b, T1> q12 = this.f69281j;
            if (q12 != null) {
                q12.d();
                this.f69281j = null;
            }
            onChanged();
            return this;
        }

        public b R6() {
            this.f69273b &= -65;
            this.f69284m = 0;
            onChanged();
            return this;
        }

        @Override
        public List<? extends InterfaceC12691l1> S4() {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f69282k);
        }

        public b S6() {
            this.f69279h = C12683j.G6().getVersion();
            this.f69273b &= -9;
            onChanged();
            return this;
        }

        public final void T6() {
            if ((this.f69273b & 2) == 0) {
                this.f69275d = new ArrayList(this.f69275d);
                this.f69273b |= 2;
            }
        }

        public final void U6() {
            if ((this.f69273b & 32) == 0) {
                this.f69282k = new ArrayList(this.f69282k);
                this.f69273b |= 32;
            }
        }

        public final void V6() {
            if ((this.f69273b & 4) == 0) {
                this.f69277f = new ArrayList(this.f69277f);
                this.f69273b |= 4;
            }
        }

        @Override
        public C12683j getDefaultInstanceForType() {
            return C12683j.G6();
        }

        public C12682i1.b X6(int index) {
            return Z6().l(index);
        }

        public List<C12682i1.b> Y6() {
            return Z6().m();
        }

        public final G1<C12682i1, C12682i1.b, InterfaceC12685j1> Z6() {
            if (this.f69276e == null) {
                this.f69276e = new G1<>(this.f69275d, (this.f69273b & 2) != 0, getParentForChildren(), isClean());
                this.f69275d = null;
            }
            return this.f69276e;
        }

        @Override
        public List<C12682i1> a4() {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            return g12 == null ? Collections.unmodifiableList(this.f69275d) : g12.q();
        }

        public b a5(int index, C12682i1.b builderForValue) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                T6();
                this.f69275d.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        public C12688k1.b a7(int index) {
            return c7().l(index);
        }

        public List<C12688k1.b> b7() {
            return c7().m();
        }

        public final G1<C12688k1, C12688k1.b, InterfaceC12691l1> c7() {
            if (this.f69283l == null) {
                this.f69283l = new G1<>(this.f69282k, (this.f69273b & 32) != 0, getParentForChildren(), isClean());
                this.f69282k = null;
            }
            return this.f69283l;
        }

        public C12717u1.b d7(int index) {
            return f7().l(index);
        }

        public List<C12717u1.b> e7() {
            return f7().m();
        }

        public final G1<C12717u1, C12717u1.b, InterfaceC12720v1> f7() {
            if (this.f69278g == null) {
                this.f69278g = new G1<>(this.f69277f, (this.f69273b & 4) != 0, getParentForChildren(), isClean());
                this.f69277f = null;
            }
            return this.f69278g;
        }

        public S1.b g7() {
            this.f69273b |= 16;
            onChanged();
            return h7().e();
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return C12689l.f69341a;
        }

        @Override
        public int getMethodsCount() {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            return g12 == null ? this.f69275d.size() : g12.n();
        }

        @Override
        public String getName() {
            Object obj = this.f69274c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69274c = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getNameBytes() {
            Object obj = this.f69274c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69274c = w10;
            return w10;
        }

        @Override
        public String getVersion() {
            Object obj = this.f69279h;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69279h = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getVersionBytes() {
            Object obj = this.f69279h;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69279h = w10;
            return w10;
        }

        public final Q1<S1, S1.b, T1> h7() {
            if (this.f69281j == null) {
                this.f69281j = new Q1<>(x(), getParentForChildren(), isClean());
                this.f69280i = null;
            }
            return this.f69281j;
        }

        @Override
        public C12682i1 i1(int index) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            return g12 == null ? this.f69275d.get(index) : g12.o(index);
        }

        public b i7(C12683j other) {
            if (other == C12683j.G6()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f69274c = other.f69265b;
                this.f69273b |= 1;
                onChanged();
            }
            if (this.f69276e == null) {
                if (!other.f69266c.isEmpty()) {
                    if (this.f69275d.isEmpty()) {
                        this.f69275d = other.f69266c;
                        this.f69273b &= -3;
                    } else {
                        T6();
                        this.f69275d.addAll(other.f69266c);
                    }
                    onChanged();
                }
            } else if (!other.f69266c.isEmpty()) {
                if (this.f69276e.u()) {
                    this.f69276e.i();
                    this.f69276e = null;
                    this.f69275d = other.f69266c;
                    this.f69273b &= -3;
                    this.f69276e = AbstractC12722w0.alwaysUseFieldBuilders ? Z6() : null;
                } else {
                    this.f69276e.b(other.f69266c);
                }
            }
            if (this.f69278g == null) {
                if (!other.f69267d.isEmpty()) {
                    if (this.f69277f.isEmpty()) {
                        this.f69277f = other.f69267d;
                        this.f69273b &= -5;
                    } else {
                        V6();
                        this.f69277f.addAll(other.f69267d);
                    }
                    onChanged();
                }
            } else if (!other.f69267d.isEmpty()) {
                if (this.f69278g.u()) {
                    this.f69278g.i();
                    this.f69278g = null;
                    this.f69277f = other.f69267d;
                    this.f69273b &= -5;
                    this.f69278g = AbstractC12722w0.alwaysUseFieldBuilders ? f7() : null;
                } else {
                    this.f69278g.b(other.f69267d);
                }
            }
            if (!other.getVersion().isEmpty()) {
                this.f69279h = other.f69268e;
                this.f69273b |= 8;
                onChanged();
            }
            if (other.v()) {
                l7(other.x());
            }
            if (this.f69283l == null) {
                if (!other.f69270g.isEmpty()) {
                    if (this.f69282k.isEmpty()) {
                        this.f69282k = other.f69270g;
                        this.f69273b &= -33;
                    } else {
                        U6();
                        this.f69282k.addAll(other.f69270g);
                    }
                    onChanged();
                }
            } else if (!other.f69270g.isEmpty()) {
                if (this.f69283l.u()) {
                    this.f69283l.i();
                    this.f69283l = null;
                    this.f69282k = other.f69270g;
                    this.f69273b &= -33;
                    this.f69283l = AbstractC12722w0.alwaysUseFieldBuilders ? c7() : null;
                } else {
                    this.f69283l.b(other.f69270g);
                }
            }
            if (other.f69271h != 0) {
                B7(other.p());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C12689l.f69342b.d(C12683j.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public List<C12717u1> j() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            return g12 == null ? Collections.unmodifiableList(this.f69277f) : g12.q();
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
                                this.f69274c = input.Y();
                                this.f69273b |= 1;
                            } else if (Z10 == 18) {
                                C12682i1 c12682i1 = (C12682i1) input.I(C12682i1.parser(), extensionRegistry);
                                G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
                                if (g12 == null) {
                                    T6();
                                    this.f69275d.add(c12682i1);
                                } else {
                                    g12.f(c12682i1);
                                }
                            } else if (Z10 == 26) {
                                C12717u1 c12717u1 = (C12717u1) input.I(C12717u1.parser(), extensionRegistry);
                                G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f69278g;
                                if (g13 == null) {
                                    V6();
                                    this.f69277f.add(c12717u1);
                                } else {
                                    g13.f(c12717u1);
                                }
                            } else if (Z10 == 34) {
                                this.f69279h = input.Y();
                                this.f69273b |= 8;
                            } else if (Z10 == 42) {
                                input.J(h7().e(), extensionRegistry);
                                this.f69273b |= 16;
                            } else if (Z10 == 50) {
                                C12688k1 c12688k1 = (C12688k1) input.I(C12688k1.parser(), extensionRegistry);
                                G1<C12688k1, C12688k1.b, InterfaceC12691l1> g14 = this.f69283l;
                                if (g14 == null) {
                                    U6();
                                    this.f69282k.add(c12688k1);
                                } else {
                                    g14.f(c12688k1);
                                }
                            } else if (Z10 == 56) {
                                this.f69284m = input.A();
                                this.f69273b |= 64;
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
        public C12717u1 k(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            return g12 == null ? this.f69277f.get(index) : g12.o(index);
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof C12683j) {
                return i7((C12683j) other);
            }
            super.mergeFrom(other);
            return this;
        }

        @Override
        public InterfaceC12720v1 l(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            return g12 == null ? this.f69277f.get(index) : g12.r(index);
        }

        public b l7(S1 value) {
            S1 s12;
            Q1<S1, S1.b, T1> q12 = this.f69281j;
            if (q12 != null) {
                q12.h(value);
            } else if ((this.f69273b & 16) == 0 || (s12 = this.f69280i) == null || s12 == S1.v6()) {
                this.f69280i = value;
            } else {
                g7().u6(value);
            }
            this.f69273b |= 16;
            onChanged();
            return this;
        }

        @Override
        public EnumC12660b2 m() {
            EnumC12660b2 a10 = EnumC12660b2.a(this.f69284m);
            return a10 == null ? EnumC12660b2.UNRECOGNIZED : a10;
        }

        public b m1(Iterable<? extends C12682i1> values) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                T6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f69275d);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        @Override
        public InterfaceC12685j1 m5(int index) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            return g12 == null ? this.f69275d.get(index) : g12.r(index);
        }

        @Override
        public C12688k1 m6(int index) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            return g12 == null ? this.f69282k.get(index) : g12.o(index);
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        @Override
        public int n() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            return g12 == null ? this.f69277f.size() : g12.n();
        }

        public b n7(int index) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                T6();
                this.f69275d.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        @Override
        public List<? extends InterfaceC12720v1> o() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f69277f);
        }

        public b o7(int index) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                U6();
                this.f69282k.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        @Override
        public int p() {
            return this.f69284m;
        }

        public b p7(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                V6();
                this.f69277f.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        public b q6(int index, C12682i1 value) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                value.getClass();
                T6();
                this.f69275d.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public b q7(int index, C12682i1.b builderForValue) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                T6();
                this.f69275d.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        public b r6(C12682i1.b builderForValue) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                T6();
                this.f69275d.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        public b r7(int index, C12682i1 value) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                value.getClass();
                T6();
                this.f69275d.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        public b s6(C12682i1 value) {
            G1<C12682i1, C12682i1.b, InterfaceC12685j1> g12 = this.f69276e;
            if (g12 == null) {
                value.getClass();
                T6();
                this.f69275d.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public b s7(int index, C12688k1.b builderForValue) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                U6();
                this.f69282k.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        public C12682i1.b t6() {
            return Z6().d(C12682i1.F6());
        }

        public b t7(int index, C12688k1 value) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                value.getClass();
                U6();
                this.f69282k.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        public C12682i1.b u6(int index) {
            return Z6().c(index, C12682i1.F6());
        }

        public b u7(String value) {
            value.getClass();
            this.f69274c = value;
            this.f69273b |= 1;
            onChanged();
            return this;
        }

        @Override
        public boolean v() {
            return (this.f69273b & 16) != 0;
        }

        public b v3(Iterable<? extends C12717u1> values) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                V6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f69277f);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        public b v6(int index, C12688k1.b builderForValue) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                U6();
                this.f69282k.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        public b v7(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69274c = value;
            this.f69273b |= 1;
            onChanged();
            return this;
        }

        public b w6(int index, C12688k1 value) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                value.getClass();
                U6();
                this.f69282k.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public b w7(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                V6();
                this.f69277f.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        @Override
        public S1 x() {
            Q1<S1, S1.b, T1> q12 = this.f69281j;
            if (q12 != null) {
                return q12.f();
            }
            S1 s12 = this.f69280i;
            return s12 == null ? S1.v6() : s12;
        }

        public b x6(C12688k1.b builderForValue) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                U6();
                this.f69282k.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        public b x7(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69278g;
            if (g12 == null) {
                value.getClass();
                V6();
                this.f69277f.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        @Override
        public T1 y() {
            Q1<S1, S1.b, T1> q12 = this.f69281j;
            if (q12 != null) {
                return q12.g();
            }
            S1 s12 = this.f69280i;
            return s12 == null ? S1.v6() : s12;
        }

        public b y6(C12688k1 value) {
            G1<C12688k1, C12688k1.b, InterfaceC12691l1> g12 = this.f69283l;
            if (g12 == null) {
                value.getClass();
                U6();
                this.f69282k.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public b y7(S1.b builderForValue) {
            Q1<S1, S1.b, T1> q12 = this.f69281j;
            if (q12 == null) {
                this.f69280i = builderForValue.build();
            } else {
                q12.j(builderForValue.build());
            }
            this.f69273b |= 16;
            onChanged();
            return this;
        }

        public C12688k1.b z6() {
            return c7().d(C12688k1.x6());
        }

        public b z7(S1 value) {
            Q1<S1, S1.b, T1> q12 = this.f69281j;
            if (q12 == null) {
                value.getClass();
                this.f69280i = value;
            } else {
                q12.j(value);
            }
            this.f69273b |= 16;
            onChanged();
            return this;
        }

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public b() {
            this.f69274c = "";
            this.f69275d = Collections.emptyList();
            this.f69277f = Collections.emptyList();
            this.f69279h = "";
            this.f69282k = Collections.emptyList();
            this.f69284m = 0;
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69274c = "";
            this.f69275d = Collections.emptyList();
            this.f69277f = Collections.emptyList();
            this.f69279h = "";
            this.f69282k = Collections.emptyList();
            this.f69284m = 0;
        }
    }

    public C12683j(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static C12683j G6() {
        return f69263r;
    }

    public static b I6() {
        return f69263r.toBuilder();
    }

    public static b J6(C12683j prototype) {
        return f69263r.toBuilder().i7(prototype);
    }

    public static C12683j M6(InputStream input) throws IOException {
        return (C12683j) AbstractC12722w0.parseDelimitedWithIOException(f69264s, input);
    }

    public static C12683j N6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12683j) AbstractC12722w0.parseDelimitedWithIOException(f69264s, input, extensionRegistry);
    }

    public static C12683j O6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69264s.parseFrom(data);
    }

    public static C12683j P6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69264s.parseFrom(data, extensionRegistry);
    }

    public static C12683j Q6(C input) throws IOException {
        return (C12683j) AbstractC12722w0.parseWithIOException(f69264s, input);
    }

    public static C12683j R6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12683j) AbstractC12722w0.parseWithIOException(f69264s, input, extensionRegistry);
    }

    public static C12683j S6(InputStream input) throws IOException {
        return (C12683j) AbstractC12722w0.parseWithIOException(f69264s, input);
    }

    public static C12683j T6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12683j) AbstractC12722w0.parseWithIOException(f69264s, input, extensionRegistry);
    }

    public static C12683j U6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69264s.parseFrom(data);
    }

    public static C12683j V6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69264s.parseFrom(data, extensionRegistry);
    }

    public static C12683j W6(byte[] data) throws InvalidProtocolBufferException {
        return f69264s.parseFrom(data);
    }

    public static C12683j X6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69264s.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return C12689l.f69341a;
    }

    public static InterfaceC12723w1<C12683j> parser() {
        return f69264s;
    }

    @Override
    public int G1() {
        return this.f69270g.size();
    }

    @Override
    public C12683j getDefaultInstanceForType() {
        return f69263r;
    }

    @Override
    public InterfaceC12691l1 J0(int index) {
        return this.f69270g.get(index);
    }

    @Override
    public List<C12688k1> J3() {
        return this.f69270g;
    }

    @Override
    public List<? extends InterfaceC12685j1> K1() {
        return this.f69266c;
    }

    @Override
    public b newBuilderForType() {
        return I6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public List<? extends InterfaceC12691l1> S4() {
        return this.f69270g;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69263r ? new b(aVar) : new b(aVar).i7(this);
    }

    @Override
    public List<C12682i1> a4() {
        return this.f69266c;
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12683j)) {
            return super.equals(obj);
        }
        C12683j c12683j = (C12683j) obj;
        if (getName().equals(c12683j.getName()) && a4().equals(c12683j.a4()) && j().equals(c12683j.j()) && getVersion().equals(c12683j.getVersion()) && v() == c12683j.v()) {
            return (!v() || x().equals(c12683j.x())) && J3().equals(c12683j.J3()) && this.f69271h == c12683j.f69271h && getUnknownFields().equals(c12683j.getUnknownFields());
        }
        return false;
    }

    @Override
    public int getMethodsCount() {
        return this.f69266c.size();
    }

    @Override
    public String getName() {
        Object obj = this.f69265b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69265b = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getNameBytes() {
        Object obj = this.f69265b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69265b = w10;
        return w10;
    }

    @Override
    public InterfaceC12723w1<C12683j> getParserForType() {
        return f69264s;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f69265b) ? AbstractC12722w0.computeStringSize(1, this.f69265b) : 0;
        for (int i11 = 0; i11 < this.f69266c.size(); i11++) {
            computeStringSize += CodedOutputStream.F0(2, this.f69266c.get(i11));
        }
        for (int i12 = 0; i12 < this.f69267d.size(); i12++) {
            computeStringSize += CodedOutputStream.F0(3, this.f69267d.get(i12));
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69268e)) {
            computeStringSize += AbstractC12722w0.computeStringSize(4, this.f69268e);
        }
        if (this.f69269f != null) {
            computeStringSize += CodedOutputStream.F0(5, x());
        }
        for (int i13 = 0; i13 < this.f69270g.size(); i13++) {
            computeStringSize += CodedOutputStream.F0(6, this.f69270g.get(i13));
        }
        if (this.f69271h != EnumC12660b2.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.k0(7, this.f69271h);
        }
        int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public String getVersion() {
        Object obj = this.f69268e;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69268e = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getVersionBytes() {
        Object obj = this.f69268e;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69268e = w10;
        return w10;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getMethodsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + a4().hashCode();
        }
        if (n() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + j().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 4) * 53) + getVersion().hashCode();
        if (v()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + x().hashCode();
        }
        if (G1() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + J3().hashCode();
        }
        int hashCode3 = (((((hashCode2 * 37) + 7) * 53) + this.f69271h) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public C12682i1 i1(int index) {
        return this.f69266c.get(index);
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return C12689l.f69342b.d(C12683j.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69272i;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69272i = (byte) 1;
        return true;
    }

    @Override
    public List<C12717u1> j() {
        return this.f69267d;
    }

    @Override
    public C12717u1 k(int index) {
        return this.f69267d.get(index);
    }

    @Override
    public InterfaceC12720v1 l(int index) {
        return this.f69267d.get(index);
    }

    @Override
    public EnumC12660b2 m() {
        EnumC12660b2 a10 = EnumC12660b2.a(this.f69271h);
        return a10 == null ? EnumC12660b2.UNRECOGNIZED : a10;
    }

    @Override
    public InterfaceC12685j1 m5(int index) {
        return this.f69266c.get(index);
    }

    @Override
    public C12688k1 m6(int index) {
        return this.f69270g.get(index);
    }

    @Override
    public int n() {
        return this.f69267d.size();
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12683j();
    }

    @Override
    public List<? extends InterfaceC12720v1> o() {
        return this.f69267d;
    }

    @Override
    public int p() {
        return this.f69271h;
    }

    @Override
    public boolean v() {
        return this.f69269f != null;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f69265b)) {
            AbstractC12722w0.writeString(output, 1, this.f69265b);
        }
        for (int i10 = 0; i10 < this.f69266c.size(); i10++) {
            output.L1(2, this.f69266c.get(i10));
        }
        for (int i11 = 0; i11 < this.f69267d.size(); i11++) {
            output.L1(3, this.f69267d.get(i11));
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69268e)) {
            AbstractC12722w0.writeString(output, 4, this.f69268e);
        }
        if (this.f69269f != null) {
            output.L1(5, x());
        }
        for (int i12 = 0; i12 < this.f69270g.size(); i12++) {
            output.L1(6, this.f69270g.get(i12));
        }
        if (this.f69271h != EnumC12660b2.SYNTAX_PROTO2.getNumber()) {
            output.Q(7, this.f69271h);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public S1 x() {
        S1 s12 = this.f69269f;
        return s12 == null ? S1.v6() : s12;
    }

    @Override
    public T1 y() {
        S1 s12 = this.f69269f;
        return s12 == null ? S1.v6() : s12;
    }

    public C12683j(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69265b = "";
        this.f69268e = "";
        this.f69271h = 0;
        this.f69272i = (byte) -1;
    }

    public C12683j() {
        this.f69265b = "";
        this.f69268e = "";
        this.f69271h = 0;
        this.f69272i = (byte) -1;
        this.f69265b = "";
        this.f69266c = Collections.emptyList();
        this.f69267d = Collections.emptyList();
        this.f69268e = "";
        this.f69270g = Collections.emptyList();
        this.f69271h = 0;
    }
}
