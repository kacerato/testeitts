package com.github.javaparser.utils;

import com.github.javaparser.ParserConfiguration;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;

public class ProjectRoot {
    private final Map<Path, SourceRoot> cache;
    private final ParserConfiguration parserConfiguration;
    private final Path root;

    public ProjectRoot(Path root) {
        this(root, new ParserConfiguration());
    }

    public void addSourceRoot(Path path) {
        this.cache.put(path, new SourceRoot(path).setParserConfiguration(this.parserConfiguration));
    }

    public Path getRoot() {
        return this.root;
    }

    public Optional<SourceRoot> getSourceRoot(Path sourceRoot) {
        return Optional.ofNullable(this.cache.get(sourceRoot));
    }

    public List<SourceRoot> getSourceRoots() {
        return new ArrayList(this.cache.values());
    }

    public String toString() {
        return "ProjectRoot at " + ((Object) this.root) + " with " + this.cache.values().toString();
    }

    public ProjectRoot(Path root, ParserConfiguration parserConfiguration) {
        this.cache = new ConcurrentHashMap();
        this.root = root;
        this.parserConfiguration = parserConfiguration;
    }
}
