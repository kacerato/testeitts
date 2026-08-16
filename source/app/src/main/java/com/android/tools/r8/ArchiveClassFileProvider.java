package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.utils.C11673u;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
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

public class ArchiveClassFileProvider implements ClassFileResourceProvider, Closeable {

    static final boolean f35109f = true;

    private final Path f35110a;

    private final PathOrigin f35111b;

    private final Predicate f35112c;

    private ZipFile f35113d;

    private HashSet f35114e;

    public ArchiveClassFileProvider(Path path) throws IOException {
        this(path, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean c10;
                c10 = ArchiveClassFileProvider.c((String) obj);
                return c10;
            }
        });
    }

    private ZipEntry b(String str) {
        return c().getEntry(AbstractC4281a.a(str, 1, 1) + ".class");
    }

    public static boolean c(String str) {
        return true;
    }

    @Override
    public void close() throws IOException {
        ZipFile zipFile = this.f35113d;
        if (zipFile != null) {
            zipFile.close();
        }
        this.f35113d = null;
        this.f35114e = null;
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) throws IOException {
        close();
    }

    @Override
    public Set<String> getClassDescriptors() {
        c();
        return Collections.unmodifiableSet(this.f35114e);
    }

    @Override
    public ProgramResource getProgramResource(String str) {
        c();
        if (!Collections.unmodifiableSet(this.f35114e).contains(str)) {
            return null;
        }
        ZipFile c10 = c();
        ZipEntry b10 = b(str);
        try {
            InputStream inputStream = c10.getInputStream(b10);
            try {
                ProgramResource fromBytes = ProgramResource.fromBytes(new ArchiveEntryOrigin(b10.getName(), this.f35111b), ProgramResource.Kind.CF, AbstractC6706c8.a(inputStream), Collections.singleton(str));
                inputStream.close();
                return fromBytes;
            } finally {
            }
        } catch (IOException unused) {
            throw new C5325If(this.f35111b, "Failed to read '" + str, null);
        }
    }

    public ArchiveClassFileProvider(Path path, Predicate<String> predicate) throws IOException {
        this.f35113d = null;
        this.f35114e = null;
        if (!f35109f && !C6169Ww.a(path)) {
            throw new AssertionError();
        }
        this.f35110a = path;
        this.f35112c = predicate;
        this.f35111b = new PathOrigin(path);
        c();
    }

    private ZipFile c() {
        if (this.f35113d == null) {
            try {
                d();
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
        return this.f35113d;
    }

    private void d() {
        boolean z10 = f35109f;
        if (!z10 && this.f35113d != null) {
            throw new AssertionError();
        }
        if (!z10 && this.f35114e != null) {
            throw new AssertionError();
        }
        try {
            this.f35113d = C6169Ww.a(this.f35110a.toFile(), StandardCharsets.UTF_8);
            this.f35114e = new HashSet();
            Enumeration<? extends ZipEntry> entries = this.f35113d.entries();
            while (entries.hasMoreElements()) {
                String name = entries.nextElement().getName();
                if (C11673u.a(name) && this.f35112c.test(name)) {
                    this.f35114e.add(C4932Bl.x(name));
                }
            }
        } catch (IOException e10) {
            if (!Files.exists(this.f35110a, new LinkOption[0])) {
                throw new NoSuchFileException(this.f35110a.toString());
            }
            throw new UncheckedIOException(this.f35110a.toString(), e10);
        }
    }
}
