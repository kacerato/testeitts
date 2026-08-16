package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class SourceElementRequestorAdapter implements ISourceElementRequestor {
    @Override
    public void acceptAnnotationTypeReference(char[] cArr, int i10) {
    }

    @Override
    public void acceptConstructorReference(char[] cArr, int i10, int i11) {
    }

    @Override
    public void acceptFieldReference(char[] cArr, int i10) {
    }

    @Override
    public void acceptImport(int i10, int i11, int i12, int i13, char[][] cArr, boolean z10, int i14) {
    }

    @Override
    public void acceptLineSeparatorPositions(int[] iArr) {
    }

    @Override
    public void acceptMethodReference(char[] cArr, int i10, int i11) {
    }

    @Override
    public void acceptPackage(ImportReference importReference) {
    }

    @Override
    public void acceptProblem(CategorizedProblem categorizedProblem) {
    }

    @Override
    public void acceptTypeReference(char[] cArr, int i10) {
    }

    @Override
    public void acceptUnknownReference(char[] cArr, int i10) {
    }

    @Override
    public void enterCompilationUnit() {
    }

    @Override
    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
    }

    @Override
    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
    }

    @Override
    public void enterInitializer(int i10, int i11) {
    }

    @Override
    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
    }

    @Override
    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
    }

    @Override
    public void exitCompilationUnit(int i10) {
    }

    @Override
    public void exitConstructor(int i10) {
    }

    @Override
    public void exitField(int i10, int i11, int i12) {
    }

    @Override
    public void exitInitializer(int i10) {
    }

    @Override
    public void exitMethod(int i10, Expression expression) {
    }

    @Override
    public void exitType(int i10) {
    }

    @Override
    public void acceptAnnotationTypeReference(char[][] cArr, int i10, int i11) {
    }

    @Override
    public void acceptTypeReference(char[][] cArr, int i10, int i11) {
    }

    @Override
    public void acceptUnknownReference(char[][] cArr, int i10, int i11) {
    }
}
