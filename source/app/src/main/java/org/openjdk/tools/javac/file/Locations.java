package org.openjdk.tools.javac.file;

import b3.s;
import com.android.dex.DexFormat;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.net.URI;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystem;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.InvalidPathException;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.ProviderNotFoundException;
import java.nio.file.spi.FileSystemProvider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.StandardJavaFileManager;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.file.Locations;
import org.openjdk.tools.javac.jvm.ModuleNameReader;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.util.JDK9Wrappers;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Pair;
import org.openjdk.tools.javac.util.StringUtils;

public class Locations {
    static final Path javaHome;
    static final Path thisSystemModules;
    private FSInfo fsInfo;
    Map<JavaFileManager.Location, LocationHandler> handlersForLocation;
    Map<Option, LocationHandler> handlersForOption;
    private Log log;
    private ModuleNameReader moduleNameReader;
    private boolean warn;
    private StandardJavaFileManager.PathFactory pathFactory = new d();
    Map<Path, FileSystem> fileSystems = new LinkedHashMap();
    List<Closeable> closeables = new ArrayList();
    private Map<String, String> fsEnv = Collections.emptyMap();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$main$Option;

        static {
            int[] iArr = new int[Option.values().length];
            $SwitchMap$com$sun$tools$javac$main$Option = iArr;
            try {
                iArr[Option.XBOOTCLASSPATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$Option[Option.DJAVA_ENDORSED_DIRS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$Option[Option.DJAVA_EXT_DIRS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static abstract class BasicLocationHandler extends LocationHandler {
        final JavaFileManager.Location location;
        final Set<Option> options;

        public BasicLocationHandler(JavaFileManager.Location location, Option... optionArr) {
            this.location = location;
            this.options = optionArr.length == 0 ? EnumSet.noneOf(Option.class) : EnumSet.copyOf(Arrays.asList(optionArr));
        }

        public Path checkDirectory(Path path) throws IOException {
            Objects.requireNonNull(path);
            if (!Files.exists(path, new LinkOption[0])) {
                throw new FileNotFoundException(((Object) path) + ": does not exist");
            }
            if (Files.isDirectory(path, new LinkOption[0])) {
                return path;
            }
            throw new IOException(((Object) path) + ": not a directory");
        }

        public Path checkSingletonDirectory(Iterable<? extends Path> iterable) throws IOException {
            Iterator<? extends Path> it = iterable.iterator();
            if (!it.hasNext()) {
                throw new IllegalArgumentException("empty path for directory");
            }
            Path next = it.next();
            if (it.hasNext()) {
                throw new IllegalArgumentException("path too long for directory");
            }
            checkDirectory(next);
            return next;
        }

        @Override
        public void setPathsForModule(String str, Iterable<? extends Path> iterable) throws IOException {
            throw new UnsupportedOperationException("not supported for " + ((Object) this.location));
        }
    }

    public class BootClassPathLocationHandler extends BasicLocationHandler {
        private boolean isDefault;
        final Map<Option, String> optionValues;
        private Collection<Path> searchPath;

        public BootClassPathLocationHandler() {
            super(StandardLocation.PLATFORM_CLASS_PATH, Option.BOOT_CLASS_PATH, Option.XBOOTCLASSPATH, Option.XBOOTCLASSPATH_PREPEND, Option.XBOOTCLASSPATH_APPEND, Option.ENDORSEDDIRS, Option.DJAVA_ENDORSED_DIRS, Option.EXTDIRS, Option.DJAVA_EXT_DIRS);
            this.optionValues = new EnumMap(Option.class);
        }

        private Option canonicalize(Option option) {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$main$Option[option.ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? option : Option.EXTDIRS : Option.ENDORSEDDIRS : Option.BOOT_CLASS_PATH;
        }

        private void lazy() {
            if (this.searchPath == null) {
                try {
                    this.searchPath = Collections.unmodifiableCollection(computePath());
                } catch (IOException e10) {
                    throw new UncheckedIOException(e10);
                }
            }
        }

        private Collection<Path> systemClasses() throws IOException {
            Path path = Locations.thisSystemModules;
            if (Files.isRegularFile(path, new LinkOption[0])) {
                return Collections.singleton(path);
            }
            Path resolve = Locations.javaHome.resolve("modules");
            if (!Files.isDirectory(resolve.resolve(JRTUtil.JAVA_BASE), new LinkOption[0])) {
                return null;
            }
            Stream<Path> list = Files.list(resolve);
            try {
                Collection<Path> collection = (Collection) list.collect(Collectors.toList());
                list.close();
                return collection;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    if (list != null) {
                        try {
                            list.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            }
        }

        public SearchPath computePath() throws IOException {
            SearchPath searchPath = new SearchPath(Locations.this, null);
            String str = this.optionValues.get(Option.BOOT_CLASS_PATH);
            String str2 = this.optionValues.get(Option.ENDORSEDDIRS);
            String str3 = this.optionValues.get(Option.EXTDIRS);
            String str4 = this.optionValues.get(Option.XBOOTCLASSPATH_PREPEND);
            String str5 = this.optionValues.get(Option.XBOOTCLASSPATH_APPEND);
            searchPath.addFiles(str4);
            boolean z10 = false;
            if (str2 != null) {
                searchPath.addDirectories(str2);
            } else {
                searchPath.addDirectories(System.getProperty("java.endorsed.dirs"), false);
            }
            if (str != null) {
                searchPath.addFiles(str);
            } else {
                Collection<Path> systemClasses = systemClasses();
                if (systemClasses != null) {
                    searchPath.addFiles((Iterable<? extends Path>) systemClasses, false);
                } else {
                    searchPath.addFiles(System.getProperty("sun.boot.class.path"), false);
                }
            }
            searchPath.addFiles(str5);
            if (str3 != null) {
                searchPath.addDirectories(str3);
            } else {
                Path resolve = Locations.javaHome.resolve("lib/jfxrt.jar");
                if (Files.exists(resolve, new LinkOption[0])) {
                    searchPath.lambda$addDirectory$1(resolve, false);
                }
                searchPath.addDirectories(System.getProperty("java.ext.dirs"), false);
            }
            if (str4 == null && str == null && str5 == null) {
                z10 = true;
            }
            this.isDefault = z10;
            return searchPath;
        }

        @Override
        public boolean contains(Path path) throws IOException {
            return Locations.this.contains(this.searchPath, path);
        }

        @Override
        public Collection<Path> getPaths() {
            lazy();
            return this.searchPath;
        }

        @Override
        public boolean handleOption(Option option, String str) {
            if (!this.options.contains(option)) {
                return false;
            }
            Option canonicalize = canonicalize(option);
            this.optionValues.put(canonicalize, str);
            if (canonicalize == Option.BOOT_CLASS_PATH) {
                this.optionValues.remove(Option.XBOOTCLASSPATH_PREPEND);
                this.optionValues.remove(Option.XBOOTCLASSPATH_APPEND);
            }
            this.searchPath = null;
            return true;
        }

        public boolean isDefault() {
            lazy();
            return this.isDefault;
        }

        @Override
        public void setPaths(Iterable<? extends Path> iterable) {
            AnonymousClass1 anonymousClass1 = null;
            if (iterable == null) {
                this.searchPath = null;
                return;
            }
            this.isDefault = false;
            this.searchPath = Collections.unmodifiableCollection(new SearchPath(Locations.this, anonymousClass1).addFiles(iterable, false));
            this.optionValues.clear();
        }
    }

    public class ClassPathLocationHandler extends SimpleLocationHandler {
        public ClassPathLocationHandler() {
            super(StandardLocation.CLASS_PATH, Option.CLASS_PATH);
        }

        private void lazy() {
            if (this.searchPath == null) {
                setPaths(null);
            }
        }

        @Override
        public SearchPath computePath(String str) {
            if (str == null) {
                str = System.getProperty("env.class.path");
            }
            if (str == null && System.getProperty("application.home") == null) {
                str = System.getProperty("java.class.path");
            }
            if (str == null) {
                str = ".";
            }
            return createPath().addFiles(str);
        }

        @Override
        public SearchPath createPath() {
            return new SearchPath(Locations.this, null).expandJarClassPaths(true).emptyPathDefault(Locations.this.getPath(".", new String[0]));
        }

        @Override
        public Collection<Path> getPaths() {
            lazy();
            return this.searchPath;
        }
    }

    public static abstract class LocationHandler {
        public abstract boolean contains(Path path) throws IOException;

        public JavaFileManager.Location getLocationForModule(String str) throws IOException {
            return null;
        }

        public abstract Collection<Path> getPaths();

        public abstract boolean handleOption(Option option, String str);

        public String inferModuleName() {
            return null;
        }

        public boolean isSet() {
            return getPaths() != null;
        }

        public Iterable<Set<JavaFileManager.Location>> listLocationsForModules() throws IOException {
            return null;
        }

        public abstract void setPaths(Iterable<? extends Path> iterable) throws IOException;

        public abstract void setPathsForModule(String str, Iterable<? extends Path> iterable) throws IOException;

        public JavaFileManager.Location getLocationForModule(Path path) throws IOException {
            return null;
        }
    }

    public class ModuleLocationHandler extends LocationHandler implements JavaFileManager.Location {
        private final String moduleName;
        private final String name;
        private final boolean output;
        private final LocationHandler parent;
        Collection<Path> searchPath;

        public ModuleLocationHandler(LocationHandler locationHandler, String str, String str2, Collection<Path> collection, boolean z10) {
            this.parent = locationHandler;
            this.name = str;
            this.moduleName = str2;
            this.searchPath = collection;
            this.output = z10;
        }

        @Override
        public boolean contains(Path path) throws IOException {
            return Locations.this.contains(this.searchPath, path);
        }

        @Override
        public String getName() {
            return this.name;
        }

        @Override
        public Collection<Path> getPaths() {
            return Collections.unmodifiableCollection(this.searchPath);
        }

        @Override
        public boolean handleOption(Option option, String str) {
            throw new UnsupportedOperationException();
        }

        @Override
        public String inferModuleName() {
            return this.moduleName;
        }

        @Override
        public boolean isOutputLocation() {
            return this.output;
        }

        @Override
        public void setPaths(Iterable<? extends Path> iterable) throws IOException {
            this.parent.setPathsForModule(this.moduleName, iterable);
        }

        @Override
        public void setPathsForModule(String str, Iterable<? extends Path> iterable) {
            throw new UnsupportedOperationException("not supported for " + this.name);
        }

        public String toString() {
            return this.name;
        }
    }

    public class ModuleSourcePathLocationHandler extends BasicLocationHandler {
        private final Predicate<Path> checkModuleInfo;
        private ModuleTable moduleTable;
        private List<Path> paths;

        public ModuleSourcePathLocationHandler() {
            super(StandardLocation.MODULE_SOURCE_PATH, Option.MODULE_SOURCE_PATH);
            this.checkModuleInfo = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$new$1;
                    lambda$new$1 = Locations.ModuleSourcePathLocationHandler.lambda$new$1((Path) obj);
                    return lambda$new$1;
                }
            };
        }

        private List<Path> checkPaths(Iterable<? extends Path> iterable) throws IOException {
            Objects.requireNonNull(iterable);
            ArrayList arrayList = new ArrayList();
            Iterator<? extends Path> it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(checkDirectory(it.next()));
            }
            return arrayList;
        }

        private void expandBraces(String str, Collection<String> collection) {
            int i10 = -1;
            String str2 = null;
            int i11 = 0;
            String str3 = null;
            for (int i12 = 0; i12 < str.length(); i12++) {
                char charAt = str.charAt(i12);
                if (charAt != ',') {
                    if (charAt == '{') {
                        i11++;
                        if (i11 == 1) {
                            str2 = str.substring(0, i12);
                            i10 = i12 + 1;
                            str3 = str.substring(getMatchingBrace(str, i12) + 1);
                        }
                    } else if (charAt != '}') {
                        continue;
                    } else {
                        if (i11 == 0) {
                            throw new IllegalArgumentException("mismatched braces");
                        }
                        if (i11 == 1) {
                            expandBraces(str2 + str.substring(i10, i12) + str3, collection);
                            return;
                        }
                        i11--;
                    }
                } else if (i11 == 1) {
                    expandBraces(str2 + str.substring(i10, i12) + str3, collection);
                    i10 = i12 + 1;
                }
            }
            if (i11 > 0) {
                throw new IllegalArgumentException("mismatched braces");
            }
            collection.add(str);
        }

        private void initModuleTable(Map<String, List<Path>> map) {
            this.moduleTable = new ModuleTable(Locations.this, null);
            map.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    Locations.ModuleSourcePathLocationHandler.this.lambda$initModuleTable$0((String) obj, (List) obj2);
                }
            });
        }

        private boolean isSeparator(char c10) {
            return c10 == File.separatorChar || c10 == '/';
        }

        public static boolean lambda$add$2(Path path) throws IOException {
            return Files.isDirectory(path, new LinkOption[0]);
        }

        public void lambda$initModuleTable$0(String str, List list) {
            if (list.stream().anyMatch(this.checkModuleInfo)) {
                this.moduleTable.add(new ModuleLocationHandler(this, this.location.getName() + "[" + str + "]", str, list, false));
            }
        }

        public static boolean lambda$new$1(Path path) {
            return Files.exists(path.resolve("module-info.java"), new LinkOption[0]);
        }

        public void add(Map<String, List<Path>> map, Path path, Path path2) {
            if (!Files.isDirectory(path, new LinkOption[0])) {
                if (Locations.this.warn) {
                    Locations.this.log.warning(Lint.LintCategory.PATH, Files.exists(path, new LinkOption[0]) ? "dir.path.element.not.directory" : "dir.path.element.not.found", path);
                    return;
                }
                return;
            }
            try {
                DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path, (DirectoryStream.Filter<? super Path>) new DirectoryStream.Filter() {
                    @Override
                    public final boolean accept(Object obj) {
                        boolean lambda$add$2;
                        lambda$add$2 = Locations.ModuleSourcePathLocationHandler.lambda$add$2((Path) obj);
                        return lambda$add$2;
                    }
                });
                try {
                    for (Path path3 : newDirectoryStream) {
                        Path resolve = path2 == null ? path3 : path3.resolve(path2);
                        if (Files.isDirectory(resolve, new LinkOption[0])) {
                            String path4 = path3.getFileName().toString();
                            List<Path> list = map.get(path4);
                            if (list == null) {
                                list = new ArrayList<>();
                                map.put(path4, list);
                            }
                            list.add(resolve);
                        }
                    }
                    newDirectoryStream.close();
                } finally {
                }
            } catch (IOException e10) {
                System.err.println(e10);
            }
        }

        @Override
        public boolean contains(Path path) throws IOException {
            ModuleTable moduleTable = this.moduleTable;
            if (moduleTable == null) {
                return false;
            }
            return moduleTable.contains(path);
        }

        @Override
        public JavaFileManager.Location getLocationForModule(String str) {
            ModuleTable moduleTable = this.moduleTable;
            if (moduleTable == null) {
                return null;
            }
            return moduleTable.get(str);
        }

        public int getMatchingBrace(String str, int i10) {
            int i11 = 1;
            for (int i12 = i10 + 1; i12 < str.length(); i12++) {
                char charAt = str.charAt(i12);
                if (charAt == '{') {
                    i11++;
                } else if (charAt == '}' && i11 - 1 == 0) {
                    return i12;
                }
            }
            throw new IllegalArgumentException("mismatched braces");
        }

        @Override
        public Collection<Path> getPaths() {
            List<Path> list = this.paths;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("paths not available");
        }

        @Override
        public boolean handleOption(Option option, String str) {
            init(str);
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00c2, code lost:
        
            throw new java.lang.IllegalArgumentException("illegal use of * in " + r4);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void init(String str) {
            String next;
            ArrayList arrayList = new ArrayList();
            for (String str2 : str.split(File.pathSeparator)) {
                expandBraces(str2, arrayList);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it = arrayList.iterator();
            boolean z10 = false;
            while (true) {
                Path path = null;
                if (!it.hasNext()) {
                    initModuleTable(linkedHashMap);
                    if (z10) {
                        arrayList2 = null;
                    }
                    this.paths = arrayList2;
                    return;
                }
                next = it.next();
                int indexOf = next.indexOf("*");
                if (indexOf != -1) {
                    if (indexOf == 0) {
                        break;
                    }
                    int i10 = indexOf - 1;
                    if (!isSeparator(next.charAt(i10))) {
                        break;
                    }
                    Path path2 = Locations.this.getPath(next.substring(0, i10), new String[0]);
                    int i11 = indexOf + 1;
                    if (i11 != next.length()) {
                        if (!isSeparator(next.charAt(i11)) || next.indexOf("*", i11) != -1) {
                            break;
                        }
                        path = Locations.this.getPath(next.substring(indexOf + 2), new String[0]);
                        z10 = true;
                    }
                    add(linkedHashMap, path2, path);
                    if (path == null) {
                        arrayList2.add(path2);
                    }
                } else {
                    Path path3 = Locations.this.getPath(next, new String[0]);
                    add(linkedHashMap, path3, null);
                    arrayList2.add(path3);
                }
            }
            throw new IllegalArgumentException("illegal use of * in " + next);
        }

        @Override
        public boolean isSet() {
            return this.moduleTable != null;
        }

        @Override
        public Iterable<Set<JavaFileManager.Location>> listLocationsForModules() {
            ModuleTable moduleTable = this.moduleTable;
            return moduleTable == null ? Collections.emptySet() : Collections.singleton(moduleTable.locations());
        }

        @Override
        public void setPaths(Iterable<? extends Path> iterable) throws IOException {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ArrayList arrayList = new ArrayList();
            for (Path path : iterable) {
                add(linkedHashMap, path, null);
                arrayList.add(path);
            }
            initModuleTable(linkedHashMap);
            this.paths = Collections.unmodifiableList(arrayList);
        }

        @Override
        public void setPathsForModule(String str, Iterable<? extends Path> iterable) throws IOException {
            List<Path> checkPaths = checkPaths(iterable);
            if (this.moduleTable == null) {
                this.moduleTable = new ModuleTable(Locations.this, null);
            }
            ModuleLocationHandler moduleLocationHandler = this.moduleTable.get(str);
            if (moduleLocationHandler != null) {
                moduleLocationHandler.searchPath = checkPaths;
                this.moduleTable.updatePaths(moduleLocationHandler);
                return;
            }
            this.moduleTable.add(new ModuleLocationHandler(this, this.location.getName() + "[" + str + "]", str, checkPaths, true));
        }

        @Override
        public JavaFileManager.Location getLocationForModule(Path path) {
            ModuleTable moduleTable = this.moduleTable;
            if (moduleTable == null) {
                return null;
            }
            return moduleTable.get(path);
        }
    }

    public class ModuleTable {
        private final Map<String, ModuleLocationHandler> nameMap;
        private final Map<Path, ModuleLocationHandler> pathMap;

        private ModuleTable() {
            this.nameMap = new LinkedHashMap();
            this.pathMap = new LinkedHashMap();
        }

        public void add(ModuleLocationHandler moduleLocationHandler) {
            this.nameMap.put(moduleLocationHandler.moduleName, moduleLocationHandler);
            Iterator<Path> it = moduleLocationHandler.searchPath.iterator();
            while (it.hasNext()) {
                this.pathMap.put(Locations.normalize(it.next()), moduleLocationHandler);
            }
        }

        public void clear() {
            this.nameMap.clear();
            this.pathMap.clear();
        }

        public boolean contains(Path path) throws IOException {
            return Locations.this.contains(this.pathMap.o(), path);
        }

        public ModuleLocationHandler get(String str) {
            return this.nameMap.get(str);
        }

        public boolean isEmpty() {
            return this.nameMap.isEmpty();
        }

        public Set<JavaFileManager.Location> locations() {
            return Collections.unmodifiableSet((Set) this.nameMap.values().stream().collect(Collectors.toSet()));
        }

        public void updatePaths(ModuleLocationHandler moduleLocationHandler) {
            Iterator<Map.Entry<Path, ModuleLocationHandler>> it = this.pathMap.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue() == moduleLocationHandler) {
                    it.remove();
                }
            }
            Iterator<Path> it2 = moduleLocationHandler.searchPath.iterator();
            while (it2.hasNext()) {
                this.pathMap.put(Locations.normalize(it2.next()), moduleLocationHandler);
            }
        }

        public ModuleLocationHandler get(Path path) {
            while (path != null) {
                ModuleLocationHandler moduleLocationHandler = this.pathMap.get(path);
                if (moduleLocationHandler != null) {
                    return moduleLocationHandler;
                }
                path = path.getParent();
            }
            return null;
        }

        public ModuleTable(Locations locations, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public class PatchModulesLocationHandler extends BasicLocationHandler {
        private final ModuleTable moduleTable;

        public PatchModulesLocationHandler() {
            super(StandardLocation.PATCH_MODULE_PATH, Option.PATCH_MODULE);
            this.moduleTable = new ModuleTable(Locations.this, null);
        }

        @Override
        public boolean contains(Path path) throws IOException {
            return this.moduleTable.contains(path);
        }

        @Override
        public JavaFileManager.Location getLocationForModule(String str) throws IOException {
            return this.moduleTable.get(str);
        }

        @Override
        public Collection<Path> getPaths() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean handleOption(Option option, String str) {
            if (!this.options.contains(option)) {
                return false;
            }
            this.moduleTable.clear();
            for (String str2 : str.split(DexFormat.MAGIC_SUFFIX)) {
                int indexOf = str2.indexOf(61);
                if (indexOf > 0) {
                    String substring = str2.substring(0, indexOf);
                    this.moduleTable.add(new ModuleLocationHandler(this, this.location.getName() + "[" + substring + "]", substring, new SearchPath(Locations.this, null).addFiles(str2.substring(indexOf + 1)), false));
                } else {
                    Locations.this.log.error(CompilerProperties.Errors.LocnInvalidArgForXpatch(str));
                }
            }
            return true;
        }

        @Override
        public boolean isSet() {
            return !this.moduleTable.isEmpty();
        }

        @Override
        public Iterable<Set<JavaFileManager.Location>> listLocationsForModules() throws IOException {
            return Collections.singleton(this.moduleTable.locations());
        }

        @Override
        public void setPaths(Iterable<? extends Path> iterable) throws IOException {
            throw new UnsupportedOperationException();
        }

        @Override
        public void setPathsForModule(String str, Iterable<? extends Path> iterable) throws IOException {
            throw new UnsupportedOperationException();
        }

        @Override
        public JavaFileManager.Location getLocationForModule(Path path) throws IOException {
            return this.moduleTable.get(path);
        }
    }

    public class SearchPath extends LinkedHashSet<Path> {
        private static final long serialVersionUID = 0;
        private final Set<Path> canonicalValues;
        private Path emptyPathDefault;
        private boolean expandJarClassPaths;

        private SearchPath() {
            this.expandJarClassPaths = false;
            this.canonicalValues = new HashSet();
            this.emptyPathDefault = null;
        }

        private void addDirectory(Path path, final boolean z10) {
            if (!Files.isDirectory(path, new LinkOption[0])) {
                if (z10) {
                    Locations.this.log.warning(Lint.LintCategory.PATH, "dir.path.element.not.found", path);
                }
            } else {
                try {
                    Stream<Path> list = Files.list(path);
                    try {
                        final Locations locations = Locations.this;
                        list.filter(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                boolean access$500;
                                access$500 = Locations.access$500(Locations.this, (Path) obj);
                                return access$500;
                            }
                        }).forEach(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                Locations.SearchPath.this.lambda$addDirectory$1(z10, (Path) obj);
                            }
                        });
                        list.close();
                    } finally {
                    }
                } catch (IOException unused) {
                }
            }
        }

