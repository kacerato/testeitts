package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.logging.Logger;

public final class C9304rl extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C9304rl f52125k = new C9304rl();

    public static final C8971pl f52126l = new C8971pl();

    public int f52127b;

    public TI f52128c;

    public int f52129d;

    public TI f52130e;

    public int f52131f;

    public volatile Serializable f52132g;

    public volatile Serializable f52133h;

    public InterfaceC10589zR f52134i;

    public byte f52135j;

    public C9304rl(C9138ql c9138ql) {
        super(c9138ql);
        this.f52129d = -1;
        this.f52131f = -1;
        this.f52135j = (byte) -1;
    }

    @Override
    public final C9138ql toBuilder() {
        return this == f52125k ? new C9138ql() : new C9138ql().a(this);
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
        if (!(obj instanceof C9304rl)) {
            return super.equals(obj);
        }
        C9304rl c9304rl = (C9304rl) obj;
        if (!((DH) this.f52128c).equals(c9304rl.f52128c)) {
            return false;
        }
        if (!((DH) this.f52130e).equals(c9304rl.f52130e)) {
            return false;
        }
        int i10 = this.f52127b & 1;
        if ((i10 != 0) != ((c9304rl.f52127b & 1) != 0)) {
            return false;
        }
        if (i10 != 0) {
            Serializable serializable = this.f52132g;
            if (serializable instanceof String) {
                str3 = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f52132g = c10;
                }
                str3 = c10;
            }
            Serializable serializable2 = c9304rl.f52132g;
            if (serializable2 instanceof String) {
                str4 = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    c9304rl.f52132g = c11;
                }
                str4 = c11;
            }
            if (!str3.equals(str4)) {
                return false;
            }
        }
        int i11 = this.f52127b & 2;
        if ((i11 != 0) != ((c9304rl.f52127b & 2) != 0)) {
            return false;
        }
        if (i11 != 0) {
            Serializable serializable3 = this.f52133h;
            if (serializable3 instanceof String) {
                str = (String) serializable3;
            } else {
                AbstractC8373m8 abstractC8373m83 = (AbstractC8373m8) serializable3;
                String c12 = abstractC8373m83.c();
                if (abstractC8373m83.a()) {
                    this.f52133h = c12;
                }
                str = c12;
            }
            Serializable serializable4 = c9304rl.f52133h;
            if (serializable4 instanceof String) {
                str2 = (String) serializable4;
            } else {
                AbstractC8373m8 abstractC8373m84 = (AbstractC8373m8) serializable4;
                String c13 = abstractC8373m84.c();
                if (abstractC8373m84.a()) {
                    c9304rl.f52133h = c13;
                }
                str2 = c13;
            }
            if (!str.equals(str2)) {
                return false;
            }
        }
        return this.f52134i.equals(c9304rl.f52134i) && this.unknownFields.equals(c9304rl.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f52125k;
    }

    @Override
    public final int getSerializedSize() {
        TI ti2;
        int i10;
        int i11;
        TI ti3;
        int i12;
        int i13;
        int i14 = this.memoizedSize;
        if (i14 != -1) {
            return i14;
        }
        int i15 = 0;
        int i16 = 0;
        while (true) {
            ti2 = this.f52128c;
            DH dh2 = (DH) ti2;
            i10 = 10;
            if (i15 >= dh2.f39486d) {
                break;
            }
            dh2.k(i15);
            int i17 = dh2.f39485c[i15];
            if (i17 >= 0) {
                i10 = AbstractC5322Ie.c(i17);
            } else {
                Logger logger = AbstractC5322Ie.f41156a;
            }
            i16 += i10;
            i15++;
        }
        if (ti2.isEmpty()) {
            i11 = i16;
        } else {
            int i18 = i16 + 1;
            if (i16 >= 0) {
                i13 = AbstractC5322Ie.c(i16);
            } else {
                Logger logger2 = AbstractC5322Ie.f41156a;
                i13 = 10;
            }
            i11 = i18 + i13;
        }
        this.f52129d = i16;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            ti3 = this.f52130e;
            DH dh3 = (DH) ti3;
            if (i19 >= dh3.f39486d) {
                break;
            }
            dh3.k(i19);
            int i21 = dh3.f39485c[i19];
            if (i21 >= 0) {
                i12 = AbstractC5322Ie.c(i21);
            } else {
                Logger logger3 = AbstractC5322Ie.f41156a;
                i12 = 10;
            }
            i20 += i12;
            i19++;
        }
        int i22 = i11 + i20;
        if (!ti3.isEmpty()) {
            int i23 = i22 + 1;
            if (i20 >= 0) {
                i10 = AbstractC5322Ie.c(i20);
            } else {
                Logger logger4 = AbstractC5322Ie.f41156a;
            }
            i22 = i23 + i10;
        }
        this.f52131f = i20;
        if ((this.f52127b & 1) != 0) {
            i22 += AbstractC10181wz.computeStringSize(3, this.f52132g);
        }
        if ((this.f52127b & 2) != 0) {
            i22 += AbstractC10181wz.computeStringSize(4, this.f52133h);
        }
        int i24 = 0;
        for (int i25 = 0; i25 < this.f52134i.size(); i25++) {
            i24 += AbstractC10181wz.computeStringSizeNoTag(this.f52134i.g(i25));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + this.f52134i.size() + i22 + i24;
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
        int hashCode = AbstractC10640zl.f54504U.hashCode() + 779;
        DH dh2 = (DH) this.f52128c;
        if (dh2.f39486d > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 1, 53) + dh2.hashCode();
        }
        DH dh3 = (DH) this.f52130e;
        if (dh3.f39486d > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 2, 53) + dh3.hashCode();
        }
        if ((this.f52127b & 1) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 3, 53);
            Serializable serializable = this.f52132g;
            if (serializable instanceof String) {
                str2 = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f52132g = c10;
                }
                str2 = c10;
            }
            hashCode = a10 + str2.hashCode();
        }
        if ((this.f52127b & 2) != 0) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 4, 53);
            Serializable serializable2 = this.f52133h;
            if (serializable2 instanceof String) {
                str = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    this.f52133h = c11;
                }
                str = c11;
            }
            hashCode = a11 + str.hashCode();
        }
        if (this.f52134i.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 6, 53) + this.f52134i.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54505V.a(C9304rl.class, C9138ql.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f52135j;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f52135j = (byte) 1;
        return true;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f52125k.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        getSerializedSize();
        if (((DH) this.f52128c).f39486d > 0) {
            abstractC5322Ie.g(10);
            abstractC5322Ie.g(this.f52129d);
        }
        int i10 = 0;
        while (true) {
            DH dh2 = (DH) this.f52128c;
            if (i10 >= dh2.f39486d) {
                break;
            }
            dh2.k(i10);
            abstractC5322Ie.f(dh2.f39485c[i10]);
            i10++;
        }
        if (((DH) this.f52130e).f39486d > 0) {
            abstractC5322Ie.g(18);
            abstractC5322Ie.g(this.f52131f);
        }
        int i11 = 0;
        while (true) {
            DH dh3 = (DH) this.f52130e;
            if (i11 >= dh3.f39486d) {
                break;
            }
            dh3.k(i11);
            abstractC5322Ie.f(dh3.f39485c[i11]);
            i11++;
        }
        if ((this.f52127b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 3, this.f52132g);
        }
        if ((this.f52127b & 2) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 4, this.f52133h);
        }
        for (int i12 = 0; i12 < this.f52134i.size(); i12++) {
            AbstractC10181wz.writeString(abstractC5322Ie, 6, this.f52134i.g(i12));
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f52125k;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C9138ql((C7011dz) interfaceC7512gz);
    }

    public C9304rl() {
        this.f52129d = -1;
        this.f52131f = -1;
        this.f52135j = (byte) -1;
        this.f52128c = AbstractC10181wz.emptyIntList();
        this.f52130e = AbstractC10181wz.emptyIntList();
        this.f52132g = "";
        this.f52133h = "";
        this.f52134i = C10255xR.f53759d;
    }
}
