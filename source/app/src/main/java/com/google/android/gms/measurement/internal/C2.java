package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C2 {

    @NonNull
    public final String f62573a;

    @NonNull
    public final String f62574b;

    public final long f62575c;

    @NonNull
    public final Bundle f62576d;

    public C2(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle, long j10) {
        this.f62573a = str;
        this.f62574b = str2;
        this.f62576d = bundle;
        this.f62575c = j10;
    }

    public static C2 a(I i10) {
        return new C2(i10.f62679b, i10.f62681d, i10.f62680c.n0(), i10.f62682e);
    }

    public final I b() {
        return new I(this.f62573a, new G(new Bundle(this.f62576d)), this.f62574b, this.f62575c);
    }

    public final String toString() {
        String str = this.f62574b;
        String obj = this.f62576d.toString();
        int length = String.valueOf(str).length();
        String str2 = this.f62573a;
        StringBuilder sb2 = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + obj.length());
        sb2.append("origin=");
        sb2.append(str);
        sb2.append(",name=");
        sb2.append(str2);
        sb2.append(",params=");
        sb2.append(obj);
        return sb2.toString();
    }
}
