package org.openjdk.source.util;

import java.io.IOException;
import java.text.BreakIterator;
import java.util.List;
import org.openjdk.javax.annotation.processing.ProcessingEnvironment;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.JavaCompiler;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.DocTree;
import org.openjdk.source.tree.CompilationUnitTree;

public abstract class DocTrees extends Trees {
    public static DocTrees instance(JavaCompiler.CompilationTask compilationTask) {
        return (DocTrees) Trees.instance(compilationTask);
    }

    public abstract BreakIterator getBreakIterator();

    public abstract DocCommentTree getDocCommentTree(Element element);

    public abstract DocCommentTree getDocCommentTree(Element element, String str) throws IOException;

    public abstract DocCommentTree getDocCommentTree(FileObject fileObject);

    public abstract DocCommentTree getDocCommentTree(TreePath treePath);

    public abstract DocTreeFactory getDocTreeFactory();

    public abstract DocTreePath getDocTreePath(FileObject fileObject, PackageElement packageElement);

    public abstract Element getElement(DocTreePath docTreePath);

    public abstract List<DocTree> getFirstSentence(List<? extends DocTree> list);

    @Override
    public abstract DocSourcePositions getSourcePositions();

    public abstract void printMessage(Diagnostic.Kind kind, CharSequence charSequence, DocTree docTree, DocCommentTree docCommentTree, CompilationUnitTree compilationUnitTree);

    public abstract void setBreakIterator(BreakIterator breakIterator);

    public static DocTrees instance(ProcessingEnvironment processingEnvironment) {
        if (processingEnvironment.getClass().getName().equals("org.openjdk.tools.javac.processing.JavacProcessingEnvironment")) {
            return (DocTrees) Trees.getJavacTrees(ProcessingEnvironment.class, processingEnvironment);
        }
        throw new IllegalArgumentException();
    }
}
