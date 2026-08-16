package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.C11673u;
import com.android.tools.r8.utils.InterfaceC11674v;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ZI implements ClassFileResourceProvider, DataResourceProvider, AutoCloseable {

    public static final boolean f46213e = true;

    public final Path f46214a;

    public final PathOrigin f46215b;

    public final HashSet f46216c;

    public ZipFile f46217d;

    public ZI(Path path) {
        this(path, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ZI.c((String) obj);
            }
        });
    }

    public static void a(DataResourceProvider.Visitor visitor, ZipFile zipFile, ZipEntry zipEntry) {
        if (C11673u.a(zipEntry.getName())) {
            return;
        }
        if (zipEntry.isDirectory()) {
            visitor.visit(DataDirectoryResource.fromZip(zipFile, zipEntry));
        } else {
            visitor.visit(DataEntryResource.fromZip(zipFile, zipEntry));
        }
    }

    public static boolean c(String str) {
        return true;
    }

    @Override
    public final void accept(final DataResourceProvider.Visitor visitor) {
        try {
            C11673u.a(this.f46214a, new InterfaceC11674v() {
                @Override
                public final void a(ZipFile zipFile, ZipEntry zipEntry) {
                    ZI.a(DataResourceProvider.Visitor.this, zipFile, zipEntry);
                }
            });
        } catch (IOException e10) {
            PathOrigin pathOrigin = this.f46215b;
            Path path = this.f46214a;
            throw new ResourceException(pathOrigin, new C5325If("I/O exception while reading '" + ((Object) path) + "': " + e10.getMessage(), e10));
        }
    }

    public final ZipEntry b(String str) {
        return c().getEntry(AbstractC4281a.a(str, 1, 1) + ".class");
    }

    @Override
    public final void close() {
        ZipFile zipFile = this.f46217d;
        if (zipFile != null) {
            zipFile.close();
            this.f46217d = null;
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        close();
    }

    @Override
    public final Set getClassDescriptors() {
        return Collections.unmodifiableSet(this.f46216c);
    }

    @Override
    public final DataResourceProvider getDataResourceProvider() {
        return this;
    }

    @Override
    public final ProgramResource getProgramResource(String str) {
        if (!this.f46216c.contains(str)) {
            return null;
        }
        try {
            ZipEntry b10 = b(str);
            InputStream inputStream = c().getInputStream(b10);
            try {
                ProgramResource fromBytes = ProgramResource.fromBytes(new ArchiveEntryOrigin(b10.getName(), this.f46215b), ProgramResource.Kind.CF, AbstractC6706c8.a(inputStream), Collections.singleton(str));
                inputStream.close();
                return fromBytes;
            } finally {
            }
        } catch (IOException unused) {
            throw new C5325If(this.f46215b, "Failed to read '" + str, null);
        }
    }

    public ZI(Path path, Predicate predicate) {
        this.f46216c = new HashSet();
        this.f46217d = null;
        if (!f46213e && !C6169Ww.a(path)) {
            throw new AssertionError();
        }
        this.f46214a = path;
        this.f46215b = new PathOrigin(path);
        Enumeration<? extends ZipEntry> entries = c().entries();
        while (entries.hasMoreElements()) {
            String name = entries.nextElement().getName();
            if (C11673u.a(name) && predicate.test(name)) {
                this.f46216c.add(C4932Bl.x(name));
            }
        }
    }

    public final ZipFile c() {
        if (this.f46217d == null) {
            try {
                this.f46217d = C6169Ww.a(this.f46214a.toFile(), StandardCharsets.UTF_8);
            } catch (IOException e10) {
                if (!Files.exists(this.f46214a, new LinkOption[0])) {
                    throw new NoSuchFileException(this.f46214a.toString());
                }
                throw e10;
            }
        }
        return this.f46217d;
    }
}
