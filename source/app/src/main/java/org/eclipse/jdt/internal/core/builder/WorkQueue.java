package org.eclipse.jdt.internal.core.builder;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class WorkQueue {
    private Set<SourceFile> needsCompileList = new HashSet();
    private Set<SourceFile> compiledList = new HashSet();

    public void add(SourceFile sourceFile) {
        this.needsCompileList.add(sourceFile);
    }

    public void addAll(SourceFile[] sourceFileArr) {
        this.needsCompileList.addAll(Arrays.asList(sourceFileArr));
    }

    public void clear() {
        this.needsCompileList.clear();
        this.compiledList.clear();
    }

    public void finished(SourceFile sourceFile) {
        this.needsCompileList.remove(sourceFile);
        this.compiledList.add(sourceFile);
    }

    public boolean isCompiled(SourceFile sourceFile) {
        return this.compiledList.contains(sourceFile);
    }

    public boolean isWaiting(SourceFile sourceFile) {
        return this.needsCompileList.contains(sourceFile);
    }

    public String toString() {
        return "WorkQueue: " + ((Object) this.needsCompileList);
    }
}
