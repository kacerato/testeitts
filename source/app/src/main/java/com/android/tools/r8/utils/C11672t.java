package com.android.tools.r8.utils;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.retrace.FinishedPartitionMappingCallback;
import com.android.tools.r8.retrace.MappingPartitionFromKeySupplier;
import com.android.tools.r8.retrace.PartitionMappingSupplier;
import com.android.tools.r8.retrace.RetracePartitionException;
import java.io.IOException;
import java.nio.file.Path;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class C11672t {

    public static final byte[] f58639a = new byte[0];

    /* JADX WARN: Multi-variable type inference failed */
    public static PartitionMappingSupplier a(Path path) throws Exception {
        final ZipFile zipFile = new ZipFile(path.toFile());
        return ((PartitionMappingSupplier.Builder) PartitionMappingSupplier.builder().setMetadata(AbstractC6706c8.a(zipFile.getInputStream(zipFile.getEntry("METADATA")))).setMappingPartitionFromKeySupplier(new MappingPartitionFromKeySupplier() {
            @Override
            public final byte[] get(String str) {
                return C11672t.a(ZipFile.this, str);
            }
        }).setFinishedPartitionMappingCallback(new FinishedPartitionMappingCallback() {
            @Override
            public final void finished(DiagnosticsHandler diagnosticsHandler) {
                C11672t.a(ZipFile.this, diagnosticsHandler);
            }
        })).build();
    }

    public static byte[] a(ZipFile zipFile, String str) {
        try {
            ZipEntry entry = zipFile.getEntry(str);
            if (entry == null) {
                return f58639a;
            }
            return AbstractC6706c8.a(zipFile.getInputStream(entry));
        } catch (IOException e10) {
            throw new RetracePartitionException(e10);
        }
    }

    public static void a(ZipFile zipFile, DiagnosticsHandler diagnosticsHandler) {
        try {
            zipFile.close();
        } catch (IOException e10) {
            throw new RetracePartitionException(e10);
        }
    }
}
