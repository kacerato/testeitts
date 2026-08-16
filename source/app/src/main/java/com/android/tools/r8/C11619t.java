package com.android.tools.r8;

import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.nio.file.Paths;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class C11619t implements DataDirectoryResource {

    public static final boolean f58381c = true;

    public final ZipFile f58382a;

    public final ZipEntry f58383b;

    public C11619t(ZipFile zipFile, ZipEntry zipEntry) {
        boolean z10 = f58381c;
        if (!z10 && zipFile == null) {
            throw new AssertionError();
        }
        if (!z10 && zipEntry == null) {
            throw new AssertionError();
        }
        this.f58382a = zipFile;
        this.f58383b = zipEntry;
    }

    @Override
    public final String getName() {
        return this.f58383b.getName();
    }

    @Override
    public final Origin getOrigin() {
        return new ArchiveEntryOrigin(this.f58383b.getName(), new PathOrigin(Paths.get(this.f58382a.getName(), new String[0])));
    }
}
