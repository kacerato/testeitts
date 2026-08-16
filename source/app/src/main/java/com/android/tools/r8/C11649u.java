package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class C11649u implements DataEntryResource {

    public static final boolean f58520c = true;

    public final File f58521a;

    public final String f58522b;

    public C11649u(String str, File file) {
        boolean z10 = f58520c;
        if (!z10 && file == null) {
            throw new AssertionError();
        }
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        this.f58521a = file;
        this.f58522b = str;
    }

    @Override
    public final InputStream getByteStream() {
        try {
            return new FileInputStream(this.f58521a);
        } catch (IOException e10) {
            throw new ResourceException(new PathOrigin(this.f58521a.toPath()), e10);
        }
    }

    @Override
    public final String getName() {
        return this.f58522b;
    }

    @Override
    public final Origin getOrigin() {
        return new PathOrigin(this.f58521a.toPath());
    }
}
