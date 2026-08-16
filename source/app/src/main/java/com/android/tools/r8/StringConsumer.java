package com.android.tools.r8;

import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;

public interface StringConsumer extends H {

    public static class EmptyConsumer implements StringConsumer {

        private static final EmptyConsumer f35525a = new EmptyConsumer();

        @Override
        public void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
        }
    }

    public static class FileConsumer extends ForwardingConsumer {

        static final boolean f35526f = true;

        private final Path f35527b;

        private Charset f35528c;

        private C11650u0 f35529d;

        private boolean f35530e;

        public FileConsumer(Path path) {
            this(path, null);
        }

        private void a(DiagnosticsHandler diagnosticsHandler) {
            if (this.f35529d != null) {
                return;
            }
            PathOrigin pathOrigin = new PathOrigin(this.f35527b);
            try {
                Path parent = this.f35527b.getParent();
                if (parent != null && !parent.toFile().exists()) {
                    Files.createDirectories(parent, new FileAttribute[0]);
                }
                this.f35529d = new C11650u0(pathOrigin, Files.newBufferedWriter(this.f35527b, this.f35528c, new OpenOption[0]));
            } catch (IOException e10) {
                this.f35530e = true;
                diagnosticsHandler.error(new ExceptionDiagnostic(e10, pathOrigin));
            }
        }

        @Override
        public void accept(String str, DiagnosticsHandler diagnosticsHandler) {
            super.accept(str, diagnosticsHandler);
            if (this.f35530e) {
                return;
            }
            a(diagnosticsHandler);
            C11650u0 c11650u0 = this.f35529d;
            if (c11650u0 != null) {
                c11650u0.accept(str, diagnosticsHandler);
            }
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            super.finished(diagnosticsHandler);
            if (this.f35530e) {
                return;
            }
            a(diagnosticsHandler);
            C11650u0 c11650u0 = this.f35529d;
            if (c11650u0 != null) {
                c11650u0.finished(diagnosticsHandler);
                this.f35529d = null;
            }
        }

        public Charset getEncoding() {
            return this.f35528c;
        }

        public Path getOutputPath() {
            return this.f35527b;
        }

        public void setEncoding(Charset charset) {
            if (!f35526f && charset == null) {
                throw new AssertionError();
            }
            if (this.f35529d != null) {
                throw new IllegalStateException("Invalid call to set encoding after file stream is opened");
            }
            this.f35528c = charset;
        }

        public FileConsumer(Path path, StringConsumer stringConsumer) {
            super(stringConsumer);
            this.f35528c = StandardCharsets.UTF_8;
            this.f35529d = null;
            this.f35530e = false;
            this.f35527b = path;
        }
    }

    public static class ForwardingConsumer implements StringConsumer {

        private final StringConsumer f35531a;

        public ForwardingConsumer(StringConsumer stringConsumer) {
            this.f35531a = stringConsumer;
        }

        @Override
        public void accept(String str, DiagnosticsHandler diagnosticsHandler) {
            StringConsumer stringConsumer = this.f35531a;
            if (stringConsumer != null) {
                stringConsumer.accept(str, diagnosticsHandler);
            }
        }

        @Override
        public void finished(DiagnosticsHandler diagnosticsHandler) {
            StringConsumer stringConsumer = this.f35531a;
            if (stringConsumer != null) {
                stringConsumer.finished(diagnosticsHandler);
            }
        }
    }

    static EmptyConsumer emptyConsumer() {
        return EmptyConsumer.f35525a;
    }

    void accept(String str, DiagnosticsHandler diagnosticsHandler);
}
