package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;

public class VariableLocator extends PatternLocator {
    protected VariablePattern pattern;

    public VariableLocator(VariablePattern variablePattern) {
        super(variablePattern);
        this.pattern = variablePattern;
    }

    @Override
    public int match(Expression expression, MatchingNodeSet matchingNodeSet) {
        char[] cArr;
        VariablePattern variablePattern = this.pattern;
        if (variablePattern.writeAccess) {
            if (!variablePattern.readAccess && (expression instanceof Assignment)) {
                Expression expression2 = ((Assignment) expression).lhs;
                if (expression2 instanceof Reference) {
                    return matchReference((Reference) expression2, matchingNodeSet, true);
                }
            }
        } else if ((variablePattern.readAccess || variablePattern.fineGrain != 0) && (expression instanceof Assignment) && !(expression instanceof CompoundAssignment)) {
            Expression expression3 = ((Assignment) expression).lhs;
            if (expression3 instanceof QualifiedNameReference) {
                char[][] cArr2 = ((QualifiedNameReference) expression3).tokens;
                cArr = cArr2[cArr2.length - 1];
            } else {
                cArr = null;
            }
            if (cArr == null || matchesName(variablePattern.name, cArr)) {
                matchingNodeSet.removePossibleMatch(expression3);
                matchingNodeSet.removeTrustedMatch(expression3);
            }
        }
        return 0;
    }

    public int matchReference(Reference reference, MatchingNodeSet matchingNodeSet, boolean z10) {
        if (reference instanceof NameReference) {
            VariablePattern variablePattern = this.pattern;
            char[] cArr = variablePattern.name;
            if (cArr == null) {
                return matchingNodeSet.addMatch(reference, variablePattern.mustResolve ? 2 : 3);
            }
            if (!(reference instanceof SingleNameReference)) {
                char[][] cArr2 = ((QualifiedNameReference) reference).tokens;
                if (!z10) {
                    for (char[] cArr3 : cArr2) {
                        if (matchesName(this.pattern.name, cArr3)) {
                            return matchingNodeSet.addMatch(reference, 2);
                        }
                    }
                } else if (matchesName(cArr, cArr2[cArr2.length - 1])) {
                    return matchingNodeSet.addMatch(reference, 2);
                }
            } else if (matchesName(cArr, ((SingleNameReference) reference).token)) {
                return matchingNodeSet.addMatch(reference, 2);
            }
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }

    @Override
    public int match(Reference reference, MatchingNodeSet matchingNodeSet) {
        VariablePattern variablePattern = this.pattern;
        if (variablePattern.readAccess || variablePattern.fineGrain != 0) {
            return matchReference(reference, matchingNodeSet, false);
        }
        return 0;
    }
}
