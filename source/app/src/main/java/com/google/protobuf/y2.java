package com.google.protobuf;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.M0;
import com.google.protobuf.X1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class y2 extends AbstractC12722w0 implements z2 {

    public static final long f69761e = 0;

    public static final int f69762f = 1;

    public static final int f69763g = 2;

    public static final int f69764h = 3;

    public static final int f69765i = 4;

    public static final int f69766j = 5;

    public static final int f69767k = 6;

    public static final y2 f69768l = new y2();

    public static final InterfaceC12723w1<y2> f69769m = new a();

    public int f69770b;

    public Object f69771c;

    public byte f69772d;

    public class a extends AbstractC12661c<y2> {
        @Override
        public y2 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            c y62 = y2.y6();
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

    public static class b {

        public static final int[] f69773a;

        static {
            int[] iArr = new int[d.values().length];
            f69773a = iArr;
            try {
                iArr[d.NULL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69773a[d.NUMBER_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69773a[d.STRING_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69773a[d.BOOL_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69773a[d.STRUCT_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69773a[d.LIST_VALUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f69773a[d.KIND_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class c extends AbstractC12722w0.b<c> implements z2 {

        public int f69774b;

        public Object f69775c;

        public int f69776d;

        public Q1<X1, X1.b, Y1> f69777e;

        public Q1<M0, M0.b, N0> f69778f;

        public c(AbstractC12722w0.c cVar, a aVar) {
            this(cVar);
        }

        public static final Descriptors.b getDescriptor() {
            return Z1.f69033e;
        }

        @Override
        public AbstractC12724x A4() {
            String str = this.f69774b == 3 ? this.f69775c : "";
            if (!(str instanceof String)) {
                return (AbstractC12724x) str;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) str);
            if (this.f69774b == 3) {
                this.f69775c = w10;
            }
            return w10;
        }

        public final Q1<M0, M0.b, N0> A6() {
            if (this.f69778f == null) {
                if (this.f69774b != 6) {
                    this.f69775c = M0.v6();
                }
                this.f69778f = new Q1<>((M0) this.f69775c, getParentForChildren(), isClean());
                this.f69775c = null;
            }
            this.f69774b = 6;
            onChanged();
            return this.f69778f;
        }

        public X1.b B6() {
            return C6().e();
        }

        public final Q1<X1, X1.b, Y1> C6() {
            if (this.f69777e == null) {
                if (this.f69774b != 5) {
                    this.f69775c = X1.w6();
                }
                this.f69777e = new Q1<>((X1) this.f69775c, getParentForChildren(), isClean());
                this.f69775c = null;
            }
            this.f69774b = 5;
            onChanged();
            return this.f69777e;
        }

        @Override
        public c mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
            extensionRegistry.getClass();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int Z10 = input.Z();
                        if (Z10 != 0) {
                            if (Z10 == 8) {
                                int A10 = input.A();
                                this.f69774b = 1;
                                this.f69775c = Integer.valueOf(A10);
                            } else if (Z10 == 17) {
                                this.f69775c = Double.valueOf(input.z());
                                this.f69774b = 2;
                            } else if (Z10 == 26) {
                                String Y10 = input.Y();
                                this.f69774b = 3;
                                this.f69775c = Y10;
                            } else if (Z10 == 32) {
                                this.f69775c = Boolean.valueOf(input.v());
                                this.f69774b = 4;
                            } else if (Z10 == 42) {
                                input.J(C6().e(), extensionRegistry);
                                this.f69774b = 5;
                            } else if (Z10 == 50) {
                                input.J(A6().e(), extensionRegistry);
                                this.f69774b = 6;
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
        public boolean E() {
            return this.f69774b == 3;
        }

        @Override
        public X1 E4() {
            Q1<X1, X1.b, Y1> q12 = this.f69777e;
            return q12 == null ? this.f69774b == 5 ? (X1) this.f69775c : X1.w6() : this.f69774b == 5 ? q12.f() : X1.w6();
        }

        @Override
        public c mergeFrom(Y0 other) {
            if (other instanceof y2) {
                return F6((y2) other);
            }
            super.mergeFrom(other);
            return this;
        }

        @Override
        public boolean F5() {
            return this.f69774b == 2;
        }

        public c F6(y2 other) {
            if (other == y2.w6()) {
                return this;
            }
            switch (b.f69773a[other.G4().ordinal()]) {
                case 1:
                    N6(other.L2());
                    break;
                case 2:
                    O6(other.s5());
                    break;
                case 3:
                    this.f69774b = 3;
                    this.f69775c = other.f69771c;
                    onChanged();
                    break;
                case 4:
                    J6(other.e6());
                    break;
                case 5:
                    H6(other.E4());
                    break;
                case 6:
                    G6(other.P1());
                    break;
            }
            mergeUnknownFields(other.getUnknownFields());
            onChanged();
            return this;
        }

        @Override
        public d G4() {
            return d.a(this.f69774b);
        }

        public c G6(M0 value) {
            Q1<M0, M0.b, N0> q12 = this.f69778f;
            if (q12 == null) {
                if (this.f69774b != 6 || this.f69775c == M0.v6()) {
                    this.f69775c = value;
                } else {
                    this.f69775c = M0.y6((M0) this.f69775c).F6(value).buildPartial();
                }
                onChanged();
            } else if (this.f69774b == 6) {
                q12.h(value);
            } else {
                q12.j(value);
            }
            this.f69774b = 6;
            return this;
        }

        public c H6(X1 value) {
            Q1<X1, X1.b, Y1> q12 = this.f69777e;
            if (q12 == null) {
                if (this.f69774b != 5 || this.f69775c == X1.w6()) {
                    this.f69775c = value;
                } else {
                    this.f69775c = X1.A6((X1) this.f69775c).x6(value).buildPartial();
                }
                onChanged();
            } else if (this.f69774b == 5) {
                q12.h(value);
            } else {
                q12.j(value);
            }
            this.f69774b = 5;
            return this;
        }

        @Override
        public y2 buildPartial() {
            y2 y2Var = new y2(this, null);
            if (this.f69776d != 0) {
                v3(y2Var);
            }
            a5(y2Var);
            onBuilt();
            return y2Var;
        }

        @Override
        public final c mergeUnknownFields(final r2 unknownFields) {
            return (c) super.mergeUnknownFields(unknownFields);
        }

        public c J6(boolean value) {
            this.f69774b = 4;
            this.f69775c = Boolean.valueOf(value);
            onChanged();
            return this;
        }

        @Override
        public Y1 K0() {
            Q1<X1, X1.b, Y1> q12;
            int i10 = this.f69774b;
            return (i10 != 5 || (q12 = this.f69777e) == null) ? i10 == 5 ? (X1) this.f69775c : X1.w6() : q12.g();
        }

        @Override
        public N0 K4() {
            Q1<M0, M0.b, N0> q12;
            int i10 = this.f69774b;
            return (i10 != 6 || (q12 = this.f69778f) == null) ? i10 == 6 ? (M0) this.f69775c : M0.v6() : q12.g();
        }

        public c K6(M0.b builderForValue) {
            Q1<M0, M0.b, N0> q12 = this.f69778f;
            if (q12 == null) {
                this.f69775c = builderForValue.build();
                onChanged();
            } else {
                q12.j(builderForValue.build());
            }
            this.f69774b = 6;
            return this;
        }

        @Override
        public int L2() {
            if (this.f69774b == 1) {
                return ((Integer) this.f69775c).intValue();
            }
            return 0;
        }

        public c L6(M0 value) {
            Q1<M0, M0.b, N0> q12 = this.f69778f;
            if (q12 == null) {
                value.getClass();
                this.f69775c = value;
                onChanged();
            } else {
                q12.j(value);
            }
            this.f69774b = 6;
            return this;
        }

        public c M6(EnumC12711s1 value) {
            value.getClass();
            this.f69774b = 1;
            this.f69775c = Integer.valueOf(value.getNumber());
            onChanged();
            return this;
        }

        public c N6(int value) {
            this.f69774b = 1;
            this.f69775c = Integer.valueOf(value);
            onChanged();
            return this;
        }

        @Override
        public boolean O1() {
            return this.f69774b == 5;
        }

        public c O6(double value) {
            this.f69774b = 2;
            this.f69775c = Double.valueOf(value);
            onChanged();
            return this;
        }

        @Override
        public M0 P1() {
            Q1<M0, M0.b, N0> q12 = this.f69778f;
            return q12 == null ? this.f69774b == 6 ? (M0) this.f69775c : M0.v6() : this.f69774b == 6 ? q12.f() : M0.v6();
        }

        public c P6(String value) {
            value.getClass();
            this.f69774b = 3;
            this.f69775c = value;
            onChanged();
            return this;
        }

        public c Q6(AbstractC12724x value) {
            value.getClass();
            AbstractC12657b.checkByteStringIsUtf8(value);
            this.f69774b = 3;
            this.f69775c = value;
            onChanged();
            return this;
        }

        public c R6(X1.b builderForValue) {
            Q1<X1, X1.b, Y1> q12 = this.f69777e;
            if (q12 == null) {
                this.f69775c = builderForValue.build();
                onChanged();
            } else {
                q12.j(builderForValue.build());
            }
            this.f69774b = 5;
            return this;
        }

        public c S6(X1 value) {
            Q1<X1, X1.b, Y1> q12 = this.f69777e;
            if (q12 == null) {
                value.getClass();
                this.f69775c = value;
                onChanged();
            } else {
                q12.j(value);
            }
            this.f69774b = 5;
            return this;
        }

        @Override
        public final c setUnknownFields(final r2 unknownFields) {
            return (c) super.setUnknownFields(unknownFields);
        }

        public final void a5(y2 result) {
            Q1<M0, M0.b, N0> q12;
            Q1<X1, X1.b, Y1> q13;
            result.f69770b = this.f69774b;
            result.f69771c = this.f69775c;
            if (this.f69774b == 5 && (q13 = this.f69777e) != null) {
                result.f69771c = q13.b();
            }
            if (this.f69774b != 6 || (q12 = this.f69778f) == null) {
                return;
            }
            result.f69771c = q12.b();
        }

        @Override
        public boolean e6() {
            if (this.f69774b == 4) {
                return ((Boolean) this.f69775c).booleanValue();
            }
            return false;
        }

        @Override
        public Descriptors.b getDescriptorForType() {
            return Z1.f69033e;
        }

        @Override
        public EnumC12711s1 getNullValue() {
            if (this.f69774b != 1) {
                return EnumC12711s1.NULL_VALUE;
            }
            EnumC12711s1 a10 = EnumC12711s1.a(((Integer) this.f69775c).intValue());
            return a10 == null ? EnumC12711s1.UNRECOGNIZED : a10;
        }

        @Override
        public String getStringValue() {
            String str = this.f69774b == 3 ? this.f69775c : "";
            if (str instanceof String) {
                return (String) str;
            }
            String g02 = ((AbstractC12724x) str).g0();
            if (this.f69774b == 3) {
                this.f69775c = g02;
            }
            return g02;
        }

        @Override
        public boolean hasNullValue() {
            return this.f69774b == 1;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return Z1.f69034f.d(y2.class, c.class);
        }

        @Override
        public final boolean isInitialized() {
            return true;
        }

        @Override
        public y2 build() {
            y2 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
        }

        @Override
        public c s6() {
            super.s6();
            this.f69776d = 0;
            Q1<X1, X1.b, Y1> q12 = this.f69777e;
            if (q12 != null) {
                q12.c();
            }
            Q1<M0, M0.b, N0> q13 = this.f69778f;
            if (q13 != null) {
                q13.c();
            }
            this.f69774b = 0;
            this.f69775c = null;
            return this;
        }

        public c r6() {
            if (this.f69774b == 4) {
                this.f69774b = 0;
                this.f69775c = null;
                onChanged();
            }
            return this;
        }

        @Override
        public double s5() {
            if (this.f69774b == 2) {
                return ((Double) this.f69775c).doubleValue();
            }
            return 0.0d;
        }

        public c s6() {
            this.f69774b = 0;
            this.f69775c = null;
            onChanged();
            return this;
        }

        @Override
        public boolean t2() {
            return this.f69774b == 6;
        }

        public c t6() {
            Q1<M0, M0.b, N0> q12 = this.f69778f;
            if (q12 != null) {
                if (this.f69774b == 6) {
                    this.f69774b = 0;
                    this.f69775c = null;
                }
                q12.c();
            } else if (this.f69774b == 6) {
                this.f69774b = 0;
                this.f69775c = null;
                onChanged();
            }
            return this;
        }

        @Override
        public boolean u2() {
            return this.f69774b == 4;
        }

        public c u6() {
            if (this.f69774b == 1) {
                this.f69774b = 0;
                this.f69775c = null;
                onChanged();
            }
            return this;
        }

        public final void v3(y2 result) {
        }

        public c v6() {
            if (this.f69774b == 2) {
                this.f69774b = 0;
                this.f69775c = null;
                onChanged();
            }
            return this;
        }

        public c w6() {
            if (this.f69774b == 3) {
                this.f69774b = 0;
                this.f69775c = null;
                onChanged();
            }
            return this;
        }

        public c x6() {
            Q1<X1, X1.b, Y1> q12 = this.f69777e;
            if (q12 != null) {
                if (this.f69774b == 5) {
                    this.f69774b = 0;
                    this.f69775c = null;
                }
                q12.c();
            } else if (this.f69774b == 5) {
                this.f69774b = 0;
                this.f69775c = null;
                onChanged();
            }
            return this;
        }

        @Override
        public y2 getDefaultInstanceForType() {
            return y2.w6();
        }

        public M0.b z6() {
            return A6().e();
        }

        public c(a aVar) {
            this();
        }

        public c() {
            this.f69774b = 0;
        }

        public c(AbstractC12722w0.c parent) {
            super(parent);
            this.f69774b = 0;
        }
    }

    public enum d implements D0.c, AbstractC12657b.InterfaceC1037b {
        NULL_VALUE(1),
        NUMBER_VALUE(2),
        STRING_VALUE(3),
        BOOL_VALUE(4),
        STRUCT_VALUE(5),
        LIST_VALUE(6),
        KIND_NOT_SET(0);

        private final int value;

        d(int value) {
            this.value = value;
        }

        public static d a(int value) {
            switch (value) {
                case 0:
                    return KIND_NOT_SET;
                case 1:
                    return NULL_VALUE;
                case 2:
                    return NUMBER_VALUE;
                case 3:
                    return STRING_VALUE;
                case 4:
                    return BOOL_VALUE;
                case 5:
                    return STRUCT_VALUE;
                case 6:
                    return LIST_VALUE;
                default:
                    return null;
            }
        }

        @Deprecated
        public static d b(int value) {
            return a(value);
        }

        @Override
        public int getNumber() {
            return this.value;
        }
    }

    public y2(AbstractC12722w0.b bVar, a aVar) {
        this(bVar);
    }

    public static y2 C6(InputStream input) throws IOException {
        return (y2) AbstractC12722w0.parseDelimitedWithIOException(f69769m, input);
    }

    public static y2 D6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (y2) AbstractC12722w0.parseDelimitedWithIOException(f69769m, input, extensionRegistry);
    }

    public static y2 E6(AbstractC12724x data) throws InvalidProtocolBufferException {
        return f69769m.parseFrom(data);
    }

    public static y2 F6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69769m.parseFrom(data, extensionRegistry);
    }

    public static y2 G6(C input) throws IOException {
        return (y2) AbstractC12722w0.parseWithIOException(f69769m, input);
    }

    public static y2 H6(C input, C12666d0 extensionRegistry) throws IOException {
        return (y2) AbstractC12722w0.parseWithIOException(f69769m, input, extensionRegistry);
    }

    public static y2 I6(InputStream input) throws IOException {
        return (y2) AbstractC12722w0.parseWithIOException(f69769m, input);
    }

    public static y2 J6(InputStream input, C12666d0 extensionRegistry) throws IOException {
        return (y2) AbstractC12722w0.parseWithIOException(f69769m, input, extensionRegistry);
    }

    public static y2 K6(ByteBuffer data) throws InvalidProtocolBufferException {
        return f69769m.parseFrom(data);
    }

    public static y2 L6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69769m.parseFrom(data, extensionRegistry);
    }

    public static y2 M6(byte[] data) throws InvalidProtocolBufferException {
        return f69769m.parseFrom(data);
    }

    public static y2 N6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return f69769m.parseFrom(data, extensionRegistry);
    }

    public static final Descriptors.b getDescriptor() {
        return Z1.f69033e;
    }

    public static InterfaceC12723w1<y2> parser() {
        return f69769m;
    }

    public static y2 w6() {
        return f69768l;
    }

    public static c y6() {
        return f69768l.toBuilder();
    }

    public static c z6(y2 prototype) {
        return f69768l.toBuilder().F6(prototype);
    }

    @Override
    public AbstractC12724x A4() {
        String str = this.f69770b == 3 ? this.f69771c : "";
        if (!(str instanceof String)) {
            return (AbstractC12724x) str;
        }
        AbstractC12724x w10 = AbstractC12724x.w((String) str);
        if (this.f69770b == 3) {
            this.f69771c = w10;
        }
        return w10;
    }

    @Override
    public c newBuilderForType() {
        return y6();
    }

    @Override
    public c newBuilderForType(AbstractC12722w0.c parent) {
        return new c(parent, null);
    }

    @Override
    public boolean E() {
        return this.f69770b == 3;
    }

    @Override
    public X1 E4() {
        return this.f69770b == 5 ? (X1) this.f69771c : X1.w6();
    }

    @Override
    public boolean F5() {
        return this.f69770b == 2;
    }

    @Override
    public d G4() {
        return d.a(this.f69770b);
    }

    @Override
    public Y1 K0() {
        return this.f69770b == 5 ? (X1) this.f69771c : X1.w6();
    }

    @Override
    public N0 K4() {
        return this.f69770b == 6 ? (M0) this.f69771c : M0.v6();
    }

    @Override
    public int L2() {
        if (this.f69770b == 1) {
            return ((Integer) this.f69771c).intValue();
        }
        return 0;
    }

    @Override
    public boolean O1() {
        return this.f69770b == 5;
    }

    @Override
    public c toBuilder() {
        a aVar = null;
        return this == f69768l ? new c(aVar) : new c(aVar).F6(this);
    }

    @Override
    public M0 P1() {
        return this.f69770b == 6 ? (M0) this.f69771c : M0.v6();
    }

    @Override
    public boolean e6() {
        if (this.f69770b == 4) {
            return ((Boolean) this.f69771c).booleanValue();
        }
        return false;
    }

    @Override
    public boolean equals(final Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y2)) {
            return super.equals(obj);
        }
        y2 y2Var = (y2) obj;
        if (!G4().equals(y2Var.G4())) {
            return false;
        }
        switch (this.f69770b) {
            case 1:
                if (L2() != y2Var.L2()) {
                    return false;
                }
                break;
            case 2:
                if (Double.doubleToLongBits(s5()) != Double.doubleToLongBits(y2Var.s5())) {
                    return false;
                }
                break;
            case 3:
                if (!getStringValue().equals(y2Var.getStringValue())) {
                    return false;
                }
                break;
            case 4:
                if (e6() != y2Var.e6()) {
                    return false;
                }
                break;
            case 5:
                if (!E4().equals(y2Var.E4())) {
                    return false;
                }
                break;
            case 6:
                if (!P1().equals(y2Var.P1())) {
                    return false;
                }
                break;
        }
        return getUnknownFields().equals(y2Var.getUnknownFields());
    }

    @Override
    public EnumC12711s1 getNullValue() {
        if (this.f69770b != 1) {
            return EnumC12711s1.NULL_VALUE;
        }
        EnumC12711s1 a10 = EnumC12711s1.a(((Integer) this.f69771c).intValue());
        return a10 == null ? EnumC12711s1.UNRECOGNIZED : a10;
    }

    @Override
    public InterfaceC12723w1<y2> getParserForType() {
        return f69769m;
    }

    @Override
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int k02 = this.f69770b == 1 ? CodedOutputStream.k0(1, ((Integer) this.f69771c).intValue()) : 0;
        if (this.f69770b == 2) {
            k02 += CodedOutputStream.i0(2, ((Double) this.f69771c).doubleValue());
        }
        if (this.f69770b == 3) {
            k02 += AbstractC12722w0.computeStringSize(3, this.f69771c);
        }
        if (this.f69770b == 4) {
            k02 += CodedOutputStream.a0(4, ((Boolean) this.f69771c).booleanValue());
        }
        if (this.f69770b == 5) {
            k02 += CodedOutputStream.F0(5, (X1) this.f69771c);
        }
        if (this.f69770b == 6) {
            k02 += CodedOutputStream.F0(6, (M0) this.f69771c);
        }
        int serializedSize = k02 + getUnknownFields().getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public String getStringValue() {
        String str = this.f69770b == 3 ? this.f69771c : "";
        if (str instanceof String) {
            return (String) str;
        }
        String g02 = ((AbstractC12724x) str).g0();
        if (this.f69770b == 3) {
            this.f69771c = g02;
        }
        return g02;
    }

    @Override
    public boolean hasNullValue() {
        return this.f69770b == 1;
    }

    @Override
    public int hashCode() {
        int i10;
        int L22;
        int i11 = this.memoizedHashCode;
        if (i11 != 0) {
            return i11;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        switch (this.f69770b) {
            case 1:
                i10 = ((hashCode * 37) + 1) * 53;
                L22 = L2();
                break;
            case 2:
                i10 = ((hashCode * 37) + 2) * 53;
                L22 = D0.s(Double.doubleToLongBits(s5()));
                break;
            case 3:
                i10 = ((hashCode * 37) + 3) * 53;
                L22 = getStringValue().hashCode();
                break;
            case 4:
                i10 = ((hashCode * 37) + 4) * 53;
                L22 = D0.k(e6());
                break;
            case 5:
                i10 = ((hashCode * 37) + 5) * 53;
                L22 = E4().hashCode();
                break;
            case 6:
                i10 = ((hashCode * 37) + 6) * 53;
                L22 = P1().hashCode();
                break;
        }
        hashCode = i10 + L22;
        int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public AbstractC12722w0.h internalGetFieldAccessorTable() {
        return Z1.f69034f.d(y2.class, c.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f69772d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f69772d = (byte) 1;
        return true;
    }

    @Override
    public Object newInstance(AbstractC12722w0.i unused) {
        return new y2();
    }

    @Override
    public double s5() {
        if (this.f69770b == 2) {
            return ((Double) this.f69771c).doubleValue();
        }
        return 0.0d;
    }

    @Override
    public boolean t2() {
        return this.f69770b == 6;
    }

    @Override
    public boolean u2() {
        return this.f69770b == 4;
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        if (this.f69770b == 1) {
            output.Q(1, ((Integer) this.f69771c).intValue());
        }
        if (this.f69770b == 2) {
            output.G(2, ((Double) this.f69771c).doubleValue());
        }
        if (this.f69770b == 3) {
            AbstractC12722w0.writeString(output, 3, this.f69771c);
        }
        if (this.f69770b == 4) {
            output.q(4, ((Boolean) this.f69771c).booleanValue());
        }
        if (this.f69770b == 5) {
            output.L1(5, (X1) this.f69771c);
        }
        if (this.f69770b == 6) {
            output.L1(6, (M0) this.f69771c);
        }
        getUnknownFields().writeTo(output);
    }

    @Override
    public y2 getDefaultInstanceForType() {
        return f69768l;
    }

    public y2(AbstractC12722w0.b<?> builder) {
        super(builder);
        this.f69770b = 0;
        this.f69772d = (byte) -1;
    }

    public y2() {
        this.f69770b = 0;
        this.f69772d = (byte) -1;
    }
}
