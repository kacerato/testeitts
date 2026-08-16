package com.android.tools.r8;

import com.android.tools.r8.internal.C7692i3;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.C11673u;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.zip.ZipEntry;

public class ArchiveProtoAndroidResourceConsumer implements AndroidResourceConsumer {

    private final C7692i3 f35119a;

    private final Path f35120b;

    private Map f35121c;

    public ArchiveProtoAndroidResourceConsumer(Path path) {
        this(path, null);
    }

    @Override
    public void accept(AndroidResourceOutput androidResourceOutput, DiagnosticsHandler diagnosticsHandler) {
        this.f35119a.a(androidResourceOutput.getPath().location(), androidResourceOutput.getByteDataView(), ((Boolean) a(diagnosticsHandler).getOrDefault(androidResourceOutput.getPath().location(), Boolean.TRUE)).booleanValue());
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f35119a.a(diagnosticsHandler);
    }

    public ArchiveProtoAndroidResourceConsumer(Path path, Path path2) {
        C7692i3 c7692i3 = new C7692i3(path);
        this.f35119a = c7692i3;
        c7692i3.open();
        this.f35120b = path2;
    }

    private synchronized Map a(DiagnosticsHandler diagnosticsHandler) {
        Map map = this.f35121c;
        if (map != null) {
            return map;
        }
        if (this.f35120b != null) {
            this.f35121c = new HashMap();
            try {
                C11673u.a(this.f35120b, (Consumer<ZipEntry>) new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ArchiveProtoAndroidResourceConsumer.this.a((ZipEntry) obj);
                    }
                });
            } catch (IOException e10) {
                diagnosticsHandler.error(new ExceptionDiagnostic(e10, new PathOrigin(this.f35120b)));
            }
        } else {
            this.f35121c = Collections.EMPTY_MAP;
        }
        return this.f35121c;
    }

    public void a(ZipEntry zipEntry) {
        this.f35121c.put(zipEntry.getName(), Boolean.valueOf(zipEntry.getMethod() != 0));
    }
}