        private void addJarClassPath(Path path, boolean z10) {
            try {
                Iterator<Path> it = Locations.this.fsInfo.getJarClassPath(path).iterator();
                while (it.hasNext()) {
                    lambda$addDirectory$1(it.next(), z10);
                }
            } catch (IOException e10) {
                Locations.this.log.error("error.reading.file", path, JavacFileManager.getMessage(e10));
            }
        }

        public SearchPath addDirectories(String str, boolean z10) {
            boolean z11 = this.expandJarClassPaths;
            this.expandJarClassPaths = true;
            if (str != null) {
                try {
                    Iterator it = Locations.this.getPathEntries(str).iterator();
                    while (it.hasNext()) {
                        addDirectory((Path) it.next(), z10);
                    }
                } finally {
                    this.expandJarClassPaths = z11;
                }
            }
            return this;
        }

        public void lambda$addDirectory$1(Path path, boolean z10) {
            if (contains(path)) {
                return;
            }
            if (!Locations.this.fsInfo.exists(path)) {
                if (z10) {
                    Locations.this.log.warning(Lint.LintCategory.PATH, "path.element.not.found", path);
                }
                super.add(path);
                return;
            }
            Path canonicalFile = Locations.this.fsInfo.getCanonicalFile(path);
            if (this.canonicalValues.contains(canonicalFile)) {
                return;
            }
            if (Locations.this.fsInfo.isFile(path) && !path.getFileName().toString().endsWith(".jmod") && !path.endsWith("modules")) {
                if (!Locations.this.isArchive(path)) {
                    try {
                        FileSystems.newFileSystem(path, (ClassLoader) null).close();
                        if (z10) {
                            Locations.this.log.warning(Lint.LintCategory.PATH, "unexpected.archive.file", path);
                        }
                    } catch (IOException | ProviderNotFoundException unused) {
                        if (z10) {
                            Locations.this.log.warning(Lint.LintCategory.PATH, "invalid.archive.file", path);
                            return;
                        }
                        return;
                    }
                } else if (Locations.this.fsInfo.getJarFSProvider() == null) {
                    Locations.this.log.error(CompilerProperties.Errors.NoZipfsForArchive(path));
                    return;
                }
            }
            super.add(path);
            this.canonicalValues.add(canonicalFile);
            if (this.expandJarClassPaths && Locations.this.fsInfo.isFile(path) && !path.endsWith("modules")) {
                addJarClassPath(path, z10);
            }
        }

