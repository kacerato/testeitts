package com.android.tools.r8.utils;

import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6362a40;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.P0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.function.Consumer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

public class ArchiveResourceProvider implements ProgramResourceProvider, DataResourceProvider {

    static final boolean f58528d = true;

    private final PathOrigin f58529a;

    private final P0 f58530b;

    private final boolean f58531c;

    public ArchiveResourceProvider(P0 p02, boolean z10) {
        if (!f58528d && !C6169Ww.a(p02.f56877a)) {
            throw new AssertionError();
        }
        this.f58529a = new PathOrigin(p02.f56877a);
        this.f58530b = p02;
        this.f58531c = z10;
    }

    private ArrayList a() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            ZipFile a10 = C6169Ww.a(this.f58530b.f56877a.toFile(), StandardCharsets.UTF_8);
            try {
                Enumeration<? extends ZipEntry> entries = a10.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    InputStream inputStream = a10.getInputStream(nextElement);
                    try {
                        String name = nextElement.getName();
                        ArchiveEntryOrigin archiveEntryOrigin = new ArchiveEntryOrigin(name, this.f58529a);
                        if (this.f58530b.a(name)) {
                            boolean z10 = C11673u.f58640a;
                            if (C10656zq0.f(name).endsWith(".dex")) {
                                if (!this.f58531c) {
                                    arrayList.add(new C6362a40(archiveEntryOrigin, ProgramResource.Kind.DEX, AbstractC6706c8.a(inputStream), null));
                                }
                            } else if (C11673u.a(name)) {
                                arrayList2.add(new C6362a40(archiveEntryOrigin, ProgramResource.Kind.CF, AbstractC6706c8.a(inputStream), Collections.singleton(C4932Bl.x(name))));
                            }
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } finally {
                    }
                }
                a10.close();
                if (arrayList.isEmpty() || arrayList2.isEmpty()) {
                    return !arrayList.isEmpty() ? arrayList : arrayList2;
                }
                throw new C5325If(this.f58529a, "Cannot create android app from an archive '" + ((Object) this.f58530b) + "' containing both DEX and Java-bytecode content", null);
            } catch (Throwable th2) {
                try {
                    a10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (ZipException e10) {
            P0 p02 = this.f58530b;
            throw new C5325If("Zip error while reading '" + ((Object) p02) + "': " + e10.getMessage(), e10);
        }
    }

    public static ArchiveResourceProvider fromArchive(Path path, boolean z10) {
        int i10 = AbstractC7552hC.f48487c;
        return new ArchiveResourceProvider(new P0(path, C6190Xe0.f45779e, Origin.unknown(), Position.UNKNOWN), z10);
    }

    @Override
    public void accept(DataResourceProvider.Visitor visitor) throws ResourceException {
        try {
            ZipFile a10 = C6169Ww.a(this.f58530b.f56877a.toFile(), StandardCharsets.UTF_8);
            try {
                Enumeration<? extends ZipEntry> entries = a10.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    String name = nextElement.getName();
                    if (this.f58530b.a(name) && !C11673u.a(name) && (!C10656zq0.f(name).endsWith(".dex") || this.f58531c)) {
                        if (nextElement.isDirectory()) {
                            visitor.visit(DataDirectoryResource.fromZip(a10, nextElement));
                        } else {
                            visitor.visit(DataEntryResource.fromZip(a10, nextElement));
                        }
                    }
                }
                a10.close();
            } catch (Throwable th2) {
                try {
                    a10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (ZipException e10) {
            PathOrigin pathOrigin = this.f58529a;
            P0 p02 = this.f58530b;
            throw new ResourceException(pathOrigin, new C5325If("Zip error while reading '" + ((Object) p02) + "': " + e10.getMessage(), e10));
        } catch (IOException e11) {
            PathOrigin pathOrigin2 = this.f58529a;
            P0 p03 = this.f58530b;
            throw new ResourceException(pathOrigin2, new C5325If("I/O exception while reading '" + ((Object) p03) + "': " + e11.getMessage(), e11));
        }
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) throws IOException {
        super.finished(diagnosticsHandler);
    }

    @Override
    public DataResourceProvider getDataResourceProvider() {
        return this;
    }

    public Origin getOrigin() {
        return this.f58529a;
    }

    @Override
    public Collection<ProgramResource> getProgramResources() throws ResourceException {
        try {
            return a();
        } catch (IOException e10) {
            throw new ResourceException(this.f58529a, e10);
        }
    }

    public void accept(Consumer<ProgramResource> consumer) throws ResourceException {
        try {
            ZipFile a10 = C6169Ww.a(this.f58530b.f56877a.toFile(), StandardCharsets.UTF_8);
            try {
                Enumeration<? extends ZipEntry> entries = a10.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    String name = nextElement.getName();
                    if (this.f58530b.a(name)) {
                        if (!C11673u.a(name)) {
                            if (C10656zq0.f(name).endsWith(".dex") && !this.f58531c) {
                            }
                        }
                        ArchiveEntryOrigin archiveEntryOrigin = new ArchiveEntryOrigin(name, this.f58529a);
                        InputStream inputStream = a10.getInputStream(nextElement);
                        try {
                            if (C10656zq0.f(name).endsWith(".dex")) {
                                consumer.accept(new C6362a40(archiveEntryOrigin, ProgramResource.Kind.DEX, AbstractC6706c8.a(inputStream), null));
                            } else if (C11673u.a(name)) {
                                consumer.accept(new C6362a40(archiveEntryOrigin, ProgramResource.Kind.CF, AbstractC6706c8.a(inputStream), Collections.singleton(C4932Bl.x(name))));
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } finally {
                        }
                    }
                }
                a10.close();
            } finally {
            }
        } catch (ZipException e10) {
            PathOrigin pathOrigin = this.f58529a;
            P0 p02 = this.f58530b;
            throw new ResourceException(pathOrigin, new C5325If("Zip error while reading '" + ((Object) p02) + "': " + e10.getMessage(), e10));
        } catch (IOException e11) {
            PathOrigin pathOrigin2 = this.f58529a;
            P0 p03 = this.f58530b;
            throw new ResourceException(pathOrigin2, new C5325If("I/O exception while reading '" + ((Object) p03) + "': " + e11.getMessage(), e11));
        }
    }
}
