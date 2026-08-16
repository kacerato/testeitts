package org.openjdk.source.util;

import java.io.IOException;
import org.openjdk.javax.annotation.processing.ProcessingEnvironment;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.lang.model.util.Types;
import org.openjdk.javax.tools.JavaCompiler;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.tools.javac.api.BasicJavacTask;
import org.openjdk.tools.javac.processing.JavacProcessingEnvironment;
import org.openjdk.tools.javac.util.Context;

public abstract class JavacTask implements JavaCompiler.CompilationTask {
    public static JavacTask instance(ProcessingEnvironment processingEnvironment) {
        if (!processingEnvironment.getClass().getName().equals("org.openjdk.tools.javac.processing.JavacProcessingEnvironment")) {
            throw new IllegalArgumentException();
        }
        Context context = ((JavacProcessingEnvironment) processingEnvironment).getContext();
        JavacTask javacTask = (JavacTask) context.get(JavacTask.class);
        return javacTask != null ? javacTask : new BasicJavacTask(context, true);
    }

    public abstract void addTaskListener(TaskListener taskListener);

    public abstract Iterable<? extends Element> analyze() throws IOException;

    public abstract Iterable<? extends JavaFileObject> generate() throws IOException;

    public abstract Elements getElements();

    public abstract TypeMirror getTypeMirror(Iterable<? extends Tree> iterable);

    public abstract Types getTypes();

    public abstract Iterable<? extends CompilationUnitTree> parse() throws IOException;

    public abstract void removeTaskListener(TaskListener taskListener);

    public abstract void setTaskListener(TaskListener taskListener);
}
