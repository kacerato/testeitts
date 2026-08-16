package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.C12717u1;
import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C12681i0 extends AbstractC12722w0 implements InterfaceC12696n0 {

    public static final long f69166m = 0;

    public static final int f69167n = 1;

    public static final int f69168o = 2;

    public static final int f69169p = 3;

    public static final int f69170q = 4;

    public static final int f69171r = 6;

    public static final int f69172s = 7;

    public static final int f69173t = 8;

    public static final int f69174u = 9;

    public static final int f69175v = 10;

    public static final int f69176w = 11;

    public static final C12681i0 f69177x = new C12681i0();

    public static final InterfaceC12723w1<C12681i0> f69178y = new a();

    public int f69179b;

    public int f69180c;

    public int f69181d;

    public volatile Object f69182e;

    public volatile Object f69183f;

    public int f69184g;

    public boolean f69185h;

    public List<C12717u1> f69186i;

    public volatile Object f69187j;

    public volatile Object f69188k;

    public byte f69189l;

    public class a extends AbstractC12661c<C12681i0> {
        @Override
        public C12681i0 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b M62 = C12681i0.M6();
            try {
                M62.mergeFrom(input, extensionRegistry);
                return M62.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(M62.buildPartial());
            } catch (UninitializedMessageException e11) {
                throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(M62.buildPartial());
            } catch (IOException e12) {
                throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(M62.buildPartial());
            }
        }
    }

    public static final class b extends AbstractC12722w0.b<b> implements InterfaceC12696n0 {

        public int f69190b;

        public int f69191c;

        public int f69192d;

        public int f69193e;

        public Object f69194f;

        public Object f69195g;

        public int f69196h;

        public boolean f69197i;

        public List<C12717u1> f69198j;

        public G1<C12717u1, C12717u1.b, InterfaceC12720v1> f69199k;

        public Object f69200l;

        public Object f69201m;

        public b(a aVar) {
            this();
        }

        private void I6() {
            if ((this.f69190b & 128) == 0) {
                this.f69198j = new ArrayList(this.f69198j);
                this.f69190b |= 128;
            }
        }

        private G1<C12717u1, C12717u1.b, InterfaceC12720v1> M6() {
            if (this.f69199k == null) {
                this.f69199k = new G1<>(this.f69198j, (this.f69190b & 128) != 0, getParentForChildren(), isClean());
                this.f69198j = null;
            }
            return this.f69199k;
        }

        public static final Descriptors.b getDescriptor() {
            return k2.f69332c;
        }

        public b A6() {
            this.f69200l = C12681i0.K6().v0();
            this.f69190b &= -257;
            onChanged();
            return this;
        }

        public b B6() {
            this.f69190b &= -2;
            this.f69191c = 0;
            onChanged();
            return this;
        }

        public b C6() {
            this.f69194f = C12681i0.K6().getName();
            this.f69190b &= -9;
            onChanged();
            return this;
        }

        public b D6() {
            this.f69190b &= -5;
            this.f69193e = 0;
            onChanged();
            return this;
        }

        public b E6() {
            this.f69190b &= -33;
            this.f69196h = 0;
            onChanged();
            return this;
        }

        @Override
        public AbstractC12724x F() {
            Object obj = this.f69201m;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69201m = w10;
            return w10;
        }

        public b F6() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                this.f69198j = Collections.emptyList();
                this.f69190b &= -129;
                onChanged();
            } else {
                g12.h();
            }
            return this;
        }

        public b G6() {
            this.f69190b &= -65;
            this.f69197i = false;
            onChanged();
            return this;
        }

        public b H6() {
            this.f69195g = C12681i0.K6().O();
            this.f69190b &= -17;
            onChanged();
            return this;
        }

        public b I1(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                I6();
                this.f69198j.add(index, builderForValue.build());
                onChanged();
            } else {
                g12.e(index, builderForValue.build());
            }
            return this;
        }

        @Override
        public int J() {
            return this.f69196h;
        }

        @Override
        public C12681i0 getDefaultInstanceForType() {
            return C12681i0.K6();
        }

        @Override
        public AbstractC12724x K() {
            Object obj = this.f69195g;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69195g = w10;
            return w10;
        }

        public C12717u1.b K6(int index) {
            return M6().l(index);
        }

        public List<C12717u1.b> L6() {
            return M6().m();
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000b. Please report as an issue. */
        @Override
        public b mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
            extensionRegistry.getClass();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int Z10 = input.Z();
                        switch (Z10) {
                            case 0:
                                z10 = true;
                            case 8:
                                this.f69191c = input.A();
                                this.f69190b |= 1;
                            case 16:
                                this.f69192d = input.A();
                                this.f69190b |= 2;
                            case 24:
                                this.f69193e = input.G();
                                this.f69190b |= 4;
                            case 34:
                                this.f69194f = input.Y();
                                this.f69190b |= 8;
                            case 50:
                                this.f69195g = input.Y();
                                this.f69190b |= 16;
                            case 56:
                                this.f69196h = input.G();
                                this.f69190b |= 32;
                            case 64:
                                this.f69197i = input.v();
                                this.f69190b |= 64;
                            case 74:
                                C12717u1 c12717u1 = (C12717u1) input.I(C12717u1.parser(), extensionRegistry);
                                G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
                                if (g12 == null) {
                                    I6();
                                    this.f69198j.add(c12717u1);
                                } else {
                                    g12.f(c12717u1);
                                }
                            case 82:
                                this.f69200l = input.Y();
                                this.f69190b |= 256;
                            case 90:
                                this.f69201m = input.Y();
                                this.f69190b |= 512;
                            default:
                                if (!super.parseUnknownField(input, extensionRegistry, Z10)) {
                                    z10 = true;
                                }
                        }
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
        public String O() {
            Object obj = this.f69195g;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69195g = g02;
            return g02;
        }

        public b O6(C12681i0 other) {
            if (other == C12681i0.K6()) {
                return this;
            }
            if (other.f69179b != 0) {
                Z6(other.getKindValue());
            }
            if (other.f69180c != 0) {
                T6(other.y1());
            }
            if (other.getNumber() != 0) {
                c7(other.getNumber());
            }
            if (!other.getName().isEmpty()) {
                this.f69194f = other.f69182e;
                this.f69190b |= 8;
                onChanged();
            }
            if (!other.O().isEmpty()) {
                this.f69195g = other.f69183f;
                this.f69190b |= 16;
                onChanged();
            }
            if (other.J() != 0) {
                d7(other.J());
            }
            if (other.k0()) {
                g7(other.k0());
            }
            if (this.f69199k == null) {
                if (!other.f69186i.isEmpty()) {
                    if (this.f69198j.isEmpty()) {
                        this.f69198j = other.f69186i;
                        this.f69190b &= -129;
                    } else {
                        I6();
                        this.f69198j.addAll(other.f69186i);
                    }
                    onChanged();
                }
            } else if (!other.f69186i.isEmpty()) {
                if (this.f69199k.u()) {
                    this.f69199k.i();
                    this.f69199k = null;
                    this.f69198j = other.f69186i;
                    this.f69190b &= -129;
                    this.f69199k = AbstractC12722w0.alwaysUseFieldBuilders ? M6() : null;
                } else {
                    this.f69199k.b(other.f69186i);
                }
            }
            if (!other.v0().isEmpty()) {
                this.f69200l = other.f69187j;
                this.f69190b |= 256;
                onChanged();
            }
            if (!other.getDefaultValue().isEmpty()) {
                this.f69201m = other.f69188k;
                this.f69190b |= 512;
                onChanged();
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public b mergeFrom(Y0 other) {
            if (other instanceof C12681i0) {
                return O6((C12681i0) other);
            }
            super.mergeFrom(other);
            return this;
        }

        @Override
        public final b mergeUnknownFields(final r2 unknownFields) {
            return (b) super.mergeUnknownFields(unknownFields);
        }

        public b R6(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                I6();
                this.f69198j.remove(index);
                onChanged();
            } else {
                g12.w(index);
            }
            return this;
        }

        public b S6(c value) {
            value.getClass();
            this.f69190b |= 2;
            this.f69192d = value.getNumber();
            onChanged();
            return this;
        }

        public b T6(int value) {
            this.f69192d = value;
            this.f69190b |= 2;
            onChanged();
            return this;
        }

        public b U6(String value) {
            value.getClass();
            this.f69201m = value;
            this.f69190b |= 512;
            onChanged();
            return this;
        }

        public b V6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69201m = value;
            this.f69190b |= 512;
            onChanged();
            return this;
        }

        public b W6(String value) {
            value.getClass();
            this.f69200l = value;
            this.f69190b |= 256;
            onChanged();
            return this;
        }

        public b X6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69200l = value;
            this.f69190b |= 256;
            onChanged();
            return this;
        }

        public b Y6(d value) {
            value.getClass();
            this.f69190b |= 1;
            this.f69191c = value.getNumber();
            onChanged();
            return this;
        }

        public b Z6(int value) {
            this.f69191c = value;
            this.f69190b |= 1;
            onChanged();
            return this;
        }

        public b a5(C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                I6();
                this.f69198j.add(builderForValue.build());
                onChanged();
            } else {
                g12.f(builderForValue.build());
            }
            return this;
        }

        public b a7(String value) {
            value.getClass();
            this.f69194f = value;
            this.f69190b |= 8;
            onChanged();
            return this;
        }

        public b b7(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69194f = value;
            this.f69190b |= 8;
            onChanged();
            return this;
        }

        public b c7(int value) {
            this.f69193e = value;
            this.f69190b |= 4;
            onChanged();
            return this;
        }

        public b d7(int value) {
            this.f69196h = value;
            this.f69190b |= 32;
            onChanged();
            return this;
        }

        public b e7(int index, C12717u1.b builderForValue) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                I6();
                this.f69198j.set(index, builderForValue.build());
                onChanged();
            } else {
                g12.x(index, builderForValue.build());
            }
            return this;
        }

        public b f7(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                value.getClass();
                I6();
                this.f69198j.set(index, value);
                onChanged();
            } else {
                g12.x(index, value);
            }
            return this;
        }

        public b g7(boolean value) {
            this.f69197i = value;
            this.f69190b |= 64;
            onChanged();
            return this;
        }

        @Override
        public String getDefaultValue() {
            Object obj = this.f69201m;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69201m = g02;
            return g02;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return k2.f69332c;
        }

        @Override
        public d getKind() {
            d a10 = d.a(this.f69191c);
            return a10 == null ? d.UNRECOGNIZED : a10;
        }

        @Override
        public int getKindValue() {
            return this.f69191c;
        }

        @Override
        public String getName() {
            Object obj = this.f69194f;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69194f = g02;
            return g02;
        }

        @Override
        public AbstractC12724x getNameBytes() {
            Object obj = this.f69194f;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69194f = w10;
            return w10;
        }

        @Override
        public int getNumber() {
            return this.f69193e;
        }

        public b h7(String value) {
            value.getClass();
            this.f69195g = value;
            this.f69190b |= 16;
            onChanged();
            return this;
        }

        public b i7(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69195g = value;
            this.f69190b |= 16;
            onChanged();
            return this;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return k2.f69333d.d(C12681i0.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public List<C12717u1> j() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            return g12 == null ? Collections.unmodifiableList(this.f69198j) : g12.q();
        }

        @Override
        public final b setUnknownFields(final r2 unknownFields) {
            return (b) super.setUnknownFields(unknownFields);
        }

        @Override
        public C12717u1 k(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            return g12 == null ? this.f69198j.get(index) : g12.o(index);
        }

        @Override
        public boolean k0() {
            return this.f69197i;
        }

        @Override
        public InterfaceC12720v1 l(int index) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            return g12 == null ? this.f69198j.get(index) : g12.r(index);
        }

        public b m1(Iterable<? extends C12717u1> values) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                I6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f69198j);
                onChanged();
            } else {
                g12.b(values);
            }
            return this;
        }

        @Override
        public int n() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            return g12 == null ? this.f69198j.size() : g12.n();
        }

        @Override
        public List<? extends InterfaceC12720v1> o() {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            return g12 != null ? g12.s() : Collections.unmodifiableList(this.f69198j);
        }

        public b q6(C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                value.getClass();
                I6();
                this.f69198j.add(value);
                onChanged();
            } else {
                g12.f(value);
            }
            return this;
        }

        public C12717u1.b r6() {
            return M6().d(C12717u1.w6());
        }

        public C12717u1.b s6(int index) {
            return M6().c(index, C12717u1.w6());
        }

        @Override
        public C12681i0 build() {
            C12681i0 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public c u3() {
            c a10 = c.a(this.f69192d);
            return a10 == null ? c.UNRECOGNIZED : a10;
        }

        @Override
        public C12681i0 buildPartial() {
            C12681i0 c12681i0 = new C12681i0(this, null);
            w6(c12681i0);
            if (this.f69190b != 0) {
                v6(c12681i0);
            }
            onBuilt();
            return c12681i0;
        }

        @Override
        public String v0() {
            Object obj = this.f69200l;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f69200l = g02;
            return g02;
        }

        public b v3(int index, C12717u1 value) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                value.getClass();
                I6();
                this.f69198j.add(index, value);
                onChanged();
            } else {
                g12.e(index, value);
            }
            return this;
        }

        public final void v6(C12681i0 result) {
            int i10 = this.f69190b;
            if ((i10 & 1) != 0) {
                result.f69179b = this.f69191c;
            }
            if ((i10 & 2) != 0) {
                result.f69180c = this.f69192d;
            }
            if ((i10 & 4) != 0) {
                result.f69181d = this.f69193e;
            }
            if ((i10 & 8) != 0) {
                result.f69182e = this.f69194f;
            }
            if ((i10 & 16) != 0) {
                result.f69183f = this.f69195g;
            }
            if ((i10 & 32) != 0) {
                result.f69184g = this.f69196h;
            }
            if ((i10 & 64) != 0) {
                result.f69185h = this.f69197i;
            }
            if ((i10 & 256) != 0) {
                result.f69187j = this.f69200l;
            }
            if ((i10 & 512) != 0) {
                result.f69188k = this.f69201m;
            }
        }

        public final void w6(C12681i0 result) {
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 != null) {
                result.f69186i = g12.g();
                return;
            }
            if ((this.f69190b & 128) != 0) {
                this.f69198j = Collections.unmodifiableList(this.f69198j);
                this.f69190b &= -129;
            }
            result.f69186i = this.f69198j;
        }

        @Override
        public b s6() {
            super.s6();
            this.f69190b = 0;
            this.f69191c = 0;
            this.f69192d = 0;
            this.f69193e = 0;
            this.f69194f = "";
            this.f69195g = "";
            this.f69196h = 0;
            this.f69197i = false;
            G1<C12717u1, C12717u1.b, InterfaceC12720v1> g12 = this.f69199k;
            if (g12 == null) {
                this.f69198j = Collections.emptyList();
            } else {
                this.f69198j = null;
                g12.h();
            }
            this.f69190b &= -129;
            this.f69200l = "";
            this.f69201m = "";
            return this;
        }

        @Override
        public AbstractC12724x y0() {
            Object obj = this.f69200l;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f69200l = w10;
            return w10;
        }

        @Override
        public int y1() {
            return this.f69192d;
        }

        public b y6() {
            this.f69190b &= -3;
            this.f69192d = 0;
            onChanged();
            return this;
        }

        public b z6() {
            this.f69201m = C12681i0.K6().getDefaultValue();
            this.f69190b &= -513;
            onChanged();
            return this;
        }

        public b(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public b() {
            this.f69191c = 0;
            this.f69192d = 0;
            this.f69194f = "";
            this.f69195g = "";
            this.f69198j = Collections.emptyList();
            this.f69200l = "";
            this.f69201m = "";
        }

        public b(AbstractC12722w0.c parent) {
            super(parent);
            this.f69191c = 0;
            this.f69192d = 0;
            this.f69194f = "";
            this.f69195g = "";
            this.f69198j = Collections.emptyList();
            this.f69200l = "";
            this.f69201m = "";
        }
    }

    public enum c implements B1 {
        CARDINALITY_UNKNOWN(0),
        CARDINALITY_OPTIONAL(1),
        CARDINALITY_REQUIRED(2),
        CARDINALITY_REPEATED(3),
        UNRECOGNIZED(-1);

        public static final int CARDINALITY_OPTIONAL_VALUE = 1;
        public static final int CARDINALITY_REPEATED_VALUE = 3;
        public static final int CARDINALITY_REQUIRED_VALUE = 2;
        public static final int CARDINALITY_UNKNOWN_VALUE = 0;
        private final int value;
        private static final D0.d<c> internalValueMap = new a();
        private static final c[] VALUES = values();

        public class a implements D0.d<c> {
            @Override
            public c findValueByNumber(int number) {
                return c.a(number);
            }
        }

        c(int value) {
            this.value = value;
        }

        public static c a(int value) {
            if (value == 0) {
                return CARDINALITY_UNKNOWN;
            }
            if (value == 1) {
                return CARDINALITY_OPTIONAL;
            }
            if (value == 2) {
                return CARDINALITY_REQUIRED;
            }
            if (value != 3) {
                return null;
            }
            return CARDINALITY_REPEATED;
        }

        public static final Descriptors.d b() {
            return C12681i0.getDescriptor().q().get(1);
        }

        public static D0.d<c> c() {
            return internalValueMap;
        }

        @Deprecated
        public static c e(int value) {
            return a(value);
        }

        public static c g(Descriptors.e desc) {
            if (desc.i() == b()) {
                return desc.g() == -1 ? UNRECOGNIZED : VALUES[desc.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        @Override
        public final Descriptors.d getDescriptorForType() {
            return b();
        }

        @Override
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        @Override
        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return b().t().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }
    }

    public enum d implements B1 {
        TYPE_UNKNOWN(0),
        TYPE_DOUBLE(1),
        TYPE_FLOAT(2),
        TYPE_INT64(3),
        TYPE_UINT64(4),
        TYPE_INT32(5),
        TYPE_FIXED64(6),
        TYPE_FIXED32(7),
        TYPE_BOOL(8),
        TYPE_STRING(9),
        TYPE_GROUP(10),
        TYPE_MESSAGE(11),
        TYPE_BYTES(12),
        TYPE_UINT32(13),
        TYPE_ENUM(14),
        TYPE_SFIXED32(15),
        TYPE_SFIXED64(16),
        TYPE_SINT32(17),
        TYPE_SINT64(18),
        UNRECOGNIZED(-1);

        public static final int TYPE_BOOL_VALUE = 8;
        public static final int TYPE_BYTES_VALUE = 12;
        public static final int TYPE_DOUBLE_VALUE = 1;
        public static final int TYPE_ENUM_VALUE = 14;
        public static final int TYPE_FIXED32_VALUE = 7;
        public static final int TYPE_FIXED64_VALUE = 6;
        public static final int TYPE_FLOAT_VALUE = 2;
        public static final int TYPE_GROUP_VALUE = 10;
        public static final int TYPE_INT32_VALUE = 5;
        public static final int TYPE_INT64_VALUE = 3;
        public static final int TYPE_MESSAGE_VALUE = 11;
        public static final int TYPE_SFIXED32_VALUE = 15;
        public static final int TYPE_SFIXED64_VALUE = 16;
        public static final int TYPE_SINT32_VALUE = 17;
        public static final int TYPE_SINT64_VALUE = 18;
        public static final int TYPE_STRING_VALUE = 9;
        public static final int TYPE_UINT32_VALUE = 13;
        public static final int TYPE_UINT64_VALUE = 4;
        public static final int TYPE_UNKNOWN_VALUE = 0;
        private final int value;
        private static final D0.d<d> internalValueMap = new a();
        private static final d[] VALUES = values();

        public class a implements D0.d<d> {
            @Override
            public d findValueByNumber(int number) {
                return d.a(number);
            }
        }

        d(int value) {
            this.value = value;
        }

        public static d a(int value) {
            switch (value) {
                case 0:
                    return TYPE_UNKNOWN;
                case 1:
                    return TYPE_DOUBLE;
                case 2:
                    return TYPE_FLOAT;
                case 3:
                    return TYPE_INT64;
                case 4:
                    return TYPE_UINT64;
                case 5:
                    return TYPE_INT32;
                case 6:
                    return TYPE_FIXED64;
                case 7:
                    return TYPE_FIXED32;
                case 8:
                    return TYPE_BOOL;
                case 9:
                    return TYPE_STRING;
                case 10:
                    return TYPE_GROUP;
                case 11:
                    return TYPE_MESSAGE;
                case 12:
                    return TYPE_BYTES;
                case 13:
                    return TYPE_UINT32;
                case 14:
                    return TYPE_ENUM;
                case 15:
                    return TYPE_SFIXED32;
                case 16:
                    return TYPE_SFIXED64;
                case 17:
                    return TYPE_SINT32;
                case 18:
                    return TYPE_SINT64;
                default:
                    return null;
            }
        }

        public static final Descriptors.d b() {
            return C12681i0.getDescriptor().q().get(0);
        }

        public static D0.d<d> c() {
            return internalValueMap;
        }

        @Deprecated
        public static d e(int value) {
            return a(value);
        }

        public static d g(Descriptors.e desc) {
            if (desc.i() == b()) {
                return desc.g() == -1 ? UNRECOGNIZED : VALUES[desc.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }

        @Override
        public final Descriptors.d getDescriptorForType() {
            return b();
        }

        @Override
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        @Override
        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return b().t().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }
    }

    public C12681i0(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static C12681i0 K6() {
        return f69177x;
    }

    public static b M6() {
        return f69177x.toBuilder();
    }

    public static b N6(C12681i0 prototype) {
        return f69177x.toBuilder().O6(prototype);
    }

    public static C12681i0 Q6(InputStream input) throws IOException {
        return (C12681i0) AbstractC12722w0.parseDelimitedWithIOException(f69178y, input);
    }

    public static C12681i0 R6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12681i0) AbstractC12722w0.parseDelimitedWithIOException(f69178y, input, extensionRegistry);
    }

    public static C12681i0 S6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69178y.parseFrom(data);
    }

    public static C12681i0 T6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69178y.parseFrom(data, extensionRegistry);
    }

    public static C12681i0 U6(C input) throws IOException {
        return (C12681i0) AbstractC12722w0.parseWithIOException(f69178y, input);
    }

    public static C12681i0 V6(C input, C12666d0 extensionRegistry) throws IOException {
        return (C12681i0) AbstractC12722w0.parseWithIOException(f69178y, input, extensionRegistry);
    }

    public static C12681i0 W6(InputStream input) throws IOException {
        return (C12681i0) AbstractC12722w0.parseWithIOException(f69178y, input);
    }

    public static C12681i0 X6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (C12681i0) AbstractC12722w0.parseWithIOException(f69178y, input, extensionRegistry);
    }

    public static C12681i0 Y6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69178y.parseFrom(data);
    }

    public static C12681i0 Z6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69178y.parseFrom(data, extensionRegistry);
    }

    public static C12681i0 a7(byte[] data) throws InvalidProtocolBufferException {
        return f69178y.parseFrom(data);
    }

    public static C12681i0 b7(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69178y.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return k2.f69332c;
    }

    public static InterfaceC12723w1<C12681i0> parser() {
        return f69178y;
    }

    @Override
    public AbstractC12724x F() {
        Object obj = this.f69188k;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69188k = w10;
        return w10;
    }

    @Override
    public int J() {
        return this.f69184g;
    }

    @Override
    public AbstractC12724x K() {
        Object obj = this.f69183f;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69183f = w10;
        return w10;
    }

    @Override
    public C12681i0 getDefaultInstanceForType() {
        return f69177x;
    }

    @Override
    public String O() {
        Object obj = this.f69183f;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69183f = g02;
        return g02;
    }

    @Override
    public b newBuilderForType() {
        return M6();
    }

    @Override
    public b newBuilderForType(AbstractC12722w0.c parent) {
        return new b(parent, null);
    }

    @Override
    public b toBuilder() {
        a aVar = null;
        return this == f69177x ? new b(aVar) : new b(aVar).O6(this);
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12681i0)) {
            return super.equals(obj);
        }
        C12681i0 c12681i0 = (C12681i0) obj;
        return this.f69179b == c12681i0.f69179b && this.f69180c == c12681i0.f69180c && getNumber() == c12681i0.getNumber() && getName().equals(c12681i0.getName()) && O().equals(c12681i0.O()) && J() == c12681i0.J() && k0() == c12681i0.k0() && j().equals(c12681i0.j()) && v0().equals(c12681i0.v0()) && getDefaultValue().equals(c12681i0.getDefaultValue()) && getUnknownFields().equals(c12681i0.getUnknownFields());
    }

    @Override
    public String getDefaultValue() {
        Object obj = this.f69188k;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69188k = g02;
        return g02;
    }

    @Override
    public d getKind() {
        d a10 = d.a(this.f69179b);
        return a10 == null ? d.UNRECOGNIZED : a10;
    }

    @Override
    public int getKindValue() {
        return this.f69179b;
    }

    @Override
    public String getName() {
        Object obj = this.f69182e;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69182e = g02;
        return g02;
    }

    @Override
    public AbstractC12724x getNameBytes() {
        Object obj = this.f69182e;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69182e = w10;
        return w10;
    }

    @Override
    public int getNumber() {
        return this.f69181d;
    }

    @Override
    public InterfaceC12723w1<C12681i0> getParserForType() {
        return f69178y;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int k02 = this.f69179b != d.TYPE_UNKNOWN.getNumber() ? CodedOutputStream.k0(1, this.f69179b) : 0;
        if (this.f69180c != c.CARDINALITY_UNKNOWN.getNumber()) {
            k02 += CodedOutputStream.k0(2, this.f69180c);
        }
        int i11 = this.f69181d;
        if (i11 != 0) {
            k02 += CodedOutputStream.w0(3, i11);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69182e)) {
            k02 += AbstractC12722w0.computeStringSize(4, this.f69182e);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69183f)) {
            k02 += AbstractC12722w0.computeStringSize(6, this.f69183f);
        }
        int i12 = this.f69184g;
        if (i12 != 0) {
            k02 += CodedOutputStream.w0(7, i12);
        }
        boolean z10 = this.f69185h;
        if (z10) {
            k02 += CodedOutputStream.a0(8, z10);
        }
        for (int i13 = 0; i13 < this.f69186i.size(); i13++) {
            k02 += CodedOutputStream.F0(9, this.f69186i.get(i13));
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69187j)) {
            k02 += AbstractC12722w0.computeStringSize(10, this.f69187j);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69188k)) {
            k02 += AbstractC12722w0.computeStringSize(11, this.f69188k);
        }
        int serializedSize = k02 + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.f69179b) * 37) + 2) * 53) + this.f69180c) * 37) + 3) * 53) + getNumber()) * 37) + 4) * 53) + getName().hashCode()) * 37) + 6) * 53) + O().hashCode()) * 37) + 7) * 53) + J()) * 37) + 8) * 53) + D0.k(k0());
        if (n() > 0) {
            hashCode = (((hashCode * 37) + 9) * 53) + j().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 10) * 53) + v0().hashCode()) * 37) + 11) * 53) + getDefaultValue().hashCode()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return k2.f69333d.d(C12681i0.class, b.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69189l;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69189l = (byte) 1;
        return true;
    }

    @Override
    public List<C12717u1> j() {
        return this.f69186i;
    }

    @Override
    public C12717u1 k(int index) {
        return this.f69186i.get(index);
    }

    @Override
    public boolean k0() {
        return this.f69185h;
    }

    @Override
    public InterfaceC12720v1 l(int index) {
        return this.f69186i.get(index);
    }

    @Override
    public int n() {
        return this.f69186i.size();
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new C12681i0();
    }

    @Override
    public List<? extends InterfaceC12720v1> o() {
        return this.f69186i;
    }

    @Override
    public c u3() {
        c a10 = c.a(this.f69180c);
        return a10 == null ? c.UNRECOGNIZED : a10;
    }

    @Override
    public String v0() {
        Object obj = this.f69187j;
        if (obj instanceof String) {
            return (String) obj;
        }
        String g02 = ((AbstractC12724x) obj).g0();
        this.f69187j = g02;
        return g02;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (this.f69179b != d.TYPE_UNKNOWN.getNumber()) {
            output.Q(1, this.f69179b);
        }
        if (this.f69180c != c.CARDINALITY_UNKNOWN.getNumber()) {
            output.Q(2, this.f69180c);
        }
        int i10 = this.f69181d;
        if (i10 != 0) {
            output.i(3, i10);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69182e)) {
            AbstractC12722w0.writeString(output, 4, this.f69182e);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69183f)) {
            AbstractC12722w0.writeString(output, 6, this.f69183f);
        }
        int i11 = this.f69184g;
        if (i11 != 0) {
            output.i(7, i11);
        }
        boolean z10 = this.f69185h;
        if (z10) {
            output.q(8, z10);
        }
        for (int i12 = 0; i12 < this.f69186i.size(); i12++) {
            output.L1(9, this.f69186i.get(i12));
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69187j)) {
            AbstractC12722w0.writeString(output, 10, this.f69187j);
        }
        if (!AbstractC12722w0.isStringEmpty(this.f69188k)) {
            AbstractC12722w0.writeString(output, 11, this.f69188k);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public AbstractC12724x y0() {
        Object obj = this.f69187j;
        if (!(obj instanceof String)) {
            return (AbstractC12724x) obj;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) obj);
        this.f69187j = w10;
        return w10;
    }

    @Override
    public int y1() {
        return this.f69180c;
    }

    public C12681i0(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69179b = 0;
        this.f69180c = 0;
        this.f69181d = 0;
        this.f69182e = "";
        this.f69183f = "";
        this.f69184g = 0;
        this.f69185h = false;
        this.f69187j = "";
        this.f69188k = "";
        this.f69189l = (byte) -1;
    }

    public C12681i0() {
        this.f69179b = 0;
        this.f69180c = 0;
        this.f69181d = 0;
        this.f69182e = "";
        this.f69183f = "";
        this.f69184g = 0;
        this.f69185h = false;
        this.f69187j = "";
        this.f69188k = "";
        this.f69189l = (byte) -1;
        this.f69179b = 0;
        this.f69180c = 0;
        this.f69182e = "";
        this.f69183f = "";
        this.f69186i = Collections.emptyList();
        this.f69187j = "";
        this.f69188k = "";
    }
}
