package com.android.tools.r8;

import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C6047Us;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C7692i3;
import com.android.tools.r8.internal.C8950pe;
import com.android.tools.r8.utils.C11673u;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipOutputStream;

public interface DexFilePerClassFileConsumer extends ProgramConsumer, ByteBufferProvider {
    public static final boolean SHOULD_COMBINE_SYNTHETIC_CLASSES = true;

    public static class ArchiveConsumer extends ForwardingConsumer implements DataResourceConsumer, S {

        static final boolean f35258d = true;

        private final C7692i3 f35259c;
        protected final boolean consumeDataResources;

        public ArchiveConsumer(Path path) {
            this(path, null, false);
        }

        public static String a(String str) {
            if (!f35258d && (str == null || !C4932Bl.y(str))) {
                throw new AssertionError();
            }
            return C4932Bl.h(str) + ".dex";
        }

        public static void writeResourcesForTesting(Path path, List<ProgramResource> list, Map<Resource, String> map) throws IOException, ResourceException {
            OpenOption[] openOptionArr = {StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING};
            C8950pe c8950pe = new C8950pe(C8950pe.f51579c);
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(Files.newOutputStream(path, openOptionArr)));
                try {
                    for (ProgramResource programResource : list) {
                        String a10 = a(map.get(programResource));
                        InputStream byteStream = programResource.getByteStream();
                        if (byteStream != null) {
                            c8950pe.f51581b.addFirst(byteStream);
                        }
                        C11673u.a(zipOutputStream, a10, AbstractC6706c8.a(byteStream), 0);
                    }
                    zipOutputStream.close();
                    c8950pe.close();
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    c8950pe.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }

        @Override
        public void accept(String str, ByteDataView byteDataView, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
            super.accept(str, byteDataView, set, diagnosticsHandler);
            C7692i3 c7692i3 = this.f35259c;
            String a10 = a(str);
            synchronized (c7692i3) {
                c7692i3.a(a10, byteDataView, true);
            }
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            super.finished(diagnosticsHandler);
            this.f35259c.a(diagnosticsHandler);
        }

        @Override
        public DataResourceConsumer getDataResourceConsumer() {
            if (this.consumeDataResources) {
                return this;
            }
            return null;
        }

        @Override
        public Path internalGetOutputPath() {
            return this.f35259c.f48762a;
        }

        public ArchiveConsumer(Path path, boolean z10) {
            this(path, null, z10);
        }

        public ArchiveConsumer(Path path, DexFilePerClassFileConsumer dexFilePerClassFileConsumer) {
            this(path, dexFilePerClassFileConsumer, false);
        }

        public ArchiveConsumer(Path path, DexFilePerClassFileConsumer dexFilePerClassFileConsumer, boolean z10) {
            super(dexFilePerClassFileConsumer);
            C7692i3 c7692i3 = new C7692i3(path);
            this.f35259c = c7692i3;
            this.consumeDataResources = z10;
            c7692i3.open();
            if (getDataResourceConsumer() != null) {
                c7692i3.open();
            }
        }

        @Override
        public void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35259c.a(dataDirectoryResource.getName(), diagnosticsHandler);
        }

