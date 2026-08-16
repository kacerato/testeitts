package com.github.javaparser.utils;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseProblemException;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.CompilationUnit;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

public interface CollectionStrategy {
    static Object lambda$getRoot$0(final ParseResult parseResult) {
        return Integer.valueOf(parseResult.getProblems().size());
    }

    static Object lambda$getRoot$1(final Path file) {
        return file;
    }

    static Object lambda$getRoot$3(final Path file) {
        return file;
    }

    static Object lambda$getRoot$5(final Path file) {
        return file;
    }

    ProjectRoot collect(Path path);

    ParserConfiguration getParserConfiguration();

    default PathMatcher getPathMatcher(String pattern) {
        return FileSystems.getDefault().getPathMatcher(pattern);
    }

    default Optional<Path> getRoot(final Path file) {
        try {
            final ParseResult<CompilationUnit> parse = new JavaParser(getParserConfiguration()).parse(file);
            if (parse.isSuccessful()) {
                if (parse.getResult().isPresent()) {
                    Optional<U> flatMap = parse.getResult().flatMap(new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return ((CompilationUnit) obj).getStorage();
                        }
                    });
                    if (flatMap.isPresent()) {
                        return "module-info.java".equals(((CompilationUnit.Storage) flatMap.get()).getFileName()) ? Optional.empty() : flatMap.map(new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return ((CompilationUnit.Storage) obj).getSourceRoot();
                            }
                        });
                    }
                    Log.info("Storage information not present -- an issue with providing a string rather than file reference?", new Supplier[0]);
                }
                Log.info("Parse result not present", new Supplier[0]);
            }
            Log.info("Parsing was not successful.", new Supplier[0]);
            Log.info("There were (%d) problems parsing file: %s", new Supplier() {
                @Override
                public final Object get() {
                    Object lambda$getRoot$0;
                    lambda$getRoot$0 = CollectionStrategy.lambda$getRoot$0(ParseResult.this);
                    return lambda$getRoot$0;
                }
            }, new Supplier() {
                @Override
                public final Object get() {
                    return ParseResult.this.getProblems();
                }
            });
        } catch (ParseProblemException e10) {
            Log.info("Problem parsing file %s : %s", new Supplier() {
                @Override
                public final Object get() {
                    Object lambda$getRoot$1;
                    lambda$getRoot$1 = CollectionStrategy.lambda$getRoot$1(Path.this);
                    return lambda$getRoot$1;
                }
            }, new Supplier() {
                @Override
                public final Object get() {
                    Object localizedMessage;
                    localizedMessage = ParseProblemException.this.getLocalizedMessage();
                    return localizedMessage;
                }
            });
        } catch (IOException e11) {
            Log.info("Could not read file %s : %s", new Supplier() {
                @Override
                public final Object get() {
                    Object lambda$getRoot$5;
                    lambda$getRoot$5 = CollectionStrategy.lambda$getRoot$5(Path.this);
                    return lambda$getRoot$5;
                }
            }, new Supplier() {
                @Override
                public final Object get() {
                    Object localizedMessage;
                    localizedMessage = IOException.this.getLocalizedMessage();
                    return localizedMessage;
                }
            });
        } catch (RuntimeException e12) {
            Log.info("Could not parse file %s : %s", new Supplier() {
                @Override
                public final Object get() {
                    Object lambda$getRoot$3;
                    lambda$getRoot$3 = CollectionStrategy.lambda$getRoot$3(Path.this);
                    return lambda$getRoot$3;
                }
            }, new Supplier() {
                @Override
                public final Object get() {
                    Object localizedMessage;
                    localizedMessage = RuntimeException.this.getLocalizedMessage();
                    return localizedMessage;
                }
            });
        }
        return Optional.empty();
    }
}
