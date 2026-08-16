package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchScope;
import org.eclipse.jdt.internal.core.util.Util;

public class LocalVariablePattern extends VariablePattern {
    LocalVariable localVariable;

    public LocalVariablePattern(LocalVariable localVariable, int i10, int i11) {
        super(512, localVariable.getElementName().toCharArray(), i10, i11);
        this.localVariable = localVariable;
    }

    @Override
    public void findIndexMatches(Index index, IndexQueryRequestor indexQueryRequestor, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IProgressMonitor iProgressMonitor) {
        String relativePath;
        String str;
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) this.localVariable.getAncestor(3);
        if (iPackageFragmentRoot.isArchive()) {
            relativePath = String.valueOf(((IType) this.localVariable.getAncestor(7)).getFullyQualifiedName('$').replace('.', '/')) + ".class";
            IModuleDescription moduleDescription = iPackageFragmentRoot.getModuleDescription();
            if (moduleDescription != null) {
                str = ((Object) iPackageFragmentRoot.getPath()) + "|" + moduleDescription.getElementName() + "|" + relativePath;
            } else {
                str = ((Object) iPackageFragmentRoot.getPath()) + "|" + relativePath;
            }
        } else {
            IPath path = this.localVariable.getPath();
            String obj = path.toString();
            relativePath = Util.relativePath(path, 1);
            str = obj;
        }
        if (!(iJavaSearchScope instanceof JavaSearchScope)) {
            if (iJavaSearchScope.encloses(str) && !indexQueryRequestor.acceptIndexMatch(str, this, searchParticipant, null)) {
                throw new OperationCanceledException();
            }
        } else {
            AccessRuleSet accessRuleSet = ((JavaSearchScope) iJavaSearchScope).getAccessRuleSet(relativePath, index.containerPath);
            if (accessRuleSet != JavaSearchScope.NOT_ENCLOSED && !indexQueryRequestor.acceptIndexMatch(str, this, searchParticipant, accessRuleSet)) {
                throw new OperationCanceledException();
            }
        }
    }

    @Override
    public StringBuffer print(StringBuffer stringBuffer) {
        if (this.findDeclarations) {
            stringBuffer.append(this.findReferences ? "LocalVarCombinedPattern: " : "LocalVarDeclarationPattern: ");
        } else {
            stringBuffer.append("LocalVarReferencePattern: ");
        }
        stringBuffer.append(this.localVariable.toStringWithAncestors());
        return super.print(stringBuffer);
    }
}
