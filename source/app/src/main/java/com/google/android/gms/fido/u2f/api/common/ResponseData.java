package com.google.android.gms.fido.u2f.api.common;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import org.json.JSONObject;

@Deprecated
public abstract class ResponseData extends I0.a implements ReflectedParcelable {
    @NonNull
    public abstract JSONObject n();
}
