package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;

public class CompletionOnAnnotationOfType extends TypeDeclaration {
    public boolean isParameter;
    public ASTNode potentialAnnotatedNode;

    public CompletionOnAnnotationOfType(char[] cArr, CompilationResult compilationResult, Annotation annotation) {
        super(compilationResult);
        this.sourceEnd = annotation.sourceEnd;
        this.sourceStart = annotation.sourceEnd;
        this.name = cArr;
        this.annotations = new Annotation[]{annotation};
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        return this.annotations[0].print(i10, stringBuffer);
    }
}
