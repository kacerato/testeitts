package com.google.android.gms.internal.auth;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;

public final class C11994v0 {

    @GuardedBy("PhenotypeConstants.class")
    public static final ArrayMap f61850a = new ArrayMap();

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized Uri a(String str) {
        synchronized (C11994v0.class) {
            ArrayMap arrayMap = f61850a;
            Uri uri = (Uri) arrayMap.get("com.google.android.gms.auth_account");
            if (uri != null) {
                return uri;
            }
            Uri parse = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.auth_account"))));
            arrayMap.put("com.google.android.gms.auth_account", parse);
            return parse;
        }
    }
}
