package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import java.io.InputStream;

public final class C11676v implements DataEntryResource {

    public final String f58644a;

    public final DataEntryResource f58645b;

    public C11676v(String str, DataEntryResource dataEntryResource) {
        this.f58644a = str;
        this.f58645b = dataEntryResource;
    }

    @Override
    public final InputStream getByteStream() {
        return this.f58645b.getByteStream();
    }

    @Override
    public final String getName() {
        String str = this.f58644a;
        return str != null ? str : this.f58645b.getName();
    }

    @Override
    public final Origin getOrigin() {
        return this.f58645b.getOrigin();
    }
}
