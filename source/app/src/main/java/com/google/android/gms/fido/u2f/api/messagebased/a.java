package com.google.android.gms.fido.u2f.api.messagebased;

import androidx.annotation.NonNull;
import com.google.android.gms.fido.u2f.api.messagebased.RequestType;

@Deprecated
public enum a {
    REGISTER("u2f_register_response"),
    SIGN("u2f_sign_response");

    private final String zzb;

    a(String str) {
        this.zzb = str;
    }

    @NonNull
    public static a a(@NonNull RequestType requestType) throws RequestType.UnsupportedRequestTypeException {
        if (requestType == null) {
            throw new RequestType.UnsupportedRequestTypeException(null);
        }
        int ordinal = requestType.ordinal();
        if (ordinal == 0) {
            return REGISTER;
        }
        if (ordinal == 1) {
            return SIGN;
        }
        throw new RequestType.UnsupportedRequestTypeException(requestType.toString());
    }

    @Override
    @NonNull
    public String toString() {
        return this.zzb;
    }
}
