package org.openjdk.source.util;

import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.tools.doclint.DocLint;

public final class TaskEvent {
    private TypeElement clazz;
    private JavaFileObject file;
    private Kind kind;
    private CompilationUnitTree unit;

    public enum Kind {
        PARSE,
        ENTER,
        ANALYZE,
        GENERATE,
        ANNOTATION_PROCESSING,
        ANNOTATION_PROCESSING_ROUND,
        COMPILATION
    }

    public TaskEvent(Kind kind) {
        this(kind, null, null, null);
    }

    public CompilationUnitTree getCompilationUnit() {
        return this.unit;
    }

    public Kind getKind() {
        return this.kind;
    }

    public JavaFileObject getSourceFile() {
        return this.file;
    }

    public TypeElement getTypeElement() {
        return this.clazz;
    }

    public String toString() {
        return "TaskEvent[" + ((Object) this.kind) + DocLint.SEPARATOR + ((Object) this.file) + DocLint.SEPARATOR + ((Object) this.clazz) + "]";
    }

    public TaskEvent(Kind kind, JavaFileObject javaFileObject) {
        this(kind, javaFileObject, null, null);
    }

    public TaskEvent(Kind kind, CompilationUnitTree compilationUnitTree) {
        this(kind, compilationUnitTree.getSourceFile(), compilationUnitTree, null);
    }

    public TaskEvent(Kind kind, CompilationUnitTree compilationUnitTree, TypeElement typeElement) {
        this(kind, compilationUnitTree.getSourceFile(), compilationUnitTree, typeElement);
    }

    private TaskEvent(Kind kind, JavaFileObject javaFileObject, CompilationUnitTree compilationUnitTree, TypeElement typeElement) {
        this.kind = kind;
        this.file = javaFileObject;
        this.unit = compilationUnitTree;
        this.clazz = typeElement;
    }
}
