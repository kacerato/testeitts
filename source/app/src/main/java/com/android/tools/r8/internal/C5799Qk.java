package com.android.tools.r8.internal;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C5799Qk extends AbstractC7844iz {

    public int f43702c;

    public volatile Serializable f43703d;

    public volatile Serializable f43704e;

    public boolean f43705f;

    public boolean f43706g;

    public boolean f43707h;

    public int f43708i;

    public volatile Serializable f43709j;

    public boolean f43710k;

    public boolean f43711l;

    public boolean f43712m;

    public boolean f43713n;

    public boolean f43714o;

    public boolean f43715p;

    public volatile Serializable f43716q;

    public volatile Serializable f43717r;

    public volatile Serializable f43718s;

    public volatile Serializable f43719t;

    public volatile Serializable f43720u;

    public volatile Serializable f43721v;

    public volatile Serializable f43722w;

    public List f43723x;

    public byte f43724y;

    public static final C5799Qk f43701z = new C5799Qk();

    public static final C5625Nk f43700A = new C5625Nk();

    public C5799Qk(C5683Ok c5683Ok) {
        super(c5683Ok);
        this.f43724y = (byte) -1;
    }

    @Override
    public final C5683Ok toBuilder() {
        return this == f43701z ? new C5683Ok() : new C5683Ok().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5799Qk)) {
            return super.equals(obj);
        }
        C5799Qk c5799Qk = (C5799Qk) obj;
        int i10 = this.f43702c & 1;
        if ((i10 != 0) != ((c5799Qk.f43702c & 1) != 0)) {
            return false;
        }
        if (i10 != 0) {
            Serializable serializable = this.f43703d;
            if (serializable instanceof String) {
                str19 = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f43703d = c10;
                }
                str19 = c10;
            }
            Serializable serializable2 = c5799Qk.f43703d;
            if (serializable2 instanceof String) {
                str20 = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    c5799Qk.f43703d = c11;
                }
                str20 = c11;
            }
            if (!str19.equals(str20)) {
                return false;
            }
        }
        int i11 = this.f43702c & 2;
        if ((i11 != 0) != ((c5799Qk.f43702c & 2) != 0)) {
            return false;
        }
        if (i11 != 0) {
            Serializable serializable3 = this.f43704e;
            if (serializable3 instanceof String) {
                str17 = (String) serializable3;
            } else {
                AbstractC8373m8 abstractC8373m83 = (AbstractC8373m8) serializable3;
                String c12 = abstractC8373m83.c();
                if (abstractC8373m83.a()) {
                    this.f43704e = c12;
                }
                str17 = c12;
            }
            Serializable serializable4 = c5799Qk.f43704e;
            if (serializable4 instanceof String) {
                str18 = (String) serializable4;
            } else {
                AbstractC8373m8 abstractC8373m84 = (AbstractC8373m8) serializable4;
                String c13 = abstractC8373m84.c();
                if (abstractC8373m84.a()) {
                    c5799Qk.f43704e = c13;
                }
                str18 = c13;
            }
            if (!str17.equals(str18)) {
                return false;
            }
        }
        int i12 = this.f43702c;
        int i13 = i12 & 4;
        boolean z10 = i13 != 0;
        int i14 = c5799Qk.f43702c;
        if (z10 != ((i14 & 4) != 0)) {
            return false;
        }
        if (i13 != 0 && this.f43705f != c5799Qk.f43705f) {
            return false;
        }
        int i15 = i12 & 8;
        if ((i15 != 0) != ((i14 & 8) != 0)) {
            return false;
        }
        if (i15 != 0 && this.f43706g != c5799Qk.f43706g) {
            return false;
        }
        int i16 = i12 & 16;
        if ((i16 != 0) != ((i14 & 16) != 0)) {
            return false;
        }
        if (i16 != 0 && this.f43707h != c5799Qk.f43707h) {
            return false;
        }
        int i17 = i12 & 32;
        if ((i17 != 0) != ((i14 & 32) != 0)) {
            return false;
        }
        if (i17 != 0 && this.f43708i != c5799Qk.f43708i) {
            return false;
        }
        int i18 = i12 & 64;
        if ((i18 != 0) != ((i14 & 64) != 0)) {
            return false;
        }
        if (i18 != 0) {
            Serializable serializable5 = this.f43709j;
            if (serializable5 instanceof String) {
                str15 = (String) serializable5;
            } else {
                AbstractC8373m8 abstractC8373m85 = (AbstractC8373m8) serializable5;
                String c14 = abstractC8373m85.c();
                if (abstractC8373m85.a()) {
                    this.f43709j = c14;
                }
                str15 = c14;
            }
            Serializable serializable6 = c5799Qk.f43709j;
            if (serializable6 instanceof String) {
                str16 = (String) serializable6;
            } else {
                AbstractC8373m8 abstractC8373m86 = (AbstractC8373m8) serializable6;
                String c15 = abstractC8373m86.c();
                if (abstractC8373m86.a()) {
                    c5799Qk.f43709j = c15;
                }
                str16 = c15;
            }
            if (!str15.equals(str16)) {
                return false;
            }
        }
        int i19 = this.f43702c;
        int i20 = i19 & 128;
        boolean z11 = i20 != 0;
        int i21 = c5799Qk.f43702c;
        if (z11 != ((i21 & 128) != 0)) {
            return false;
        }
        if (i20 != 0 && this.f43710k != c5799Qk.f43710k) {
            return false;
        }
        int i22 = i19 & 256;
        if ((i22 != 0) != ((i21 & 256) != 0)) {
            return false;
        }
        if (i22 != 0 && this.f43711l != c5799Qk.f43711l) {
            return false;
        }
        int i23 = i19 & 512;
        if ((i23 != 0) != ((i21 & 512) != 0)) {
            return false;
        }
        if (i23 != 0 && this.f43712m != c5799Qk.f43712m) {
            return false;
        }
        int i24 = i19 & 1024;
        if ((i24 != 0) != ((i21 & 1024) != 0)) {
            return false;
        }
        if (i24 != 0 && this.f43713n != c5799Qk.f43713n) {
            return false;
        }
        int i25 = i19 & 2048;
        if ((i25 != 0) != ((i21 & 2048) != 0)) {
            return false;
        }
        if (i25 != 0 && this.f43714o != c5799Qk.f43714o) {
            return false;
        }
        int i26 = i19 & 4096;
        if ((i26 != 0) != ((i21 & 4096) != 0)) {
            return false;
        }
        if (i26 != 0 && this.f43715p != c5799Qk.f43715p) {
            return false;
        }
        int i27 = i19 & 8192;
        if ((i27 != 0) != ((i21 & 8192) != 0)) {
            return false;
        }
        if (i27 != 0) {
            Serializable serializable7 = this.f43716q;
            if (serializable7 instanceof String) {
                str13 = (String) serializable7;
            } else {
                AbstractC8373m8 abstractC8373m87 = (AbstractC8373m8) serializable7;
                String c16 = abstractC8373m87.c();
                if (abstractC8373m87.a()) {
                    this.f43716q = c16;
                }
                str13 = c16;
            }
            Serializable serializable8 = c5799Qk.f43716q;
            if (serializable8 instanceof String) {
                str14 = (String) serializable8;
            } else {
                AbstractC8373m8 abstractC8373m88 = (AbstractC8373m8) serializable8;
                String c17 = abstractC8373m88.c();
                if (abstractC8373m88.a()) {
                    c5799Qk.f43716q = c17;
                }
                str14 = c17;
            }
            if (!str13.equals(str14)) {
                return false;
            }
        }
        int i28 = this.f43702c & 16384;
        if ((i28 != 0) != ((c5799Qk.f43702c & 16384) != 0)) {
            return false;
        }
        if (i28 != 0) {
            Serializable serializable9 = this.f43717r;
            if (serializable9 instanceof String) {
                str11 = (String) serializable9;
            } else {
                AbstractC8373m8 abstractC8373m89 = (AbstractC8373m8) serializable9;
                String c18 = abstractC8373m89.c();
                if (abstractC8373m89.a()) {
                    this.f43717r = c18;
                }
                str11 = c18;
            }
            Serializable serializable10 = c5799Qk.f43717r;
            if (serializable10 instanceof String) {
                str12 = (String) serializable10;
            } else {
                AbstractC8373m8 abstractC8373m810 = (AbstractC8373m8) serializable10;
                String c19 = abstractC8373m810.c();
                if (abstractC8373m810.a()) {
                    c5799Qk.f43717r = c19;
                }
                str12 = c19;
            }
            if (!str11.equals(str12)) {
                return false;
            }
        }
        int i29 = this.f43702c & 32768;
        if ((i29 != 0) != ((32768 & c5799Qk.f43702c) != 0)) {
            return false;
        }
        if (i29 != 0) {
            Serializable serializable11 = this.f43718s;
            if (serializable11 instanceof String) {
                str9 = (String) serializable11;
            } else {
                AbstractC8373m8 abstractC8373m811 = (AbstractC8373m8) serializable11;
                String c20 = abstractC8373m811.c();
                if (abstractC8373m811.a()) {
                    this.f43718s = c20;
                }
                str9 = c20;
            }
            Serializable serializable12 = c5799Qk.f43718s;
            if (serializable12 instanceof String) {
                str10 = (String) serializable12;
            } else {
                AbstractC8373m8 abstractC8373m812 = (AbstractC8373m8) serializable12;
                String c21 = abstractC8373m812.c();
                if (abstractC8373m812.a()) {
                    c5799Qk.f43718s = c21;
                }
                str10 = c21;
            }
            if (!str9.equals(str10)) {
                return false;
            }
        }
        int i30 = this.f43702c & 65536;
        if ((i30 != 0) != ((65536 & c5799Qk.f43702c) != 0)) {
            return false;
        }
        if (i30 != 0) {
            Serializable serializable13 = this.f43719t;
            if (serializable13 instanceof String) {
                str7 = (String) serializable13;
            } else {
                AbstractC8373m8 abstractC8373m813 = (AbstractC8373m8) serializable13;
                String c22 = abstractC8373m813.c();
                if (abstractC8373m813.a()) {
                    this.f43719t = c22;
                }
                str7 = c22;
            }
            Serializable serializable14 = c5799Qk.f43719t;
            if (serializable14 instanceof String) {
                str8 = (String) serializable14;
            } else {
                AbstractC8373m8 abstractC8373m814 = (AbstractC8373m8) serializable14;
                String c23 = abstractC8373m814.c();
                if (abstractC8373m814.a()) {
                    c5799Qk.f43719t = c23;
                }
                str8 = c23;
            }
            if (!str7.equals(str8)) {
                return false;
            }
        }
        int i31 = this.f43702c & 131072;
        if ((i31 != 0) != ((131072 & c5799Qk.f43702c) != 0)) {
            return false;
        }
        if (i31 != 0) {
            Serializable serializable15 = this.f43720u;
            if (serializable15 instanceof String) {
                str5 = (String) serializable15;
            } else {
                AbstractC8373m8 abstractC8373m815 = (AbstractC8373m8) serializable15;
                String c24 = abstractC8373m815.c();
                if (abstractC8373m815.a()) {
                    this.f43720u = c24;
                }
                str5 = c24;
            }
            Serializable serializable16 = c5799Qk.f43720u;
            if (serializable16 instanceof String) {
                str6 = (String) serializable16;
            } else {
                AbstractC8373m8 abstractC8373m816 = (AbstractC8373m8) serializable16;
                String c25 = abstractC8373m816.c();
                if (abstractC8373m816.a()) {
                    c5799Qk.f43720u = c25;
                }
                str6 = c25;
            }
            if (!str5.equals(str6)) {
                return false;
            }
        }
        int i32 = this.f43702c & 262144;
        if ((i32 != 0) != ((262144 & c5799Qk.f43702c) != 0)) {
            return false;
        }
        if (i32 != 0) {
            Serializable serializable17 = this.f43721v;
            if (serializable17 instanceof String) {
                str3 = (String) serializable17;
            } else {
                AbstractC8373m8 abstractC8373m817 = (AbstractC8373m8) serializable17;
                String c26 = abstractC8373m817.c();
                if (abstractC8373m817.a()) {
                    this.f43721v = c26;
                }
                str3 = c26;
            }
            Serializable serializable18 = c5799Qk.f43721v;
            if (serializable18 instanceof String) {
                str4 = (String) serializable18;
            } else {
                AbstractC8373m8 abstractC8373m818 = (AbstractC8373m8) serializable18;
                String c27 = abstractC8373m818.c();
                if (abstractC8373m818.a()) {
                    c5799Qk.f43721v = c27;
                }
                str4 = c27;
            }
            if (!str3.equals(str4)) {
                return false;
            }
        }
        int i33 = this.f43702c & 524288;
        if ((i33 != 0) != ((524288 & c5799Qk.f43702c) != 0)) {
            return false;
        }
        if (i33 != 0) {
            Serializable serializable19 = this.f43722w;
            if (serializable19 instanceof String) {
                str = (String) serializable19;
            } else {
                AbstractC8373m8 abstractC8373m819 = (AbstractC8373m8) serializable19;
                String c28 = abstractC8373m819.c();
                if (abstractC8373m819.a()) {
                    this.f43722w = c28;
                }
                str = c28;
            }
            Serializable serializable20 = c5799Qk.f43722w;
            if (serializable20 instanceof String) {
                str2 = (String) serializable20;
            } else {
                AbstractC8373m8 abstractC8373m820 = (AbstractC8373m8) serializable20;
                String c29 = abstractC8373m820.c();
                if (abstractC8373m820.a()) {
                    c5799Qk.f43722w = c29;
                }
                str2 = c29;
            }
            if (!str.equals(str2)) {
                return false;
            }
        }
        return this.f43723x.equals(c5799Qk.f43723x) && this.unknownFields.equals(c5799Qk.unknownFields) && this.f49135b.a().equals(c5799Qk.f49135b.a());
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f43701z;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f43702c & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f43703d) : 0;
        if ((this.f43702c & 2) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(8, this.f43704e);
        }
        if ((this.f43702c & 32) != 0) {
            computeStringSize = AbstractC5502Lg.a(this.f43708i, AbstractC5322Ie.b(9), computeStringSize);
        }
        if ((this.f43702c & 4) != 0) {
            computeStringSize = AbstractC8292lh0.a(10, 1, computeStringSize);
        }
        if ((this.f43702c & 64) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(11, this.f43709j);
        }
        if ((this.f43702c & 128) != 0) {
            computeStringSize = AbstractC8292lh0.a(16, 1, computeStringSize);
        }
        if ((this.f43702c & 256) != 0) {
            computeStringSize = AbstractC8292lh0.a(17, 1, computeStringSize);
        }
        if ((this.f43702c & 512) != 0) {
            computeStringSize = AbstractC8292lh0.a(18, 1, computeStringSize);
        }
        if ((this.f43702c & 8) != 0) {
            computeStringSize = AbstractC8292lh0.a(20, 1, computeStringSize);
        }
        if ((this.f43702c & 2048) != 0) {
            computeStringSize = AbstractC8292lh0.a(23, 1, computeStringSize);
        }
        if ((this.f43702c & 16) != 0) {
            computeStringSize = AbstractC8292lh0.a(27, 1, computeStringSize);
        }
        if ((this.f43702c & 4096) != 0) {
            computeStringSize = AbstractC8292lh0.a(31, 1, computeStringSize);
        }
        if ((this.f43702c & 8192) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(36, this.f43716q);
        }
        if ((this.f43702c & 16384) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(37, this.f43717r);
        }
        if ((this.f43702c & 32768) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(39, this.f43718s);
        }
        if ((this.f43702c & 65536) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(40, this.f43719t);
        }
        if ((this.f43702c & 131072) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(41, this.f43720u);
        }
        if ((this.f43702c & 1024) != 0) {
            computeStringSize = AbstractC8292lh0.a(42, 1, computeStringSize);
        }
        if ((this.f43702c & 262144) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(44, this.f43721v);
        }
        if ((this.f43702c & 524288) != 0) {
            computeStringSize += AbstractC10181wz.computeStringSize(45, this.f43722w);
        }
        for (int i11 = 0; i11 < this.f43723x.size(); i11++) {
            computeStringSize += AbstractC5322Ie.a(999, (InterfaceC8095kW) this.f43723x.get(i11));
        }
        int serializedSize = this.unknownFields.getSerializedSize() + this.f49135b.b() + computeStringSize;
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
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = AbstractC10640zl.f54530y.hashCode() + 779;
        if ((this.f43702c & 1) != 0) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 1, 53);
            Serializable serializable = this.f43703d;
            if (serializable instanceof String) {
                str10 = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f43703d = c10;
                }
                str10 = c10;
            }
            hashCode = a10 + str10.hashCode();
        }
        if ((this.f43702c & 2) != 0) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 8, 53);
            Serializable serializable2 = this.f43704e;
            if (serializable2 instanceof String) {
                str9 = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    this.f43704e = c11;
                }
                str9 = c11;
            }
            hashCode = a11 + str9.hashCode();
        }
        int i11 = this.f43702c;
        if ((i11 & 4) != 0) {
            int a12 = AbstractC9124qg0.a(hashCode, 37, 10, 53);
            boolean z10 = this.f43705f;
            Charset charset = YI.f45964a;
            hashCode = a12 + (z10 ? 1231 : 1237);
        }
        if ((i11 & 8) != 0) {
            int a13 = AbstractC9124qg0.a(hashCode, 37, 20, 53);
            boolean z11 = this.f43706g;
            Charset charset2 = YI.f45964a;
            hashCode = a13 + (z11 ? 1231 : 1237);
        }
        if ((i11 & 16) != 0) {
            int a14 = AbstractC9124qg0.a(hashCode, 37, 27, 53);
            boolean z12 = this.f43707h;
            Charset charset3 = YI.f45964a;
            hashCode = a14 + (z12 ? 1231 : 1237);
        }
        if ((i11 & 32) != 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 9, 53) + this.f43708i;
        }
        if ((i11 & 64) != 0) {
            int a15 = AbstractC9124qg0.a(hashCode, 37, 11, 53);
            Serializable serializable3 = this.f43709j;
            if (serializable3 instanceof String) {
                str8 = (String) serializable3;
            } else {
                AbstractC8373m8 abstractC8373m83 = (AbstractC8373m8) serializable3;
                String c12 = abstractC8373m83.c();
                if (abstractC8373m83.a()) {
                    this.f43709j = c12;
                }
                str8 = c12;
            }
            hashCode = a15 + str8.hashCode();
        }
        int i12 = this.f43702c;
        if ((i12 & 128) != 0) {
            int a16 = AbstractC9124qg0.a(hashCode, 37, 16, 53);
            boolean z13 = this.f43710k;
            Charset charset4 = YI.f45964a;
            hashCode = a16 + (z13 ? 1231 : 1237);
        }
        if ((i12 & 256) != 0) {
            int a17 = AbstractC9124qg0.a(hashCode, 37, 17, 53);
            boolean z14 = this.f43711l;
            Charset charset5 = YI.f45964a;
            hashCode = a17 + (z14 ? 1231 : 1237);
        }
        if ((i12 & 512) != 0) {
            int a18 = AbstractC9124qg0.a(hashCode, 37, 18, 53);
            boolean z15 = this.f43712m;
            Charset charset6 = YI.f45964a;
            hashCode = a18 + (z15 ? 1231 : 1237);
        }
        if ((i12 & 1024) != 0) {
            int a19 = AbstractC9124qg0.a(hashCode, 37, 42, 53);
            boolean z16 = this.f43713n;
            Charset charset7 = YI.f45964a;
            hashCode = a19 + (z16 ? 1231 : 1237);
        }
        if ((i12 & 2048) != 0) {
            int a20 = AbstractC9124qg0.a(hashCode, 37, 23, 53);
            boolean z17 = this.f43714o;
            Charset charset8 = YI.f45964a;
            hashCode = a20 + (z17 ? 1231 : 1237);
        }
        if ((i12 & 4096) != 0) {
            int a21 = AbstractC9124qg0.a(hashCode, 37, 31, 53);
            boolean z18 = this.f43715p;
            Charset charset9 = YI.f45964a;
            hashCode = a21 + (z18 ? 1231 : 1237);
        }
        if ((i12 & 8192) != 0) {
            int a22 = AbstractC9124qg0.a(hashCode, 37, 36, 53);
            Serializable serializable4 = this.f43716q;
            if (serializable4 instanceof String) {
                str7 = (String) serializable4;
            } else {
                AbstractC8373m8 abstractC8373m84 = (AbstractC8373m8) serializable4;
                String c13 = abstractC8373m84.c();
                if (abstractC8373m84.a()) {
                    this.f43716q = c13;
                }
                str7 = c13;
            }
            hashCode = a22 + str7.hashCode();
        }
        if ((this.f43702c & 16384) != 0) {
            int a23 = AbstractC9124qg0.a(hashCode, 37, 37, 53);
            Serializable serializable5 = this.f43717r;
            if (serializable5 instanceof String) {
                str6 = (String) serializable5;
            } else {
                AbstractC8373m8 abstractC8373m85 = (AbstractC8373m8) serializable5;
                String c14 = abstractC8373m85.c();
                if (abstractC8373m85.a()) {
                    this.f43717r = c14;
                }
                str6 = c14;
            }
            hashCode = a23 + str6.hashCode();
        }
        if ((this.f43702c & 32768) != 0) {
            int a24 = AbstractC9124qg0.a(hashCode, 37, 39, 53);
            Serializable serializable6 = this.f43718s;
            if (serializable6 instanceof String) {
                str5 = (String) serializable6;
            } else {
                AbstractC8373m8 abstractC8373m86 = (AbstractC8373m8) serializable6;
                String c15 = abstractC8373m86.c();
                if (abstractC8373m86.a()) {
                    this.f43718s = c15;
                }
                str5 = c15;
            }
            hashCode = a24 + str5.hashCode();
        }
        if ((this.f43702c & 65536) != 0) {
            int a25 = AbstractC9124qg0.a(hashCode, 37, 40, 53);
            Serializable serializable7 = this.f43719t;
            if (serializable7 instanceof String) {
                str4 = (String) serializable7;
            } else {
                AbstractC8373m8 abstractC8373m87 = (AbstractC8373m8) serializable7;
                String c16 = abstractC8373m87.c();
                if (abstractC8373m87.a()) {
                    this.f43719t = c16;
                }
                str4 = c16;
            }
            hashCode = a25 + str4.hashCode();
        }
        if ((this.f43702c & 131072) != 0) {
            int a26 = AbstractC9124qg0.a(hashCode, 37, 41, 53);
            Serializable serializable8 = this.f43720u;
            if (serializable8 instanceof String) {
                str3 = (String) serializable8;
            } else {
                AbstractC8373m8 abstractC8373m88 = (AbstractC8373m8) serializable8;
                String c17 = abstractC8373m88.c();
                if (abstractC8373m88.a()) {
                    this.f43720u = c17;
                }
                str3 = c17;
            }
            hashCode = a26 + str3.hashCode();
        }
        if ((this.f43702c & 262144) != 0) {
            int a27 = AbstractC9124qg0.a(hashCode, 37, 44, 53);
            Serializable serializable9 = this.f43721v;
            if (serializable9 instanceof String) {
                str2 = (String) serializable9;
            } else {
                AbstractC8373m8 abstractC8373m89 = (AbstractC8373m8) serializable9;
                String c18 = abstractC8373m89.c();
                if (abstractC8373m89.a()) {
                    this.f43721v = c18;
                }
                str2 = c18;
            }
            hashCode = a27 + str2.hashCode();
        }
        if ((this.f43702c & 524288) != 0) {
            int a28 = AbstractC9124qg0.a(hashCode, 37, 45, 53);
            Serializable serializable10 = this.f43722w;
            if (serializable10 instanceof String) {
                str = (String) serializable10;
            } else {
                AbstractC8373m8 abstractC8373m810 = (AbstractC8373m8) serializable10;
                String c19 = abstractC8373m810.c();
                if (abstractC8373m810.a()) {
                    this.f43722w = c19;
                }
                str = c19;
            }
            hashCode = a28 + str.hashCode();
        }
        if (this.f43723x.size() > 0) {
            hashCode = AbstractC9124qg0.a(hashCode, 37, 999, 53) + this.f43723x.hashCode();
        }
        int hashCode2 = this.unknownFields.hashCode() + (K0.hashFields(hashCode, this.f49135b.a()) * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54531z.a(C5799Qk.class, C5683Ok.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f43724y;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int i10 = 0; i10 < this.f43723x.size(); i10++) {
            if (!((C10473yl) this.f43723x.get(i10)).isInitialized()) {
                this.f43724y = (byte) 0;
                return false;
            }
        }
        if (this.f49135b.c()) {
            this.f43724y = (byte) 1;
            return true;
        }
        this.f43724y = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f43701z.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        C5476Kw c5476Kw = this.f49135b;
        Iterator c9754uR = c5476Kw.f41823c ? new C9754uR(new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b)) : new C7310fn0(((C7644hn0) c5476Kw.f41821a.entrySet()).f48714b);
        Map.Entry entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        if ((this.f43702c & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f43703d);
        }
        if ((this.f43702c & 2) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 8, this.f43704e);
        }
        if ((this.f43702c & 32) != 0) {
            abstractC5322Ie.c(9, this.f43708i);
        }
        if ((this.f43702c & 4) != 0) {
            abstractC5322Ie.a(10, this.f43705f);
        }
        if ((this.f43702c & 64) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 11, this.f43709j);
        }
        if ((this.f43702c & 128) != 0) {
            abstractC5322Ie.a(16, this.f43710k);
        }
        if ((this.f43702c & 256) != 0) {
            abstractC5322Ie.a(17, this.f43711l);
        }
        if ((this.f43702c & 512) != 0) {
            abstractC5322Ie.a(18, this.f43712m);
        }
        if ((this.f43702c & 8) != 0) {
            abstractC5322Ie.a(20, this.f43706g);
        }
        if ((this.f43702c & 2048) != 0) {
            abstractC5322Ie.a(23, this.f43714o);
        }
        if ((this.f43702c & 16) != 0) {
            abstractC5322Ie.a(27, this.f43707h);
        }
        if ((this.f43702c & 4096) != 0) {
            abstractC5322Ie.a(31, this.f43715p);
        }
        if ((this.f43702c & 8192) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 36, this.f43716q);
        }
        if ((this.f43702c & 16384) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 37, this.f43717r);
        }
        if ((this.f43702c & 32768) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 39, this.f43718s);
        }
        if ((this.f43702c & 65536) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 40, this.f43719t);
        }
        if ((this.f43702c & 131072) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 41, this.f43720u);
        }
        if ((this.f43702c & 1024) != 0) {
            abstractC5322Ie.a(42, this.f43713n);
        }
        if ((this.f43702c & 262144) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 44, this.f43721v);
        }
        if ((this.f43702c & 524288) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 45, this.f43722w);
        }
        for (int i10 = 0; i10 < this.f43723x.size(); i10++) {
            abstractC5322Ie.b(999, (InterfaceC8095kW) this.f43723x.get(i10));
        }
        while (entry != null && ((C5685Ol) entry.getKey()).f43017c.f39995d < 536870912) {
            C5476Kw.a((C5685Ol) entry.getKey(), entry.getValue(), abstractC5322Ie);
            entry = c9754uR.hasNext() ? (Map.Entry) c9754uR.next() : null;
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f43701z;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C5683Ok((C7011dz) interfaceC7512gz);
    }

    public C5799Qk() {
        this.f43724y = (byte) -1;
        this.f43703d = "";
        this.f43704e = "";
        this.f43708i = 1;
        this.f43709j = "";
        this.f43715p = true;
        this.f43716q = "";
        this.f43717r = "";
        this.f43718s = "";
        this.f43719t = "";
        this.f43720u = "";
        this.f43721v = "";
        this.f43722w = "";
        this.f43723x = Collections.EMPTY_LIST;
    }
}
