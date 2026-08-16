package com.android.tools.r8.synthesis;

import com.android.tools.r8.GlobalSyntheticsResourceProvider;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public final class C11558e implements GlobalSyntheticsResourceProvider {

    public final ArchiveEntryOrigin f58246a;

    public final byte[] f58247b;

    public C11558e(ArchiveEntryOrigin archiveEntryOrigin, byte[] bArr) {
        this.f58246a = archiveEntryOrigin;
        this.f58247b = bArr;
    }

    @Override
    public final InputStream getByteStream() {
        return new ByteArrayInputStream(this.f58247b);
    }

    @Override
    public final Origin getOrigin() {
        return this.f58246a;
    }
}