        public SearchPath addFiles(String str, boolean z10) {
            if (str != null) {
                addFiles(Locations.this.getPathEntries(str, this.emptyPathDefault), z10);
            }
            return this;
        }

        public SearchPath emptyPathDefault(Path path) {
            this.emptyPathDefault = path;
            return this;
        }

        public SearchPath expandJarClassPaths(boolean z10) {
            this.expandJarClassPaths = z10;
            return this;
        }

        public SearchPath addFiles(String str) {
            return addFiles(str, Locations.this.warn);
        }

        public SearchPath addFiles(Iterable<? extends Path> iterable, boolean z10) {
            if (iterable != null) {
                Iterator<? extends Path> it = iterable.iterator();
                while (it.hasNext()) {
                    lambda$addDirectory$1(it.next(), z10);
                }
            }
            return this;
        }

        public SearchPath(Locations locations, AnonymousClass1 anonymousClass1) {
            this();
        }

        public SearchPath addFiles(Iterable<? extends Path> iterable) {
            return addFiles(iterable, Locations.this.warn);
        }

        public SearchPath addDirectories(String str) {
            return addDirectories(str, Locations.this.warn);
        }
    }

    public class SimpleLocationHandler extends BasicLocationHandler {
        protected Collection<Path> searchPath;

        public SimpleLocationHandler(JavaFileManager.Location location, Option... optionArr) {
            super(location, optionArr);
        }

        public SearchPath computePath(String str) {
            return createPath().addFiles(str);
        }

        @Override
        public boolean contains(Path path) throws IOException {
            return Locations.this.contains(this.searchPath, path);
        }

        public SearchPath createPath() {
            return new SearchPath(Locations.this, null);
        }

        @Override
        public Collection<Path> getPaths() {
            return this.searchPath;
        }

        @Override
        public boolean handleOption(Option option, String str) {
            if (!this.options.contains(option)) {
                return false;
            }
            this.searchPath = str == null ? null : Collections.unmodifiableCollection(createPath().addFiles(str));
            return true;
        }

        @Override
        public void setPaths(Iterable<? extends Path> iterable) {
            this.searchPath = Collections.unmodifiableCollection(iterable == null ? computePath(null) : createPath().addFiles(iterable));
        }
    }

    static {
        Path path = FileSystems.getDefault().getPath(System.getProperty("java.home"), new String[0]);
        javaHome = path;
        thisSystemModules = path.resolve("lib").resolve("modules");
    }

    public Locations() {
        initHandlers();
    }

    public static boolean access$500(Locations locations, Path path) {
        return locations.isArchive(path);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean contains(Collection<Path> collection, Path path) throws IOException {
        Path path2;
        Iterator<Path> it;
        if (collection == null) {
            return false;
        }
        if (path.getFileSystem().provider() == this.fsInfo.getJarFSProvider()) {
            URI uri = path.toUri();
            if (uri.getScheme().equals("jar")) {
                String schemeSpecificPart = uri.getSchemeSpecificPart();
                int lastIndexOf = schemeSpecificPart.lastIndexOf("!");
                if (schemeSpecificPart.startsWith("file:") && lastIndexOf > 0) {
                    path2 = Paths.get(URI.create(schemeSpecificPart.substring(0, lastIndexOf)));
                    Path normalize = normalize(path);
                    it = collection.iterator();
                    while (it.hasNext()) {
                        Path normalize2 = normalize(it.next());
                        if (normalize2.getFileSystem() == normalize.getFileSystem() && Files.isDirectory(normalize2, new LinkOption[0]) && normalize.startsWith(normalize2)) {
                            return true;
                        }
                        if (path2 != null && Files.isSameFile(path2, normalize2)) {
                            return true;
                        }
                    }
                    return false;
                }
            }
        }
        path2 = null;
        Path normalize3 = normalize(path);
        it = collection.iterator();
        while (it.hasNext()) {
        }
        return false;
    }

    public Iterable<Path> getPathEntries(String str) {
        return getPathEntries(str, null);
    }

    public boolean isArchive(Path path) {
        String lowerCase = StringUtils.toLowerCase(path.getFileName().toString());
        return this.fsInfo.isFile(path) && (lowerCase.endsWith(".jar") || lowerCase.endsWith(".zip"));
    }

    public static void lambda$close$0(ListBuffer listBuffer, Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e10) {
            listBuffer.add(e10);
        }
    }

    public static Path normalize(Path path) {
        try {
            return path.toRealPath(new LinkOption[0]);
        } catch (IOException unused) {
            return path.toAbsolutePath().normalize();
        }
    }

    public void close() throws IOException {
        final ListBuffer listBuffer = new ListBuffer();
        this.closeables.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Locations.lambda$close$0(ListBuffer.this, (Closeable) obj);
            }
        });
        if (listBuffer.nonEmpty()) {
            IOException iOException = new IOException();
            Iterator it = listBuffer.iterator();
            while (it.hasNext()) {
                iOException.addSuppressed((IOException) it.next());
            }
            throw iOException;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LocationHandler getHandler(JavaFileManager.Location location) {
        Objects.requireNonNull(location);
        return location instanceof LocationHandler ? (LocationHandler) location : this.handlersForLocation.get(location);
    }

    public Collection<Path> getLocation(JavaFileManager.Location location) {
        LocationHandler handler = getHandler(location);
        if (handler == null) {
            return null;
        }
        return handler.getPaths();
    }

    public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, String str) throws IOException {
        LocationHandler handler = getHandler(location);
        if (handler == null) {
            return null;
        }
        return handler.getLocationForModule(str);
    }

    public Path getOutputLocation(JavaFileManager.Location location) {
        if (location.isOutputLocation()) {
            return ((OutputLocationHandler) getHandler(location)).outputDir;
        }
        throw new IllegalArgumentException();
    }

    public Path getPath(String str, String... strArr) {
        try {
            return this.pathFactory.getPath(str, strArr);
        } catch (InvalidPathException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public boolean handleOption(Option option, String str) {
        LocationHandler locationHandler = this.handlersForOption.get(option);
        if (locationHandler == null) {
            return false;
        }
        return locationHandler.handleOption(option, str);
    }

    public boolean hasLocation(JavaFileManager.Location location) {
        LocationHandler handler = getHandler(location);
        if (handler == null) {
            return false;
        }
        return handler.isSet();
    }

    public String inferModuleName(JavaFileManager.Location location) {
        LocationHandler handler = getHandler(location);
        if (handler == null) {
            return null;
        }
        return handler.inferModuleName();
    }

    public void initHandlers() {
        this.handlersForLocation = new HashMap();
        this.handlersForOption = new EnumMap(Option.class);
        BasicLocationHandler[] basicLocationHandlerArr = {new BootClassPathLocationHandler(), new ClassPathLocationHandler(), new SimpleLocationHandler(StandardLocation.SOURCE_PATH, Option.SOURCE_PATH), new SimpleLocationHandler(StandardLocation.ANNOTATION_PROCESSOR_PATH, Option.PROCESSOR_PATH), new SimpleLocationHandler(StandardLocation.ANNOTATION_PROCESSOR_MODULE_PATH, Option.PROCESSOR_MODULE_PATH), new OutputLocationHandler(StandardLocation.CLASS_OUTPUT, Option.f103255D), new OutputLocationHandler(StandardLocation.SOURCE_OUTPUT, Option.f103260S), new OutputLocationHandler(StandardLocation.NATIVE_HEADER_OUTPUT, Option.f103257H), new ModuleSourcePathLocationHandler(), new PatchModulesLocationHandler(), new ModulePathLocationHandler(StandardLocation.UPGRADE_MODULE_PATH, Option.UPGRADE_MODULE_PATH), new ModulePathLocationHandler(StandardLocation.MODULE_PATH, Option.MODULE_PATH), new SystemModulesLocationHandler()};
        for (int i10 = 0; i10 < 13; i10++) {
            BasicLocationHandler basicLocationHandler = basicLocationHandlerArr[i10];
            this.handlersForLocation.put(basicLocationHandler.location, basicLocationHandler);
            Iterator<Option> it = basicLocationHandler.options.iterator();
            while (it.hasNext()) {
                this.handlersForOption.put(it.next(), basicLocationHandler);
            }
        }
    }

    public boolean isDefaultBootClassPath() {
        return ((BootClassPathLocationHandler) getHandler(StandardLocation.PLATFORM_CLASS_PATH)).isDefault();
    }

    public Iterable<Set<JavaFileManager.Location>> listLocationsForModules(JavaFileManager.Location location) throws IOException {
        LocationHandler handler = getHandler(location);
        if (handler == null) {
            return null;
        }
        return handler.listLocationsForModules();
    }

    public void setLocation(JavaFileManager.Location location, Iterable<? extends Path> iterable) throws IOException {
        LocationHandler handler = getHandler(location);
        if (handler == null) {
            handler = location.isOutputLocation() ? new OutputLocationHandler(location, new Option[0]) : new SimpleLocationHandler(location, new Option[0]);
            this.handlersForLocation.put(location, handler);
        }
        handler.setPaths(iterable);
    }

    public void setLocationForModule(JavaFileManager.Location location, String str, Iterable<? extends Path> iterable) throws IOException {
        LocationHandler handler = getHandler(location);
        if (handler == null) {
            handler = location.isOutputLocation() ? new OutputLocationHandler(location, new Option[0]) : new ModulePathLocationHandler(location, new Option[0]);
            this.handlersForLocation.put(location, handler);
        }
        handler.setPathsForModule(str, iterable);
    }

    public void setMultiReleaseValue(String str) {
        this.fsEnv = Collections.singletonMap("multi-release", str);
    }

    public void setPathFactory(StandardJavaFileManager.PathFactory pathFactory) {
        this.pathFactory = pathFactory;
    }

    public void update(Log log, boolean z10, FSInfo fSInfo) {
        this.log = log;
        this.warn = z10;
        this.fsInfo = fSInfo;
    }

    public class ModulePathLocationHandler extends SimpleLocationHandler {
        private ModuleTable moduleTable;

        public class ModulePathIterator implements Iterator<Set<JavaFileManager.Location>> {
            Iterator<Path> pathIter;
            int pathIndex = 0;
            Set<JavaFileManager.Location> next = null;

            public ModulePathIterator() {
                this.pathIter = ModulePathLocationHandler.this.searchPath.iterator();
            }

            private Pair<String, Path> inferModuleName(Path path) {
                String value;
                if (Files.isDirectory(path, new LinkOption[0])) {
                    if (Files.exists(path.resolve("module-info.class"), new LinkOption[0])) {
                        String path2 = path.getFileName().toString();
                        if (SourceVersion.isName(path2)) {
                            return new Pair<>(path2, path);
                        }
                    }
                    return null;
                }
                if (!path.getFileName().toString().endsWith(".jar") || !Locations.this.fsInfo.exists(path)) {
                    if (path.getFileName().toString().endsWith(".jmod")) {
                        try {
                            JDK9Wrappers.JmodFile.checkMagic(path);
                            if (Locations.this.fileSystems.get(path) == null) {
                                FileSystemProvider jarFSProvider = Locations.this.fsInfo.getJarFSProvider();
                                if (jarFSProvider == null) {
                                    Locations.this.log.error(CompilerProperties.Errors.LocnCantReadFile(path));
                                    return null;
                                }
                                FileSystem newFileSystem = jarFSProvider.newFileSystem(path, Collections.emptyMap());
                                try {
                                    String readModuleName = readModuleName(newFileSystem.getPath("classes/module-info.class", new String[0]));
                                    Path path3 = newFileSystem.getPath("classes", new String[0]);
                                    Locations.this.fileSystems.put(path, newFileSystem);
                                    Locations.this.closeables.add(newFileSystem);
                                    try {
                                        return new Pair<>(readModuleName, path3);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        newFileSystem = null;
                                        if (newFileSystem != null) {
                                            newFileSystem.close();
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                        } catch (IOException unused) {
                            Locations.this.log.error(CompilerProperties.Errors.LocnCantReadFile(path));
                            return null;
                        } catch (ModuleNameReader.BadClassFile unused2) {
                            Locations.this.log.error(CompilerProperties.Errors.LocnBadModuleInfo(path));
                        }
                    }
                    boolean unused3 = Locations.this.warn;
                    return null;
                }
                FileSystemProvider jarFSProvider2 = Locations.this.fsInfo.getJarFSProvider();
                if (jarFSProvider2 == null) {
                    Locations.this.log.error(CompilerProperties.Errors.NoZipfsForArchive(path));
                    return null;
                }
                try {
                    FileSystem newFileSystem2 = jarFSProvider2.newFileSystem(path, Locations.this.fsEnv);
                    try {
                        Path path4 = newFileSystem2.getPath("module-info.class", new String[0]);
                        if (Files.exists(path4, new LinkOption[0])) {
                            Pair<String, Path> pair = new Pair<>(readModuleName(path4), path);
                            newFileSystem2.close();
                            return pair;
                        }
                        Path path5 = newFileSystem2.getPath("META-INF/MANIFEST.MF", new String[0]);
                        if (Files.exists(path5, new LinkOption[0])) {
                            InputStream newInputStream = Files.newInputStream(path5, new OpenOption[0]);
                            try {
                                Attributes mainAttributes = new Manifest(newInputStream).getMainAttributes();
                                if (mainAttributes != null && (value = mainAttributes.getValue(new Attributes.Name(TypeConstants.AUTOMATIC_MODULE_NAME))) != null) {
                                    if (ModulePathLocationHandler.this.isModuleName(value)) {
                                        Pair<String, Path> pair2 = new Pair<>(value, path);
                                        if (newInputStream != null) {
                                            newInputStream.close();
                                        }
                                        newFileSystem2.close();
                                        return pair2;
                                    }
                                    Locations.this.log.error(CompilerProperties.Errors.LocnCantGetModuleNameForJar(path));
                                    if (newInputStream != null) {
                                        newInputStream.close();
                                    }
                                    newFileSystem2.close();
                                    return null;
                                }
                                if (newInputStream != null) {
                                    newInputStream.close();
                                }
                            } catch (Throwable th4) {
                                try {
                                    throw th4;
                                } finally {
                                }
                            }
                        }
                        newFileSystem2.close();
                        String substring = path.getFileName().toString().substring(0, r1.length() - 4);
                        Matcher matcher = Pattern.compile("-(\\d+(\\.|$))").matcher(substring);
                        if (matcher.find()) {
                            substring = substring.substring(0, matcher.start());
                        }
                        String replaceAll = substring.replaceAll("[^A-Za-z0-9]", ".").replaceAll("(\\.)(\\1)+", ".").replaceAll("^\\.", "").replaceAll("\\.$", "");
                        if (!replaceAll.isEmpty()) {
                            return new Pair<>(replaceAll, path);
                        }
                        Locations.this.log.error(CompilerProperties.Errors.LocnCantGetModuleNameForJar(path));
                        return null;
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            if (newFileSystem2 != null) {
                                try {
                                    newFileSystem2.close();
                                } catch (Throwable th7) {
                                    th5.addSuppressed(th7);
                                }
                            }
                            throw th6;
                        }
                    }
                } catch (IOException unused4) {
                    Locations.this.log.error(CompilerProperties.Errors.LocnCantReadFile(path));
                    return null;
                } catch (ModuleNameReader.BadClassFile unused5) {
                    Locations.this.log.error(CompilerProperties.Errors.LocnBadModuleInfo(path));
                    return null;
                }
            }

            private String readModuleName(Path path) throws IOException, ModuleNameReader.BadClassFile {
                if (Locations.this.moduleNameReader == null) {
                    Locations.this.moduleNameReader = new ModuleNameReader();
                }
                return Locations.this.moduleNameReader.readModuleName(path);
            }

            private Set<JavaFileManager.Location> scanDirectory(Path path) {
                Path path2;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                try {
                    DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path);
                    try {
                        Iterator<Path> it = newDirectoryStream.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                path2 = null;
                                break;
                            }
                            path2 = it.next();
                            if (path2.endsWith("module-info.class")) {
                                break;
                            }
                            linkedHashSet.add(path2);
                        }
                        newDirectoryStream.close();
                        if (path2 != null) {
                            try {
                                String readModuleName = readModuleName(path2);
                                String str = ModulePathLocationHandler.this.location.getName() + "[" + this.pathIndex + s.f32937c + readModuleName + "]";
                                ModulePathLocationHandler modulePathLocationHandler = ModulePathLocationHandler.this;
                                return Collections.singleton(new ModuleLocationHandler(modulePathLocationHandler, str, readModuleName, Collections.singletonList(path), false));
                            } catch (IOException unused) {
                                Locations.this.log.error(CompilerProperties.Errors.LocnCantReadFile(path));
                                return Collections.emptySet();
                            } catch (ModuleNameReader.BadClassFile unused2) {
                                Locations.this.log.error(CompilerProperties.Errors.LocnBadModuleInfo(path));
                                return Collections.emptySet();
                            }
                        }
                        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                        Iterator<E> it2 = linkedHashSet.iterator();
                        int i10 = 0;
                        while (it2.hasNext()) {
                            Pair<String, Path> inferModuleName = inferModuleName((Path) it2.next());
                            if (inferModuleName != null) {
                                String str2 = inferModuleName.fst;
                                Path path3 = inferModuleName.snd;
                                String str3 = ModulePathLocationHandler.this.location.getName() + "[" + this.pathIndex + "." + i10 + s.f32937c + str2 + "]";
                                ModulePathLocationHandler modulePathLocationHandler2 = ModulePathLocationHandler.this;
                                linkedHashSet2.add(new ModuleLocationHandler(modulePathLocationHandler2, str3, str2, Collections.singletonList(path3), false));
                                i10++;
                            }
                        }
                        return linkedHashSet2;
                    } finally {
                    }
                } catch (IOException | DirectoryIteratorException unused3) {
                    Locations.this.log.error(CompilerProperties.Errors.LocnCantReadDirectory(path));
                    return Collections.emptySet();
                }
            }

            private Set<JavaFileManager.Location> scanFile(Path path) {
                Pair<String, Path> inferModuleName = inferModuleName(path);
                if (inferModuleName == null) {
                    return Collections.emptySet();
                }
                String str = inferModuleName.fst;
                Path path2 = inferModuleName.snd;
                String str2 = ModulePathLocationHandler.this.location.getName() + "[" + this.pathIndex + s.f32937c + str + "]";
                ModulePathLocationHandler modulePathLocationHandler = ModulePathLocationHandler.this;
                return Collections.singleton(new ModuleLocationHandler(modulePathLocationHandler, str2, str, Collections.singletonList(path2), false));
            }

            @Override
            public boolean hasNext() {
                if (this.next != null) {
                    return true;
                }
                while (this.next == null) {
                    if (!this.pathIter.hasNext()) {
                        return false;
                    }
                    Path next = this.pathIter.next();
                    if (Files.isDirectory(next, new LinkOption[0])) {
                        this.next = scanDirectory(next);
                    } else {
                        this.next = scanFile(next);
                    }
                    this.pathIndex++;
                }
                return true;
            }

            @Override
            public Set<JavaFileManager.Location> next() {
                hasNext();
                Set<JavaFileManager.Location> set = this.next;
                if (set != null) {
                    this.next = null;
                    return set;
                }
                throw new NoSuchElementException();
            }
        }

        public ModulePathLocationHandler(JavaFileManager.Location location, Option... optionArr) {
            super(location, optionArr);
        }

        private List<Path> checkPaths(Iterable<? extends Path> iterable) throws IOException {
            Objects.requireNonNull(iterable);
            ArrayList arrayList = new ArrayList();
            Iterator<? extends Path> it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(checkDirectory(it.next()));
            }
            return arrayList;
        }

        private void checkValidModulePathEntry(Path path) {
            if (Files.exists(path, new LinkOption[0]) && !Files.isDirectory(path, new LinkOption[0])) {
                String path2 = path.getFileName().toString();
                int lastIndexOf = path2.lastIndexOf(".");
                if (lastIndexOf > 0) {
                    String substring = path2.substring(lastIndexOf);
                    substring.hashCode();
                    if (substring.equals(".jar") || substring.equals(".jmod")) {
                        return;
                    }
                }
                throw new IllegalArgumentException(path.toString());
            }
        }

        private void initModuleLocations() {
            if (this.moduleTable != null) {
                return;
            }
            this.moduleTable = new ModuleTable(Locations.this, null);
            Iterator<Set<JavaFileManager.Location>> it = listLocationsForModules().iterator();
            while (it.hasNext()) {
                for (JavaFileManager.Location location : it.next()) {
                    if (location instanceof ModuleLocationHandler) {
                        ModuleLocationHandler moduleLocationHandler = (ModuleLocationHandler) location;
                        if (!this.moduleTable.nameMap.containsKey(moduleLocationHandler.moduleName)) {
                            this.moduleTable.add(moduleLocationHandler);
                        }
                    }
                }
            }
        }

        public boolean isModuleName(String str) {
            int i10 = 0;
            while (true) {
                int indexOf = str.indexOf(46, i10);
                if (indexOf == -1) {
                    return SourceVersion.isName(str.substring(i10));
                }
                if (!SourceVersion.isName(str.substring(i10, indexOf))) {
                    return false;
                }
                i10 = indexOf + 1;
            }
        }

        public Iterator lambda$listLocationsForModules$0() {
            return new ModulePathIterator();
        }

        @Override
        public boolean contains(Path path) throws IOException {
            if (this.moduleTable == null) {
                initModuleLocations();
            }
            return this.moduleTable.contains(path);
        }

        @Override
        public JavaFileManager.Location getLocationForModule(String str) {
            initModuleLocations();
            return this.moduleTable.get(str);
        }

        @Override
        public boolean handleOption(Option option, String str) {
            if (!this.options.contains(option)) {
                return false;
            }
            setPaths(str == null ? null : Locations.this.getPathEntries(str));
            return true;
        }

        @Override
        public Iterable<Set<JavaFileManager.Location>> listLocationsForModules() {
            return this.searchPath == null ? Collections.emptyList() : new Iterable() {
                @Override
                public final Iterator iterator() {
                    Iterator lambda$listLocationsForModules$0;
                    lambda$listLocationsForModules$0 = Locations.ModulePathLocationHandler.this.lambda$listLocationsForModules$0();
                    return lambda$listLocationsForModules$0;
                }
            };
        }

        @Override
        public void setPaths(Iterable<? extends Path> iterable) {
            if (iterable != null) {
                Iterator<? extends Path> it = iterable.iterator();
                while (it.hasNext()) {
                    checkValidModulePathEntry(it.next());
                }
            }
            super.setPaths(iterable);
            this.moduleTable = null;
        }

        @Override
        public void setPathsForModule(String str, Iterable<? extends Path> iterable) throws IOException {
            List<Path> checkPaths = checkPaths(iterable);
            initModuleLocations();
            ModuleLocationHandler moduleLocationHandler = this.moduleTable.get(str);
            if (moduleLocationHandler != null) {
                moduleLocationHandler.searchPath = checkPaths;
                this.moduleTable.updatePaths(moduleLocationHandler);
                return;
            }
            this.moduleTable.add(new ModuleLocationHandler(this, this.location.getName() + "[" + str + "]", str, checkPaths, true));
        }

        @Override
        public JavaFileManager.Location getLocationForModule(Path path) {
            initModuleLocations();
            return this.moduleTable.get(path);
        }
    }

    public class SystemModulesLocationHandler extends BasicLocationHandler {
        private ModuleTable moduleTable;
        private Path modules;
        private Path systemJavaHome;

        public SystemModulesLocationHandler() {
            super(StandardLocation.SYSTEM_MODULES, Option.SYSTEM);
            this.systemJavaHome = Locations.javaHome;
        }

        private List<Path> checkPaths(Iterable<? extends Path> iterable) throws IOException {
            Objects.requireNonNull(iterable);
            ArrayList arrayList = new ArrayList();
            Iterator<? extends Path> it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(checkDirectory(it.next()));
            }
            return arrayList;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ba A[Catch: all -> 0x00fb, LOOP:0: B:32:0x00b4->B:34:0x00ba, LOOP_END, TRY_LEAVE, TryCatch #3 {all -> 0x00fb, blocks: (B:31:0x00b0, B:32:0x00b4, B:34:0x00ba), top: B:30:0x00b0 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void initSystemModules() throws IOException {
            DirectoryStream<Path> newDirectoryStream;
            Path resolve;
            FileSystem newFileSystem;
            if (this.moduleTable != null) {
                return;
            }
            AnonymousClass1 anonymousClass1 = null;
            if (this.systemJavaHome == null) {
                this.moduleTable = new ModuleTable(Locations.this, anonymousClass1);
                return;
            }
            if (this.modules == null) {
                try {
                    try {
                        URI create = URI.create("jrt:/");
                        if (isCurrentPlatform(this.systemJavaHome)) {
                            newFileSystem = FileSystems.getFileSystem(create);
                        } else {
                            try {
                                newFileSystem = FileSystems.newFileSystem(create, (Map<String, ?>) Collections.singletonMap("java.home", this.systemJavaHome.toString()));
                            } catch (ProviderNotFoundException unused) {
                                URLClassLoader uRLClassLoader = new URLClassLoader(new URL[]{this.systemJavaHome.resolve(JRTUtil.JRT_FS_JAR).toUri().toURL()}, Locations.class.getClassLoader());
                                newFileSystem = FileSystems.newFileSystem(create, Collections.emptyMap(), uRLClassLoader);
                                Locations.this.closeables.add(uRLClassLoader);
                            }
                            Locations.this.closeables.add(newFileSystem);
                        }
                        this.modules = newFileSystem.getPath("/modules", new String[0]);
                    } catch (ProviderNotFoundException e10) {
                        e = e10;
                        resolve = this.systemJavaHome.resolve("modules");
                        this.modules = resolve;
                        if (!Files.exists(resolve, new LinkOption[0])) {
                            throw new IOException("can't find system classes", e);
                        }
                        this.moduleTable = new ModuleTable(Locations.this, anonymousClass1);
                        newDirectoryStream = Files.newDirectoryStream(this.modules, (DirectoryStream.Filter<? super Path>) new DirectoryStream.Filter() {
                            @Override
                            public final boolean accept(Object obj) {
                                boolean lambda$initSystemModules$0;
                                lambda$initSystemModules$0 = Locations.SystemModulesLocationHandler.lambda$initSystemModules$0((Path) obj);
                                return lambda$initSystemModules$0;
                            }
                        });
                        while (r1.hasNext()) {
                        }
                        newDirectoryStream.close();
                    }
                } catch (FileSystemNotFoundException e11) {
                    e = e11;
                    resolve = this.systemJavaHome.resolve("modules");
                    this.modules = resolve;
                    if (!Files.exists(resolve, new LinkOption[0])) {
                    }
                    this.moduleTable = new ModuleTable(Locations.this, anonymousClass1);
                    newDirectoryStream = Files.newDirectoryStream(this.modules, (DirectoryStream.Filter<? super Path>) new DirectoryStream.Filter() {
                        @Override
                        public final boolean accept(Object obj) {
                            boolean lambda$initSystemModules$0;
                            lambda$initSystemModules$0 = Locations.SystemModulesLocationHandler.lambda$initSystemModules$0((Path) obj);
                            return lambda$initSystemModules$0;
                        }
                    });
                    while (r1.hasNext()) {
                    }
                    newDirectoryStream.close();
                }
            }
            this.moduleTable = new ModuleTable(Locations.this, anonymousClass1);
            newDirectoryStream = Files.newDirectoryStream(this.modules, (DirectoryStream.Filter<? super Path>) new DirectoryStream.Filter() {
                @Override
                public final boolean accept(Object obj) {
                    boolean lambda$initSystemModules$0;
                    lambda$initSystemModules$0 = Locations.SystemModulesLocationHandler.lambda$initSystemModules$0((Path) obj);
                    return lambda$initSystemModules$0;
                }
            });
            try {
                for (Path path : newDirectoryStream) {
                    String path2 = path.getFileName().toString();
                    this.moduleTable.add(new ModuleLocationHandler(this, this.location.getName() + "[" + path2 + "]", path2, Collections.singletonList(path), false));
                }
                newDirectoryStream.close();
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    if (newDirectoryStream != null) {
                        try {
                            newDirectoryStream.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            }
        }

        private boolean isCurrentPlatform(Path path) {
            try {
                return Files.isSameFile(path, Locations.javaHome);
            } catch (IOException e10) {
                throw new IllegalArgumentException(path.toString(), e10);
            }
        }

        public static boolean lambda$initSystemModules$0(Path path) throws IOException {
            return Files.isDirectory(path, new LinkOption[0]);
        }

        private void update(Path path) {
            if (!isCurrentPlatform(path) && !Files.exists(path.resolve("lib").resolve(JRTUtil.JRT_FS_JAR), new LinkOption[0]) && !Files.exists(this.systemJavaHome.resolve("modules"), new LinkOption[0])) {
                throw new IllegalArgumentException(path.toString());
            }
            this.systemJavaHome = path;
            this.modules = null;
        }

        @Override
        public boolean contains(Path path) throws IOException {
            initSystemModules();
            return this.moduleTable.contains(path);
        }

        @Override
        public JavaFileManager.Location getLocationForModule(String str) throws IOException {
            initSystemModules();
            return this.moduleTable.get(str);
        }

        @Override
        public Collection<Path> getPaths() {
            Path path = this.systemJavaHome;
            if (path == null) {
                return null;
            }
            return Collections.singleton(path);
        }

        @Override
        public boolean handleOption(Option option, String str) {
            if (!this.options.contains(option)) {
                return false;
            }
            if (str == null) {
                this.systemJavaHome = Locations.javaHome;
            } else if (str.equals("none")) {
                this.systemJavaHome = null;
            } else {
                update(Locations.this.getPath(str, new String[0]));
            }
            this.modules = null;
            return true;
        }

        @Override
        public Iterable<Set<JavaFileManager.Location>> listLocationsForModules() throws IOException {
            initSystemModules();
            return Collections.singleton(this.moduleTable.locations());
        }

        @Override
        public void setPaths(Iterable<? extends Path> iterable) throws IOException {
            if (iterable == null) {
                this.systemJavaHome = null;
            } else {
                update(checkSingletonDirectory(iterable));
            }
        }

        @Override
        public void setPathsForModule(String str, Iterable<? extends Path> iterable) throws IOException {
            List<Path> checkPaths = checkPaths(iterable);
            initSystemModules();
            ModuleLocationHandler moduleLocationHandler = this.moduleTable.get(str);
            if (moduleLocationHandler != null) {
                moduleLocationHandler.searchPath = checkPaths;
                this.moduleTable.updatePaths(moduleLocationHandler);
                return;
            }
            this.moduleTable.add(new ModuleLocationHandler(this, this.location.getName() + "[" + str + "]", str, checkPaths, true));
        }

        @Override
        public JavaFileManager.Location getLocationForModule(Path path) throws IOException {
            initSystemModules();
            return this.moduleTable.get(path);
        }
    }

    public Iterable<Path> getPathEntries(String str, Path path) {
        ListBuffer listBuffer = new ListBuffer();
        for (String str2 : str.split(Pattern.quote(File.pathSeparator), -1)) {
            if (!str2.isEmpty()) {
                try {
                    listBuffer.add(getPath(str2, new String[0]));
                } catch (IllegalArgumentException unused) {
                    if (this.warn) {
                        this.log.warning(Lint.LintCategory.PATH, "invalid.path", str2);
                    }
                }
            } else if (path != null) {
                listBuffer.add(path);
            }
        }
        return listBuffer;
    }

    public JavaFileManager.Location getLocationForModule(JavaFileManager.Location location, Path path) throws IOException {
        LocationHandler handler = getHandler(location);
        if (handler == null) {
            return null;
        }
        return handler.getLocationForModule(path);
    }

    public class OutputLocationHandler extends BasicLocationHandler {
        private boolean listed;
        private ModuleTable moduleTable;
        private Path outputDir;

        public OutputLocationHandler(JavaFileManager.Location location, Option... optionArr) {
            super(location, optionArr);
        }

        @Override
        public boolean contains(Path path) throws IOException {
            ModuleTable moduleTable = this.moduleTable;
            return moduleTable != null ? moduleTable.contains(path) : this.outputDir != null && Locations.normalize(path).startsWith(Locations.normalize(this.outputDir));
        }

        @Override
        public JavaFileManager.Location getLocationForModule(String str) {
            if (this.moduleTable == null) {
                this.moduleTable = new ModuleTable(Locations.this, null);
            }
            ModuleLocationHandler moduleLocationHandler = this.moduleTable.get(str);
            if (moduleLocationHandler != null) {
                return moduleLocationHandler;
            }
            Path resolve = this.outputDir.resolve(str);
            ModuleLocationHandler moduleLocationHandler2 = new ModuleLocationHandler(this, this.location.getName() + "[" + str + "]", str, Collections.singletonList(resolve), true);
            this.moduleTable.add(moduleLocationHandler2);
            return moduleLocationHandler2;
        }

        @Override
        public Collection<Path> getPaths() {
            Path path = this.outputDir;
            if (path == null) {
                return null;
            }
            return Collections.singleton(path);
        }

        @Override
        public boolean handleOption(Option option, String str) {
            if (!this.options.contains(option)) {
                return false;
            }
            this.outputDir = str == null ? null : Locations.this.getPath(str, new String[0]);
            return true;
        }

        @Override
        public Iterable<Set<JavaFileManager.Location>> listLocationsForModules() throws IOException {
            Path path;
            if (!this.listed && (path = this.outputDir) != null) {
                DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path);
                try {
                    Iterator<Path> it = newDirectoryStream.iterator();
                    while (it.hasNext()) {
                        getLocationForModule(it.next().getFileName().toString());
                    }
                    newDirectoryStream.close();
                    this.listed = true;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        if (newDirectoryStream != null) {
                            try {
                                newDirectoryStream.close();
                            } catch (Throwable th4) {
                                th2.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                }
            }
            ModuleTable moduleTable = this.moduleTable;
            return (moduleTable == null || moduleTable.isEmpty()) ? Collections.emptySet() : Collections.singleton(this.moduleTable.locations());
        }

        @Override
        public void setPaths(Iterable<? extends Path> iterable) throws IOException {
            if (iterable == null) {
                this.outputDir = null;
            } else {
                this.outputDir = checkSingletonDirectory(iterable);
            }
            this.moduleTable = null;
            this.listed = false;
        }

        @Override
        public void setPathsForModule(String str, Iterable<? extends Path> iterable) throws IOException {
            Path checkSingletonDirectory = checkSingletonDirectory(iterable);
            if (this.moduleTable == null) {
                this.moduleTable = new ModuleTable(Locations.this, null);
            }
            ModuleLocationHandler moduleLocationHandler = this.moduleTable.get(str);
            if (moduleLocationHandler != null) {
                moduleLocationHandler.searchPath = Collections.singletonList(checkSingletonDirectory);
                this.moduleTable.updatePaths(moduleLocationHandler);
                return;
            }
            this.moduleTable.add(new ModuleLocationHandler(this, this.location.getName() + "[" + str + "]", str, Collections.singletonList(checkSingletonDirectory), true));
        }

        @Override
        public JavaFileManager.Location getLocationForModule(Path path) {
            ModuleTable moduleTable = this.moduleTable;
            if (moduleTable == null) {
                return null;
            }
            return moduleTable.get(path);
        }
    }

    public boolean contains(JavaFileManager.Location location, Path path) throws IOException {
        LocationHandler handler = getHandler(location);
        if (handler != null) {
            return handler.contains(path);
        }
        throw new IllegalArgumentException("unknown location");
    }
}
