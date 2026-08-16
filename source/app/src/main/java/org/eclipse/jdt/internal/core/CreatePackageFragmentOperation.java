package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CreatePackageFragmentOperation extends JavaModelOperation {
    protected String[] pkgName;

    public CreatePackageFragmentOperation(IPackageFragmentRoot iPackageFragmentRoot, String str, boolean z10) {
        super(null, new IJavaElement[]{iPackageFragmentRoot}, z10);
        this.pkgName = str != null ? Util.getTrimmedSimpleNames(str) : null;
    }

    @Override
    public void executeOperation() throws JavaModelException {
        try {
            PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) getParentElement();
            beginTask(Messages.operation_createPackageFragmentProgress, this.pkgName.length);
            IContainer resource = packageFragmentRoot.resource();
            String[] strArr = CharOperation.NO_STRINGS;
            ArrayList arrayList = new ArrayList(this.pkgName.length);
            char[][] fullInclusionPatternChars = packageFragmentRoot.fullInclusionPatternChars();
            char[][] fullExclusionPatternChars = packageFragmentRoot.fullExclusionPatternChars();
            JavaElementDelta javaElementDelta = null;
            int i10 = 0;
            while (true) {
                String[] strArr2 = this.pkgName;
                if (i10 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i10];
                strArr = Util.arrayConcat(strArr, str);
                IContainer findMember = resource.findMember(str);
                if (findMember == null) {
                    createFolder(resource, str, this.force);
                    resource = resource.getFolder(new Path(str));
                    PackageFragment packageFragment = packageFragmentRoot.getPackageFragment(strArr);
                    if (!Util.isExcluded(resource, fullInclusionPatternChars, fullExclusionPatternChars)) {
                        if (javaElementDelta == null) {
                            javaElementDelta = newJavaElementDelta();
                        }
                        javaElementDelta.added(packageFragment);
                    }
                    arrayList.add(packageFragment);
                } else {
                    resource = findMember;
                }
                worked(1);
                i10++;
            }
            if (arrayList.size() > 0) {
                IJavaElement[] iJavaElementArr = new IJavaElement[arrayList.size()];
                this.resultElements = iJavaElementArr;
                arrayList.toArray(iJavaElementArr);
                if (javaElementDelta != null) {
                    addDelta(javaElementDelta);
                }
            }
        } finally {
            done();
        }
    }

    @Override
    public ISchedulingRule getSchedulingRule() {
        if (this.pkgName.length == 0) {
            return null;
        }
        IFolder folder = ((JavaElement) getParentElement()).resource().getFolder(new Path(this.pkgName[0]));
        return folder.getWorkspace().getRuleFactory().createRule(folder);
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaElement parentElement = getParentElement();
        if (parentElement == null) {
            return new JavaModelStatus(968);
        }
        String[] strArr = this.pkgName;
        String concatWith = strArr == null ? null : Util.concatWith(strArr, '.');
        IJavaProject javaProject = parentElement.getJavaProject();
        String[] strArr2 = this.pkgName;
        if (strArr2 == null || (strArr2.length > 0 && JavaConventions.validatePackageName(concatWith, javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4)) {
            return new JavaModelStatus(IJavaModelStatusConstants.INVALID_NAME, concatWith);
        }
        IJavaElement parentElement2 = getParentElement();
        if (parentElement2.isReadOnly()) {
            return new JavaModelStatus(976, parentElement2);
        }
        IContainer resource = ((JavaElement) parentElement2).resource();
        int i10 = 0;
        while (true) {
            String[] strArr3 = this.pkgName;
            if (i10 >= strArr3.length) {
                return JavaModelStatus.VERIFIED_OK;
            }
            IResource findMember = resource.findMember(strArr3[i10]);
            if (findMember != null) {
                if (findMember.getType() != 2) {
                    return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, findMember.getFullPath().toString()));
                }
                resource = (IContainer) findMember;
            }
            i10++;
        }
    }
}
