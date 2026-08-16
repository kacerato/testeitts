package com.android.tools.r8;

import com.android.tools.r8.AndroidResourceInput;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public final class C4286b implements AndroidResourceInput {

    public final String f35610a;

    public final AndroidResourceInput.Kind f35611b;

    public final byte[] f35612c;

    public final ArchiveEntryOrigin f35613d;

    public C4286b(String str, AndroidResourceInput.Kind kind, byte[] bArr, ArchiveEntryOrigin archiveEntryOrigin) {
        this.f35610a = str;
        this.f35611b = kind;
        this.f35612c = bArr;
        this.f35613d = archiveEntryOrigin;
    }

    public final String b() {
        return this.f35610a;
    }

    @Override
    public final InputStream getByteStream() {
        return new ByteArrayInputStream(this.f35612c);
    }

    @Override
    public final AndroidResourceInput.Kind getKind() {
        return this.f35611b;
    }

    @Override
    public final Origin getOrigin() {
        return this.f35613d;
    }

    @Override
    public final ResourcePath getPath() {
        return new ResourcePath() {
            @Override
            public final String location() {
                return C4286b.this.b();
            }
        };
    }
}
