package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.C12681i0;
import com.google.protobuf.C12717u1;
import com.google.protobuf.Descriptors;
import com.google.protobuf.S1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class i2 extends AbstractC12722w0 implements j2 {

    public static final long f69229i = 0;

    public static final int f69230j = 1;

    public static final int f69231k = 2;

    public static final int f69232l = 3;

    public static final int f69233m = 4;

    public static final int f69234n = 5;

    public static final int f69235o = 6;

    public static final i2 f69236p = new i2();

    public static final InterfaceC12723w1<i2> f69237q = new a();

    public volatile Object f69238b;

    public List<C12681i0> f69239c;

    public J0 f69240d;

    public List<C12717u1> f69241e;

    public S1 f69242f;

    public int f69243g;

    public byte f69244h;

    public class a extends AbstractC12661c<i2> {
        @Override
        public i2 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b H62 = i2.H6();
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

    public static final class b extends AbstractC12722w0.b<b> implements j2 {

        public int f69245b;

        public Object f69246c;

        public List<C12681i0> f69247d;

        public G1<C12681i0, C12681i0.b, InterfaceC12696n0> f69248e;

        public J0 f69249f;

        public List<C12717u1> f69250g;

        public G1<C12717u1, C12717u1.b, InterfaceC12720v1> f69251h;

        public S1 f69252i;

        public Q1<S1, S1.b, T1> f69253j;

        public int f69254k;

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        private void Q6() {
            if ((this.f69245b & 8) == 0) {
                this.f69250g = new ArrayList(this.f69250g);
                this.f69245b |= 8;
            }
        }

        private G1<C12717u1, C12717u1.b, InterfaceC12720v1> Y6() {
            if (this.f69251h == null) {
                this.f69251h = new G1<>(this.f69250g, (this.f69245b & 8) != 0, getParentForChildren(), isClean());
                this.f69250g = null;
            }
            return this.f69251h;
        }

        private Q1<S1, S1.b, T1> a7() {
            if (this.f69253j == null) {
                this.f69253j = new Q1<>(x(), getParentForChildren(), isClean());
                this.f69252i = null;
            }
            return this.f69253j;
        }

        public static final Descriptors.b getDescriptor() {
            return k2.f69330a;
        }

        public b A6(C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                value.getClass();
                Q6();
                this.f69250g.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public C12717u1.b B6() {
            return Y6().d(C12717u1.w6());
        }

        public C12717u1.b C6(int index) {
            return Y6().c(index, C12717u1.w6());
        }

        @Override
        public i2 build() {
            i2 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public int E1() {
            return this.f69249f.size();
        }

        @Override
        public i2 buildPartial() {
            i2 i2Var = new i2(this, null);
            G6(i2Var);
            if (this.f69245b != 0) {
                F6(i2Var);
            }
            onBuilt();
            return i2Var;
        }

        public final void F6(i2 result) {
            int i10 = this.f69245b;
            if ((i10 & 1) != 0) {
                result.f69238b = this.f69246c;
            }
            if ((i10 & 4) != 0) {
                this.f69249f.r9();
                result.f69240d = this.f69249f;
            }
            if ((i10 & 16) != 0) {
                Q1<S1, S1.b, T1> q12 = this.f69253j;
                result.f69242f = q12 == null ? this.f69252i : q12.b();
            }
            if ((i10 & 32) != 0) {
                result.f69243g = this.f69254k;
            }
        }

        public final void G6(i2 result) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                if ((this.f69245b & 2) != 0) {
                    this.f69247d = Collections.unmodifiableList(this.f69247d);
                    this.f69245b &= -3;
                }
                result.f69239c = this.f69247d;
            } else {
                result.f69239c = g12.g();
            }
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f69251h;
            if (g13 != null) {
                result.f69241e = g13.g();
                return;
            }
            if ((this.f69245b & 8) != 0) {
                this.f69250g = Collections.unmodifiableList(this.f69250g);
                this.f69245b &= -9;
            }
            result.f69241e = this.f69250g;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69245b = 0;
            this.f69246c = "";
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                this.f69247d = Collections.emptyList();
            } else {
                this.f69247d = null;
                g12.h();
            }
            this.f69245b &= -3;
            this.f69249f = J0.n();
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f69251h;
            if (g13 == null) {
                this.f69250g = Collections.emptyList();
            } else {
                this.f69250g = null;
                g13.h();
            }
            this.f69245b &= -9;
            this.f69252i = null;
            Q1<S1, S1.b, T1> q12 = this.f69253j;
            if (q12 != null) {
                q12.d();
                this.f69253j = null;
            }
            this.f69254k = 0;
            return this;
        }

        public b I1(Iterable<String> values) {
            P6();
            AbstractC12657b.a.addAll((Iterable) values, (List) this.f69249f);
            this.f69245b |= 4;
            onChanged();
            return this;
        }

        public b I6() {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                this.f69247d = Collections.emptyList();
                this.f69245b &= -3;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b J6() {
            this.f69246c = i2.E6().getName();
            this.f69245b &= -2;
            onChanged();
            return this;
        }

        public b K6() {
            this.f69249f = J0.n();
            this.f69245b &= -5;
            onChanged();
            return this;
        }

        public b L6() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                this.f69250g = Collections.emptyList();
                this.f69245b &= -9;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b M6() {
            this.f69245b &= -17;
            this.f69252i = null;
            Q1<S1, S1.b, T1> q12 = this.f69253j;
            if (q12 != null) {
                q12.d();
                this.f69253j = null;
            }
            onChanged();
            return this;
        }

        public b N6() {
            this.f69245b &= -33;
            this.f69254k = 0;
            onChanged();
            return this;
        }

        public final void O6() {
            if ((this.f69245b & 2) == 0) {
                this.f69247d = new ArrayList(this.f69247d);
                this.f69245b |= 2;
            }
        }

        public final void P6() {
            if (!this.f69249f.hc()) {
                this.f69249f = new J0((K0) this.f69249f);
            }
            this.f69245b |= 4;
        }

        @Override
        public i2 getDefaultInstanceForType() {
            return i2.E6();
        }

        public C12681i0.b S6(int index) {
            return U6().l(index);
        }

        @Override
        public List<? extends InterfaceC12696n0> T4() {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f69247d);
        }

        public List<C12681i0.b> T6() {
            return U6().m();
        }

        public final G1<C12681i0, C12681i0.b, InterfaceC12696n0> U6() {
            if (this.f69248e == null) {
                this.f69248e = new G1<>(this.f69247d, (this.f69245b & 2) != 0, getParentForChildren(), isClean());
                this.f69247d = null;
            }
            return this.f69248e;
        }

        @Override
        public C1 n3() {
            this.f69249f.r9();
            return this.f69249f;
        }

        public C12717u1.b W6(int index) {
            return Y6().l(index);
        }

        @Override
        public List<C12681i0> X0() {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            return g12 == null ? Collections.unmodifiableList(this.f69247d) : g12.q();
        }

        public List<C12717u1.b> X6() {
            return Y6().m();
        }

        public S1.b Z6() {
            this.f69245b |= 16;
            onChanged();
            return a7().e();
        }

        public b a5(int index, C12681i0.b builderForValue) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                O6();
                this.f69247d.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
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
                                this.f69246c = input.Y();
                                this.f69245b |= 1;
                            } else if (Z10 == 18) {
                                C12681i0 c12681i0 = (C12681i0) input.I(C12681i0.parser(), extensionRegistry);
                                G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
                                if (g12 == null) {
                                    O6();
                                    this.f69247d.add(c12681i0);
                                } else {
                                    g12.f(c12681i0);
                                }
                            } else if (Z10 == 26) {
                                String Y10 = input.Y();
                                P6();
                                this.f69249f.add(Y10);
                            } else if (Z10 == 34) {
                                C12717u1 c12717u1 = (C12717u1) input.I(C12717u1.parser(), extensionRegistry);
                                G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f69251h;
                                if (g13 == null) {
                                    Q6();
                                    this.f69250g.add(c12717u1);
                                } else {
                                    g13.f(c12717u1);
                                }
                            } else if (Z10 == 42) {
                                input.J(a7().e(), extensionRegistry);
                                this.f69245b |= 16;
                            } else if (Z10 == 48) {
                                this.f69254k = input.A();
                                this.f69245b |= 32;
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
        public C12681i0 c5(int index) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            return g12 == null ? this.f69247d.get(index) : g12.o(index);
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof i2) {
                return d7((i2) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b d7(i2 other) {
            if (other == i2.E6()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f69246c = other.f69238b;
                this.f69245b |= 1;
                onChanged();
            }
            if (this.f69248e == null) {
                if (!other.f69239c.isEmpty()) {
                    if (this.f69247d.isEmpty()) {
                        this.f69247d = other.f69239c;
                        this.f69245b &= -3;
                    } else {
                        O6();
                        this.f69247d.addAll(other.f69239c);
                    }
                    onChanged();
                }
            } else if (!other.f69239c.isEmpty()) {
                if (this.f69248e.u()) {
                    this.f69248e.i();
                    this.f69248e = null;
                    this.f69247d = other.f69239c;
                    this.f69245b &= -3;
                    this.f69248e = AbstractC12722w0.alwaysUseFieldBuilders ? U6() : null;
                } else {
                    this.f69248e.b(other.f69239c);
                }
            }
            if (!other.f69240d.isEmpty()) {
                if (this.f69249f.isEmpty()) {
                    this.f69249f = other.f69240d;
                    this.f69245b |= 4;
                } else {
                    P6();
                    this.f69249f.addAll(other.f69240d);
                }
                onChanged();
            }
            if (this.f69251h == null) {
                if (!other.f69241e.isEmpty()) {
                    if (this.f69250g.isEmpty()) {
                        this.f69250g = other.f69241e;
                        this.f69245b &= -9;
                    } else {
                        Q6();
                        this.f69250g.addAll(other.f69241e);
                    }
                    onChanged();
                }
            } else if (!other.f69241e.isEmpty()) {
                if (this.f69251h.u()) {
                    this.f69251h.i();
                    this.f69251h = null;
                    this.f69250g = other.f69241e;
                    this.f69245b &= -9;
                    this.f69251h = AbstractC12722w0.alwaysUseFieldBuilders ? Y6() : null;
                } else {
                    this.f69251h.b(other.f69241e);
                }
            }
            if (other.v()) {
                e7(other.x());
            }
            if (other.f69243g != 0) {
                s7(other.p());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public InterfaceC12696n0 e3(int index) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            return g12 == null ? this.f69247d.get(index) : g12.r(index);
        }

        public b e7(S1 value) {
            S1 s12;
            Q1<S1, S1.b, T1> q12 = this.f69253j;
            if (q12 != null) {
                q12.h(value);
            } else if ((this.f69245b & 16) == 0 || (s12 = this.f69252i) == null || s12 == S1.v6()) {
                this.f69252i = value;
            } else {
                Z6().u6(value);
            }
            this.f69245b |= 16;
            onChanged();
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b g7(int index) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                O6();
                this.f69247d.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return k2.f69330a;
        }

        @Override
        public int getFieldsCount() {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            return g12 == null ? this.f69247d.size() : g12.n();
        }

        @Override
        public String getName() {
            Object obj = this.f69246c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69246c = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getNameBytes() {
            Object obj = this.f69246c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69246c = w10;
            return w10;
        }

        @Override
        public AbstractC12724x h4(int index) {
            return this.f69249f.ub(index);
        }

        public b h7(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                Q6();
                this.f69250g.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        public b i7(int index, C12681i0.b builderForValue) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                O6();
                this.f69247d.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return k2.f69331b.d(i2.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public List<C12717u1> j() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            return g12 == null ? Collections.unmodifiableList(this.f69250g) : g12.q();
        }

        public b j7(int index, C12681i0 value) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                value.getClass();
                O6();
                this.f69247d.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        @Override
        public C12717u1 k(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            return g12 == null ? this.f69250g.get(index) : g12.o(index);
        }

        public b k7(String value) {
            value.getClass();
            this.f69246c = value;
            this.f69245b |= 1;
            onChanged();
            return this;
        }

        @Override
        public InterfaceC12720v1 l(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            return g12 == null ? this.f69250g.get(index) : g12.r(index);
        }

        public b l7(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69246c = value;
            this.f69245b |= 1;
            onChanged();
            return this;
        }

        @Override
        public EnumC12660b2 m() {
            EnumC12660b2 a10 = EnumC12660b2.a(this.f69254k);
            return a10 == null ? EnumC12660b2.UNRECOGNIZED : a10;
        }

        public b m1(Iterable<? extends C12681i0> values) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                O6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f69247d);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        public b m7(int index, String value) {
            value.getClass();
            P6();
            this.f69249f.set(index, value);
            this.f69245b |= 4;
            onChanged();
            return this;
        }

        @Override
        public int n() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            return g12 == null ? this.f69250g.size() : g12.n();
        }

        public b n7(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                Q6();
                this.f69250g.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        @Override
        public List<? extends InterfaceC12720v1> o() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f69250g);
        }

        public b o7(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                value.getClass();
                Q6();
                this.f69250g.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        @Override
        public int p() {
            return this.f69254k;
        }

        @Override
        public String p5(int index) {
            return this.f69249f.get(index);
        }

        public b p7(S1.b builderForValue) {
            Q1<S1, S1.b, T1> q12 = this.f69253j;
            if (q12 == null) {
                this.f69252i = builderForValue.build();
            } else {
                q12.j(builderForValue.build());
            }
            this.f69245b |= 16;
            onChanged();
            return this;
        }

        public b q6(int index, C12681i0 value) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                value.getClass();
                O6();
                this.f69247d.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public b q7(S1 value) {
            Q1<S1, S1.b, T1> q12 = this.f69253j;
            if (q12 == null) {
                value.getClass();
                this.f69252i = value;
            } else {
                q12.j(value);
            }
            this.f69245b |= 16;
            onChanged();
            return this;
        }

        public b r6(C12681i0.b builderForValue) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                O6();
                this.f69247d.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        public b r7(EnumC12660b2 value) {
            value.getClass();
            this.f69245b |= 32;
            this.f69254k = value.getNumber();
            onChanged();
            return this;
        }

        public b s6(C12681i0 value) {
            G1<C12681i0, C12681i0.b, InterfaceC12696n0> g12 = this.f69248e;
            if (g12 == null) {
                value.getClass();
                O6();
                this.f69247d.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public b s7(int value) {
            this.f69254k = value;
            this.f69245b |= 32;
            onChanged();
            return this;
        }

        public C12681i0.b t6() {
            return U6().d(C12681i0.K6());
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        public C12681i0.b u6(int index) {
            return U6().c(index, C12681i0.K6());
        }

        @Override
        public boolean v() {
            return (this.f69245b & 16) != 0;
        }

        public b v3(Iterable<? extends C12717u1> values) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                Q6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f69250g);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        public b v6(String value) {
            value.getClass();
            P6();
            this.f69249f.add(value);
            this.f69245b |= 4;
            onChanged();
            return this;
        }

        public b w6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            P6();
            this.f69249f.b3(value);
            this.f69245b |= 4;
            onChanged();
            return this;
        }

        @Override
        public S1 x() {
            Q1<S1, S1.b, T1> q12 = this.f69253j;
            if (q12 != null) {
                return q12.f();
            }
            S1 s12 = this.f69252i;
            return s12 == null ? S1.v6() : s12;
        }

        public b x6(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                Q6();
                this.f69250g.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        @Override
        public T1 y() {
            Q1<S1, S1.b, T1> q12 = this.f69253j;
            if (q12 != null) {
                return q12.g();
            }
            S1 s12 = this.f69252i;
            return s12 == null ? S1.v6() : s12;
        }

        public b y6(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                value.getClass();
                Q6();
                this.f69250g.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public b z6(C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69251h;
            if (g12 == null) {
                Q6();
                this.f69250g.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        public b(a aVar) {
            this();
        }

        public b() {
            this.f69246c = "";
            this.f69247d = Collections.emptyList();
            this.f69249f = J0.n();
            this.f69250g = Collections.emptyList();
            this.f69254k = 0;
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69246c = "";
            this.f69247d = Collections.emptyList();
            this.f69249f = J0.n();
            this.f69250g = Collections.emptyList();
            this.f69254k = 0;
        }
    }

    public i2(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static i2 E6() {
        return f69236p;
    }

    public static b H6() {
        return f69236p.toBuilder();
    }

    public static b I6(i2 prototype) {
        return f69236p.toBuilder().d7(prototype);
    }

    public static i2 L6(InputStream input) throws IOException {
        return (i2) AbstractC12722w0.parseDelimitedWithIOException(f69237q, input);
    }

    public static i2 M6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (i2) AbstractC12722w0.parseDelimitedWithIOException(f69237q, input, extensionRegistry);
    }

    public static i2 N6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69237q.parseFrom(data);
    }

    public static i2 O6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69237q.parseFrom(data, extensionRegistry);
    }

    public static i2 P6(C input) throws IOException {
        return (i2) AbstractC12722w0.parseWithIOException(f69237q, input);
    }

    public static i2 Q6(C input, C12666d0 extensionRegistry) throws IOException {
        return (i2) AbstractC12722w0.parseWithIOException(f69237q, input, extensionRegistry);
    }

    public static i2 R6(InputStream input) throws IOException {
        return (i2) AbstractC12722w0.parseWithIOException(f69237q, input);
    }

    public static i2 S6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (i2) AbstractC12722w0.parseWithIOException(f69237q, input, extensionRegistry);
    }

    public static i2 T6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69237q.parseFrom(data);
    }

    public static i2 U6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69237q.parseFrom(data, extensionRegistry);
    }

    public static i2 V6(byte[] data) throws InvalidProtocolBufferException {
        return f69237q.parseFrom(data);
    }

    public static i2 W6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69237q.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return k2.f69330a;
    }

    public static InterfaceC12723w1<i2> parser() {
        return f69237q;
    }

    @Override
    public int E1() {
        return this.f69240d.size();
    }

    @Override
    public i2 getDefaultInstanceForType() {
        return f69236p;
    }

    @Override
    public C1 n3() {
        return this.f69240d;
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
    public List<? extends InterfaceC12696n0> T4() {
        return this.f69239c;
    }

    @Override
    public List<C12681i0> X0() {
        return this.f69239c;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69236p ? new b(aVar) : new b(aVar).d7(this);
    }

    @Override
    public C12681i0 c5(int index) {
        return this.f69239c.get(index);
    }

    @Override
    public InterfaceC12696n0 e3(int index) {
        return this.f69239c.get(index);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i2)) {
            return super.equals(obj);
        }
        i2 i2Var = (i2) obj;
        if (getName().equals(i2Var.getName()) && X0().equals(i2Var.X0()) && n3().equals(i2Var.n3()) && j().equals(i2Var.j()) && v() == i2Var.v()) {
            return (!v() || x().equals(i2Var.x())) && this.f69243g == i2Var.f69243g && getUnknownFields().equals(i2Var.getUnknownFields());
        }
        return false;
    }

    @Override
    public int getFieldsCount() {
        return this.f69239c.size();
    }

    @Override
    public String getName() {
        Object obj = this.f69238b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69238b = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getNameBytes() {
        Object obj = this.f69238b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69238b = w10;
        return w10;
    }

    @Override
    public InterfaceC12723w1<i2> getParserForType() {
        return f69237q;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f69238b) ? AbstractC12722w0.computeStringSize(1, this.f69238b) : 0;
        for (int i11 = 0; i11 < this.f69239c.size(); i11++) {
            computeStringSize += CodedOutputStream.F0(2, this.f69239c.get(i11));
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f69240d.size(); i13++) {
            i12 += AbstractC12722w0.computeStringSizeNoTag(this.f69240d.Ee(i13));
        }
        int size = computeStringSize + i12 + n3().size();
        for (int i14 = 0; i14 < this.f69241e.size(); i14++) {
            size += CodedOutputStream.F0(4, this.f69241e.get(i14));
        }
        if (this.f69242f != null) {
            size += CodedOutputStream.F0(5, x());
        }
        if (this.f69243g != EnumC12660b2.SYNTAX_PROTO2.getNumber()) {
            size += CodedOutputStream.k0(6, this.f69243g);
        }
        int serializedSize = size + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public AbstractC12724x h4(int index) {
        return this.f69240d.ub(index);
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getFieldsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + X0().hashCode();
        }
        if (E1() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + n3().hashCode();
        }
        if (n() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + j().hashCode();
        }
        if (v()) {
            hashCode = (((hashCode * 37) + 5) * 53) + x().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 6) * 53) + this.f69243g) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return k2.f69331b.d(i2.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69244h;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69244h = (byte) 1;
        return true;
    }

    @Override
    public List<C12717u1> j() {
        return this.f69241e;
    }

    @Override
    public C12717u1 k(int index) {
        return this.f69241e.get(index);
    }

    @Override
    public InterfaceC12720v1 l(int index) {
        return this.f69241e.get(index);
    }

    @Override
    public EnumC12660b2 m() {
        EnumC12660b2 a10 = EnumC12660b2.a(this.f69243g);
        return a10 == null ? EnumC12660b2.UNRECOGNIZED : a10;
    }

    @Override
    public int n() {
        return this.f69241e.size();
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new i2();
    }

    @Override
    public List<? extends InterfaceC12720v1> o() {
        return this.f69241e;
    }

    @Override
    public int p() {
        return this.f69243g;
    }

    @Override
    public String p5(int index) {
        return this.f69240d.get(index);
    }

    @Override
    public boolean v() {
        return this.f69242f != null;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f69238b)) {
            AbstractC12722w0.writeString(output, 1, this.f69238b);
        }
        for (int i10 = 0; i10 < this.f69239c.size(); i10++) {
            output.L1(2, this.f69239c.get(i10));
        }
        for (int i11 = 0; i11 < this.f69240d.size(); i11++) {
            AbstractC12722w0.writeString(output, 3, this.f69240d.Ee(i11));
        }
        for (int i12 = 0; i12 < this.f69241e.size(); i12++) {
            output.L1(4, this.f69241e.get(i12));
        }
        if (this.f69242f != null) {
            output.L1(5, x());
        }
        if (this.f69243g != EnumC12660b2.SYNTAX_PROTO2.getNumber()) {
            output.Q(6, this.f69243g);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public S1 x() {
        S1 s12 = this.f69242f;
        return s12 == null ? S1.v6() : s12;
    }

    @Override
    public T1 y() {
        S1 s12 = this.f69242f;
        return s12 == null ? S1.v6() : s12;
    }

    public i2(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69238b = "";
        this.f69240d = J0.n();
        this.f69243g = 0;
        this.f69244h = (byte) -1;
    }

    public i2() {
        this.f69238b = "";
        this.f69240d = J0.n();
        this.f69243g = 0;
        this.f69244h = (byte) -1;
        this.f69238b = "";
        this.f69239c = Collections.emptyList();
        this.f69240d = J0.n();
        this.f69241e = Collections.emptyList();
        this.f69243g = 0;
    }
}
