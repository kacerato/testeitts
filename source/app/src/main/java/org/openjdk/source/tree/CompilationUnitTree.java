package org.openjdk.source.tree;

import java.util.List;
import org.openjdk.javax.tools.JavaFileObject;

public interface CompilationUnitTree extends Tree {
    List<? extends ImportTree> getImports();

    LineMap getLineMap();

    PackageTree getPackage();

    List<? extends AnnotationTree> getPackageAnnotations();

    ExpressionTree getPackageName();

    JavaFileObject getSourceFile();

    List<? extends Tree> getTypeDecls();
}
