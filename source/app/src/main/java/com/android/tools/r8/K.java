package com.android.tools.r8;

import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.references.ClassReference;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;

public final class K implements GlobalSyntheticsConsumer {

    public boolean f35366a = false;

    public final Path f35367b;

    public K(Path path) {
        this.f35367b = path;
    }

    @Override
    public final synchronized void accept(ByteDataView byteDataView, ClassReference classReference, DiagnosticsHandler diagnosticsHandler) {
        if (this.f35366a) {
            throw new C5417Jv0("Unexpected attempt to repeatedly write global synthetics");
        }
        this.f35366a = true;
        try {
            Files.write(this.f35367b, byteDataView.copyByteData(), new OpenOption[0]);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
