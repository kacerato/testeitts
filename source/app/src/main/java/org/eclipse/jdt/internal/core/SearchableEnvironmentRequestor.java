package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;

public class SearchableEnvironmentRequestor extends JavaElementRequestor {
    protected boolean checkAccessRestrictions;
    protected NameLookup nameLookup;
    protected IJavaProject project;
    protected ISearchRequestor requestor;
    protected ICompilationUnit unitToSkip;

    public SearchableEnvironmentRequestor(ISearchRequestor iSearchRequestor) {
        this.requestor = iSearchRequestor;
        this.unitToSkip = null;
        this.project = null;
        this.nameLookup = null;
        this.checkAccessRestrictions = false;
    }

    @Override
    public void acceptInitializer(IInitializer iInitializer) {
    }

    @Override
    public void acceptModule(IModuleDescription iModuleDescription) {
        this.requestor.acceptModule(iModuleDescription.getElementName().toCharArray());
    }

    @Override
    public void acceptPackageFragment(IPackageFragment iPackageFragment) {
        this.requestor.acceptPackage(iPackageFragment.getElementName().toCharArray());
    }

    @Override
    public void acceptType(IType iType) {
        AccessRestriction accessRestriction;
        AccessRuleSet accessRuleSet;
        try {
            ICompilationUnit iCompilationUnit = this.unitToSkip;
            if (iCompilationUnit == null || !iCompilationUnit.equals(iType.getCompilationUnit())) {
                char[] charArray = iType.getPackageFragment().getElementName().toCharArray();
                boolean z10 = iType instanceof BinaryType;
                if (this.checkAccessRestrictions && (z10 || !iType.getJavaProject().equals(this.project))) {
                    ClasspathEntry classpathEntry = (ClasspathEntry) this.nameLookup.rootToResolvedEntries.get((PackageFragmentRoot) iType.getAncestor(3));
                    if (classpathEntry != null && (accessRuleSet = classpathEntry.getAccessRuleSet()) != null) {
                        accessRestriction = accessRuleSet.getViolatedRestriction(CharOperation.concatWith(CharOperation.splitOn('.', charArray), iType.getElementName().toCharArray(), '/'));
                        this.requestor.acceptType(charArray, iType.getElementName().toCharArray(), null, iType.getFlags(), accessRestriction);
                    }
                }
                accessRestriction = null;
                this.requestor.acceptType(charArray, iType.getElementName().toCharArray(), null, iType.getFlags(), accessRestriction);
            }
        } catch (JavaModelException unused) {
        }
    }

    public SearchableEnvironmentRequestor(ISearchRequestor iSearchRequestor, ICompilationUnit iCompilationUnit, IJavaProject iJavaProject, NameLookup nameLookup) {
        this.requestor = iSearchRequestor;
        this.unitToSkip = iCompilationUnit;
        this.project = iJavaProject;
        this.nameLookup = nameLookup;
        boolean z10 = true;
        if ("ignore".equals(iJavaProject.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) && "ignore".equals(iJavaProject.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true))) {
            z10 = false;
        }
        this.checkAccessRestrictions = z10;
    }
}
