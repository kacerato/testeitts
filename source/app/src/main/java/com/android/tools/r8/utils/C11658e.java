package com.android.tools.r8.utils;

import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceProvider;
import java.util.ArrayList;

public final class C11658e implements DataResourceProvider {

    public final C11659f f58579a;

    public C11658e(C11659f c11659f) {
        this.f58579a = c11659f;
    }

    @Override
    public final void accept(DataResourceProvider.Visitor visitor) {
        ArrayList arrayList = this.f58579a.f58581b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            visitor.visit((DataEntryResource) obj);
        }
    }
}
