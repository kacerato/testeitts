package com.android.tools.r8.internal;

import java.io.Serializable;
import java.nio.charset.Charset;

public final class C5104Ek extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C5104Ek f39991o = new C5104Ek();

    public static final C4872Ak f39992p = new C4872Ak();

    public int f39993b;

    public volatile Serializable f39994c;

    public int f39995d;

    public int f39996e;

    public int f39997f;

    public volatile Serializable f39998g;

    public volatile Serializable f39999h;

    public volatile Serializable f40000i;

    public int f40001j;

    public volatile Serializable f40002k;

    public C5394Jk f40003l;

    public boolean f40004m;

    public byte f40005n;

    public C5104Ek(C4930Bk c4930Bk) {
        super(c4930Bk);
        this.f40005n = (byte) -1;
    }

    public final String a() {
        Serializable serializable = this.f40000i;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f40000i = c10;
        }
        return c10;
    }

    public final String b() {
        Serializable serializable = this.f39999h;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f39999h = c10;
        }
        return c10;
    }

    public final String c() {
        Serializable serializable = this.f39998g;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f39998g = c10;
        }
        return c10;
    }

    public final boolean d() {
        return (this.f39993b & 64) != 0;
    }

    public final boolean e() {
        return (this.f39993b & 32) != 0;
    }

    @Override
    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5104Ek)) {
            return super.equals(obj);
        }
        C5104Ek c5104Ek = (C5104Ek) obj;
        int i10 = this.f39993b & 1;
        if ((i10 != 0) != ((c5104Ek.f39993b & 1) != 0)) {
            return false;
        }
        if (i10 != 0 && !getName().equals(c5104Ek.getName())) {
            return false;
        }
        int i11 = this.f39993b;
        int i12 = i11 & 2;
        boolean z10 = i12 != 0;
        int i13 = c5104Ek.f39993b;
        if (z10 != ((i13 & 2) != 0)) {
            return false;
        }
        if (i12 != 0 && this.f39995d != c5104Ek.f39995d) {
            return false;
        }
        int i14 = i11 & 4;
        if ((i14 != 0) != ((i13 & 4) != 0)) {
            return false;
        }
        if ((i14 != 0 && this.f39996e != c5104Ek.f39996e) || h() != c5104Ek.h()) {
            return false;
        }
        if ((h() && this.f39997f != c5104Ek.f39997f) || i() != c5104Ek.i()) {
            return false;
        }
        if ((i() && !c().equals(c5104Ek.c())) || e() != c5104Ek.e()) {
            return false;
        }
        if ((e() && !b().equals(c5104Ek.b())) || d() != c5104Ek.d()) {
            return false;
        }
        if ((d() && !a().equals(c5104Ek.a())) || f() != c5104Ek.f()) {
            return false;
        }
        if (f() && this.f40001j != c5104Ek.f40001j) {
            return false;
        }
        int i15 = this.f39993b & 256;
        if ((i15 != 0) != ((c5104Ek.f39993b & 256) != 0)) {
            return false;
        }
        if (i15 != 0) {
            Serializable serializable = this.f40002k;
            if (serializable instanceof String) {
                str = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f40002k = c10;
                }
                str = c10;
            }
            Serializable serializable2 = c5104Ek.f40002k;
            if (serializable2 instanceof String) {
                str2 = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    c5104Ek.f40002k = c11;
                }
                str2 = c11;
            }
            if (!str.equals(str2)) {
                return false;
            }
        }
        if (g() != c5104Ek.g()) {
            return false;
        }
        if (g()) {
            C5394Jk c5394Jk = this.f40003l;
            if (c5394Jk == null) {
                c5394Jk = C5394Jk.f41478l;
            }
            C5394Jk c5394Jk2 = c5104Ek.f40003l;
            if (c5394Jk2 == null) {
                c5394Jk2 = C5394Jk.f41478l;
            }
            if (!c5394Jk.equals(c5394Jk2)) {
                return false;
            }
        }
        int i16 = this.f39993b & 1024;
        if ((i16 != 0) != ((c5104Ek.f39993b & 1024) != 0)) {
            return false;
        }
        return (i16 == 0 || this.f40004m == c5104Ek.f40004m) && this.unknownFields.equals(c5104Ek.unknownFields);
    }

    public final boolean f() {
        return (this.f39993b & 128) != 0;
    }

    public final boolean g() {
        return (this.f39993b & 512) != 0;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f39991o;
    }

    public final String getName() {
        Serializable serializable = this.f39994c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
        String c10 = abstractC8373m8.c();
        if (abstractC8373m8.a()) {
            this.f39994c = c10;
        }
        return c10;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f39993b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f39994c) : 0;
        if ((this.f39993b & 32) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(2, this.f39999h);
        }
        if ((this.f39993b & 2) != 0) {
            computeStringSize += AbstractC5322Ie.a(3, this.f39995d);
        }
        if ((this.f39993b & 4) != 0) {
            computeStringSize = AbstractC5502Lg.a(this.f39996e, AbstractC5322Ie.b(4), computeStringSize);
        }
        if ((this.f39993b & 8) != 0) {
            computeStringSize = AbstractC5502Lg.a(this.f39997f, AbstractC5322Ie.b(5), computeStringSize);
        }
        if ((this.f39993b & 16) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(6, this.f39998g);
        }
        if ((this.f39993b & 64) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(7, this.f40000i);
        }
        if ((this.f39993b & 512) != 0) {
            C5394Jk c5394Jk = this.f40003l;
            if (c5394Jk == null) {
                c5394Jk = C5394Jk.f41478l;
            }
            computeStringSize += AbstractC5322Ie.a(8, c5394Jk);
        }
        if ((this.f39993b & 128) != 0) {
            computeStringSize += AbstractC5322Ie.a(9, this.f40001j);
        }
        if ((this.f39993b & 256) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(10, this.f40002k);
        }
        if ((this.f39993b & 1024) != 0) {
            computeStringSize = AbstractC8292lh0.a(17, 1, computeStringSize);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + computeStringSize;
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override
    public final C9002pv0 getUnknownFields() {
        return this.unknownFields;
    }

    public final boolean h() {
        return (this.f39993b & 8) != 0;
    }

    @Override
    public final int hashCode() {
        String str;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = AbstractC10640zl.f54516k.hashCode() + 779;
        if ((this.f39993b & 1) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + getName().hashCode();
        }
        int i11 = this.f39993b;
        if ((i11 & 2) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 3, 53) + this.f39995d;
        }
        if ((i11 & 4) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 4, 53) + this.f39996e;
        }
        if (h()) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 5, 53) + this.f39997f;
        }
        if (i()) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 6, 53) + c().hashCode();
        }
        if (e()) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + b().hashCode();
        }
        if (d()) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 7, 53) + a().hashCode();
        }
        if (f()) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 9, 53) + this.f40001j;
        }
        if ((this.f39993b & 256) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 10, 53);
            Serializable serializable = this.f40002k;
            if (serializable instanceof String) {
                str = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f40002k = c10;
                }
                str = c10;
            }
            hashCode = a10 + str.hashCode();
        }
        if (g()) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 8, 53);
            C5394Jk c5394Jk = this.f40003l;
            if (c5394Jk == null) {
                c5394Jk = C5394Jk.f41478l;
            }
            hashCode = a11 + c5394Jk.hashCode();
        }
        if ((this.f39993b & 1024) != 0) {
            int a12 = AbstractC9124qg0.a(hashCode, 37, 17, 53);
            boolean z10 = this.f40004m;
            Charset charset = YI.f45964a;
            hashCode = a12 + (z10 ? 1231 : 1237);
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    public final boolean i() {
        return (this.f39993b & 16) != 0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54517l.a(C5104Ek.class, C4930Bk.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f40005n;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (g()) {
            C5394Jk c5394Jk = this.f40003l;
            if (c5394Jk == null) {
                c5394Jk = C5394Jk.f41478l;
            }
            if (!c5394Jk.isInitialized()) {
                this.f40005n = (byte) 0;
                return false;
            }
        }
        this.f40005n = (byte) 1;
        return true;
    }

    @Override
    public final C4930Bk toBuilder() {
        return this == f39991o ? new C4930Bk() : new C4930Bk().a(this);
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f39991o.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f39993b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f39994c);
        }
        if ((this.f39993b & 32) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 2, this.f39999h);
        }
        if ((this.f39993b & 2) != 0) {
            abstractC5322Ie.c(3, this.f39995d);
        }
        if ((this.f39993b & 4) != 0) {
            abstractC5322Ie.c(4, this.f39996e);
        }
        if ((this.f39993b & 8) != 0) {
            abstractC5322Ie.c(5, this.f39997f);
        }
        if ((this.f39993b & 16) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 6, this.f39998g);
        }
        if ((this.f39993b & 64) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 7, this.f40000i);
        }
        if ((this.f39993b & 512) != 0) {
            C5394Jk c5394Jk = this.f40003l;
            if (c5394Jk == null) {
                c5394Jk = C5394Jk.f41478l;
            }
            abstractC5322Ie.b(8, c5394Jk);
        }
        if ((this.f39993b & 128) != 0) {
            abstractC5322Ie.c(9, this.f40001j);
        }
        if ((this.f39993b & 256) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 10, this.f40002k);
        }
        if ((this.f39993b & 1024) != 0) {
            abstractC5322Ie.a(17, this.f40004m);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f39991o;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C4930Bk((C7011dz) interfaceC7512gz);
    }

    public C5104Ek() {
        this.f40005n = (byte) -1;
        this.f39994c = "";
        this.f39996e = 1;
        this.f39997f = 1;
        this.f39998g = "";
        this.f39999h = "";
        this.f40000i = "";
        this.f40002k = "";
    }
}
