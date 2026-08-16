package com.android.tools.r8.origin;

import android.provider.MediaStore;
import java.util.ArrayList;
import java.util.List;

public final class e extends Origin {
    public e() {
        super();
    }

    @Override
    public final List a(int i10) {
        ArrayList arrayList = new ArrayList(i10 + 1);
        arrayList.add(MediaStore.UNKNOWN_STRING);
        return arrayList;
    }

    @Override
    public final int compareTo(Origin origin) {
        return super.compareTo(origin);
    }

    @Override
    public final String part() {
        return MediaStore.UNKNOWN_STRING;
    }
}
