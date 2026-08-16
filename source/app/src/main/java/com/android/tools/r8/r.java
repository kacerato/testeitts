package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.io.File;

public final class r implements DataDirectoryResource {

    public static final boolean f56178c = true;

    public final File f56179a;

    public final String f56180b;

    public r(String str, File file) {
        boolean z10 = f56178c;
        if (!z10 && file == null) {
            throw new AssertionError();
        }
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        this.f56179a = file;
        this.f56180b = str;
    }

    @Override
    public final String getName() {
        return this.f56180b;
    }

    @Override
    public final Origin getOrigin() {
        return new PathOrigin(this.f56179a.toPath());
    }
}
