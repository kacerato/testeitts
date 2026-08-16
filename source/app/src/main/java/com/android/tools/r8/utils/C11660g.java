package com.android.tools.r8.utils;

import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResource;
import com.android.tools.r8.DataResourceProvider;

public final class C11660g implements DataResourceProvider {

    public static final boolean f58582b = true;

    public final C11661h f58583a;

    public C11660g(C11661h c11661h) {
        this.f58583a = c11661h;
    }

    @Override
    public final void accept(DataResourceProvider.Visitor visitor) {
        for (DataResource dataResource : this.f58583a.f58585b) {
            if (dataResource instanceof DataEntryResource) {
                visitor.visit((DataEntryResource) dataResource);
            } else {
                if (!f58582b && !(dataResource instanceof DataDirectoryResource)) {
                    throw new AssertionError();
                }
                visitor.visit((DataDirectoryResource) dataResource);
            }
        }
    }
}
