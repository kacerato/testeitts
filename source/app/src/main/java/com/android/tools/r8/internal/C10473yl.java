package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public final class C10473yl extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C10473yl f54134k = new C10473yl();

    public static final C9638tl f54135l = new C9638tl();

    public int f54136b;

    public List f54137c;

    public volatile Serializable f54138d;

    public long f54139e;

    public long f54140f;

    public double f54141g;

    public AbstractC8373m8 f54142h;

    public volatile Serializable f54143i;

    public byte f54144j;

    public C10473yl(C9805ul c9805ul) {
        super(c9805ul);
        this.f54144j = (byte) -1;
    }

    @Override
    public final C9805ul toBuilder() {
        return this == f54134k ? new C9805ul() : new C9805ul().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10473yl)) {
            return super.equals(obj);
        }
        C10473yl c10473yl = (C10473yl) obj;
        if (!this.f54137c.equals(c10473yl.f54137c)) {
            return false;
        }
        int i10 = this.f54136b & 1;
        if ((i10 != 0) != ((c10473yl.f54136b & 1) != 0)) {
            return false;
        }
        if (i10 != 0) {
            Serializable serializable = this.f54138d;
            if (serializable instanceof String) {
                str3 = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f54138d = c10;
                }
                str3 = c10;
            }
            Serializable serializable2 = c10473yl.f54138d;
            if (serializable2 instanceof String) {
                str4 = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    c10473yl.f54138d = c11;
                }
                str4 = c11;
            }
            if (!str3.equals(str4)) {
                return false;
            }
        }
        int i11 = this.f54136b;
        int i12 = i11 & 2;
        boolean z10 = i12 != 0;
        int i13 = c10473yl.f54136b;
        if (z10 != ((i13 & 2) != 0)) {
            return false;
        }
        if (i12 != 0 && this.f54139e != c10473yl.f54139e) {
            return false;
        }
        int i14 = i11 & 4;
        if ((i14 != 0) != ((i13 & 4) != 0)) {
            return false;
        }
        if (i14 != 0 && this.f54140f != c10473yl.f54140f) {
            return false;
        }
        int i15 = i11 & 8;
        if ((i15 != 0) != ((i13 & 8) != 0)) {
            return false;
        }
        if (i15 != 0 && Double.doubleToLongBits(this.f54141g) != Double.doubleToLongBits(c10473yl.f54141g)) {
            return false;
        }
        int i16 = this.f54136b & 16;
        if ((i16 != 0) != ((c10473yl.f54136b & 16) != 0)) {
            return false;
        }
        if (i16 != 0 && !this.f54142h.equals(c10473yl.f54142h)) {
            return false;
        }
        int i17 = this.f54136b & 32;
        if ((i17 != 0) != ((c10473yl.f54136b & 32) != 0)) {
            return false;
        }
        if (i17 != 0) {
            Serializable serializable3 = this.f54143i;
            if (serializable3 instanceof String) {
                str = (String) serializable3;
            } else {
                AbstractC8373m8 abstractC8373m83 = (AbstractC8373m8) serializable3;
                String c12 = abstractC8373m83.c();
                if (abstractC8373m83.a()) {
                    this.f54143i = c12;
                }
                str = c12;
            }
            Serializable serializable4 = c10473yl.f54143i;
            if (serializable4 instanceof String) {
                str2 = (String) serializable4;
            } else {
                AbstractC8373m8 abstractC8373m84 = (AbstractC8373m8) serializable4;
                String c13 = abstractC8373m84.c();
                if (abstractC8373m84.a()) {
                    c10473yl.f54143i = c13;
                }
                str2 = c13;
            }
            if (!str.equals(str2)) {
                return false;
            }
        }
        return this.unknownFields.equals(c10473yl.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f54134k;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f54137c.size(); i12++) {
            i11 += AbstractC5322Ie.a(2, (InterfaceC8095kW) this.f54137c.get(i12));
        }
        if ((this.f54136b & 1) != 0) {
            i11 += AbstractC10181wz.computeStringSize(3, this.f54138d);
        }
        if ((this.f54136b & 2) != 0) {
            i11 += AbstractC5322Ie.a(this.f54139e) + AbstractC5322Ie.b(4);
        }
        if ((this.f54136b & 4) != 0) {
            i11 += AbstractC5322Ie.a(this.f54140f) + AbstractC5322Ie.b(5);
        }
        if ((this.f54136b & 8) != 0) {
            i11 = AbstractC8292lh0.a(6, 8, i11);
        }
        if ((this.f54136b & 16) != 0) {
            i11 += AbstractC5322Ie.a(7, this.f54142h);
        }
        if ((this.f54136b & 32) != 0) {
            i11 += AbstractC10181wz.computeStringSize(8, this.f54143i);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + i11;
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.unknownFields;
    }

    @Override
    public final int hashCode() {
        String str;
        String str2;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = AbstractC10640zl.f54498O.hashCode() + 779;
        if (this.f54137c.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + this.f54137c.hashCode();
        }
        if ((this.f54136b & 1) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            Serializable serializable = this.f54138d;
            if (serializable instanceof String) {
                str2 = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f54138d = c10;
                }
                str2 = c10;
            }
            hashCode = a10 + str2.hashCode();
        }
        int i11 = this.f54136b;
        if ((i11 & 2) != 0) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 4, 53);
            long j10 = this.f54139e;
            hashCode = a11 + ((int) (j10 ^ (j10 >>> 32)));
        }
        if ((i11 & 4) != 0) {
            int a12 = AbstractC9124qg0.a(hashCode, 37, 5, 53);
            long j11 = this.f54140f;
            hashCode = a12 + ((int) (j11 ^ (j11 >>> 32)));
        }
        if ((i11 & 8) != 0) {
            int a13 = AbstractC9124qg0.a(hashCode, 37, 6, 53);
            long doubleToLongBits = Double.doubleToLongBits(this.f54141g);
            hashCode = a13 + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }
        if ((this.f54136b & 16) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 7, 53) + this.f54142h.hashCode();
        }
        if ((this.f54136b & 32) != 0) {
            int a14 = AbstractC9124qg0.a(hashCode, 37, 8, 53);
            Serializable serializable2 = this.f54143i;
            if (serializable2 instanceof String) {
                str = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    this.f54143i = c11;
                }
                str = c11;
            }
            hashCode = a14 + str.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54499P.a(C10473yl.class, C9805ul.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f54144j;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f54137c.size(); i10++) {
            if (!((C10306xl) this.f54137c.get(i10)).isInitialized()) {
                this.f54144j = (byte) 0;
                return false;
            }
        }
        this.f54144j = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f54134k.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        for (int i10 = 0; i10 < this.f54137c.size(); i10++) {
            abstractC5322Ie.b(2, (InterfaceC8095kW) this.f54137c.get(i10));
        }
        if ((this.f54136b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f54138d);
        }
        if ((this.f54136b & 2) != 0) {
            abstractC5322Ie.b(4, this.f54139e);
        }
        if ((this.f54136b & 4) != 0) {
            abstractC5322Ie.b(5, this.f54140f);
        }
        if ((this.f54136b & 8) != 0) {
            double d10 = this.f54141g;
            abstractC5322Ie.getClass();
            abstractC5322Ie.a(6, Double.doubleToRawLongBits(d10));
        }
        if ((this.f54136b & 16) != 0) {
            abstractC5322Ie.b(7, this.f54142h);
        }
        if ((this.f54136b & 32) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 8, this.f54143i);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f54134k;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9805ul((C7011dz) interfaceC7512gz);
    }

    public C10473yl() {
        this.f54144j = (byte) -1;
        this.f54137c = Collections.EMPTY_LIST;
        this.f54138d = "";
        this.f54142h = AbstractC8373m8.f50204c;
        this.f54143i = "";
    }
}
