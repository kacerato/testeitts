package com.android.tools.r8.internal;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;

public final class C6047Us implements InterfaceC7365g50 {

    public final Path f44887a;

    public final PathOrigin f44888b;

    public C6047Us(Path path) {
        this.f44887a = path;
        this.f44888b = new PathOrigin(path);
    }

    @Override
    public final void a(DiagnosticsHandler diagnosticsHandler) {
    }

    @Override
    public final PathOrigin getOrigin() {
        return this.f44888b;
    }

    @Override
    public final Path getPath() {
        return this.f44887a;
    }

    @Override
    public final void open() {
    }

    @Override
    public final void a(String str, DiagnosticsHandler diagnosticsHandler) {
        Path resolve = this.f44887a.resolve(str.replace('/', File.separatorChar));
        try {
            Files.createDirectories(resolve, new FileAttribute[0]);
        } catch (IOException e10) {
            diagnosticsHandler.error(new ExceptionDiagnostic(e10, new PathOrigin(resolve)));
        }
    }

    @Override
    public final void a(String str, DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
        try {
            InputStream byteStream = dataEntryResource.getByteStream();
            try {
                a(ByteDataView.of(AbstractC6706c8.a(byteStream)), str, diagnosticsHandler);
                byteStream.close();
            } catch (Throwable th2) {
                if (byteStream != null) {
                    try {
                        byteStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (ResourceException e10) {
            diagnosticsHandler.error(new StringDiagnostic("Failed to open input: " + e10.getMessage(), dataEntryResource.getOrigin()));
        } catch (IOException e11) {
            diagnosticsHandler.error(new ExceptionDiagnostic(e11, dataEntryResource.getOrigin()));
        }
    }

    @Override
    public final synchronized void a(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
        Path resolve = this.f44887a.resolve(str.replace('/', File.separatorChar));
        try {
            Files.createDirectories(resolve.getParent(), new FileAttribute[0]);
            C6169Ww.a(resolve, (OutputStream) null, byteDataView);
        } catch (IOException e10) {
            diagnosticsHandler.error(new ExceptionDiagnostic(e10, new PathOrigin(resolve)));
        }
    }

    @Override
    public final void a(int i10, String str, ByteDataView byteDataView, DiagnosticsHandler diagnosticsHandler) {
        a(byteDataView, str, diagnosticsHandler);
    }
}
