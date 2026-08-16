package com.android.tools.r8.internal;

import java.io.Serializable;
import java.nio.charset.Charset;

public final class C10306xl extends AbstractC10181wz implements InterfaceC8596nW {

    public static final C10306xl f53832f = new C10306xl();

    public static final C9972vl f53833g = new C9972vl();

    public int f53834b;

    public volatile Serializable f53835c;

    public boolean f53836d;

    public byte f53837e;

    public C10306xl(C10139wl c10139wl) {
        super(c10139wl);
        this.f53837e = (byte) -1;
    }

    public final boolean a() {
        return (this.f53834b & 2) != 0;
    }

    public final boolean b() {
        return (this.f53834b & 1) != 0;
    }

    @Override
    public final C10139wl toBuilder() {
        return this == f53832f ? new C10139wl() : new C10139wl().a(this);
    }

    @Override
    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10306xl)) {
            return super.equals(obj);
        }
        C10306xl c10306xl = (C10306xl) obj;
        if (b() != c10306xl.b()) {
            return false;
        }
        if (b()) {
            Serializable serializable = this.f53835c;
            if (serializable instanceof String) {
                str = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f53835c = c10;
                }
                str = c10;
            }
            Serializable serializable2 = c10306xl.f53835c;
            if (serializable2 instanceof String) {
                str2 = (String) serializable2;
            } else {
                AbstractC8373m8 abstractC8373m82 = (AbstractC8373m8) serializable2;
                String c11 = abstractC8373m82.c();
                if (abstractC8373m82.a()) {
                    c10306xl.f53835c = c11;
                }
                str2 = c11;
            }
            if (!str.equals(str2)) {
                return false;
            }
        }
        if (a() != c10306xl.a()) {
            return false;
        }
        return (!a() || this.f53836d == c10306xl.f53836d) && this.unknownFields.equals(c10306xl.unknownFields);
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return f53832f;
    }

    @Override
    public final int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int computeStringSize = (this.f53834b & 1) != 0 ? AbstractC10181wz.computeStringSize(1, this.f53835c) : 0;
        if ((this.f53834b & 2) != 0) {
            computeStringSize = AbstractC8292lh0.a(2, 1, computeStringSize);
        }
        int serializedSize = this.unknownFields.getSerializedSize() + computeStringSize;
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
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = AbstractC10640zl.f54500Q.hashCode() + 779;
        if (b()) {
            int a10 = AbstractC9124qg0.a(hashCode, 37, 1, 53);
            Serializable serializable = this.f53835c;
            if (serializable instanceof String) {
                str = (String) serializable;
            } else {
                AbstractC8373m8 abstractC8373m8 = (AbstractC8373m8) serializable;
                String c10 = abstractC8373m8.c();
                if (abstractC8373m8.a()) {
                    this.f53835c = c10;
                }
                str = c10;
            }
            hashCode = a10 + str.hashCode();
        }
        if (a()) {
            int a11 = AbstractC9124qg0.a(hashCode, 37, 2, 53);
            boolean z10 = this.f53836d;
            Charset charset = YI.f45964a;
            hashCode = a11 + (z10 ? 1231 : 1237);
        }
        int hashCode2 = this.unknownFields.hashCode() + (hashCode * 29);
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54501R.a(C10306xl.class, C10139wl.class);
    }

    @Override
    public final boolean isInitialized() {
        byte b10 = this.f53837e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (!b()) {
            this.f53837e = (byte) 0;
            return false;
        }
        if (a()) {
            this.f53837e = (byte) 1;
            return true;
        }
        this.f53837e = (byte) 0;
        return false;
    }

    @Override
    public final InterfaceC7095eW m1180newBuilderForType() {
        return f53832f.toBuilder();
    }

    @Override
    public final void writeTo(AbstractC5322Ie abstractC5322Ie) {
        if ((this.f53834b & 1) != 0) {
            AbstractC10181wz.writeString(abstractC5322Ie, 1, this.f53835c);
        }
        if ((this.f53834b & 2) != 0) {
            abstractC5322Ie.a(2, this.f53836d);
        }
        this.unknownFields.writeTo(abstractC5322Ie);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return f53832f;
    }

    @Override
    public final InterfaceC7095eW newBuilderForType(InterfaceC7512gz interfaceC7512gz) {
        return new C10139wl((C7011dz) interfaceC7512gz);
    }

    public C10306xl() {
        this.f53837e = (byte) -1;
        this.f53835c = "";
    }
}
