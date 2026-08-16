package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.FileSystems;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.ZipEntry;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathMultiReleaseJar extends ClasspathJar {
    String compliance;
    private java.nio.file.FileSystem fs;
    Path releasePath;

    public ClasspathMultiReleaseJar(File file, boolean z10, AccessRuleSet accessRuleSet, String str, String str2) {
        super(file, z10, accessRuleSet, str);
        this.fs = null;
        this.releasePath = null;
        this.compliance = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader] */
    /* JADX WARN: Type inference failed for: r2v2, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r2v3, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [org.eclipse.jdt.internal.compiler.env.IBinaryType] */
    /* JADX WARN: Type inference failed for: r2v8 */
    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10) {
        if (!isPackage(str, str2)) {
            return null;
        }
        Path path = this.releasePath;
        if (path != null) {
            try {
                byte[] readAllBytes = Files.readAllBytes(path.resolve(str3));
                ?? classFileReader = readAllBytes != null ? new ClassFileReader(readAllBytes, str3.toCharArray()) : 0;
                if (classFileReader != 0) {
                    IModule iModule = this.module;
                    char[] name = iModule == null ? null : iModule.name();
                    char[] cArr2 = classFileReader.moduleName;
                    if (cArr2 == null) {
                        classFileReader.moduleName = name;
                    } else {
                        name = cArr2;
                    }
                    String substring = str3.substring(0, str3.length() - SuffixConstants.SUFFIX_CLASS.length);
                    if (this.annotationPaths != null) {
                        String substring2 = str3.substring(0, str3.length() - 6);
                        Iterator<String> it = this.annotationPaths.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                classFileReader = new ExternalAnnotationDecorator((IBinaryType) classFileReader, (ExternalAnnotationProvider) null);
                                break;
                            }
                            String next = it.next();
                            try {
                                if (this.annotationZipFile == null) {
                                    this.annotationZipFile = ExternalAnnotationDecorator.getAnnotationZipFile(next, null);
                                }
                                classFileReader = ExternalAnnotationDecorator.create(classFileReader, next, substring2, this.annotationZipFile);
                            } catch (IOException unused) {
                            }
                            if (classFileReader.getExternalAnnotationStatus() == BinaryTypeBinding.ExternalAnnotationStatus.TYPE_IS_ANNOTATED) {
                                break;
                            }
                        }
                    }
                    AccessRuleSet accessRuleSet = this.accessRuleSet;
                    return accessRuleSet == null ? new NameEnvironmentAnswer((IBinaryType) classFileReader, (AccessRestriction) null, name) : new NameEnvironmentAnswer((IBinaryType) classFileReader, accessRuleSet.getViolatedRestriction(substring.toCharArray()), name);
                }
            } catch (IOException | ClassFormatException unused2) {
            }
        }
        return super.findClass(cArr, str, str2, str3, z10);
    }

    @Override
    public synchronized char[][] getModulesDeclaringPackage(String str, String str2) {
        if (this.releasePath == null) {
            return super.getModulesDeclaringPackage(str, str2);
        }
        Set<String> set = this.packageCache;
        if (set != null) {
            return singletonModuleNameIf(set.contains(str));
        }
        HashSet hashSet = new HashSet(41);
        this.packageCache = hashSet;
        hashSet.add(Util.EMPTY_STRING);
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            addToPackageCache(entries.nextElement().getName(), false);
        }
        try {
            Path path = this.releasePath;
            if (path != null && Files.exists(path, new LinkOption[0])) {
                Throwable th2 = null;
                try {
                    DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(this.releasePath);
                    try {
                        Iterator<Path> it = newDirectoryStream.iterator();
                        while (it.hasNext()) {
                            Files.walkFileTree(it.next(), new FileVisitor<Path>() {
                                @Override
                                public FileVisitResult postVisitDirectory(Path path2, IOException iOException) throws IOException {
                                    return FileVisitResult.CONTINUE;
                                }

                                @Override
                                public FileVisitResult preVisitDirectory(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                                    return FileVisitResult.CONTINUE;
                                }

                                @Override
                                public FileVisitResult visitFile(Path path2, BasicFileAttributes basicFileAttributes) throws IOException {
                                    ClasspathMultiReleaseJar.this.addToPackageCache(ClasspathMultiReleaseJar.this.releasePath.relativize(path2).toString(), false);
                                    return FileVisitResult.CONTINUE;
                                }

                                @Override
                                public FileVisitResult visitFileFailed(Path path2, IOException iOException) throws IOException {
                                    return FileVisitResult.CONTINUE;
                                }
                            });
                        }
                        newDirectoryStream.close();
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
                    th2.addSuppressed(th4);
                    throw null;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return singletonModuleNameIf(this.packageCache.contains(str));
    }

    @Override
    public void initialize() throws IOException {
        super.initialize();
        URI uri = this.file.toURI();
        if (this.file.exists()) {
            URI create = URI.create("jar:file:" + uri.getRawPath());
            try {
                this.fs = FileSystems.getFileSystem(create);
            } catch (FileSystemNotFoundException unused) {
            }
            if (this.fs == null) {
                try {
                    this.fs = FileSystems.newFileSystem(create, new HashMap());
                } catch (IOException unused2) {
                }
            }
            Path path = this.fs.getPath("/", "META-INF", "versions", this.compliance);
            this.releasePath = path;
            if (Files.exists(path, new LinkOption[0])) {
                return;
            }
            this.releasePath = null;
        }
    }
}
