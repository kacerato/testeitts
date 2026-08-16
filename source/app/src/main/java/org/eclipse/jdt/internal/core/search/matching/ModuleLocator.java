package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;

public class ModuleLocator extends PatternLocator {
    private ModulePattern pattern;
    boolean target;

    public ModuleLocator(ModulePattern modulePattern) {
        super(modulePattern);
        this.target = false;
        this.pattern = modulePattern;
    }

    @Override
    public int match(ModuleDeclaration moduleDeclaration, MatchingNodeSet matchingNodeSet) {
        ModulePattern modulePattern = this.pattern;
        if (!modulePattern.findDeclarations || !matchesName(modulePattern.name, moduleDeclaration.moduleName)) {
            return 0;
        }
        matchingNodeSet.mustResolve = true;
        return matchingNodeSet.addMatch(moduleDeclaration, 2);
    }

    @Override
    public int matchContainer() {
        return 1;
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        super.matchReportReference(aSTNode, iJavaElement, binding, i10, matchLocator);
    }

    @Override
    public SearchMatch newDeclarationMatch(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, int i11, MatchLocator matchLocator) {
        return super.newDeclarationMatch(aSTNode, iJavaElement, binding, i10, i11, matchLocator);
    }

    @Override
    public int referenceType() {
        return 17;
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        ModulePattern modulePattern = this.pattern;
        if (modulePattern.findDeclarations && (aSTNode instanceof ModuleDeclaration)) {
            return resolveLevel(((ModuleDeclaration) aSTNode).binding);
        }
        if (modulePattern.findReferences && (aSTNode instanceof ModuleReference)) {
            return resolveLevel(((ModuleReference) aSTNode).resolve(null));
        }
        return 0;
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, IJavaElement iJavaElement2, IJavaElement[] iJavaElementArr, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        matchReportReference(aSTNode, iJavaElement, binding, i10, matchLocator);
    }

    @Override
    public int match(ModuleReference moduleReference, MatchingNodeSet matchingNodeSet) {
        ModulePattern modulePattern = this.pattern;
        if (!modulePattern.findReferences || !matchesName(modulePattern.name, moduleReference.moduleName)) {
            return 0;
        }
        if (this.target) {
            return matchingNodeSet.addMatch(moduleReference, 3);
        }
        matchingNodeSet.mustResolve = true;
        return matchingNodeSet.addMatch(moduleReference, 2);
    }

    @Override
    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        return ((binding instanceof ModuleBinding) && matchesName(this.pattern.name, binding.readableName())) ? 3 : 0;
    }
}
