package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;

public final class C12117l4 {

    @GuardedBy("PhenotypeConstants.class")
    public static final ArrayMap f62354a = new ArrayMap();

    public static final int f62355b = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized Uri a(String str) {
        synchronized (C12117l4.class) {
            ArrayMap arrayMap = f62354a;
            Uri uri = (Uri) arrayMap.get("com.google.android.gms.measurement");
            if (uri != null) {
                return uri;
            }
            Uri parse = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
            arrayMap.put("com.google.android.gms.measurement", parse);
            return parse;
        }
    }
}
