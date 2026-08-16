package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CreateCompilationUnitOperation extends JavaModelOperation {
    protected String name;
    protected String source;

    public CreateCompilationUnitOperation(IPackageFragment iPackageFragment, String str, String str2, boolean z10) {
        super(null, new IJavaElement[]{iPackageFragment}, z10);
        this.name = str;
        this.source = str2;
    }

    @Override
    public void executeOperation() throws JavaModelException {
        String str;
        int i10 = 0;
        try {
            beginTask(Messages.operation_createUnitProgress, 2);
            JavaElementDelta newJavaElementDelta = newJavaElementDelta();
            ICompilationUnit compilationUnit = getCompilationUnit();
            IContainer iContainer = (IContainer) ((IPackageFragment) getParentElement()).getResource();
            worked(1);
            IFile file = iContainer.getFile(new Path(this.name));
            if (!file.exists()) {
                try {
                    try {
                        str = iContainer.getDefaultCharset();
                    } catch (IOException e10) {
                        throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
                    }
                } catch (CoreException unused) {
                    str = null;
                }
                createFile(iContainer, compilationUnit.getElementName(), new ByteArrayInputStream(str == null ? this.source.getBytes() : this.source.getBytes(str)), this.force);
                this.resultElements = new IJavaElement[]{compilationUnit};
                if (!Util.isExcluded(compilationUnit) && compilationUnit.getParent().exists()) {
                    while (true) {
                        IJavaElement[] iJavaElementArr = this.resultElements;
                        if (i10 >= iJavaElementArr.length) {
                            break;
                        }
                        newJavaElementDelta.added(iJavaElementArr[i10]);
                        i10++;
                    }
                    addDelta(newJavaElementDelta);
                }
            } else {
                if (!this.force) {
                    throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, file.getFullPath().toString())));
                }
                IBuffer buffer = compilationUnit.getBuffer();
                if (buffer == null) {
                    done();
                    return;
                }
                buffer.setContents(this.source);
                compilationUnit.save(new NullProgressMonitor(), false);
                this.resultElements = new IJavaElement[]{compilationUnit};
                if (!Util.isExcluded(compilationUnit) && compilationUnit.getParent().exists()) {
                    while (true) {
                        IJavaElement[] iJavaElementArr2 = this.resultElements;
                        if (i10 >= iJavaElementArr2.length) {
                            break;
                        }
                        newJavaElementDelta.changed(iJavaElementArr2[i10], 1);
                        i10++;
                    }
                    addDelta(newJavaElementDelta);
                }
            }
            worked(1);
            done();
        } catch (Throwable th2) {
            done();
            throw th2;
        }
    }

    public ICompilationUnit getCompilationUnit() {
        return ((IPackageFragment) getParentElement()).getCompilationUnit(this.name);
    }

    @Override
    public ISchedulingRule getSchedulingRule() {
        IResource resource = getCompilationUnit().getResource();
        IWorkspace workspace = resource.getWorkspace();
        return resource.exists() ? workspace.getRuleFactory().modifyRule(resource) : workspace.getRuleFactory().createRule(resource);
    }

    @Override
    public IJavaModelStatus verify() {
        if (getParentElement() == null) {
            return new JavaModelStatus(968);
        }
        IJavaProject javaProject = getParentElement().getJavaProject();
        return JavaConventions.validateCompilationUnitName(this.name, javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4 ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_NAME, this.name) : this.source == null ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS) : JavaModelStatus.VERIFIED_OK;
    }
}
