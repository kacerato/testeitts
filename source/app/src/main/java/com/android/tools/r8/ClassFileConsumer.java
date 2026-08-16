package com.android.tools.r8;

import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C6047Us;
import com.android.tools.r8.internal.C7692i3;
import com.android.tools.r8.internal.C8950pe;
import com.android.tools.r8.utils.C11673u;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipOutputStream;

public interface ClassFileConsumer extends ProgramConsumer {

    public static class ArchiveConsumer extends ForwardingConsumer implements DataResourceConsumer, S {

        private final C7692i3 f35217c;
        protected final boolean consumeDataResources;

        public ArchiveConsumer(Path path) {
            this(path, null, false);
        }

        public static void writeResourcesForTesting(Path path, List<ProgramResource> list, Set<DataDirectoryResource> set, Set<DataEntryResource> set2) throws IOException, ResourceException {
            OpenOption[] openOptionArr = {StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING};
            C8950pe c8950pe = new C8950pe(C8950pe.f51579c);
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(Files.newOutputStream(path, openOptionArr)));
                try {
                    C11673u.a(list, set, set2, c8950pe, zipOutputStream);
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
        public void accept(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
            super.accept(byteDataView, str, diagnosticsHandler);
            C7692i3 c7692i3 = this.f35217c;
            String i10 = C4932Bl.i(str);
            synchronized (c7692i3) {
                c7692i3.a(i10, byteDataView, true);
            }
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            super.finished(diagnosticsHandler);
            this.f35217c.a(diagnosticsHandler);
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
            return this.f35217c.f48762a;
        }

        public ArchiveConsumer(Path path, boolean z10) {
            this(path, null, z10);
        }

        public ArchiveConsumer(Path path, ClassFileConsumer classFileConsumer) {
            this(path, classFileConsumer, false);
        }

        public ArchiveConsumer(Path path, ClassFileConsumer classFileConsumer, boolean z10) {
            super(classFileConsumer);
            C7692i3 c7692i3 = new C7692i3(path);
            this.f35217c = c7692i3;
            this.consumeDataResources = z10;
            c7692i3.open();
            if (getDataResourceConsumer() != null) {
                c7692i3.open();
            }
        }

        @Override
        public void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35217c.a(dataDirectoryResource.getName(), diagnosticsHandler);
        }

        @Override
        public void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35217c.a(dataEntryResource.getName(), dataEntryResource, diagnosticsHandler);
        }
    }

    public static class DirectoryConsumer extends ForwardingConsumer implements S {

        private final C6047Us f35218c;
        protected final boolean consumeDataResouces;

        public DirectoryConsumer(Path path) {
            this(path, null, false);
        }

        @Override
        public void accept(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
            super.accept(byteDataView, str, diagnosticsHandler);
            this.f35218c.a(byteDataView, C4932Bl.i(str), diagnosticsHandler);
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            super.finished(diagnosticsHandler);
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
            return this.f35218c.f44887a;
        }

        public DirectoryConsumer(Path path, boolean z10) {
            this(path, null, z10);
        }

        public DirectoryConsumer(Path path, ClassFileConsumer classFileConsumer) {
            this(path, classFileConsumer, false);
        }

        @Override
        public void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35218c.a(dataDirectoryResource.getName(), diagnosticsHandler);
        }

        public DirectoryConsumer(Path path, ClassFileConsumer classFileConsumer, boolean z10) {
            super(classFileConsumer);
            this.f35218c = new C6047Us(path);
            this.consumeDataResouces = z10;
        }

        @Override
        public void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
            this.f35218c.a(dataEntryResource.getName(), dataEntryResource, diagnosticsHandler);
        }
    }

    public static class ForwardingConsumer implements ClassFileConsumer {

        private static final ForwardingConsumer f35219b = new ForwardingConsumer(null);

        private final ClassFileConsumer f35220a;

        public ForwardingConsumer(ClassFileConsumer classFileConsumer) {
            this.f35220a = classFileConsumer;
        }

        @Override
        public void accept(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
            ClassFileConsumer classFileConsumer = this.f35220a;
            if (classFileConsumer != null) {
                classFileConsumer.accept(byteDataView, str, diagnosticsHandler);
            }
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            ClassFileConsumer classFileConsumer = this.f35220a;
            if (classFileConsumer != null) {
                classFileConsumer.finished(diagnosticsHandler);
            }
        }

        @Override
        public DataResourceConsumer getDataResourceConsumer() {
            ClassFileConsumer classFileConsumer = this.f35220a;
            if (classFileConsumer != null) {
                return classFileConsumer.getDataResourceConsumer();
            }
            return null;
        }
    }

    static ClassFileConsumer emptyConsumer() {
        return ForwardingConsumer.f35219b;
    }

    void accept(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler);
}
