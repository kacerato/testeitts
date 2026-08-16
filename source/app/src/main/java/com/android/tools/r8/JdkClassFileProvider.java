package com.android.tools.r8;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.C4874Al;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.io.Closeable;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.FileVisitOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;

public class JdkClassFileProvider implements ClassFileResourceProvider, Closeable {

    static final boolean f35360f = true;

    private final Origin f35361a;

    private final HashSet f35362b;

    private final HashMap f35363c;

    private final URLClassLoader f35364d;

    private FileSystem f35365e;

    private JdkClassFileProvider() {
        this.f35362b = new HashSet();
        this.f35363c = new HashMap();
        this.f35361a = Origin.unknown();
        a(FileSystems.newFileSystem(URI.create("jrt:/"), (Map<String, ?>) Collections.EMPTY_MAP));
    }

    public static ClassFileResourceProvider fromJavaRuntimeJar(Path path) throws IOException {
        return new ArchiveClassFileProvider(path);
    }

    public static ClassFileResourceProvider fromJdkHome(Path path) throws IOException {
        if (Files.exists(path.resolve("lib").resolve(JRTUtil.JRT_FS_JAR), new LinkOption[0])) {
            return fromSystemModulesJdk(path);
        }
        Path resolve = path.resolve("jre").resolve("lib").resolve("rt.jar");
        if (Files.exists(resolve, new LinkOption[0])) {
            return fromJavaRuntimeJar(resolve);
        }
        Path resolve2 = path.resolve("lib").resolve("rt.jar");
        if (Files.exists(resolve2, new LinkOption[0])) {
            return fromJavaRuntimeJar(resolve2);
        }
        throw new IOException("Path " + ((Object) path) + " does not look like a Java home");
    }

    public static ClassFileResourceProvider fromSystemJdk() throws IOException {
        return new JdkClassFileProvider();
    }

    public static ClassFileResourceProvider fromSystemModulesJdk(Path path) throws IOException {
        Path resolve = path.resolve("lib").resolve(JRTUtil.JRT_FS_JAR);
        if (Files.exists(resolve, new LinkOption[0])) {
            return new JdkClassFileProvider(path);
        }
        throw new NoSuchFileException(resolve.toString());
    }

    @Override
    public void close() throws IOException {
        this.f35365e.close();
        URLClassLoader uRLClassLoader = this.f35364d;
        if (uRLClassLoader != null) {
            uRLClassLoader.close();
        }
    }

    public void finalize() throws Throwable {
        close();
        super.finalize();
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) throws IOException {
        super.finished(diagnosticsHandler);
    }

    @Override
    public Set<String> getClassDescriptors() {
        return Collections.unmodifiableSet(this.f35362b);
    }

    @Override
    public ProgramResource getProgramResource(String str) {
        if (!this.f35362b.contains(str)) {
            return null;
        }
        try {
            return ProgramResource.fromBytes(Origin.unknown(), ProgramResource.Kind.CF, Files.readAllBytes(this.f35365e.getPath("modules", (String) this.f35363c.get(str), C4932Bl.r(str))), Collections.singleton(str));
        } catch (IOException unused) {
            throw new C5325If(this.f35361a, "Failed to read '" + str, null);
        }
    }

    private void a(FileSystem fileSystem) {
        this.f35365e = fileSystem;
        Files.walk(fileSystem.getPath("/modules", new String[0]), new FileVisitOption[0]).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JdkClassFileProvider.this.a((Path) obj);
            }
        });
    }

    public void a(Path path) {
        if (C6169Ww.b(path)) {
            C4874Al w10 = C4932Bl.w(path.toString());
            this.f35363c.put(w10.f38708b, w10.f38707a);
            this.f35362b.add(w10.f38708b);
        }
    }

    private JdkClassFileProvider(Path path) {
        this.f35362b = new HashSet();
        this.f35363c = new HashMap();
        this.f35361a = new PathOrigin(path);
        Path resolve = path.resolve("lib").resolve(JRTUtil.JRT_FS_JAR);
        if (!f35360f && !Files.exists(resolve, new LinkOption[0])) {
            throw new AssertionError();
        }
        URLClassLoader uRLClassLoader = new URLClassLoader(new URL[]{resolve.toUri().toURL()});
        this.f35364d = uRLClassLoader;
        HashMap hashMap = new HashMap();
        hashMap.put("java.home", path.toString());
        a(FileSystems.newFileSystem(URI.create("jrt:/"), hashMap, uRLClassLoader));
    }
}
