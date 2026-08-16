package com.google.android.gms.internal.auth;

import android.util.Log;
import androidx.annotation.Nullable;
import java.io.UnsupportedEncodingException;

public abstract class AbstractC11919c0 extends com.google.android.gms.common.server.response.b {
    @Override
    @Nullable
    public final byte[] F0() {
        try {
            return toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            Log.e("AUTH", "Error serializing object.", e10);
            return null;
        }
    }
}
