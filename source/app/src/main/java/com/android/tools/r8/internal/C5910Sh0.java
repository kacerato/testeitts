package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import java.io.IOException;
import java.nio.charset.Charset;

public final class C5910Sh0 extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5910Sh0 f44272e = new C5910Sh0();

    public static final C5447Kh0 f44273f = new C5447Kh0();

    public int f44274b;

    public Object f44275c;

    public byte f44276d;

    public C5910Sh0(C5505Lh0 c5505Lh0) {
        super(c5505Lh0);
        this.f44274b = 0;
        this.f44276d = (byte) -1;
    }

    public final int a() {
        switch (this.f44274b) {
            case 0:
                return 15;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 13;
            case 5:
                return 14;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            case 10:
                return 10;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
                return 4;
            case 14:
                return 5;
            default:
                return 0;
        }
    }

    @Override
    public final C5505Lh0 toBuilder() {
        return this == f44272e ? new C5505Lh0() : new C5505Lh0().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5910Sh0)) {
            return super.equals(obj);
        }
        C5910Sh0 c5910Sh0 = (C5910Sh0) obj;
        if (!AbstractC4291c.b(a(), c5910Sh0.a())) {
            return false;
        }
        int i10 = this.f44274b;
        switch (i10) {
            case 1:
                if (!(i10 == 1 ? (C5852Rh0) this.f44275c : C5852Rh0.f43965c).equals(c5910Sh0.f44274b == 1 ? (C5852Rh0) c5910Sh0.f44275c : C5852Rh0.f43965c)) {
                    return false;
                }
                break;
            case 2:
                if (!(i10 == 2 ? (C5678Oh0) this.f44275c : C5678Oh0.f42955c).equals(c5910Sh0.f44274b == 2 ? (C5678Oh0) c5910Sh0.f44275c : C5678Oh0.f42955c)) {
                    return false;
                }
                break;
            case 3:
                if (Float.floatToIntBits(i10 == 3 ? ((Float) this.f44275c).floatValue() : 0.0f) != Float.floatToIntBits(c5910Sh0.f44274b == 3 ? ((Float) c5910Sh0.f44275c).floatValue() : 0.0f)) {
                    return false;
                }
                break;
            case 4:
                if (Float.floatToIntBits(i10 == 4 ? ((Float) this.f44275c).floatValue() : 0.0f) != Float.floatToIntBits(c5910Sh0.f44274b == 4 ? ((Float) c5910Sh0.f44275c).floatValue() : 0.0f)) {
                    return false;
                }
                break;
            case 5:
                if (Float.floatToIntBits(i10 == 5 ? ((Float) this.f44275c).floatValue() : 0.0f) != Float.floatToIntBits(c5910Sh0.f44274b == 5 ? ((Float) c5910Sh0.f44275c).floatValue() : 0.0f)) {
                    return false;
                }
                break;
            case 6:
                if ((i10 == 6 ? ((Integer) this.f44275c).intValue() : 0) != (c5910Sh0.f44274b == 6 ? ((Integer) c5910Sh0.f44275c).intValue() : 0)) {
                    return false;
                }
                break;
            case 7:
                if ((i10 == 7 ? ((Integer) this.f44275c).intValue() : 0) != (c5910Sh0.f44274b == 7 ? ((Integer) c5910Sh0.f44275c).intValue() : 0)) {
                    return false;
                }
                break;
            case 8:
                if ((i10 == 8 ? ((Boolean) this.f44275c).booleanValue() : false) != (c5910Sh0.f44274b == 8 ? ((Boolean) c5910Sh0.f44275c).booleanValue() : false)) {
                    return false;
                }
                break;
            case 9:
                if ((i10 == 9 ? ((Integer) this.f44275c).intValue() : 0) != (c5910Sh0.f44274b == 9 ? ((Integer) c5910Sh0.f44275c).intValue() : 0)) {
                    return false;
                }
                break;
            case 10:
                if ((i10 == 10 ? ((Integer) this.f44275c).intValue() : 0) != (c5910Sh0.f44274b == 10 ? ((Integer) c5910Sh0.f44275c).intValue() : 0)) {
                    return false;
                }
                break;
            case 11:
                if ((i10 == 11 ? ((Integer) this.f44275c).intValue() : 0) != (c5910Sh0.f44274b == 11 ? ((Integer) c5910Sh0.f44275c).intValue() : 0)) {
                    return false;
                }
                break;
            case 12:
                if ((i10 == 12 ? ((Integer) this.f44275c).intValue() : 0) != (c5910Sh0.f44274b == 12 ? ((Integer) c5910Sh0.f44275c).intValue() : 0)) {
                    return false;
                }
                break;
            case 13:
                if ((i10 == 13 ? ((Integer) this.f44275c).intValue() : 0) != (c5910Sh0.f44274b == 13 ? ((Integer) c5910Sh0.f44275c).intValue() : 0)) {
                    return false;
                }
                break;
            case 14:
                if ((i10 == 14 ? ((Integer) this.f44275c).intValue() : 0) != (c5910Sh0.f44274b == 14 ? ((Integer) c5910Sh0.f44275c).intValue() : 0)) {
                    return false;
                }
                break;
        }
        return this.unknownFields.equals(c5910Sh0.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f44272e;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int a10 = this.f44274b == 1 ? AbstractC5322Ie.a(1, (C5852Rh0) this.f44275c) : 0;
        if (this.f44274b == 2) {
            a10 += AbstractC5322Ie.a(2, (C5678Oh0) this.f44275c);
        }
        if (this.f44274b == 3) {
            ((Float) this.f44275c).getClass();
            a10 += AbstractC5322Ie.b(3) + 4;
        }
        if (this.f44274b == 4) {
            ((Float) this.f44275c).getClass();
            a10 += AbstractC5322Ie.b(4) + 4;
        }
        if (this.f44274b == 5) {
            ((Float) this.f44275c).getClass();
            a10 += AbstractC5322Ie.b(5) + 4;
        }
        if (this.f44274b == 6) {
            a10 += AbstractC5322Ie.a(6, ((Integer) this.f44275c).intValue());
        }
        if (this.f44274b == 7) {
            a10 = AbstractC5559Mg.a(((Integer) this.f44275c).intValue(), AbstractC5322Ie.b(7), a10);
        }
        if (this.f44274b == 8) {
            ((Boolean) this.f44275c).getClass();
            a10 += AbstractC5322Ie.b(8) + 1;
        }
        if (this.f44274b == 9) {
            a10 = AbstractC5559Mg.a(((Integer) this.f44275c).intValue(), AbstractC5322Ie.b(9), a10);
        }
        if (this.f44274b == 10) {
            a10 = AbstractC5559Mg.a(((Integer) this.f44275c).intValue(), AbstractC5322Ie.b(10), a10);
        }
        if (this.f44274b == 11) {
            a10 = AbstractC5559Mg.a(((Integer) this.f44275c).intValue(), AbstractC5322Ie.b(11), a10);
        }
        if (this.f44274b == 12) {
            a10 = AbstractC5559Mg.a(((Integer) this.f44275c).intValue(), AbstractC5322Ie.b(12), a10);
        }
        if (this.f44274b == 13) {
            a10 = AbstractC5559Mg.a(((Integer) this.f44275c).intValue(), AbstractC5322Ie.b(13), a10);
        }
        if (this.f44274b == 14) {
            a10 = AbstractC5559Mg.a(((Integer) this.f44275c).intValue(), AbstractC5322Ie.b(14), a10);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + a10;
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.unknownFields;
    }

    @Override
    public final int hashCode() {
        int a10;
        int hashCode;
        int a11;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = AbstractC9967vj0.f53275g0.hashCode() + 779;
        int i11 = this.f44274b;
        int i12 = 0;
        i12 = 0;
        i12 = 0;
        i12 = 0;
        i12 = 0;
        i12 = 0;
        i12 = 0;
        i12 = 0;
        switch (i11) {
            case 1:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 1, 53);
                hashCode = (i11 == 1 ? (C5852Rh0) this.f44275c : C5852Rh0.f43965c).hashCode();
                hashCode2 = a10 + hashCode;
                break;
            case 2:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 2, 53);
                hashCode = (i11 == 2 ? (C5678Oh0) this.f44275c : C5678Oh0.f42955c).hashCode();
                hashCode2 = a10 + hashCode;
                break;
            case 3:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 3, 53);
                hashCode = Float.floatToIntBits(i11 == 3 ? ((Float) this.f44275c).floatValue() : 0.0f);
                hashCode2 = a10 + hashCode;
                break;
            case 4:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 4, 53);
                hashCode = Float.floatToIntBits(i11 == 4 ? ((Float) this.f44275c).floatValue() : 0.0f);
                hashCode2 = a10 + hashCode;
                break;
            case 5:
                a10 = AbstractC9124qg0.a(hashCode2, 37, 5, 53);
                hashCode = Float.floatToIntBits(i11 == 5 ? ((Float) this.f44275c).floatValue() : 0.0f);
                hashCode2 = a10 + hashCode;
                break;
            case 6:
                a11 = AbstractC9124qg0.a(hashCode2, 37, 6, 53);
                if (i11 == 6) {
                    i12 = ((Integer) this.f44275c).intValue();
                }
                hashCode2 = a11 + i12;
                break;
            case 7:
                a11 = AbstractC9124qg0.a(hashCode2, 37, 7, 53);
                if (i11 == 7) {
                    i12 = ((Integer) this.f44275c).intValue();
                }
                hashCode2 = a11 + i12;
                break;
            case 8:
                int a12 = AbstractC9124qg0.a(hashCode2, 37, 8, 53);
                boolean booleanValue = i11 == 8 ? ((Boolean) this.f44275c).booleanValue() : false;
                Charset charset = YI.f45964a;
                hashCode2 = a12 + (booleanValue ? 1231 : 1237);
                break;
            case 9:
                a11 = AbstractC9124qg0.a(hashCode2, 37, 9, 53);
                if (i11 == 9) {
                    i12 = ((Integer) this.f44275c).intValue();
                }
                hashCode2 = a11 + i12;
                break;
            case 10:
                a11 = AbstractC9124qg0.a(hashCode2, 37, 10, 53);
                if (i11 == 10) {
                    i12 = ((Integer) this.f44275c).intValue();
                }
                hashCode2 = a11 + i12;
                break;
            case 11:
                a11 = AbstractC9124qg0.a(hashCode2, 37, 11, 53);
                if (i11 == 11) {
                    i12 = ((Integer) this.f44275c).intValue();
                }
                hashCode2 = a11 + i12;
                break;
            case 12:
                a11 = AbstractC9124qg0.a(hashCode2, 37, 12, 53);
                if (i11 == 12) {
                    i12 = ((Integer) this.f44275c).intValue();
                }
                hashCode2 = a11 + i12;
                break;
            case 13:
                a11 = AbstractC9124qg0.a(hashCode2, 37, 13, 53);
                if (i11 == 13) {
                    i12 = ((Integer) this.f44275c).intValue();
                }
                hashCode2 = a11 + i12;
                break;
            case 14:
                a11 = AbstractC9124qg0.a(hashCode2, 37, 14, 53);
                if (i11 == 14) {
                    i12 = ((Integer) this.f44275c).intValue();
                }
                hashCode2 = a11 + i12;
                break;
        }
        int hashCode3 = this.unknownFields.hashCode() + (hashCode2 * 29);
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53277h0.a(C5910Sh0.class, C5505Lh0.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f44276d;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f44276d = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f44272e.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if (this.f44274b == 1) {
            abstractC5322Ie.b(1, (C5852Rh0) this.f44275c);
        }
        if (this.f44274b == 2) {
            abstractC5322Ie.b(2, (C5678Oh0) this.f44275c);
        }
        if (this.f44274b == 3) {
            float floatValue = ((Float) this.f44275c).floatValue();
            abstractC5322Ie.getClass();
            abstractC5322Ie.b(3, Float.floatToRawIntBits(floatValue));
        }
        if (this.f44274b == 4) {
            float floatValue2 = ((Float) this.f44275c).floatValue();
            abstractC5322Ie.getClass();
            abstractC5322Ie.b(4, Float.floatToRawIntBits(floatValue2));
        }
        if (this.f44274b == 5) {
            float floatValue3 = ((Float) this.f44275c).floatValue();
            abstractC5322Ie.getClass();
            abstractC5322Ie.b(5, Float.floatToRawIntBits(floatValue3));
        }
        if (this.f44274b == 6) {
            abstractC5322Ie.c(6, ((Integer) this.f44275c).intValue());
        }
        if (this.f44274b == 7) {
            abstractC5322Ie.e(7, ((Integer) this.f44275c).intValue());
        }
        if (this.f44274b == 8) {
            abstractC5322Ie.a(8, ((Boolean) this.f44275c).booleanValue());
        }
        if (this.f44274b == 9) {
            abstractC5322Ie.e(9, ((Integer) this.f44275c).intValue());
        }
        if (this.f44274b == 10) {
            abstractC5322Ie.e(10, ((Integer) this.f44275c).intValue());
        }
        if (this.f44274b == 11) {
            abstractC5322Ie.e(11, ((Integer) this.f44275c).intValue());
        }
        if (this.f44274b == 12) {
            abstractC5322Ie.e(12, ((Integer) this.f44275c).intValue());
        }
        if (this.f44274b == 13) {
            abstractC5322Ie.e(13, ((Integer) this.f44275c).intValue());
        }
        if (this.f44274b == 14) {
            abstractC5322Ie.e(14, ((Integer) this.f44275c).intValue());
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f44272e;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5505Lh0((C7011dz) interfaceC7512gz);
    }

    public C5910Sh0() {
        this.f44274b = 0;
        this.f44276d = (byte) -1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0010. Please report as an issue. */
    public C5910Sh0(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        this();
        C8167kv0 a10 = AbstractC5617Ng.a(c10670zv);
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int s10 = abstractC4916Be.s();
                    switch (s10) {
                        case 0:
                            z10 = true;
                        case 10:
                            C5794Qh0 builder = this.f44274b == 1 ? ((C5852Rh0) this.f44275c).toBuilder() : null;
                            InterfaceC8095kW a11 = abstractC4916Be.a(C5852Rh0.f43966d, c10670zv);
                            this.f44275c = a11;
                            if (builder != null) {
                                builder.a((C5852Rh0) a11);
                                this.f44275c = builder.b();
                            }
                            this.f44274b = 1;
                        case 18:
                            C5620Nh0 builder2 = this.f44274b == 2 ? ((C5678Oh0) this.f44275c).toBuilder() : null;
                            InterfaceC8095kW a12 = abstractC4916Be.a(C5678Oh0.f42956d, c10670zv);
                            this.f44275c = a12;
                            if (builder2 != null) {
                                builder2.a((C5678Oh0) a12);
                                this.f44275c = builder2.b();
                            }
                            this.f44274b = 2;
                        case 29:
                            this.f44275c = Float.valueOf(abstractC4916Be.i());
                            this.f44274b = 3;
                        case 37:
                            this.f44275c = Float.valueOf(abstractC4916Be.i());
                            this.f44274b = 4;
                        case 45:
                            this.f44275c = Float.valueOf(abstractC4916Be.i());
                            this.f44274b = 5;
                        case 48:
                            this.f44275c = Integer.valueOf(abstractC4916Be.j());
                            this.f44274b = 6;
                        case 56:
                            this.f44275c = Integer.valueOf(abstractC4916Be.t());
                            this.f44274b = 7;
                        case 64:
                            this.f44275c = Boolean.valueOf(abstractC4916Be.c());
                            this.f44274b = 8;
                        case 72:
                            this.f44275c = Integer.valueOf(abstractC4916Be.t());
                            this.f44274b = 9;
                        case 80:
                            this.f44275c = Integer.valueOf(abstractC4916Be.t());
                            this.f44274b = 10;
                        case 88:
                            this.f44275c = Integer.valueOf(abstractC4916Be.t());
                            this.f44274b = 11;
                        case 96:
                            this.f44275c = Integer.valueOf(abstractC4916Be.t());
                            this.f44274b = 12;
                        case 104:
                            this.f44275c = Integer.valueOf(abstractC4916Be.t());
                            this.f44274b = 13;
                        case 112:
                            this.f44275c = Integer.valueOf(abstractC4916Be.t());
                            this.f44274b = 14;
                        default:
                            if (!parseUnknownField(abstractC4916Be, a10, c10670zv, s10)) {
                                z10 = true;
                            }
                    }
                } catch (MJ e10) {
                    e10.f42272b = this;
                    throw e10;
                } catch (IOException e11) {
                    MJ mj2 = new MJ(e11);
                    mj2.f42272b = this;
                    throw mj2;
                }
            } catch (Throwable th2) {
                this.unknownFields = a10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        this.unknownFields = a10.build();
        makeExtensionsImmutable();
    }
}
