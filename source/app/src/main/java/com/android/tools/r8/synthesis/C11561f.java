package com.android.tools.r8.synthesis;

import com.android.tools.r8.GlobalSyntheticsResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;

public final class C11561f implements GlobalSyntheticsResourceProvider {

    public final Path f58248a;

    public final PathOrigin f58249b;

    public C11561f(Path path) {
        this.f58248a = path;
        this.f58249b = new PathOrigin(path);
    }

    @Override
    public final InputStream getByteStream() {
        try {
            return Files.newInputStream(this.f58248a, new OpenOption[0]);
        } catch (IOException e10) {
            throw new ResourceException(this.f58249b, e10);
        }
    }

    @Override
    public final Origin getOrigin() {
        return this.f58249b;
    }
}
