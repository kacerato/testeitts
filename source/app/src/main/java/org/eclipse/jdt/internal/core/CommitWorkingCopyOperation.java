package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CommitWorkingCopyOperation extends JavaModelOperation {
    public CommitWorkingCopyOperation(ICompilationUnit iCompilationUnit, boolean z10) {
        super(new IJavaElement[]{iCompilationUnit}, z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x012b A[Catch: all -> 0x0029, TryCatch #3 {all -> 0x0029, blocks: (B:2:0x0000, B:4:0x001a, B:8:0x002c, B:10:0x004d, B:13:0x0059, B:15:0x005f, B:18:0x0076, B:19:0x007c, B:25:0x0088, B:26:0x0095, B:28:0x00a0, B:31:0x00a5, B:32:0x0117, B:34:0x012b, B:36:0x0132, B:37:0x0135, B:40:0x00a9, B:41:0x0091, B:48:0x00b1, B:49:0x00b8, B:44:0x00b9, B:45:0x00be, B:53:0x00c1, B:55:0x00c7, B:58:0x00ce, B:60:0x00d4, B:61:0x00d9, B:66:0x00e5, B:70:0x00ef, B:76:0x0109, B:77:0x010c, B:78:0x010d, B:68:0x00e9, B:73:0x00f6), top: B:1:0x0000, inners: #2, #5 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void executeOperation() throws JavaModelException {
        String str;
        try {
            beginTask(Messages.workingCopy_commit, 2);
            CompilationUnit compilationUnit = getCompilationUnit();
            if (" ".equals(compilationUnit.getJavaProject().getElementName())) {
                compilationUnit.getBuffer().save(this.progressMonitor, this.force);
                return;
            }
            ICompilationUnit primary = compilationUnit.getPrimary();
            boolean isPrimary = compilationUnit.isPrimary();
            PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) compilationUnit.getAncestor(3);
            boolean isExcluded = Util.isExcluded(compilationUnit);
            IFile resource = compilationUnit.getResource();
            IJavaProject javaProject = packageFragmentRoot.getJavaProject();
            JavaElementDeltaBuilder javaElementDeltaBuilder = null;
            if (!isPrimary && (!packageFragmentRoot.validateOnClasspath().isOK() || isExcluded || !resource.isAccessible() || !Util.isValidCompilationUnitName(compilationUnit.getElementName(), javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)))) {
                try {
                    str = resource.getCharset();
                } catch (CoreException unused) {
                    str = null;
                }
                String source = compilationUnit.getSource();
                if (source == null) {
                    return;
                }
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str == null ? source.getBytes() : source.getBytes(str));
                    if (resource.exists()) {
                        resource.setContents(byteArrayInputStream, this.force ? 3 : 2, (IProgressMonitor) null);
                    } else {
                        resource.create(byteArrayInputStream, this.force, this.progressMonitor);
                    }
                    JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
                    compilationUnit.updateTimeStamp((CompilationUnit) primary);
                    compilationUnit.makeConsistent(this);
                    worked(1);
                    if (javaElementDeltaBuilder != null) {
                    }
                    worked(1);
                } catch (CoreException e10) {
                    throw new JavaModelException(e10);
                } catch (UnsupportedEncodingException e11) {
                    throw new JavaModelException(e11, IJavaModelStatusConstants.IO_EXCEPTION);
                }
            }
            if (!isPrimary && !primary.isOpen()) {
                primary.open(null);
            }
            if (!isExcluded && (!isPrimary || !compilationUnit.isConsistent())) {
                javaElementDeltaBuilder = new JavaElementDeltaBuilder(primary);
            }
            IBuffer buffer = primary.getBuffer();
            if (isPrimary) {
                buffer.save(this.progressMonitor, this.force);
                primary.makeConsistent(this);
            } else {
                if (buffer == null) {
                    return;
                }
                char[] characters = buffer.getCharacters();
                try {
                    IBuffer buffer2 = compilationUnit.getBuffer();
                    if (buffer2 == null) {
                        return;
                    }
                    buffer.setContents(buffer2.getCharacters());
                    buffer.save(this.progressMonitor, this.force);
                    primary.makeConsistent(this);
                } finally {
                    buffer.setContents(characters);
                }
            }
            JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
            compilationUnit.updateTimeStamp((CompilationUnit) primary);
            compilationUnit.makeConsistent(this);
            worked(1);
            if (javaElementDeltaBuilder != null) {
                javaElementDeltaBuilder.buildDeltas();
                JavaElementDelta javaElementDelta = javaElementDeltaBuilder.delta;
                if (javaElementDelta != null) {
                    addDelta(javaElementDelta);
                }
            }
            worked(1);
        } finally {
            done();
        }
    }

    public CompilationUnit getCompilationUnit() {
        return (CompilationUnit) getElementToProcess();
    }

    @Override
    public ISchedulingRule getSchedulingRule() {
        IResource resource = getElementToProcess().getResource();
        if (resource == null) {
            return null;
        }
        IWorkspace workspace = resource.getWorkspace();
        return resource.exists() ? workspace.getRuleFactory().modifyRule(resource) : workspace.getRuleFactory().createRule(resource);
    }

    @Override
    public IJavaModelStatus verify() {
        CompilationUnit compilationUnit = getCompilationUnit();
        return !compilationUnit.isWorkingCopy() ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, compilationUnit) : (!compilationUnit.hasResourceChanged() || this.force) ? JavaModelStatus.VERIFIED_OK : new JavaModelStatus(IJavaModelStatusConstants.UPDATE_CONFLICT);
    }
}
