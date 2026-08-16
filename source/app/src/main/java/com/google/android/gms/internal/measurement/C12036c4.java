package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.collection.SimpleArrayMap;

public final class C12036c4 {

    public final SimpleArrayMap f62245a;

    public C12036c4(SimpleArrayMap simpleArrayMap) {
        this.f62245a = simpleArrayMap;
    }

    public final String a(Uri uri, String str, String str2, String str3) {
        SimpleArrayMap simpleArrayMap = uri != null ? (SimpleArrayMap) this.f62245a.get(uri.toString()) : null;
        if (simpleArrayMap == null) {
            return null;
        }
        return (String) simpleArrayMap.get("".concat(str3));
    }
}
