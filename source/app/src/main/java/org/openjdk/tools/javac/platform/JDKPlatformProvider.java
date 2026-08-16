package org.openjdk.tools.javac.platform;

import java.io.IOException;
import java.net.URI;
import java.nio.charset.Charset;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.ProviderNotFoundException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.openjdk.javax.annotation.processing.Processor;
import org.openjdk.source.util.Plugin;
import org.openjdk.tools.javac.jvm.Target;
import org.openjdk.tools.javac.platform.JDKPlatformProvider;
import org.openjdk.tools.javac.platform.PlatformDescription;

public class JDKPlatformProvider implements PlatformProvider {
    private static final String[] symbolFileLocation = {"lib", "ct.sym"};
    private static final Set<String> SUPPORTED_JAVA_PLATFORM_VERSIONS = new TreeSet();

    public static class PlatformDescriptionImpl implements PlatformDescription {
        private final Map<Path, FileSystem> ctSym2FileSystem = new HashMap();
        private final String version;

        public PlatformDescriptionImpl(String str) {
            this.version = str;
        }

        public static boolean lambda$getPlatformPath$1(Path path) {
            return Files.exists(path, new LinkOption[0]);
        }

        @Override
        public void close() throws IOException {
            Iterator<FileSystem> it = this.ctSym2FileSystem.values().iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.ctSym2FileSystem.clear();
        }

        @Override
        public List<String> getAdditionalOptions() {
            return Collections.emptyList();
        }

        @Override
        public List<PlatformDescription.PluginInfo<Processor>> getAnnotationProcessors() {
            return Collections.emptyList();
        }

        @Override
        public Collection<Path> getPlatformPath() {
            final ArrayList arrayList = new ArrayList();
            Path findCtSym = JDKPlatformProvider.findCtSym();
            if (!Files.exists(findCtSym, new LinkOption[0])) {
                throw new IllegalStateException("Cannot find ct.sym!");
            }
            FileSystem fileSystem = this.ctSym2FileSystem.get(findCtSym);
            if (fileSystem == null) {
                try {
                    Map<Path, FileSystem> map = this.ctSym2FileSystem;
                    FileSystem newFileSystem = FileSystems.newFileSystem(findCtSym, (ClassLoader) null);
                    map.put(findCtSym, newFileSystem);
                    fileSystem = newFileSystem;
                } catch (IOException e10) {
                    throw new IllegalStateException(e10);
                }
            }
            try {
                DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(fileSystem.getRootDirectories().iterator().next());
                try {
                    for (Path path : newDirectoryStream) {
                        if (path.getFileName().toString().contains(this.version)) {
                            Path resolve = path.resolve("system-modules");
                            if (Files.isRegularFile(resolve, new LinkOption[0])) {
                                final Path path2 = FileSystems.getFileSystem(URI.create("jrt:/")).getPath("modules", new String[0]);
                                Stream<String> lines = Files.lines(resolve, Charset.forName("UTF-8"));
                                try {
                                    lines.map(new Function() {
                                        @Override
                                        public final Object apply(Object obj) {
                                            Path resolve2;
                                            resolve2 = Path.this.resolve((String) obj);
                                            return resolve2;
                                        }
                                    }).filter(new Predicate() {
                                        @Override
                                        public final boolean test(Object obj) {
                                            boolean lambda$getPlatformPath$1;
                                            lambda$getPlatformPath$1 = JDKPlatformProvider.PlatformDescriptionImpl.lambda$getPlatformPath$1((Path) obj);
                                            return lambda$getPlatformPath$1;
                                        }
                                    }).forEach(new Consumer() {
                                        @Override
                                        public final void accept(Object obj) {
                                            List.this.add((Path) obj);
                                        }
                                    });
                                    lines.close();
                                } finally {
                                }
                            } else {
                                arrayList.add(path);
                            }
                        }
                    }
                    newDirectoryStream.close();
                    return arrayList;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } finally {
                    }
                }
            } catch (IOException e11) {
                throw new IllegalStateException(e11);
            }
        }

        @Override
        public List<PlatformDescription.PluginInfo<Plugin>> getPlugins() {
            return Collections.emptyList();
        }

        @Override
        public String getSourceVersion() {
            return this.version;
        }

        @Override
        public String getTargetVersion() {
            return this.version;
        }
    }

    static {
        Path findCtSym = findCtSym();
        if (Files.exists(findCtSym, new LinkOption[0])) {
            try {
                FileSystem newFileSystem = FileSystems.newFileSystem(findCtSym, (ClassLoader) null);
                try {
                    DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(newFileSystem.getRootDirectories().iterator().next());
                    try {
                        Iterator<Path> it = newDirectoryStream.iterator();
                        while (it.hasNext()) {
                            for (char c10 : it.next().getFileName().toString().toCharArray()) {
                                Target lookup = Target.lookup(Character.toString(c10));
                                if (lookup != null) {
                                    SUPPORTED_JAVA_PLATFORM_VERSIONS.add(targetNumericVersion(lookup));
                                }
                            }
                        }
                        newDirectoryStream.close();
                        newFileSystem.close();
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } finally {
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        if (newFileSystem != null) {
                            try {
                                newFileSystem.close();
                            } catch (Throwable th5) {
                                th3.addSuppressed(th5);
                            }
                        }
                        throw th4;
                    }
                }
            } catch (IOException | ProviderNotFoundException unused) {
            }
        }
    }

    public static Path findCtSym() {
        Path path = Paths.get(System.getProperty("java.home"), new String[0]);
        for (String str : symbolFileLocation) {
            path = path.resolve(str);
        }
        return path;
    }

    private static String targetNumericVersion(Target target) {
        return Integer.toString((target.ordinal() - Target.JDK1_1.ordinal()) + 1);
    }

    @Override
    public PlatformDescription getPlatform(String str, String str2) {
        return new PlatformDescriptionImpl(str);
    }

    @Override
    public Iterable<String> getSupportedPlatformNames() {
        return SUPPORTED_JAVA_PLATFORM_VERSIONS;
    }
}
