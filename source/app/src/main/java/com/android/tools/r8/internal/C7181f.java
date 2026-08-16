package com.android.tools.r8.internal;

import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
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
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

public final class C7181f implements ProgramResourceProvider {

    public static final boolean f47816c = true;

    public final ArchiveEntryOrigin f47817a;

    public final Path f47818b;

    public C7181f(Path path) {
        if (!f47816c && !C6169Ww.a(path)) {
            throw new AssertionError();
        }
        this.f47817a = new ArchiveEntryOrigin("classes.jar", new PathOrigin(path));
        this.f47818b = path;
    }

    public final ArrayList a(ZipInputStream zipInputStream) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                return arrayList;
            }
            String name = nextEntry.getName();
            if (C11673u.a(name)) {
                arrayList.add(new C6362a40(new ArchiveEntryOrigin(name, this.f47817a), ProgramResource.Kind.CF, AbstractC6706c8.a(zipInputStream), Collections.singleton(C4932Bl.x(name))));
            }
        }
    }

    @Override
    public final DataResourceProvider getDataResourceProvider() {
        return null;
    }

    @Override
    public final Collection getProgramResources() {
        try {
            return a();
        } catch (IOException e10) {
            throw new ResourceException(this.f47817a, e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
    
        r1 = new java.util.zip.ZipInputStream(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        r2 = a(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0038, code lost:
    
        if (r3 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003a, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r2 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        return java.util.Collections.EMPTY_LIST;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0066, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0042, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004b, code lost:
    
        throw r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List a() {
        try {
            ZipFile a10 = C6169Ww.a(this.f47818b.toFile(), StandardCharsets.UTF_8);
            try {
                Enumeration<? extends ZipEntry> entries = a10.entries();
                while (true) {
                    if (!entries.hasMoreElements()) {
                        ArrayList arrayList = null;
                        break;
                    }
                    ZipEntry nextElement = entries.nextElement();
                    InputStream inputStream = a10.getInputStream(nextElement);
                    try {
                        if (nextElement.getName().equals("classes.jar")) {
                            break;
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } finally {
                    }
                }
            } catch (Throwable th2) {
                try {
                    a10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (ZipException e10) {
            Path path = this.f47818b;
            throw new C5325If("Zip error while reading '" + ((Object) path) + "': " + e10.getMessage(), e10);
        }
    }
}
