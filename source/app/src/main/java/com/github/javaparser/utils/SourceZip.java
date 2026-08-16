package com.github.javaparser.utils;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParseStart;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Providers;
import com.github.javaparser.ast.CompilationUnit;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Supplier;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class SourceZip {
    private ParserConfiguration parserConfiguration;
    private final Path zipPath;

    @FunctionalInterface
    public interface Callback {
        void process(Path relativeZipEntryPath, ParseResult<CompilationUnit> result);
    }

    public SourceZip(Path zipPath) {
        this(zipPath, new ParserConfiguration());
    }

    public Object lambda$new$0() {
        return this.zipPath;
    }

    public Object lambda$parse$1() {
        return this.zipPath;
    }

    public static void lambda$parse$2(final List results, Path path, ParseResult result) {
        results.add(new Pair(path, result));
    }

    public Object lambda$parse$3() {
        return this.zipPath;
    }

    public ParserConfiguration getParserConfiguration() {
        return this.parserConfiguration;
    }

    public Path getZipPath() {
        return this.zipPath;
    }

    public List<Pair<Path, ParseResult<CompilationUnit>>> parse() throws IOException {
        Log.info("Parsing zip at \"%s\"", new Supplier() {
            @Override
            public final Object get() {
                Object lambda$parse$1;
                lambda$parse$1 = SourceZip.this.lambda$parse$1();
                return lambda$parse$1;
            }
        });
        final ArrayList arrayList = new ArrayList();
        parse(new Callback() {
            @Override
            public final void process(Path path, ParseResult parseResult) {
                SourceZip.lambda$parse$2(List.this, path, parseResult);
            }
        });
        return arrayList;
    }

    public SourceZip setParserConfiguration(ParserConfiguration parserConfiguration) {
        Utils.assertNotNull(parserConfiguration);
        this.parserConfiguration = parserConfiguration;
        return this;
    }

    public SourceZip(Path zipPath, ParserConfiguration configuration) {
        Utils.assertNotNull(zipPath);
        Utils.assertNotNull(configuration);
        this.zipPath = zipPath.normalize();
        this.parserConfiguration = configuration;
        Log.info("New source zip at \"%s\"", new Supplier() {
            @Override
            public final Object get() {
                Object lambda$new$0;
                lambda$new$0 = SourceZip.this.lambda$new$0();
                return lambda$new$0;
            }
        });
    }

    public SourceZip parse(Callback callback) throws IOException {
        Log.info("Parsing zip at \"%s\"", new Supplier() {
            @Override
            public final Object get() {
                Object lambda$parse$3;
                lambda$parse$3 = SourceZip.this.lambda$parse$3();
                return lambda$parse$3;
            }
        });
        JavaParser javaParser = new JavaParser(this.parserConfiguration);
        ZipFile zipFile = new ZipFile(this.zipPath.toFile());
        try {
            Iterator it = Collections.list(zipFile.entries()).iterator();
            while (it.hasNext()) {
                final ZipEntry zipEntry = (ZipEntry) it.next();
                if (!zipEntry.isDirectory() && zipEntry.getName().endsWith(".java")) {
                    Log.info("Parsing zip entry \"%s\"", new Supplier() {
                        @Override
                        public final Object get() {
                            Object name;
                            name = ZipEntry.this.getName();
                            return name;
                        }
                    });
                    callback.process(Paths.get(zipEntry.getName(), new String[0]), javaParser.parse(ParseStart.COMPILATION_UNIT, Providers.provider(zipFile.getInputStream(zipEntry))));
                }
            }
            zipFile.close();
            return this;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    zipFile.close();
                } catch (Throwable th4) {
                    th2.addSuppressed(th4);
                }
                throw th3;
            }
        }
    }
}
