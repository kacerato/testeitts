package com.android.tools.r8;

import com.android.tools.r8.internal.AbstractC5468Ks;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C6047Us;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C7692i3;
import com.android.tools.r8.internal.C8950pe;
import com.android.tools.r8.internal.InterfaceC7365g50;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.C11673u;
import com.android.tools.r8.utils.ExceptionDiagnostic;
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
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.zip.ZipOutputStream;

public interface DexIndexedConsumer extends ProgramConsumer, ByteBufferProvider {

    public static class ArchiveConsumer extends ForwardingConsumer implements DataResourceConsumer, S {
        protected final boolean consumeDataResources;
        protected final InterfaceC7365g50 outputBuilder;

        public ArchiveConsumer(Path path) {
            this(path, null, false);
        }

        public static void writeResourcesForTesting(Path path, List<ProgramResource> list, Set<DataDirectoryResource> set, Set<DataEntryResource> set2) throws IOException, ResourceException {
            OpenOption[] openOptionArr = {StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING};
            C8950pe c8950pe = new C8950pe(C8950pe.f51579c);
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(Files.newOutputStream(path, openOptionArr)));
                for (int i10 = 0; i10 < list.size(); i10++) {
                    try {
                        ProgramResource programResource = list.get(i10);
                        String a10 = AbstractC5468Ks.a(i10);
                        InputStream byteStream = programResource.getByteStream();
                        if (byteStream != null) {
                            c8950pe.f51581b.addFirst(byteStream);
                        }
                        C11673u.a(zipOutputStream, a10, AbstractC6706c8.a(byteStream), 0);
                    } finally {
                    }
                }
                Iterator<DataDirectoryResource> it = set.iterator();
                while (it.hasNext()) {
                    C11673u.a(zipOutputStream, it.next().getName(), new byte[0], 0);
                }
                for (DataEntryResource dataEntryResource : set2) {
                    String name = dataEntryResource.getName();
                    InputStream byteStream2 = dataEntryResource.getByteStream();
                    if (byteStream2 != null) {
                        c8950pe.f51581b.addFirst(byteStream2);
                    }
                    C11673u.a(zipOutputStream, name, AbstractC6706c8.a(byteStream2), 0);
                }
                zipOutputStream.close();
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
        public void accept(int i10, ByteDataView byteDataView, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
            super.accept(i10, byteDataView, set, diagnosticsHandler);
            this.outputBuilder.a(i10, AbstractC5468Ks.a(i10), byteDataView, diagnosticsHandler);
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            super.finished(diagnosticsHandler);
            this.outputBuilder.a(diagnosticsHandler);
        }

        @Override
        public DataResourceConsumer getDataResourceConsumer() {
            if (this.consumeDataResources) {
                return this;
            }
            return null;
        }

        public Origin getOrigin() {
            return this.outputBuilder.getOrigin();
        }

        @Override
        public Path internalGetOutputPath() {
            return this.outputBuilder.getPath();
        }

        public ArchiveConsumer(Path path, boolean z10) {
            this(path, null, z10);
        }

        public ArchiveConsumer(Path path, DexIndexedConsumer dexIndexedConsumer) {
            this(path, dexIndexedConsumer, false);
        }

        public ArchiveConsumer(Path path, DexIndexedConsumer dexIndexedConsumer, boolean z10) {
            super(dexIndexedConsumer);
            C7692i3 c7692i3 = new C7692i3(path);
            this.outputBuilder = c7692i3;
            this.consumeDataResources = z10;
            c7692i3.open();
            if (getDataResourceConsumer() != null) {
                c7692i3.open();
            }
        }

        @Override
        public void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler) {
            this.outputBuilder.a(dataDirectoryResource.getName(), diagnosticsHandler);
        }

