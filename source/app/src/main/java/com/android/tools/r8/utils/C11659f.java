package com.android.tools.r8.utils;

import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.ProgramResourceProvider;
import java.util.ArrayList;
import java.util.Collection;

public final class C11659f implements ProgramResourceProvider {

    public final ArrayList f58580a;

    public final ArrayList f58581b;

    public C11659f(ArrayList arrayList, ArrayList arrayList2) {
        this.f58580a = arrayList;
        this.f58581b = arrayList2;
    }

    @Override
    public final DataResourceProvider getDataResourceProvider() {
        if (this.f58581b.isEmpty()) {
            return null;
        }
        return new C11658e(this);
    }

    @Override
    public final Collection getProgramResources() {
        return this.f58580a;
    }
}
