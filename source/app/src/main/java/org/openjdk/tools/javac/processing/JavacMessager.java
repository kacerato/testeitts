package org.openjdk.tools.javac.processing;

import org.openjdk.javax.annotation.processing.Messager;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Pair;

public class JavacMessager implements Messager {
    Log log;
    JavacProcessingEnvironment processingEnv;
    int errorCount = 0;
    int warningCount = 0;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$javax$tools$Diagnostic$Kind;

        static {
            int[] iArr = new int[Diagnostic.Kind.values().length];
            $SwitchMap$javax$tools$Diagnostic$Kind = iArr;
            try {
                iArr[Diagnostic.Kind.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$tools$Diagnostic$Kind[Diagnostic.Kind.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$tools$Diagnostic$Kind[Diagnostic.Kind.MANDATORY_WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public JavacMessager(Context context, JavacProcessingEnvironment javacProcessingEnvironment) {
        this.log = Log.instance(context);
        this.processingEnv = javacProcessingEnvironment;
    }

    public int errorCount() {
        return this.errorCount;
    }

    public boolean errorRaised() {
        return this.errorCount > 0;
    }

    public void newRound() {
        this.errorCount = 0;
    }

    public void printError(String str) {
        printMessage(Diagnostic.Kind.ERROR, str);
    }

    @Override
    public void printMessage(Diagnostic.Kind kind, CharSequence charSequence) {
        printMessage(kind, charSequence, null, null, null);
    }

    public void printNotice(String str) {
        printMessage(Diagnostic.Kind.NOTE, str);
    }

    public void printWarning(String str) {
        printMessage(Diagnostic.Kind.WARNING, str);
    }

    public String toString() {
        return "javac Messager";
    }

    public int warningCount() {
        return this.warningCount;
    }

    @Override
    public void printMessage(Diagnostic.Kind kind, CharSequence charSequence, Element element) {
        printMessage(kind, charSequence, element, null, null);
    }

    @Override
    public void printMessage(Diagnostic.Kind kind, CharSequence charSequence, Element element, AnnotationMirror annotationMirror) {
        printMessage(kind, charSequence, element, annotationMirror, null);
    }

    @Override
    public void printMessage(Diagnostic.Kind kind, CharSequence charSequence, Element element, AnnotationMirror annotationMirror, AnnotationValue annotationValue) {
        JavaFileObject javaFileObject;
        JavaFileObject javaFileObject2;
        Pair<JCTree, JCTree.JCCompilationUnit> treeAndTopLevel = this.processingEnv.getElementUtils().getTreeAndTopLevel(element, annotationMirror, annotationValue);
        JCDiagnostic.DiagnosticPosition diagnosticPosition = null;
        if (treeAndTopLevel != null) {
            javaFileObject2 = treeAndTopLevel.snd.sourcefile;
            if (javaFileObject2 != null) {
                JavaFileObject useSource = this.log.useSource(javaFileObject2);
                diagnosticPosition = treeAndTopLevel.fst.pos();
                javaFileObject = useSource;
            } else {
                javaFileObject = null;
            }
        } else {
            javaFileObject = null;
            javaFileObject2 = null;
        }
        try {
            int i10 = AnonymousClass1.$SwitchMap$javax$tools$Diagnostic$Kind[kind.ordinal()];
            if (i10 == 1) {
                this.errorCount++;
                this.log.error(JCDiagnostic.DiagnosticFlag.MULTIPLE, diagnosticPosition, "proc.messager", charSequence.toString());
            } else if (i10 == 2) {
                this.warningCount++;
                this.log.warning(diagnosticPosition, "proc.messager", charSequence.toString());
            } else if (i10 != 3) {
                this.log.note(diagnosticPosition, "proc.messager", charSequence.toString());
            } else {
                this.warningCount++;
                this.log.mandatoryWarning(diagnosticPosition, "proc.messager", charSequence.toString());
            }
            if (javaFileObject2 != null) {
                this.log.useSource(javaFileObject);
            }
        } catch (Throwable th2) {
            if (javaFileObject2 != null) {
                this.log.useSource(javaFileObject);
            }
            throw th2;
        }
    }
}
