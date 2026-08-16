package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.core.LocalVariable;

public class LocalVariableLocator extends VariableLocator {
    public LocalVariableLocator(LocalVariablePattern localVariablePattern) {
        super(localVariablePattern);
    }

    private LocalVariable getLocalVariable() {
        return ((LocalVariablePattern) this.pattern).localVariable;
    }

    @Override
    public int match(LocalDeclaration localDeclaration, MatchingNodeSet matchingNodeSet) {
        VariablePattern variablePattern = this.pattern;
        int i10 = 0;
        int i11 = (variablePattern.findReferences && variablePattern.writeAccess && !variablePattern.readAccess && localDeclaration.initialization != null && matchesName(variablePattern.name, localDeclaration.name)) ? this.pattern.mustResolve ? 2 : 3 : 0;
        VariablePattern variablePattern2 = this.pattern;
        if (variablePattern2.findDeclarations && matchesName(variablePattern2.name, localDeclaration.name) && localDeclaration.declarationSourceStart == getLocalVariable().declarationSourceStart) {
            i10 = this.pattern.mustResolve ? 2 : 3;
        }
        if (i11 < i10) {
            i11 = i10;
        }
        return matchingNodeSet.addMatch(localDeclaration, i11);
    }

    @Override
    public int matchContainer() {
        return 4;
    }

    public int matchLocalVariable(LocalVariableBinding localVariableBinding, boolean z10) {
        if (localVariableBinding == null) {
            return 1;
        }
        return ((!z10 || matchesName(this.pattern.name, localVariableBinding.readableName())) && localVariableBinding.declaration.declarationSourceStart == getLocalVariable().declarationSourceStart) ? 3 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        int i11;
        int i12;
        int i13;
        int i14;
        if (aSTNode instanceof SingleNameReference) {
            i13 = aSTNode.sourceStart;
            i14 = aSTNode.sourceEnd;
        } else {
            if (!(aSTNode instanceof QualifiedNameReference)) {
                if (aSTNode instanceof LocalDeclaration) {
                    LocalVariable localVariable = getLocalVariable();
                    int i15 = localVariable.nameStart;
                    SearchMatch newDeclarationMatch = matchLocator.newDeclarationMatch(localVariable, null, i10, i15, (localVariable.nameEnd - i15) + 1);
                    this.match = newDeclarationMatch;
                    matchLocator.report(newDeclarationMatch);
                    return;
                }
                i11 = -1;
                i12 = -1;
                if (i11 < 0) {
                    SearchMatch newLocalVariableReferenceMatch = matchLocator.newLocalVariableReferenceMatch(iJavaElement, i10, i11, i12, aSTNode);
                    this.match = newLocalVariableReferenceMatch;
                    matchLocator.report(newLocalVariableReferenceMatch);
                    return;
                }
                return;
            }
            long j10 = ((QualifiedNameReference) aSTNode).sourcePositions[0];
            i13 = (int) (j10 >>> 32);
            i14 = (int) j10;
        }
        i11 = i13;
        i12 = (i14 - i13) + 1;
        if (i11 < 0) {
        }
    }

    @Override
    public int referenceType() {
        return 14;
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        VariablePattern variablePattern = this.pattern;
        if ((variablePattern.findReferences || variablePattern.fineGrain != 0) && (aSTNode instanceof NameReference)) {
            return resolveLevel((NameReference) aSTNode);
        }
        if (aSTNode instanceof LocalDeclaration) {
            return matchLocalVariable(((LocalDeclaration) aSTNode).binding, true);
        }
        return 0;
    }

    @Override
    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (binding instanceof LocalVariableBinding) {
            return matchLocalVariable((LocalVariableBinding) binding, true);
        }
        return 0;
    }

    public int resolveLevel(NameReference nameReference) {
        return resolveLevel(nameReference.binding);
    }
}
