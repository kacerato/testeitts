package com.google.android.gms.auth.api.identity;

import com.google.android.gms.auth.api.identity.C11884e;

public final class s extends C11884e.a {

    public String f60968a;

    public boolean f60969b;

    public byte f60970c;

    @Override
    public final C11884e a() {
        if (this.f60970c == 1 && this.f60968a != null) {
            return new C11884e(this.f60968a, this.f60969b);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f60968a == null) {
            sb2.append(" name");
        }
        if (this.f60970c == 0) {
            sb2.append(" essential");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }

    @Override
    public final C11884e.a b(boolean z10) {
        this.f60969b = z10;
        this.f60970c = (byte) 1;
        return this;
    }

    @Override
    public final C11884e.a c(String str) {
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.f60968a = str;
        return this;
    }
}
