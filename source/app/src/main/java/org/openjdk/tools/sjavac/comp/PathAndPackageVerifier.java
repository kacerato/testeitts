package org.openjdk.tools.sjavac.comp;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.util.TaskEvent;
import org.openjdk.source.util.TaskListener;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.sjavac.Log;

public class PathAndPackageVerifier implements TaskListener {
    Set<CompilationUnitTree> misplacedCompilationUnits = new HashSet();

    public static class EnclosingPkgIterator implements Iterator<String> {
        JCTree next;

        public EnclosingPkgIterator(JCTree jCTree) {
            this.next = jCTree;
        }

        @Override
        public boolean hasNext() {
            return this.next != null;
        }

        @Override
        public String next() {
            Name name;
            JCTree jCTree = this.next;
            if (jCTree instanceof JCTree.JCIdent) {
                name = ((JCTree.JCIdent) jCTree).name;
                this.next = null;
            } else {
                JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCTree;
                Name name2 = jCFieldAccess.name;
                this.next = jCFieldAccess.selected;
                name = name2;
            }
            return name.toString();
        }
    }

    public static class ParentIterator implements Iterator<String> {
        Path next;

        public ParentIterator(Path path) {
            this.next = path;
        }

        @Override
        public boolean hasNext() {
            return this.next != null;
        }

        @Override
        public String next() {
            String path = this.next.getFileName().toString();
            this.next = this.next.getParent();
            return path;
        }
    }

    private boolean checkPathAndPackage(Path path, JCTree jCTree) {
        ParentIterator parentIterator = new ParentIterator(path);
        EnclosingPkgIterator enclosingPkgIterator = new EnclosingPkgIterator(jCTree);
        while (parentIterator.hasNext() && enclosingPkgIterator.hasNext()) {
            if (!parentIterator.next().equals(enclosingPkgIterator.next())) {
                return false;
            }
        }
        return !enclosingPkgIterator.hasNext();
    }

    public boolean errorsDiscovered() {
        return this.misplacedCompilationUnits.size() > 0;
    }

    @Override
    public void finished(TaskEvent taskEvent) {
        JavaFileObject sourceFile;
        JCTree jCTree;
        if (taskEvent.getKind() == TaskEvent.Kind.ANALYZE) {
            CompilationUnitTree compilationUnit = taskEvent.getCompilationUnit();
            if (compilationUnit == null || (sourceFile = compilationUnit.getSourceFile()) == null || (jCTree = (JCTree) compilationUnit.getPackageName()) == null) {
                return;
            }
            if (!checkPathAndPackage(Paths.get(sourceFile.toUri()).normalize().getParent(), jCTree)) {
                this.misplacedCompilationUnits.add(compilationUnit);
            }
        }
        if (taskEvent.getKind() == TaskEvent.Kind.COMPILATION) {
            for (CompilationUnitTree compilationUnitTree : this.misplacedCompilationUnits) {
                Log.error("Misplaced compilation unit.");
                Log.error("    Directory: " + ((Object) Paths.get(compilationUnitTree.getSourceFile().toUri()).getParent()));
                Log.error("    Package:   " + ((Object) compilationUnitTree.getPackageName()));
            }
        }
    }
}