        @Override
        public void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35259c.a(dataEntryResource.getName(), dataEntryResource, diagnosticsHandler);
        }
    }

    public static class DirectoryConsumer extends ForwardingConsumer implements DataResourceConsumer, S {

        static final boolean f35260d = true;

        private final C6047Us f35261c;
        protected final boolean consumeDataResouces;

        public DirectoryConsumer(Path path) {
            this(path, null, false);
        }

        private static String a(String str) {
            if (!f35260d && (str == null || !C4932Bl.y(str))) {
                throw new AssertionError();
            }
            return C4932Bl.h(str) + ".dex";
        }

        public static void writeResources(Path path, List<ProgramResource> list, Map<Resource, String> map) throws IOException, ResourceException {
            C8950pe c8950pe = new C8950pe(C8950pe.f51579c);
            try {
                for (ProgramResource programResource : list) {
                    Path resolve = path.resolve(ArchiveConsumer.a(map.get(programResource)));
                    InputStream byteStream = programResource.getByteStream();
                    if (byteStream != null) {
                        c8950pe.f51581b.addFirst(byteStream);
                    }
                    byte[] a10 = AbstractC6706c8.a(byteStream);
                    Files.createDirectories(resolve.getParent(), new FileAttribute[0]);
                    C6169Ww.a(resolve, (OutputStream) null, a10);
                }
                c8950pe.close();
            } catch (Throwable th2) {
                try {
                    c8950pe.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }

        @Override
        public void accept(String str, ByteDataView byteDataView, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
            super.accept(str, byteDataView, set, diagnosticsHandler);
            this.f35261c.a(byteDataView, a(str), diagnosticsHandler);
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            super.finished(diagnosticsHandler);
        }

        @Override
        public Path internalGetOutputPath() {
            return this.f35261c.f44887a;
        }

        public DirectoryConsumer(Path path, boolean z10) {
            this(path, null, z10);
        }

        public DirectoryConsumer(Path path, DexFilePerClassFileConsumer dexFilePerClassFileConsumer) {
            this(path, dexFilePerClassFileConsumer, false);
        }

        @Override
        public void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35261c.a(dataDirectoryResource.getName(), diagnosticsHandler);
        }

        public DirectoryConsumer(Path path, DexFilePerClassFileConsumer dexFilePerClassFileConsumer, boolean z10) {
            super(dexFilePerClassFileConsumer);
            this.f35261c = new C6047Us(path);
            this.consumeDataResouces = z10;
        }

        @Override
        public void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35261c.a(dataEntryResource.getName(), dataEntryResource, diagnosticsHandler);
        }
    }

    public static class ForwardingConsumer implements DexFilePerClassFileConsumer {

        private static final ForwardingConsumer f35262b = new ForwardingConsumer(null);

        private final DexFilePerClassFileConsumer f35263a;

        public ForwardingConsumer(DexFilePerClassFileConsumer dexFilePerClassFileConsumer) {
            this.f35263a = dexFilePerClassFileConsumer;
        }

        @Override
        public void accept(String str, ByteDataView byteDataView, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
            DexFilePerClassFileConsumer dexFilePerClassFileConsumer = this.f35263a;
            if (dexFilePerClassFileConsumer != null) {
                dexFilePerClassFileConsumer.accept(str, byteDataView, set, diagnosticsHandler);
            }
        }

        @Override
        public boolean combineSyntheticClassesWithPrimaryClass() {
            DexFilePerClassFileConsumer dexFilePerClassFileConsumer = this.f35263a;
            if (dexFilePerClassFileConsumer == null) {
                return true;
            }
            return dexFilePerClassFileConsumer.combineSyntheticClassesWithPrimaryClass();
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            DexFilePerClassFileConsumer dexFilePerClassFileConsumer = this.f35263a;
            if (dexFilePerClassFileConsumer != null) {
                dexFilePerClassFileConsumer.finished(diagnosticsHandler);
            }
        }

        @Override
        public DataResourceConsumer getDataResourceConsumer() {
            DexFilePerClassFileConsumer dexFilePerClassFileConsumer = this.f35263a;
            if (dexFilePerClassFileConsumer != null) {
                return dexFilePerClassFileConsumer.getDataResourceConsumer();
            }
            return null;
        }
    }

    static DexFilePerClassFileConsumer emptyConsumer() {
        return ForwardingConsumer.f35262b;
    }

    default void accept(String str, ByteDataView byteDataView, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
        accept(str, byteDataView.copyByteData(), set, diagnosticsHandler);
    }

    @Override
    default ByteBuffer acquireByteBuffer(int i10) {
        return super.acquireByteBuffer(i10);
    }

    default boolean combineSyntheticClassesWithPrimaryClass() {
        return true;
    }

    @Override
    default void releaseByteBuffer(ByteBuffer byteBuffer) {
        super.releaseByteBuffer(byteBuffer);
    }

    @Deprecated
    default void accept(String str, byte[] bArr, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
        diagnosticsHandler.error(new StringDiagnostic("Deprecated use of DexFilePerClassFileConsumer::accept(..., byte[], ...)"));
    }
}
