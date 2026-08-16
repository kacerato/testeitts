package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.C12717u1;
import com.google.protobuf.Descriptors;
import com.google.protobuf.S1;
import com.google.protobuf.W;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class U extends AbstractC12722w0 implements V {

    public static final long f68963h = 0;

    public static final int f68964i = 1;

    public static final int f68965j = 2;

    public static final int f68966k = 3;

    public static final int f68967l = 4;

    public static final int f68968m = 5;

    public static final U f68969n = new U();

    public static final InterfaceC12723w1<U> f68970o = new a();

    public volatile Object f68971b;

    public List<W> f68972c;

    public List<C12717u1> f68973d;

    public S1 f68974e;

    public int f68975f;

    public byte f68976g;

    public class a extends AbstractC12661c<U> {
        @Override
        public U parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b E62 = U.E6();
            try {
                E62.mergeFrom(input, extensionRegistry);
                return E62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(E62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(E62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(E62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements V {

        public int f68977b;

        public Object f68978c;

        public List<W> f68979d;

        public G1<W, W.b, X> f68980e;

        public List<C12717u1> f68981f;

        public G1<C12717u1, C12717u1.b, InterfaceC12720v1> f68982g;

        public S1 f68983h;

        public Q1<S1, S1.b, T1> f68984i;

        public int f68985j;

        public b(a aVar) {
            this();
        }

        private void L6() {
            if ((this.f68977b & 4) == 0) {
                this.f68981f = new ArrayList(this.f68981f);
                this.f68977b |= 4;
            }
        }

        private G1<C12717u1, C12717u1.b, InterfaceC12720v1> S6() {
            if (this.f68982g == null) {
                this.f68982g = new G1<>(this.f68981f, (this.f68977b & 4) != 0, getParentForChildren(), isClean());
                this.f68981f = null;
            }
            return this.f68982g;
        }

        private Q1<S1, S1.b, T1> U6() {
            if (this.f68984i == null) {
                this.f68984i = new Q1<>(x(), getParentForChildren(), isClean());
                this.f68983h = null;
            }
            return this.f68984i;
        }

        public static final Descriptors.b getDescriptor() {
            return k2.f69334e;
        }

        @Override
        public U build() {
            U buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public U buildPartial() {
            U u10 = new U(this, null);
            D6(u10);
            if (this.f68977b != 0) {
                C6(u10);
            }
            onBuilt();
            return u10;
        }

        public final void C6(U result) {
            int i10 = this.f68977b;
            if ((i10 & 1) != 0) {
                result.f68971b = this.f68978c;
            }
            if ((i10 & 8) != 0) {
                Q1<S1, S1.b, T1> q12 = this.f68984i;
                result.f68974e = q12 == null ? this.f68983h : q12.b();
            }
            if ((i10 & 16) != 0) {
                result.f68975f = this.f68985j;
            }
        }

        public final void D6(U result) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                if ((this.f68977b & 2) != 0) {
                    this.f68979d = Collections.unmodifiableList(this.f68979d);
                    this.f68977b &= -3;
                }
                result.f68972c = this.f68979d;
            } else {
                result.f68972c = g12.g();
            }
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f68982g;
            if (g13 != null) {
                result.f68973d = g13.g();
                return;
            }
            if ((this.f68977b & 4) != 0) {
                this.f68981f = Collections.unmodifiableList(this.f68981f);
                this.f68977b &= -5;
            }
            result.f68973d = this.f68981f;
        }

        @Override
        public b s6() {
            super.s6();
            this.f68977b = 0;
            this.f68978c = "";
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                this.f68979d = Collections.emptyList();
            } else {
                this.f68979d = null;
                g12.h();
            }
            this.f68977b &= -3;
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f68982g;
            if (g13 == null) {
                this.f68981f = Collections.emptyList();
            } else {
                this.f68981f = null;
                g13.h();
            }
            this.f68977b &= -5;
            this.f68983h = null;
            Q1<S1, S1.b, T1> q12 = this.f68984i;
            if (q12 != null) {
                q12.d();
                this.f68984i = null;
            }
            this.f68985j = 0;
            return this;
        }

        public b F6() {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                this.f68979d = Collections.emptyList();
                this.f68977b &= -3;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b G6() {
            this.f68978c = U.C6().getName();
            this.f68977b &= -2;
            onChanged();
            return this;
        }

        public b H6() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                this.f68981f = Collections.emptyList();
                this.f68977b &= -5;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b I1(Iterable<? extends C12717u1> values) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                L6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f68981f);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        public b I6() {
            this.f68977b &= -9;
            this.f68983h = null;
            Q1<S1, S1.b, T1> q12 = this.f68984i;
            if (q12 != null) {
                q12.d();
                this.f68984i = null;
            }
            onChanged();
            return this;
        }

        public b J6() {
            this.f68977b &= -17;
            this.f68985j = 0;
            onChanged();
            return this;
        }

        @Override
        public W K3(int index) {
            G1<W, W.b, X> g12 = this.f68980e;
            return g12 == null ? this.f68979d.get(index) : g12.o(index);
        }

        public final void K6() {
            if ((this.f68977b & 2) == 0) {
                this.f68979d = new ArrayList(this.f68979d);
                this.f68977b |= 2;
            }
        }

        @Override
        public U getDefaultInstanceForType() {
            return U.C6();
        }

        @Override
        public int N2() {
            G1<W, W.b, X> g12 = this.f68980e;
            return g12 == null ? this.f68979d.size() : g12.n();
        }

        public W.b N6(int index) {
            return P6().l(index);
        }

        public List<W.b> O6() {
            return P6().m();
        }

        public final G1<W, W.b, X> P6() {
            if (this.f68980e == null) {
                this.f68980e = new G1<>(this.f68979d, (this.f68977b & 2) != 0, getParentForChildren(), isClean());
                this.f68979d = null;
            }
            return this.f68980e;
        }

        @Override
        public List<? extends X> Q0() {
            G1<W, W.b, X> g12 = this.f68980e;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f68979d);
        }

        public C12717u1.b Q6(int index) {
            return S6().l(index);
        }

        public List<C12717u1.b> R6() {
            return S6().m();
        }

        public S1.b T6() {
            this.f68977b |= 8;
            onChanged();
            return U6().e();
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
                                this.f68978c = input.Y();
                                this.f68977b |= 1;
                            } else if (Z10 == 18) {
                                W w10 = (W) input.I(W.parser(), extensionRegistry);
                                G1<W, W.b, X> g12 = this.f68980e;
                                if (g12 == null) {
                                    K6();
                                    this.f68979d.add(w10);
                                } else {
                                    g12.f(w10);
                                }
                            } else if (Z10 == 26) {
                                C12717u1 c12717u1 = (C12717u1) input.I(C12717u1.parser(), extensionRegistry);
                                G1<C12717u1, C12717u1.b, InterfaceC12720v1> g13 = this.f68982g;
                                if (g13 == null) {
                                    L6();
                                    this.f68981f.add(c12717u1);
                                } else {
                                    g13.f(c12717u1);
                                }
                            } else if (Z10 == 34) {
                                input.J(U6().e(), extensionRegistry);
                                this.f68977b |= 8;
                            } else if (Z10 == 40) {
                                this.f68985j = input.A();
                                this.f68977b |= 16;
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
        public X W1(int index) {
            G1<W, W.b, X> g12 = this.f68980e;
            return g12 == null ? this.f68979d.get(index) : g12.r(index);
        }

        public b W6(U other) {
            if (other == U.C6()) {
                return this;
            }
            if (!other.getName().isEmpty()) {
                this.f68978c = other.f68971b;
                this.f68977b |= 1;
                onChanged();
            }
            if (this.f68980e == null) {
                if (!other.f68972c.isEmpty()) {
                    if (this.f68979d.isEmpty()) {
                        this.f68979d = other.f68972c;
                        this.f68977b &= -3;
                    } else {
                        K6();
                        this.f68979d.addAll(other.f68972c);
                    }
                    onChanged();
                }
            } else if (!other.f68972c.isEmpty()) {
                if (this.f68980e.u()) {
                    this.f68980e.i();
                    this.f68980e = null;
                    this.f68979d = other.f68972c;
                    this.f68977b &= -3;
                    this.f68980e = AbstractC12722w0.alwaysUseFieldBuilders ? P6() : null;
                } else {
                    this.f68980e.b(other.f68972c);
                }
            }
            if (this.f68982g == null) {
                if (!other.f68973d.isEmpty()) {
                    if (this.f68981f.isEmpty()) {
                        this.f68981f = other.f68973d;
                        this.f68977b &= -5;
                    } else {
                        L6();
                        this.f68981f.addAll(other.f68973d);
                    }
                    onChanged();
                }
            } else if (!other.f68973d.isEmpty()) {
                if (this.f68982g.u()) {
                    this.f68982g.i();
                    this.f68982g = null;
                    this.f68981f = other.f68973d;
                    this.f68977b &= -5;
                    this.f68982g = AbstractC12722w0.alwaysUseFieldBuilders ? S6() : null;
                } else {
                    this.f68982g.b(other.f68973d);
                }
            }
            if (other.v()) {
                Y6(other.x());
            }
            if (other.f68975f != 0) {
                l7(other.p());
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof U) {
                return W6((U) other);
            }
            super.mergeFrom(other);
            return this;
        }

        public b Y6(S1 value) {
            S1 s12;
            Q1<S1, S1.b, T1> q12 = this.f68984i;
            if (q12 != null) {
                q12.h(value);
            } else if ((this.f68977b & 8) == 0 || (s12 = this.f68983h) == null || s12 == S1.v6()) {
                this.f68983h = value;
            } else {
                T6().u6(value);
            }
            this.f68977b |= 8;
            onChanged();
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b a5(int index, W value) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                value.getClass();
                K6();
                this.f68979d.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public b a7(int index) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                K6();
                this.f68979d.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        public b b7(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                L6();
                this.f68981f.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        public b c7(int index, W.b builderForValue) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                K6();
                this.f68979d.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        public b d7(int index, W value) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                value.getClass();
                K6();
                this.f68979d.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        public b e7(String value) {
            value.getClass();
            this.f68978c = value;
            this.f68977b |= 1;
            onChanged();
            return this;
        }

        public b f7(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f68978c = value;
            this.f68977b |= 1;
            onChanged();
            return this;
        }

        @Override
        public List<W> g1() {
            G1<W, W.b, X> g12 = this.f68980e;
            return g12 == null ? Collections.unmodifiableList(this.f68979d) : g12.q();
        }

        public b g7(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                L6();
                this.f68981f.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return k2.f69334e;
        }

        @Override
        public String getName() {
            Object obj = this.f68978c;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f68978c = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getNameBytes() {
            Object obj = this.f68978c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f68978c = w10;
            return w10;
        }

        public b h7(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                value.getClass();
                L6();
                this.f68981f.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        public b i7(S1.b builderForValue) {
            Q1<S1, S1.b, T1> q12 = this.f68984i;
            if (q12 == null) {
                this.f68983h = builderForValue.build();
            } else {
                q12.j(builderForValue.build());
            }
            this.f68977b |= 8;
            onChanged();
            return this;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return k2.f69335f.d(U.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public List<C12717u1> j() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            return g12 == null ? Collections.unmodifiableList(this.f68981f) : g12.q();
        }

        public b j7(S1 value) {
            Q1<S1, S1.b, T1> q12 = this.f68984i;
            if (q12 == null) {
                value.getClass();
                this.f68983h = value;
            } else {
                q12.j(value);
            }
            this.f68977b |= 8;
            onChanged();
            return this;
        }

        @Override
        public C12717u1 k(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            return g12 == null ? this.f68981f.get(index) : g12.o(index);
        }

        public b k7(EnumC12660b2 value) {
            value.getClass();
            this.f68977b |= 16;
            this.f68985j = value.getNumber();
            onChanged();
            return this;
        }

        @Override
        public InterfaceC12720v1 l(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            return g12 == null ? this.f68981f.get(index) : g12.r(index);
        }

        public b l7(int value) {
            this.f68985j = value;
            this.f68977b |= 16;
            onChanged();
            return this;
        }

        @Override
        public EnumC12660b2 m() {
            EnumC12660b2 a10 = EnumC12660b2.a(this.f68985j);
            return a10 == null ? EnumC12660b2.UNRECOGNIZED : a10;
        }

        public b m1(Iterable<? extends W> values) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                K6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f68979d);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        @Override
        public int n() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            return g12 == null ? this.f68981f.size() : g12.n();
        }

        @Override
        public List<? extends InterfaceC12720v1> o() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f68981f);
        }

        @Override
        public int p() {
            return this.f68985j;
        }

        public b q6(W.b builderForValue) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                K6();
                this.f68979d.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        public b r6(W value) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                value.getClass();
                K6();
                this.f68979d.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public W.b s6() {
            return P6().d(W.y6());
        }

        public W.b t6(int index) {
            return P6().c(index, W.y6());
        }

        public b u6(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                L6();
                this.f68981f.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        @Override
        public boolean v() {
            return (this.f68977b & 8) != 0;
        }

        public b v3(int index, W.b builderForValue) {
            G1<W, W.b, X> g12 = this.f68980e;
            if (g12 == null) {
                K6();
                this.f68979d.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        public b v6(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                value.getClass();
                L6();
                this.f68981f.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public b w6(C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                L6();
                this.f68981f.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        @Override
        public S1 x() {
            Q1<S1, S1.b, T1> q12 = this.f68984i;
            if (q12 != null) {
                return q12.f();
            }
            S1 s12 = this.f68983h;
            return s12 == null ? S1.v6() : s12;
        }

        public b x6(C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f68982g;
            if (g12 == null) {
                value.getClass();
                L6();
                this.f68981f.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        @Override
        public T1 y() {
            Q1<S1, S1.b, T1> q12 = this.f68984i;
            if (q12 != null) {
                return q12.g();
            }
            S1 s12 = this.f68983h;
            return s12 == null ? S1.v6() : s12;
        }

        public C12717u1.b y6() {
            return S6().d(C12717u1.w6());
        }

        public C12717u1.b z6(int index) {
            return S6().c(index, C12717u1.w6());
        }

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public b() {
            this.f68978c = "";
            this.f68979d = Collections.emptyList();
            this.f68981f = Collections.emptyList();
            this.f68985j = 0;
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f68978c = "";
            this.f68979d = Collections.emptyList();
            this.f68981f = Collections.emptyList();
            this.f68985j = 0;
        }
    }

    public U(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static U C6() {
        return f68969n;
    }

    public static b E6() {
        return f68969n.toBuilder();
    }

    public static b F6(U prototype) {
        return f68969n.toBuilder().W6(prototype);
    }

    public static U I6(InputStream input) throws IOException {
        return (U) AbstractC12722w0.parseDelimitedWithIOException(f68970o, input);
    }

    public static U J6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (U) AbstractC12722w0.parseDelimitedWithIOException(f68970o, input, extensionRegistry);
    }

    public static U K6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f68970o.parseFrom(data);
    }

    public static U L6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68970o.parseFrom(data, extensionRegistry);
    }

    public static U M6(C input) throws IOException {
        return (U) AbstractC12722w0.parseWithIOException(f68970o, input);
    }

    public static U N6(C input, C12666d0 extensionRegistry) throws IOException {
        return (U) AbstractC12722w0.parseWithIOException(f68970o, input, extensionRegistry);
    }

    public static U O6(InputStream input) throws IOException {
        return (U) AbstractC12722w0.parseWithIOException(f68970o, input);
    }

    public static U P6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (U) AbstractC12722w0.parseWithIOException(f68970o, input, extensionRegistry);
    }

    public static U Q6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f68970o.parseFrom(data);
    }

    public static U R6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68970o.parseFrom(data, extensionRegistry);
    }

    public static U S6(byte[] data) throws InvalidProtocolBufferException {
        return f68970o.parseFrom(data);
    }

    public static U T6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f68970o.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return k2.f69334e;
    }

    public static InterfaceC12723w1<U> parser() {
        return f68970o;
    }

    @Override
    public U getDefaultInstanceForType() {
        return f68969n;
    }

    @Override
    public b newBuilderForType() {
        return E6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public W K3(int index) {
        return this.f68972c.get(index);
    }

    @Override
    public int N2() {
        return this.f68972c.size();
    }

    @Override
    public List<? extends X> Q0() {
        return this.f68972c;
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f68969n ? new b(aVar) : new b(aVar).W6(this);
    }

    @Override
    public X W1(int index) {
        return this.f68972c.get(index);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof U)) {
            return super.equals(obj);
        }
        U u10 = (U) obj;
        if (getName().equals(u10.getName()) && g1().equals(u10.g1()) && j().equals(u10.j()) && v() == u10.v()) {
            return (!v() || x().equals(u10.x())) && this.f68975f == u10.f68975f && getUnknownFields().equals(u10.getUnknownFields());
        }
        return false;
    }

    @Override
    public List<W> g1() {
        return this.f68972c;
    }

    @Override
    public String getName() {
        Object obj = this.f68971b;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f68971b = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getNameBytes() {
        Object obj = this.f68971b;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f68971b = w10;
        return w10;
    }

    @Override
    public InterfaceC12723w1<U> getParserForType() {
        return f68970o;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f68971b) ? AbstractC12722w0.computeStringSize(1, this.f68971b) : 0;
        for (int i11 = 0; i11 < this.f68972c.size(); i11++) {
            computeStringSize += CodedOutputStream.F0(2, this.f68972c.get(i11));
        }
        for (int i12 = 0; i12 < this.f68973d.size(); i12++) {
            computeStringSize += CodedOutputStream.F0(3, this.f68973d.get(i12));
        }
        if (this.f68974e != null) {
            computeStringSize += CodedOutputStream.F0(4, x());
        }
        if (this.f68975f != EnumC12660b2.SYNTAX_PROTO2.getNumber()) {
            computeStringSize += CodedOutputStream.k0(5, this.f68975f);
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (N2() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + g1().hashCode();
        }
        if (n() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + j().hashCode();
        }
        if (v()) {
            hashCode = (((hashCode * 37) + 4) * 53) + x().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 5) * 53) + this.f68975f) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return k2.f69335f.d(U.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f68976g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f68976g = (byte) 1;
        return true;
    }

    @Override
    public List<C12717u1> j() {
        return this.f68973d;
    }

    @Override
    public C12717u1 k(int index) {
        return this.f68973d.get(index);
    }

    @Override
    public InterfaceC12720v1 l(int index) {
        return this.f68973d.get(index);
    }

    @Override
    public EnumC12660b2 m() {
        EnumC12660b2 a10 = EnumC12660b2.a(this.f68975f);
        return a10 == null ? EnumC12660b2.UNRECOGNIZED : a10;
    }

    @Override
    public int n() {
        return this.f68973d.size();
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new U();
    }

    @Override
    public List<? extends InterfaceC12720v1> o() {
        return this.f68973d;
    }

    @Override
    public int p() {
        return this.f68975f;
    }

    @Override
    public boolean v() {
        return this.f68974e != null;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (!AbstractC12722w0.isStringEmpty(this.f68971b)) {
            AbstractC12722w0.writeString(output, 1, this.f68971b);
        }
        for (int i10 = 0; i10 < this.f68972c.size(); i10++) {
            output.L1(2, this.f68972c.get(i10));
        }
        for (int i11 = 0; i11 < this.f68973d.size(); i11++) {
            output.L1(3, this.f68973d.get(i11));
        }
        if (this.f68974e != null) {
            output.L1(4, x());
        }
        if (this.f68975f != EnumC12660b2.SYNTAX_PROTO2.getNumber()) {
            output.Q(5, this.f68975f);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public S1 x() {
        S1 s12 = this.f68974e;
        return s12 == null ? S1.v6() : s12;
    }

    @Override
    public T1 y() {
        S1 s12 = this.f68974e;
        return s12 == null ? S1.v6() : s12;
    }

    public U(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f68971b = "";
        this.f68975f = 0;
        this.f68976g = (byte) -1;
    }

    public U() {
        this.f68971b = "";
        this.f68975f = 0;
        this.f68976g = (byte) -1;
        this.f68971b = "";
        this.f68972c = Collections.emptyList();
        this.f68973d = Collections.emptyList();
        this.f68975f = 0;
    }
}
