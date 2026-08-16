package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C6169Ww;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.HashSet;
import java.util.Set;

public final class DirectoryClassFileProvider implements ClassFileResourceProvider {

    static final boolean f35270b = true;

    private final Path f35271a;

    private DirectoryClassFileProvider(Path path) {
        this.f35271a = path;
    }

    private void a(Path path, HashSet hashSet) {
        File[] listFiles;
        File file = path.toFile();
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                a(file2.toPath(), hashSet);
            } else {
                Path relativize = this.f35271a.relativize(file2.toPath());
                if (C6169Ww.b(relativize)) {
                    hashSet.add(C4932Bl.a(relativize));
                }
            }
        }
    }

    public static ClassFileResourceProvider fromDirectory(Path path) {
        return new DirectoryClassFileProvider(path.toAbsolutePath());
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) throws IOException {
        super.finished(diagnosticsHandler);
    }

    @Override
    public Set<String> getClassDescriptors() {
        HashSet hashSet = new HashSet();
        a(this.f35271a, hashSet);
        return hashSet;
    }

    @Override
    public ProgramResource getProgramResource(String str) {
        if (!f35270b && !C4932Bl.y(str)) {
            throw new AssertionError();
        }
        String h10 = C4932Bl.h(str);
        Path resolve = this.f35271a.resolve(h10 + ".class");
        if (!Files.exists(resolve, new LinkOption[0]) || Files.isDirectory(resolve, new LinkOption[0])) {
            return null;
        }
        return ProgramResource.fromFile(ProgramResource.Kind.CF, resolve);
    }

    public Path getRoot() {
        return this.f35271a;
    }
}
