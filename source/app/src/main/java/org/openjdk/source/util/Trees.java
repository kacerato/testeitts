package org.openjdk.source.util;

import org.openjdk.javax.annotation.processing.ProcessingEnvironment;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.ErrorType;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaCompiler;
import org.openjdk.source.tree.CatchTree;
import org.openjdk.source.tree.ClassTree;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.MethodTree;
import org.openjdk.source.tree.Scope;
import org.openjdk.source.tree.Tree;

public abstract class Trees {
    public static Trees getJavacTrees(Class<?> cls, Object obj) {
        try {
            ClassLoader classLoader = obj.getClass().getClassLoader();
            return (Trees) Class.forName("org.openjdk.tools.javac.api.JavacTrees", false, classLoader).getMethod("instance", Class.forName(cls.getName(), false, classLoader)).invoke(null, obj);
        } catch (ReflectiveOperationException e10) {
            throw new AssertionError(e10);
        }
    }

    public static Trees instance(JavaCompiler.CompilationTask compilationTask) {
        String name = compilationTask.getClass().getName();
        if (!name.equals("org.openjdk.tools.javac.api.JavacTaskImpl") && !name.equals("org.openjdk.tools.javac.api.BasicJavacTask")) {
            throw new IllegalArgumentException();
        }
        return getJavacTrees(JavaCompiler.CompilationTask.class, compilationTask);
    }

    public abstract String getDocComment(TreePath treePath);

    public abstract Element getElement(TreePath treePath);

    public abstract TypeMirror getLub(CatchTree catchTree);

    public abstract TypeMirror getOriginalType(ErrorType errorType);

    public abstract TreePath getPath(Element element);

    public abstract TreePath getPath(Element element, AnnotationMirror annotationMirror);

    public abstract TreePath getPath(Element element, AnnotationMirror annotationMirror, AnnotationValue annotationValue);

    public abstract TreePath getPath(CompilationUnitTree compilationUnitTree, Tree tree);

    public abstract Scope getScope(TreePath treePath);

    public abstract SourcePositions getSourcePositions();

    public abstract ClassTree getTree(TypeElement typeElement);

    public abstract MethodTree getTree(ExecutableElement executableElement);

    public abstract Tree getTree(Element element);

    public abstract Tree getTree(Element element, AnnotationMirror annotationMirror);

    public abstract Tree getTree(Element element, AnnotationMirror annotationMirror, AnnotationValue annotationValue);

    public abstract TypeMirror getTypeMirror(TreePath treePath);

    public abstract boolean isAccessible(Scope scope, Element element, DeclaredType declaredType);

    public abstract boolean isAccessible(Scope scope, TypeElement typeElement);

    public abstract void printMessage(Diagnostic.Kind kind, CharSequence charSequence, Tree tree, CompilationUnitTree compilationUnitTree);

    public static Trees instance(ProcessingEnvironment processingEnvironment) {
        if (processingEnvironment.getClass().getName().equals("org.openjdk.tools.javac.processing.JavacProcessingEnvironment")) {
            return getJavacTrees(ProcessingEnvironment.class, processingEnvironment);
        }
        throw new IllegalArgumentException();
    }
}
