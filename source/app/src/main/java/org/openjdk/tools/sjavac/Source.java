package org.openjdk.tools.sjavac;

import b3.s;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystem;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import java.util.regex.PatternSyntaxException;
import org.eclipse.jdt.core.Signature;
import org.openjdk.tools.sjavac.Source;

public class Source implements Comparable<Source> {
    private File file;
    private boolean isGenerated;
    private long lastModified;
    private boolean linkedOnly;
    private String name;
    private Package pkg;
    private String suffix;

    public static class AnonymousClass1 extends SimpleFileVisitor<Path> {
        final Module val$currentModule;
        final List val$excludeMatchers;
        final Map val$foundFiles;
        final boolean val$inGensrc;
        final boolean val$inLinksrc;
        final List val$includeMatchers;
        final File val$root;
        final Set val$suffixes;

        public AnonymousClass1(File file, List list, List list2, Set set, Map map, Module module, boolean z10, boolean z11) {
            this.val$root = file;
            this.val$includeMatchers = list;
            this.val$excludeMatchers = list2;
            this.val$suffixes = set;
            this.val$foundFiles = map;
            this.val$currentModule = module;
            this.val$inLinksrc = z10;
            this.val$inGensrc = z11;
        }

        public static boolean lambda$visitFile$0(Path path, PathMatcher pathMatcher) {
            return pathMatcher.matches(path);
        }

        public static boolean lambda$visitFile$1(Path path, PathMatcher pathMatcher) {
            return pathMatcher.matches(path);
        }

        @Override
        public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
            final Path relativize = this.val$root.toPath().relativize(path);
            if (this.val$includeMatchers.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$visitFile$0;
                    lambda$visitFile$0 = Source.AnonymousClass1.lambda$visitFile$0(Path.this, (PathMatcher) obj);
                    return lambda$visitFile$0;
                }
            }) && this.val$excludeMatchers.stream().noneMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$visitFile$1;
                    lambda$visitFile$1 = Source.AnonymousClass1.lambda$visitFile$1(Path.this, (PathMatcher) obj);
                    return lambda$visitFile$1;
                }
            }) && this.val$suffixes.contains(Util.fileSuffix(path))) {
                Source source = (Source) this.val$foundFiles.get(path);
                if (source != null) {
                    throw new IOException("You have already added the file " + ((Object) path) + " from " + source.file().getPath());
                }
                Source lookupSource = this.val$currentModule.lookupSource(path.toString());
                if (lookupSource != null) {
                    if (!this.val$inLinksrc) {
                        throw new IOException("Internal error: Double add of file " + ((Object) path) + " from " + lookupSource.file().getPath());
                    }
                    if (lookupSource.isLinkedOnly()) {
                        throw new IOException("You have already added the link only file " + ((Object) path) + " from " + lookupSource.file().getPath());
                    }
                    this.val$foundFiles.put(path.toString(), lookupSource);
                } else {
                    Source source2 = new Source(this.val$currentModule, path.toString(), path.toFile());
                    if (this.val$inGensrc) {
                        source2.markAsGenerated();
                    }
                    if (this.val$inLinksrc) {
                        source2.markAsLinkedOnly();
                    }
                    String str = this.val$currentModule.name() + s.f32937c + Source.packageOfJavaFile(this.val$root.toPath(), path);
                    this.val$foundFiles.put(path.toString(), source2);
                    this.val$currentModule.addSource(str, source2);
                }
            }
            return FileVisitResult.CONTINUE;
        }
    }

    public Source(Module module, String str, File file) {
        this.name = str;
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            this.suffix = str.substring(lastIndexOf);
        } else {
            this.suffix = "";
        }
        this.file = file;
        this.lastModified = file.lastModified();
        this.linkedOnly = false;
    }

    private static List<PathMatcher> createPathMatchers(FileSystem fileSystem, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            try {
                arrayList.add(fileSystem.getPathMatcher("glob:" + str));
            } catch (PatternSyntaxException e10) {
                Log.error("Invalid pattern: " + str);
                throw e10;
            }
        }
        return arrayList;
    }

    public static Source load(Package r82, String str, boolean z10) {
        int indexOf = str.indexOf(32, 4);
        if (indexOf == -1) {
            return null;
        }
        String substring = str.substring(4, indexOf);
        boolean z11 = true;
        long parseLong = Long.parseLong(str.substring(indexOf + 1));
        if (str.charAt(2) != 'L') {
            if (str.charAt(2) != 'C') {
                return null;
            }
            z11 = false;
        }
        Source source = new Source(r82, substring, parseLong);
        source.file = new File(substring);
        if (z10) {
            source.markAsGenerated();
        }
        if (z11) {
            source.markAsLinkedOnly();
        }
        return source;
    }

    public static String packageOfJavaFile(Path path, Path path2) {
        Path relativize = path.relativize(path2.getParent());
        ArrayList arrayList = new ArrayList();
        Iterator<Path> it = relativize.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFileName().toString());
        }
        return String.join(".", arrayList);
    }

    private void save(StringBuilder sb2) {
        String str = this.linkedOnly ? "L" : Signature.SIG_CHAR;
        sb2.append((this.isGenerated ? "G" : "S") + " " + str + " " + this.name + " " + this.file.lastModified() + "\n");
    }

    public static void saveSources(Map<String, Source> map, StringBuilder sb2) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = map.o().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Collections.sort(arrayList);
        Iterator<E> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            map.get((String) it2.next()).save(sb2);
        }
    }

    public static void scanRoot(File file, Set<String> set, List<String> list, List<String> list2, Map<String, Source> map, Map<String, Module> map2, Module module, boolean z10, boolean z11, boolean z12) throws IOException, ProblemException {
        if (file == null) {
            return;
        }
        FileSystem fileSystem = file.toPath().getFileSystem();
        Files.walkFileTree(file.toPath(), new AnonymousClass1(file, createPathMatchers(fileSystem, list2.isEmpty() ? Collections.singletonList("**") : list2), createPathMatchers(fileSystem, list), set, map, module, z12, z11));
    }

    public boolean equals(Object obj) {
        return (obj instanceof Source) && this.name.equals(((Source) obj).name);
    }

    public File file() {
        return this.file;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public boolean isGenerated() {
        return this.isGenerated;
    }

    public boolean isLinkedOnly() {
        return this.linkedOnly;
    }

    public long lastModified() {
        return this.lastModified;
    }

    public void markAsGenerated() {
        this.isGenerated = true;
    }

    public void markAsLinkedOnly() {
        this.linkedOnly = true;
    }

    public String name() {
        return this.name;
    }

    public Package pkg() {
        return this.pkg;
    }

    public void setPackage(Package r12) {
        this.pkg = r12;
    }

    public String suffix() {
        return this.suffix;
    }

    public String toString() {
        return String.format("%s[pkg: %s, name: %s, suffix: %s, file: %s, isGenerated: %b, linkedOnly: %b]", getClass().getSimpleName(), this.pkg, this.name, this.suffix, this.file, Boolean.valueOf(this.isGenerated), Boolean.valueOf(this.linkedOnly));
    }

    @Override
    public int compareTo(Source source) {
        return this.name.compareTo(source.name);
    }

    public Source(Package r22, String str, long j10) {
        this.pkg = r22;
        this.name = str;
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            this.suffix = str.substring(lastIndexOf);
        } else {
            this.suffix = "";
        }
        this.file = null;
        this.lastModified = j10;
        this.linkedOnly = false;
        str.lastIndexOf(47);
    }
}
