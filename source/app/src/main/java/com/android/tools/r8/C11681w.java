package com.android.tools.r8;

import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class C11681w implements DataEntryResource {

    public static final boolean f58652c = true;

    public final ZipFile f58653a;

    public final ZipEntry f58654b;

    public C11681w(ZipFile zipFile, ZipEntry zipEntry) {
        boolean z10 = f58652c;
        if (!z10 && zipFile == null) {
            throw new AssertionError();
        }
        if (!z10 && zipEntry == null) {
            throw new AssertionError();
        }
        this.f58653a = zipFile;
        this.f58654b = zipEntry;
    }

    @Override
    public final InputStream getByteStream() {
        try {
            return this.f58653a.getInputStream(this.f58654b);
        } catch (IOException e10) {
            throw new ResourceException(getOrigin(), e10);
        }
    }

    @Override
    public final String getName() {
        return this.f58654b.getName();
    }

    @Override
    public final Origin getOrigin() {
        return new ArchiveEntryOrigin(this.f58654b.getName(), new PathOrigin(Paths.get(this.f58653a.getName(), new String[0])));
    }
}
