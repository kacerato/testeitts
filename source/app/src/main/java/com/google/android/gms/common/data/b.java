package com.google.android.gms.common.data;

import android.content.ContentValues;
import com.google.android.gms.common.data.DataHolder;
import java.util.HashMap;

public final class b extends DataHolder.a {
    public b(String[] strArr, String str) {
        super(strArr, null, null);
    }

    @Override
    public final DataHolder.a c(ContentValues contentValues) {
        throw new UnsupportedOperationException("Cannot add data to empty builder");
    }

    @Override
    public final DataHolder.a d(HashMap hashMap) {
        throw new UnsupportedOperationException("Cannot add data to empty builder");
    }
}
