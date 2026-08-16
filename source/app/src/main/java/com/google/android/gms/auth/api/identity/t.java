package com.google.android.gms.auth.api.identity;

import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;

public final class t extends ClearTokenRequest.a {

    public String f60971a;

    public String f60972b;

    public t() {
    }

    @Override
    public final ClearTokenRequest a() {
        if (this.f60971a != null) {
            return new ClearTokenRequest(this.f60971a, this.f60972b);
        }
        throw new IllegalStateException("Missing required properties: token");
    }

    @Override
    public final ClearTokenRequest.a b(String str) {
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.f60971a = str;
        return this;
    }

    @Override
    public final ClearTokenRequest.a c(@Nullable String str) {
        this.f60972b = str;
        return this;
    }

    public t(ClearTokenRequest clearTokenRequest) {
        this.f60971a = clearTokenRequest.t();
        this.f60972b = clearTokenRequest.b0();
    }
}
