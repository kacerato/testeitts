package com.github.javaparser.utils;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseProblemException;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParseStart;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Providers;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.printer.DefaultPrettyPrinter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RecursiveAction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class SourceRoot {
    private static final Pattern JAVA_IDENTIFIER = Pattern.compile("\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*");
    private final Map<Path, ParseResult<CompilationUnit>> cache;
    private ParserConfiguration parserConfiguration;
    private Function<CompilationUnit, String> printer;
    private final Path root;

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$com$github$javaparser$utils$SourceRoot$Callback$Result;

        static {
            int[] iArr = new int[Callback.Result.values().length];
            $SwitchMap$com$github$javaparser$utils$SourceRoot$Callback$Result = iArr;
            try {
                iArr[Callback.Result.SAVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$utils$SourceRoot$Callback$Result[Callback.Result.DONT_SAVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$utils$SourceRoot$Callback$Result[Callback.Result.TERMINATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @FunctionalInterface
    public interface Callback {

        public enum Result {
            SAVE,
            DONT_SAVE,
            TERMINATE
        }

        Result process(Path localPath, Path absolutePath, ParseResult<CompilationUnit> result);
    }

    public static class ParallelParse extends RecursiveAction {
        private static final long serialVersionUID = 1;
        private final VisitFileCallback callback;
        private final SourceRoot root;

        public interface VisitFileCallback {
            FileVisitResult process(Path file, BasicFileAttributes attrs);
        }

        public ParallelParse(Path path, VisitFileCallback callback) {
            this.root = new SourceRoot(path);
            this.callback = callback;
        }

        @Override
        public void compute() {
            final ArrayList arrayList = new ArrayList();
            final Path root = this.root.getRoot();
            try {
                Files.walkFileTree(root, new SimpleFileVisitor<Path>() {
                    @Override
                    public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
                        if (!ParallelParse.this.root.isSensibleDirectoryToEnter(dir)) {
                            return FileVisitResult.SKIP_SUBTREE;
                        }
                        if (!dir.equals(root)) {
                            ParallelParse parallelParse = new ParallelParse(dir, ParallelParse.this.callback);
                            parallelParse.fork();
                            arrayList.add(parallelParse);
                            return FileVisitResult.SKIP_SUBTREE;
                        }
                        return FileVisitResult.CONTINUE;
                    }

                    @Override
                    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) {
                        return ParallelParse.this.callback.process(file, attrs);
                    }
                });
            } catch (IOException e10) {
                Log.error(e10);
            }
            Iterator<E> it = arrayList.iterator();
            while (it.hasNext()) {
                ((ParallelParse) it.next()).join();
            }
        }
    }

    public SourceRoot(Path root) {
        this.cache = new ConcurrentHashMap();
        this.parserConfiguration = new ParserConfiguration();
        final DefaultPrettyPrinter defaultPrettyPrinter = new DefaultPrettyPrinter();
        this.printer = new Function() {
            @Override
            public final Object apply(Object obj) {
                return DefaultPrettyPrinter.this.print((CompilationUnit) obj);
            }
        };
        Utils.assertNotNull(root);
        if (Files.isDirectory(root, new LinkOption[0])) {
            this.root = root.normalize();
            Log.info("New source root at \"%s\"", new Supplier() {
                @Override
                public final Object get() {
                    Object lambda$new$0;
                    lambda$new$0 = SourceRoot.this.lambda$new$0();
                    return lambda$new$0;
                }
            });
        } else {
            throw new IllegalArgumentException("Only directories are allowed as root path: " + ((Object) root));
        }
    }

    public FileVisitResult callback(final Path absolutePath, final ParserConfiguration configuration, Callback callback) throws IOException {
        final Path relativize = this.root.relativize(absolutePath);
        Log.trace("Parsing %s", new Supplier() {
            @Override
            public final Object get() {
                Object lambda$callback$6;
                lambda$callback$6 = SourceRoot.lambda$callback$6(Path.this);
                return lambda$callback$6;
            }
        });
        ParseResult<CompilationUnit> parse = new JavaParser(configuration).parse(ParseStart.COMPILATION_UNIT, Providers.provider(absolutePath, configuration.getCharacterEncoding()));
        parse.getResult().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SourceRoot.lambda$callback$7(Path.this, configuration, (CompilationUnit) obj);
            }
        });
        int i10 = AnonymousClass3.$SwitchMap$com$github$javaparser$utils$SourceRoot$Callback$Result[callback.process(relativize, absolutePath, parse).ordinal()];
        if (i10 == 1) {
            parse.getResult().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    SourceRoot.this.lambda$callback$8(absolutePath, (CompilationUnit) obj);
                }
            });
        } else if (i10 != 2) {
            if (i10 == 3) {
                return FileVisitResult.TERMINATE;
            }
            throw new AssertionError((Object) "Return an enum defined in SourceRoot.Callback.Result");
        }
        return FileVisitResult.CONTINUE;
    }

    public static Object lambda$add$11(final String startPackage) {
        return startPackage;
    }

    public static Object lambda$add$12(final String filename) {
        return filename;
    }

    public static Object lambda$add$13(final Path path) {
        return path;
    }

    public static Object lambda$callback$6(final Path localPath) {
        return localPath;
    }

    public static void lambda$callback$7(final Path absolutePath, final ParserConfiguration configuration, CompilationUnit cu) {
        cu.setStorage(absolutePath, configuration.getCharacterEncoding());
    }

    public static CompilationUnit lambda$getCompilationUnits$16(ParseResult p10) {
        return (CompilationUnit) p10.getResult().get();
    }

    public static Object lambda$isSensibleDirectoryToEnter$4(final String dirToEnter) {
        return dirToEnter;
    }

    public static Object lambda$logPackage$9(final String startPackage) {
        return startPackage;
    }

    public Object lambda$new$0() {
        return this.root;
    }

    public FileVisitResult lambda$parseParallelized$10(final ParserConfiguration configuration, final Callback callback, Path absolutePath, BasicFileAttributes attrs) {
        if (!attrs.isDirectory() && absolutePath.toString().endsWith(".java")) {
            try {
                return callback(absolutePath, configuration, callback);
            } catch (IOException e10) {
                Log.error(e10);
            }
        }
        return FileVisitResult.CONTINUE;
    }

    public static Object lambda$saveAll$14(final Path root) {
        return root;
    }

    public static Object lambda$saveAll$15(final Path path) {
        return path;
    }

    public static Object lambda$tryToParse$1(final Path relativePath) {
        return relativePath;
    }

    public static Object lambda$tryToParse$2(final Path path) {
        return path;
    }

    public static void lambda$tryToParse$3(final Path path, final ParserConfiguration configuration, CompilationUnit cu) {
        cu.setStorage(path, configuration.getCharacterEncoding());
    }

    public FileVisitResult lambda$tryToParseParallelized$5(Path file, BasicFileAttributes attrs) {
        if (!attrs.isDirectory() && file.toString().endsWith(".java")) {
            try {
                tryToParse(this.root.relativize(file.getParent()).toString(), file.getFileName().toString(), this.parserConfiguration);
            } catch (IOException e10) {
                Log.error(e10);
            }
        }
        return FileVisitResult.CONTINUE;
    }

    private void logPackage(final String startPackage) {
        if (startPackage.isEmpty()) {
            return;
        }
        Log.info("Parsing package \"%s\"", new Supplier() {
            @Override
            public final Object get() {
                Object lambda$logPackage$9;
                lambda$logPackage$9 = SourceRoot.lambda$logPackage$9(String.this);
                return lambda$logPackage$9;
            }
        });
    }

    public SourceRoot lambda$callback$8(CompilationUnit cu, Path path) {
        return save(cu, path, this.parserConfiguration.getCharacterEncoding());
    }

    public SourceRoot add(final String startPackage, final String filename, CompilationUnit compilationUnit) {
        Utils.assertNotNull(startPackage);
        Utils.assertNotNull(filename);
        Utils.assertNotNull(compilationUnit);
        Log.trace("Adding new file %s.%s", new Supplier() {
            @Override
            public final Object get() {
                Object lambda$add$11;
                lambda$add$11 = SourceRoot.lambda$add$11(String.this);
                return lambda$add$11;
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                Object lambda$add$12;
                lambda$add$12 = SourceRoot.lambda$add$12(String.this);
                return lambda$add$12;
            }
        });
        this.cache.put(CodeGenerationUtils.fileInPackageRelativePath(startPackage, filename), new ParseResult<>(compilationUnit, new ArrayList(), null));
        return this;
    }

    public List<ParseResult<CompilationUnit>> getCache() {
        return new ArrayList(this.cache.values());
    }

    public List<CompilationUnit> getCompilationUnits() {
        return (List) this.cache.values().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((ParseResult) obj).isSuccessful();
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                CompilationUnit lambda$getCompilationUnits$16;
                lambda$getCompilationUnits$16 = SourceRoot.lambda$getCompilationUnits$16((ParseResult) obj);
                return lambda$getCompilationUnits$16;
            }
        }).collect(Collectors.toList());
    }

    public ParserConfiguration getParserConfiguration() {
        return this.parserConfiguration;
    }

    public Function<CompilationUnit, String> getPrinter() {
        return this.printer;
    }

    public Path getRoot() {
        return this.root;
    }

    public boolean isSensibleDirectoryToEnter(Path dir) throws IOException {
        final String path = dir.getFileName().toString();
        boolean matches = JAVA_IDENTIFIER.matcher(path).matches();
        if (this.root.equals(dir) || (!Files.isHidden(dir) && matches)) {
            return true;
        }
        Log.trace("Not processing directory \"%s\"", new Supplier() {
            @Override
            public final Object get() {
                Object lambda$isSensibleDirectoryToEnter$4;
                lambda$isSensibleDirectoryToEnter$4 = SourceRoot.lambda$isSensibleDirectoryToEnter$4(String.this);
                return lambda$isSensibleDirectoryToEnter$4;
            }
        });
        return false;
    }

    public CompilationUnit parse(String startPackage, String filename) {
        Utils.assertNotNull(startPackage);
        Utils.assertNotNull(filename);
        try {
            ParseResult<CompilationUnit> tryToParse = tryToParse(startPackage, filename);
            if (tryToParse.isSuccessful()) {
                return tryToParse.getResult().get();
            }
            throw new ParseProblemException(tryToParse.getProblems());
        } catch (IOException e10) {
            throw new ParseProblemException(e10);
        }
    }

    public SourceRoot parseParallelized(String startPackage, final ParserConfiguration configuration, final Callback callback) {
        Utils.assertNotNull(startPackage);
        Utils.assertNotNull(configuration);
        Utils.assertNotNull(callback);
        logPackage(startPackage);
        Path packageAbsolutePath = CodeGenerationUtils.packageAbsolutePath(this.root, startPackage);
        if (Files.exists(packageAbsolutePath, new LinkOption[0])) {
            new ForkJoinPool().invoke(new ParallelParse(packageAbsolutePath, new ParallelParse.VisitFileCallback() {
                @Override
                public final FileVisitResult process(Path path, BasicFileAttributes basicFileAttributes) {
                    FileVisitResult lambda$parseParallelized$10;
                    lambda$parseParallelized$10 = SourceRoot.this.lambda$parseParallelized$10(configuration, callback, path, basicFileAttributes);
                    return lambda$parseParallelized$10;
                }
            }));
        }
        return this;
    }

    public SourceRoot saveAll(final Path root, Charset encoding) {
        Utils.assertNotNull(root);
        final Map<Path, ParseResult<CompilationUnit>> map = this.cache;
        map.getClass();
        Log.info("Saving all files (%s) to %s", new Supplier() {
            @Override
            public final Object get() {
                return Integer.valueOf(Map.this.size());
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                Object lambda$saveAll$14;
                lambda$saveAll$14 = SourceRoot.lambda$saveAll$14(Path.this);
                return lambda$saveAll$14;
            }
        });
        for (Map.Entry<Path, ParseResult<CompilationUnit>> entry : this.cache.entrySet()) {
            final Path resolve = root.resolve(entry.getKey());
            if (entry.getValue().getResult().isPresent()) {
                Log.trace("Saving %s", new Supplier() {
                    @Override
                    public final Object get() {
                        Object lambda$saveAll$15;
                        lambda$saveAll$15 = SourceRoot.lambda$saveAll$15(Path.this);
                        return lambda$saveAll$15;
                    }
                });
                save(entry.getValue().getResult().get(), resolve, encoding);
            }
        }
        return this;
    }

    public SourceRoot setParserConfiguration(ParserConfiguration parserConfiguration) {
        Utils.assertNotNull(parserConfiguration);
        this.parserConfiguration = parserConfiguration;
        return this;
    }

    public SourceRoot setPrinter(Function<CompilationUnit, String> printer) {
        Utils.assertNotNull(printer);
        this.printer = printer;
        return this;
    }

    public String toString() {
        return "SourceRoot at " + ((Object) this.root);
    }

    public ParseResult<CompilationUnit> tryToParse(String startPackage, String filename, final ParserConfiguration configuration) throws IOException {
        Utils.assertNotNull(startPackage);
        Utils.assertNotNull(filename);
        final Path fileInPackageRelativePath = CodeGenerationUtils.fileInPackageRelativePath(startPackage, filename);
        if (this.cache.containsKey(fileInPackageRelativePath)) {
            Log.trace("Retrieving cached %s", new Supplier() {
                @Override
                public final Object get() {
                    Object lambda$tryToParse$1;
                    lambda$tryToParse$1 = SourceRoot.lambda$tryToParse$1(Path.this);
                    return lambda$tryToParse$1;
                }
            });
            return this.cache.get(fileInPackageRelativePath);
        }
        final Path resolve = this.root.resolve(fileInPackageRelativePath);
        Log.trace("Parsing %s", new Supplier() {
            @Override
            public final Object get() {
                Object lambda$tryToParse$2;
                lambda$tryToParse$2 = SourceRoot.lambda$tryToParse$2(Path.this);
                return lambda$tryToParse$2;
            }
        });
        ParseResult<CompilationUnit> parse = new JavaParser(configuration).parse(ParseStart.COMPILATION_UNIT, Providers.provider(resolve, configuration.getCharacterEncoding()));
        parse.getResult().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                SourceRoot.lambda$tryToParse$3(Path.this, configuration, (CompilationUnit) obj);
            }
        });
        this.cache.put(fileInPackageRelativePath, parse);
        return parse;
    }

    public List<ParseResult<CompilationUnit>> tryToParseParallelized(String startPackage) {
        Utils.assertNotNull(startPackage);
        logPackage(startPackage);
        new ForkJoinPool().invoke(new ParallelParse(CodeGenerationUtils.packageAbsolutePath(this.root, startPackage), new ParallelParse.VisitFileCallback() {
            @Override
            public final FileVisitResult process(Path path, BasicFileAttributes basicFileAttributes) {
                FileVisitResult lambda$tryToParseParallelized$5;
                lambda$tryToParseParallelized$5 = SourceRoot.this.lambda$tryToParseParallelized$5(path, basicFileAttributes);
                return lambda$tryToParseParallelized$5;
            }
        }));
        return getCache();
    }

    private SourceRoot save(CompilationUnit cu, Path path, Charset encoding) {
        Utils.assertNotNull(cu);
        Utils.assertNotNull(path);
        cu.setStorage(path, encoding);
        cu.getStorage().get().save(this.printer);
        return this;
    }

    public SourceRoot add(CompilationUnit compilationUnit) {
        Utils.assertNotNull(compilationUnit);
        if (compilationUnit.getStorage().isPresent()) {
            final Path path = compilationUnit.getStorage().get().getPath();
            Log.trace("Adding new file %s", new Supplier() {
                @Override
                public final Object get() {
                    Object lambda$add$13;
                    lambda$add$13 = SourceRoot.lambda$add$13(Path.this);
                    return lambda$add$13;
                }
            });
            this.cache.put(path, new ParseResult<>(compilationUnit, new ArrayList(), null));
            return this;
        }
        throw new AssertionError((Object) "Files added with this method should have their path set.");
    }

    public SourceRoot parse(String startPackage, String filename, ParserConfiguration configuration, Callback callback) throws IOException {
        Utils.assertNotNull(startPackage);
        Utils.assertNotNull(filename);
        Utils.assertNotNull(configuration);
        Utils.assertNotNull(callback);
        callback(CodeGenerationUtils.fileInPackageAbsolutePath(this.root, startPackage, filename), configuration, callback);
        return this;
    }

    public SourceRoot saveAll(Path root) {
        return saveAll(root, this.parserConfiguration.getCharacterEncoding());
    }

    public List<ParseResult<CompilationUnit>> tryToParseParallelized() {
        return tryToParseParallelized("");
    }

    public SourceRoot saveAll() {
        return saveAll(this.root);
    }

    public SourceRoot(Path root, ParserConfiguration parserConfiguration) {
        this(root);
        setParserConfiguration(parserConfiguration);
    }

    public SourceRoot parseParallelized(String startPackage, Callback callback) throws IOException {
        return parseParallelized(startPackage, this.parserConfiguration, callback);
    }

    public SourceRoot saveAll(Charset encoding) {
        return saveAll(this.root, encoding);
    }

    public SourceRoot parseParallelized(Callback callback) throws IOException {
        return parseParallelized("", this.parserConfiguration, callback);
    }

    public SourceRoot parse(String startPackage, String filename, Callback callback) throws IOException {
        parse(startPackage, filename, this.parserConfiguration, callback);
        return this;
    }

    public ParseResult<CompilationUnit> tryToParse(String startPackage, String filename) throws IOException {
        return tryToParse(startPackage, filename, this.parserConfiguration);
    }

    public SourceRoot parse(String startPackage, final ParserConfiguration configuration, final Callback callback) throws IOException {
        Utils.assertNotNull(startPackage);
        Utils.assertNotNull(configuration);
        Utils.assertNotNull(callback);
        logPackage(startPackage);
        Path packageAbsolutePath = CodeGenerationUtils.packageAbsolutePath(this.root, startPackage);
        if (Files.exists(packageAbsolutePath, new LinkOption[0])) {
            Files.walkFileTree(packageAbsolutePath, new SimpleFileVisitor<Path>() {
                @Override
                public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
                    return SourceRoot.this.isSensibleDirectoryToEnter(dir) ? FileVisitResult.CONTINUE : FileVisitResult.SKIP_SUBTREE;
                }

                @Override
                public FileVisitResult visitFile(Path absolutePath, BasicFileAttributes attrs) throws IOException {
                    if (!attrs.isDirectory() && absolutePath.toString().endsWith(".java")) {
                        return SourceRoot.this.callback(absolutePath, configuration, callback);
                    }
                    return FileVisitResult.CONTINUE;
                }
            });
        }
        return this;
    }

    public List<ParseResult<CompilationUnit>> tryToParse(String startPackage) throws IOException {
        Utils.assertNotNull(startPackage);
        logPackage(startPackage);
        Files.walkFileTree(CodeGenerationUtils.packageAbsolutePath(this.root, startPackage), new SimpleFileVisitor<Path>() {
            @Override
            public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
                return SourceRoot.this.isSensibleDirectoryToEnter(dir) ? FileVisitResult.CONTINUE : FileVisitResult.SKIP_SUBTREE;
            }

            @Override
            public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                if (!attrs.isDirectory() && file.toString().endsWith(".java")) {
                    SourceRoot.this.tryToParse(SourceRoot.this.root.relativize(file.getParent()).toString(), file.getFileName().toString());
                }
                return FileVisitResult.CONTINUE;
            }
        });
        return getCache();
    }

    public List<ParseResult<CompilationUnit>> tryToParse() throws IOException {
        return tryToParse("");
    }

    public SourceRoot parse(String startPackage, Callback callback) throws IOException {
        parse(startPackage, this.parserConfiguration, callback);
        return this;
    }
}
