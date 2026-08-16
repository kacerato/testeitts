package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchScope;
import org.eclipse.jdt.internal.core.util.Util;

public class TypeParameterPattern extends JavaSearchPattern {
    protected char[] declaringMemberName;
    protected boolean findDeclarations;
    protected boolean findReferences;
    protected char[][] methodArgumentTypes;
    protected char[] methodDeclaringClassName;
    protected char[] name;
    protected ITypeParameter typeParameter;

    public TypeParameterPattern(boolean z10, boolean z11, ITypeParameter iTypeParameter, int i10) {
        super(1024, i10);
        this.findDeclarations = z10;
        this.findReferences = z11;
        this.typeParameter = iTypeParameter;
        this.name = iTypeParameter.getElementName().toCharArray();
        IMember declaringMember = iTypeParameter.getDeclaringMember();
        this.declaringMemberName = declaringMember.getElementName().toCharArray();
        if (declaringMember instanceof IMethod) {
            IMethod iMethod = (IMethod) declaringMember;
            this.methodDeclaringClassName = iMethod.getParent().getElementName().toCharArray();
            String[] parameterTypes = iMethod.getParameterTypes();
            int length = parameterTypes.length;
            this.methodArgumentTypes = new char[length];
            for (int i11 = 0; i11 < length; i11++) {
                this.methodArgumentTypes[i11] = Signature.toCharArray(parameterTypes[i11].toCharArray());
            }
        }
    }

    @Override
    public void findIndexMatches(Index index, IndexQueryRequestor indexQueryRequestor, SearchParticipant searchParticipant, IJavaSearchScope iJavaSearchScope, IProgressMonitor iProgressMonitor) {
        String relativePath;
        String str;
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) this.typeParameter.getAncestor(3);
        if (iPackageFragmentRoot.isArchive()) {
            relativePath = String.valueOf(((IType) this.typeParameter.getAncestor(7)).getFullyQualifiedName('$').replace('.', '/')) + ".class";
            IModuleDescription moduleDescription = iPackageFragmentRoot.getModuleDescription();
            if (moduleDescription != null) {
                str = ((Object) iPackageFragmentRoot.getPath()) + "|" + moduleDescription.getElementName() + "|" + relativePath;
            } else {
                str = ((Object) iPackageFragmentRoot.getPath()) + "|" + relativePath;
            }
        } else {
            IPath path = this.typeParameter.getPath();
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
            stringBuffer.append(this.findReferences ? "TypeParamCombinedPattern: " : "TypeParamDeclarationPattern: ");
        } else {
            stringBuffer.append("TypeParamReferencePattern: ");
        }
        stringBuffer.append(this.typeParameter.toString());
        return super.print(stringBuffer);
    }
}
