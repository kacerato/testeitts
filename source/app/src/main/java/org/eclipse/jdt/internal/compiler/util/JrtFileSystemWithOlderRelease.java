package org.eclipse.jdt.internal.compiler.util;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.FileSystems;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public class JrtFileSystemWithOlderRelease extends JrtFileSystem {
    protected Path modulePath;
    final String release;
    String releaseInHex;
    private String[] subReleases;

    public JrtFileSystemWithOlderRelease(File file, String str) throws IOException {
        super(file);
        this.releaseInHex = null;
        this.subReleases = null;
        this.modulePath = null;
        this.release = str;
        initialize(file, str);
    }

    @Override
    public void initialize(File file) throws IOException {
    }

    @Override
    public void walkModuleImage(final JRTUtil.JrtFileVisitor<Path> jrtFileVisitor, final int i10) throws IOException {
        String[] strArr = this.subReleases;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        for (String str : strArr) {
            Files.walkFileTree(this.fs.getPath(str, new String[0]), new JRTUtil.AbstractFileVisitor<Path>() {
                @Override
                public FileVisitResult preVisitDirectory(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
                    int nameCount = path.getNameCount();
                    if (nameCount == 1) {
                        return FileVisitResult.CONTINUE;
                    }
                    if (nameCount == 2) {
                        Path name = path.getName(1);
                        String str2 = JRTUtil.MODULE_TO_LOAD;
                        if (str2 == null || str2.length() <= 0 || JRTUtil.MODULE_TO_LOAD.indexOf(name.toString()) != -1) {
                            return (i10 & JRTUtil.NOTIFY_MODULES) == 0 ? FileVisitResult.CONTINUE : jrtFileVisitor.visitModule(path, JRTUtil.sanitizedFileName(name));
                        }
                        return FileVisitResult.SKIP_SUBTREE;
                    }
                    if ((i10 & JRTUtil.NOTIFY_PACKAGES) == 0) {
                        return FileVisitResult.CONTINUE;
                    }
                    return jrtFileVisitor.visitPackage(path.subpath(2, nameCount), path.getName(1), basicFileAttributes);
                }

                @Override
                public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
                    if ((i10 & JRTUtil.NOTIFY_FILES) == 0) {
                        return FileVisitResult.CONTINUE;
                    }
                    if (path.getNameCount() == 3) {
                        JrtFileSystemWithOlderRelease.this.cachePackage("", path.getName(1).toString());
                    }
                    return jrtFileVisitor.visitFile(path.subpath(2, path.getNameCount()), path.getName(1), basicFileAttributes);
                }
            });
        }
    }

    public void initialize(File file, String str) throws IOException {
        super.initialize(file);
        Throwable th2 = null;
        this.fs = null;
        this.releaseInHex = Integer.toHexString(Integer.parseInt(this.release)).toUpperCase();
        Path path = Paths.get(this.jdkHome, "lib", "ct.sym");
        if (!Files.exists(path, new LinkOption[0])) {
            return;
        }
        URI create = URI.create("jar:file:" + path.toUri().getRawPath());
        try {
            this.fs = FileSystems.getFileSystem(create);
        } catch (FileSystemNotFoundException unused) {
        }
        if (this.fs == null) {
            try {
                this.fs = FileSystems.newFileSystem(create, new HashMap());
            } catch (IOException unused2) {
                return;
            }
        }
        Path path2 = this.fs.getPath("/", new String[0]);
        if (!Files.exists(this.fs.getPath(this.releaseInHex, new String[0]), new LinkOption[0]) || Files.exists(this.fs.getPath(this.releaseInHex, "system-modules"), new LinkOption[0])) {
            this.fs = null;
        }
        if (this.release == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path2);
            try {
                Iterator<Path> it = newDirectoryStream.iterator();
                while (it.hasNext()) {
                    String sanitizedFileName = JRTUtil.sanitizedFileName(it.next());
                    if (sanitizedFileName.contains(this.releaseInHex)) {
                        arrayList.add(sanitizedFileName);
                    }
                }
                newDirectoryStream.close();
                this.subReleases = (String[]) arrayList.toArray(new String[arrayList.size()]);
            } catch (Throwable th3) {
                if (newDirectoryStream != null) {
                    newDirectoryStream.close();
                }
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null == th4) {
                throw null;
            }
            try {
                th2.addSuppressed(th4);
                throw null;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            e10.printStackTrace();
        }
    }
}
