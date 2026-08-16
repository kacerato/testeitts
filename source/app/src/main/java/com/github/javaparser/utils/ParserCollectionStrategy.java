package com.github.javaparser.utils;

import com.github.javaparser.ParserConfiguration;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.function.Supplier;

public class ParserCollectionStrategy implements CollectionStrategy {
    private final ParserConfiguration parserConfiguration;

    public ParserCollectionStrategy() {
        this(new ParserConfiguration());
    }

    public static Object lambda$collect$0(final Path path) {
        return path;
    }

    @Override
    public ProjectRoot collect(final Path path) {
        final ProjectRoot projectRoot = new ProjectRoot(path, this.parserConfiguration);
        try {
            Files.walkFileTree(path, new SimpleFileVisitor<Path>() {
                Path current_root;
                final PathMatcher javaMatcher;

                {
                    this.javaMatcher = ParserCollectionStrategy.this.getPathMatcher("glob:**.java");
                }

                @Override
                public FileVisitResult postVisitDirectory(Path dir, IOException e10) throws IOException {
                    Path path2 = this.current_root;
                    if (path2 != null && Files.isSameFile(dir, path2)) {
                        projectRoot.addSourceRoot(dir);
                        this.current_root = null;
                    }
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
                    Path path2;
                    if (!Files.isHidden(dir) && ((path2 = this.current_root) == null || !dir.startsWith(path2))) {
                        return FileVisitResult.CONTINUE;
                    }
                    return FileVisitResult.SKIP_SUBTREE;
                }

                @Override
                public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) {
                    if ("module-info.java".equals(file.getFileName().toString())) {
                        return FileVisitResult.CONTINUE;
                    }
                    if (this.javaMatcher.matches(file)) {
                        Path orElse = ParserCollectionStrategy.this.getRoot(file).orElse(null);
                        this.current_root = orElse;
                        if (orElse != null) {
                            return FileVisitResult.SKIP_SIBLINGS;
                        }
                    }
                    return FileVisitResult.CONTINUE;
                }
            });
        } catch (IOException e10) {
            Log.error(e10, "Unable to walk %s", new Supplier() {
                @Override
                public final Object get() {
                    Object lambda$collect$0;
                    lambda$collect$0 = ParserCollectionStrategy.lambda$collect$0(Path.this);
                    return lambda$collect$0;
                }
            });
        }
        return projectRoot;
    }

    @Override
    public ParserConfiguration getParserConfiguration() {
        return this.parserConfiguration;
    }

    public ParserCollectionStrategy(ParserConfiguration parserConfiguration) {
        this.parserConfiguration = parserConfiguration;
    }
}
