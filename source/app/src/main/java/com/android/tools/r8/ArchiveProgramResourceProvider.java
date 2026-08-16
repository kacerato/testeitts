package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.C11673u;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

public class ArchiveProgramResourceProvider implements ProgramResourceProvider {

    static final boolean f35115d = true;

    private final Origin f35116a;

    private final ZipFileSupplier f35117b;

    private final Predicate f35118c;

    public interface ZipFileSupplier {
        ZipFile open() throws IOException;
    }

    public interface a {
        void a(ArchiveEntryOrigin archiveEntryOrigin, InputStream inputStream) throws IOException;
    }

    private ArchiveProgramResourceProvider(Origin origin, ZipFileSupplier zipFileSupplier, Predicate predicate) {
        boolean z10 = f35115d;
        if (!z10 && origin == null) {
            throw new AssertionError();
        }
        if (!z10 && zipFileSupplier == null) {
            throw new AssertionError();
        }
        if (!z10 && predicate == null) {
            throw new AssertionError();
        }
        this.f35116a = origin;
        this.f35117b = zipFileSupplier;
        this.f35118c = predicate;
    }

    public static ZipFile a(Path path) {
        return C6169Ww.a(path.toFile(), StandardCharsets.UTF_8);
    }

    public static ArchiveProgramResourceProvider fromArchive(Path path) {
        return fromArchive(path, new A0());
    }

    public static ArchiveProgramResourceProvider fromSupplier(Origin origin, ZipFileSupplier zipFileSupplier) {
        return fromSupplier(origin, zipFileSupplier, new A0());
    }

    public static boolean includeClassFileEntries(String str) {
        return C11673u.a(str);
    }

    public static boolean includeClassFileOrDexEntries(String str) {
        return C11673u.a(str) || C10656zq0.f(str).endsWith(".dex");
    }

    public static boolean includeDexEntries(String str) {
        boolean z10 = C11673u.f58640a;
        return C10656zq0.f(str).endsWith(".dex");
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) throws IOException {
        super.finished(diagnosticsHandler);
    }

    @Override
    public Collection<ProgramResource> getProgramResources() throws ResourceException {
        try {
            final ArrayList arrayList = new ArrayList();
            final ArrayList arrayList2 = new ArrayList();
            a(new a() {
                @Override
                public final void a(ArchiveEntryOrigin archiveEntryOrigin, InputStream inputStream) {
                    ArchiveProgramResourceProvider.this.a(arrayList, arrayList2, archiveEntryOrigin, inputStream);
                }
            });
            if (!arrayList.isEmpty() && !arrayList2.isEmpty()) {
                throw new C5325If(this.f35116a, "Cannot create android app from an archive containing both DEX and Java-bytecode content.", null);
            }
            return !arrayList.isEmpty() ? arrayList : arrayList2;
        } catch (IOException e10) {
            throw new ResourceException(this.f35116a, e10);
        }
    }

    public static ArchiveProgramResourceProvider fromArchive(final Path path, Predicate<String> predicate) {
        return fromSupplier(new PathOrigin(path), new ZipFileSupplier() {
            @Override
            public final ZipFile open() {
                ZipFile a10;
                a10 = ArchiveProgramResourceProvider.a(Path.this);
                return a10;
            }
        }, predicate);
    }

    public static ArchiveProgramResourceProvider fromSupplier(Origin origin, ZipFileSupplier zipFileSupplier, Predicate<String> predicate) {
        return new ArchiveProgramResourceProvider(origin, zipFileSupplier, predicate);
    }

    public void a(a aVar) throws IOException {
        try {
            ZipFile open = this.f35117b.open();
            try {
                Enumeration<? extends ZipEntry> entries = open.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    InputStream inputStream = open.getInputStream(nextElement);
                    try {
                        aVar.a(new ArchiveEntryOrigin(nextElement.getName(), this.f35116a), inputStream);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } finally {
                    }
                }
                open.close();
            } finally {
            }
        } catch (ZipException e10) {
            throw new C5325If(this.f35116a, "Zip error while reading archive" + e10.getMessage(), e10);
        }
    }

    public void a(List list, List list2, ArchiveEntryOrigin archiveEntryOrigin, InputStream inputStream) {
        String entryName = archiveEntryOrigin.getEntryName();
        if (this.f35118c.test(entryName)) {
            boolean z10 = C11673u.f58640a;
            if (C10656zq0.f(entryName).endsWith(".dex")) {
                list.add(ProgramResource.fromBytes(archiveEntryOrigin, ProgramResource.Kind.DEX, AbstractC6706c8.a(inputStream), null));
            } else if (C11673u.a(entryName)) {
                list2.add(ProgramResource.fromBytes(archiveEntryOrigin, ProgramResource.Kind.CF, AbstractC6706c8.a(inputStream), Collections.singleton(C4932Bl.x(entryName))));
            }
        }
    }
}
