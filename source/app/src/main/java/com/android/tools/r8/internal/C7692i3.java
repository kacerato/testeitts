package com.android.tools.r8.internal;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.C11673u;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipOutputStream;

public final class C7692i3 implements InterfaceC7365g50 {

    public static final boolean f48761i = true;

    public final Path f48762a;

    public final PathOrigin f48763b;

    public ZipOutputStream f48764c = null;

    public boolean f48765d = false;

    public int f48766e = 0;

    public int f48767f = 0;

    public final HashMap f48768g = new HashMap();

    public final TreeSet f48769h = new TreeSet();

    public C7692i3(Path path) {
        this.f48762a = path;
        this.f48763b = new PathOrigin(path);
    }

    @Override
    public final synchronized void a(DiagnosticsHandler diagnosticsHandler) {
        try {
            boolean z10 = f48761i;
            if (!z10 && this.f48765d) {
                throw new AssertionError();
            }
            int i10 = this.f48766e - 1;
            this.f48766e = i10;
            if (i10 == 0) {
                if (!z10 && !this.f48768g.isEmpty()) {
                    throw new AssertionError();
                }
                Iterator it = this.f48769h.iterator();
                while (it.hasNext()) {
                    C7525h3 c7525h3 = (C7525h3) it.next();
                    if (c7525h3.f48423d) {
                        if (!f48761i && c7525h3.f48422c != null) {
                            throw new AssertionError();
                        }
                        b(c7525h3.f48421b, diagnosticsHandler);
                    } else {
                        if (!f48761i && c7525h3.f48422c == null) {
                            throw new AssertionError();
                        }
                        a(c7525h3.f48421b, c7525h3.f48422c, diagnosticsHandler, c7525h3.f48424e);
                    }
                }
                this.f48765d = true;
                try {
                    ZipOutputStream zipOutputStream = this.f48764c;
                    if (zipOutputStream == null) {
                        zipOutputStream = new ZipOutputStream(new BufferedOutputStream(Files.newOutputStream(this.f48762a, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)));
                        this.f48764c = zipOutputStream;
                    }
                    zipOutputStream.close();
                    this.f48764c = null;
                } catch (IOException e10) {
                    diagnosticsHandler.error(new ExceptionDiagnostic(e10, this.f48763b));
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void b(String str, DiagnosticsHandler diagnosticsHandler) {
        if (str.charAt(str.length() - 1) != '/') {
            str = str + "/";
        }
        ZipEntry zipEntry = new ZipEntry(str);
        zipEntry.setTime(0L);
        synchronized (this) {
            try {
                ZipOutputStream a10 = a();
                a10.putNextEntry(zipEntry);
                a10.closeEntry();
            } catch (IOException e10) {
                ExceptionDiagnostic exceptionDiagnostic = new ExceptionDiagnostic(e10, this.f48763b);
                if ((e10 instanceof ZipException) && e10.getMessage().startsWith("duplicate entry")) {
                    diagnosticsHandler.warning(exceptionDiagnostic);
                } else {
                    diagnosticsHandler.error(exceptionDiagnostic);
                }
            }
        }
    }

    @Override
    public final PathOrigin getOrigin() {
        return this.f48763b;
    }

    @Override
    public final Path getPath() {
        return this.f48762a;
    }

    @Override
    public final synchronized void open() {
        try {
            if (!f48761i && this.f48765d) {
                throw new AssertionError();
            }
            this.f48766e++;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized ZipOutputStream a() {
        try {
            if (!f48761i && this.f48765d) {
                throw new AssertionError();
            }
            ZipOutputStream zipOutputStream = this.f48764c;
            if (zipOutputStream != null) {
                return zipOutputStream;
            }
            ZipOutputStream zipOutputStream2 = new ZipOutputStream(new BufferedOutputStream(Files.newOutputStream(this.f48762a, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)));
            this.f48764c = zipOutputStream2;
            return zipOutputStream2;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final synchronized void a(String str, DiagnosticsHandler diagnosticsHandler) {
        this.f48769h.add(new C7525h3(str, null, true, true));
    }

    @Override
    public final void a(String str, DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
        try {
            InputStream byteStream = dataEntryResource.getByteStream();
            try {
                ByteDataView of2 = ByteDataView.of(AbstractC6706c8.a(byteStream));
                synchronized (this) {
                    try {
                        boolean z10 = AbstractC10358y2.f53922b;
                        if ("resources/new_api_database.ser".equals(str)) {
                            a(str, of2, diagnosticsHandler, true);
                        } else {
                            this.f48769h.add(new C7525h3(str, of2, false, true));
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                byteStream.close();
            } finally {
            }
        } catch (ResourceException e10) {
            diagnosticsHandler.error(new StringDiagnostic("Failed to open input: " + e10.getMessage(), dataEntryResource.getOrigin()));
        } catch (IOException e11) {
            ExceptionDiagnostic exceptionDiagnostic = new ExceptionDiagnostic(e11, this.f48763b);
            if ((e11 instanceof ZipException) && e11.getMessage().startsWith("duplicate entry")) {
                diagnosticsHandler.warning(exceptionDiagnostic);
            } else {
                diagnosticsHandler.error(exceptionDiagnostic);
            }
        }
    }

    @Override
    public final synchronized void a(ByteDataView byteDataView, String str, DiagnosticsHandler diagnosticsHandler) {
        a(str, byteDataView, true);
    }

    public final synchronized void a(String str, ByteDataView byteDataView, boolean z10) {
        this.f48769h.add(new C7525h3(str, ByteDataView.of(byteDataView.copyByteData()), false, z10));
    }

    public final void a(String str, ByteDataView byteDataView, DiagnosticsHandler diagnosticsHandler, boolean z10) {
        int i10;
        try {
            ZipOutputStream a10 = a();
            boolean z11 = AbstractC10358y2.f53922b;
            if (!"resources/new_api_database.ser".equals(str) && z10) {
                i10 = 8;
                boolean z12 = C11673u.f58640a;
                byte[] buffer = byteDataView.getBuffer();
                int offset = byteDataView.getOffset();
                int length = byteDataView.getLength();
                CRC32 crc32 = new CRC32();
                crc32.update(buffer, offset, length);
                ZipEntry zipEntry = new ZipEntry(str);
                zipEntry.setMethod(i10);
                zipEntry.setSize(length);
                zipEntry.setCrc(crc32.getValue());
                zipEntry.setTime(0L);
                a10.putNextEntry(zipEntry);
                a10.write(buffer, offset, length);
                a10.closeEntry();
            }
            i10 = 0;
            boolean z122 = C11673u.f58640a;
            byte[] buffer2 = byteDataView.getBuffer();
            int offset2 = byteDataView.getOffset();
            int length2 = byteDataView.getLength();
            CRC32 crc322 = new CRC32();
            crc322.update(buffer2, offset2, length2);
            ZipEntry zipEntry2 = new ZipEntry(str);
            zipEntry2.setMethod(i10);
            zipEntry2.setSize(length2);
            zipEntry2.setCrc(crc322.getValue());
            zipEntry2.setTime(0L);
            a10.putNextEntry(zipEntry2);
            a10.write(buffer2, offset2, length2);
            a10.closeEntry();
        } catch (IOException e10) {
            ExceptionDiagnostic exceptionDiagnostic = new ExceptionDiagnostic(e10, this.f48763b);
            if ((e10 instanceof ZipException) && e10.getMessage().startsWith("duplicate entry")) {
                diagnosticsHandler.warning(exceptionDiagnostic);
            } else {
                diagnosticsHandler.error(exceptionDiagnostic);
            }
        }
    }

    @Override
    public final synchronized void a(int i10, String str, ByteDataView byteDataView, DiagnosticsHandler diagnosticsHandler) {
        if (i10 == this.f48767f) {
            a(str, byteDataView, diagnosticsHandler, true);
            int i11 = this.f48767f + 1;
            this.f48767f = i11;
            C7525h3 c7525h3 = (C7525h3) this.f48768g.remove(Integer.valueOf(i11));
            while (c7525h3 != null) {
                a(c7525h3.f48421b, c7525h3.f48422c, diagnosticsHandler, c7525h3.f48424e);
                int i12 = this.f48767f + 1;
                this.f48767f = i12;
                c7525h3 = (C7525h3) this.f48768g.remove(Integer.valueOf(i12));
            }
            return;
        }
        this.f48768g.put(Integer.valueOf(i10), new C7525h3(str, ByteDataView.of(byteDataView.copyByteData()), false, true));
    }
}
