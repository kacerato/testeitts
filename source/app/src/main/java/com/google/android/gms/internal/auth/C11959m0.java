package com.google.android.gms.internal.auth;

import android.net.Uri;
import androidx.collection.SimpleArrayMap;
import javax.annotation.Nullable;

public final class C11959m0 {

    public final SimpleArrayMap f61797a;

    public C11959m0(SimpleArrayMap simpleArrayMap) {
        this.f61797a = simpleArrayMap;
    }

    @Nullable
    public final String a(@Nullable Uri uri, @Nullable String str, @Nullable String str2, String str3) {
        SimpleArrayMap simpleArrayMap;
        if (uri != null) {
            simpleArrayMap = (SimpleArrayMap) this.f61797a.get(uri.toString());
        } else {
            simpleArrayMap = null;
        }
        if (simpleArrayMap == null) {
            return null;
        }
        return (String) simpleArrayMap.get("".concat(str3));
    }
}