        @Override
        public void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
            this.outputBuilder.a(dataEntryResource.getName(), dataEntryResource, diagnosticsHandler);
        }
    }

    public static class DirectoryConsumer extends ForwardingConsumer implements DataResourceConsumer, S {

        private final Path f35264c;
        protected final boolean consumeDataResouces;

        private boolean f35265d;

        private final C6047Us f35266e;

        public DirectoryConsumer(Path path) {
            this(path, null, false);
        }

        public static void a(Path path) {
            Stream<Path> list = Files.list(path);
            try {
                for (Path path2 : (List) list.collect(Collectors.toList())) {
                    if (C6169Ww.c(path2)) {
                        Files.delete(path2);
                    }
                }
                list.close();
            } catch (Throwable th2) {
                if (list != null) {
                    try {
                        list.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }

        public static void writeResources(Path path, List<ProgramResource> list) throws IOException, ResourceException {
            a(path);
            C8950pe c8950pe = new C8950pe(C8950pe.f51579c);
            for (int i10 = 0; i10 < list.size(); i10++) {
                try {
                    ProgramResource programResource = list.get(i10);
                    Path resolve = path.resolve(AbstractC5468Ks.a(i10));
                    InputStream byteStream = programResource.getByteStream();
                    if (byteStream != null) {
                        c8950pe.f51581b.addFirst(byteStream);
                    }
                    byte[] a10 = AbstractC6706c8.a(byteStream);
                    Files.createDirectories(resolve.getParent(), new FileAttribute[0]);
                    C6169Ww.a(resolve, (OutputStream) null, a10);
                } catch (Throwable th2) {
                    try {
                        c8950pe.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            c8950pe.close();
        }

        @Override
        public void accept(int i10, ByteDataView byteDataView, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
            super.accept(i10, byteDataView, set, diagnosticsHandler);
            try {
                synchronized (this) {
                    if (!this.f35265d) {
                        this.f35265d = true;
                        a(this.f35264c);
                    }
                }
            } catch (IOException e10) {
                diagnosticsHandler.error(new ExceptionDiagnostic(e10, new PathOrigin(this.f35264c)));
            }
            this.f35266e.a(byteDataView, AbstractC5468Ks.a(i10), diagnosticsHandler);
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            super.finished(diagnosticsHandler);
            this.f35266e.getClass();
        }

        @Override
        public DataResourceConsumer getDataResourceConsumer() {
            if (this.consumeDataResouces) {
                return this;
            }
            return null;
        }

        @Override
        public Path internalGetOutputPath() {
            return this.f35266e.f44887a;
        }

        public DirectoryConsumer(Path path, boolean z10) {
            this(path, null, z10);
        }

        public DirectoryConsumer(Path path, DexIndexedConsumer dexIndexedConsumer) {
            this(path, dexIndexedConsumer, false);
        }

        public DirectoryConsumer(Path path, DexIndexedConsumer dexIndexedConsumer, boolean z10) {
            super(dexIndexedConsumer);
            this.f35265d = false;
            this.f35264c = path;
            this.f35266e = new C6047Us(path);
            this.consumeDataResouces = z10;
        }

        @Override
        public void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35266e.a(dataDirectoryResource.getName(), diagnosticsHandler);
        }

        @Override
        public void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35266e.a(dataEntryResource.getName(), dataEntryResource, diagnosticsHandler);
        }
    }

    public static class ForwardingConsumer implements DexIndexedConsumer {

        private static final ForwardingConsumer f35267b = new ForwardingConsumer(null);

        private final DexIndexedConsumer f35268a;

        public ForwardingConsumer(DexIndexedConsumer dexIndexedConsumer) {
            this.f35268a = dexIndexedConsumer;
        }

        @Override
        public void accept(int i10, ByteDataView byteDataView, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
            DexIndexedConsumer dexIndexedConsumer = this.f35268a;
            if (dexIndexedConsumer != null) {
                dexIndexedConsumer.accept(i10, byteDataView, set, diagnosticsHandler);
            }
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            DexIndexedConsumer dexIndexedConsumer = this.f35268a;
            if (dexIndexedConsumer != null) {
                dexIndexedConsumer.finished(diagnosticsHandler);
            }
        }

        @Override
        public DataResourceConsumer getDataResourceConsumer() {
            DexIndexedConsumer dexIndexedConsumer = this.f35268a;
            if (dexIndexedConsumer != null) {
                return dexIndexedConsumer.getDataResourceConsumer();
            }
            return null;
        }
    }

    static DexIndexedConsumer emptyConsumer() {
        return ForwardingConsumer.f35267b;
    }

    default void accept(int i10, ByteDataView byteDataView, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
        accept(i10, byteDataView.copyByteData(), set, diagnosticsHandler);
    }

    @Override
    default ByteBuffer acquireByteBuffer(int i10) {
        return super.acquireByteBuffer(i10);
    }

    @Override
    default void releaseByteBuffer(ByteBuffer byteBuffer) {
        super.releaseByteBuffer(byteBuffer);
    }

    @Deprecated
    default void accept(int i10, byte[] bArr, Set<String> set, DiagnosticsHandler diagnosticsHandler) {
        diagnosticsHandler.error(new StringDiagnostic("Deprecated use of DexIndexedConsumer::accept(..., byte[], ...)"));
    }
}
