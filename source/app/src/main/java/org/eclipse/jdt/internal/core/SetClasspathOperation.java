package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.openjdk.tools.doclint.DocLint;

public class SetClasspathOperation extends ChangeClasspathOperation {
    IPath newOutputLocation;
    IClasspathEntry[] newRawClasspath;
    JavaProject project;
    IClasspathEntry[] referencedEntries;

    public SetClasspathOperation(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr, IPath iPath, boolean z10) {
        this(javaProject, iClasspathEntryArr, null, iPath, z10);
    }

    @Override
    public void executeOperation() throws JavaModelException {
        checkCanceled();
        try {
            JavaModelManager.PerProjectInfo perProjectInfo = this.project.getPerProjectInfo();
            classpathChanged(perProjectInfo.setRawClasspath(this.newRawClasspath, this.referencedEntries, this.newOutputLocation, JavaModelStatus.VERIFIED_OK), true);
            if (this.canChangeResources && perProjectInfo.writeAndCacheClasspath(this.project, this.newRawClasspath, this.newOutputLocation)) {
                JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
            }
        } finally {
            done();
        }
    }

    @Override
    public ISchedulingRule getSchedulingRule() {
        if (!this.canChangeResources) {
            return super.getSchedulingRule();
        }
        IResourceRuleFactory ruleFactory = ResourcesPlugin.getWorkspace().getRuleFactory();
        return new MultiRule(new ISchedulingRule[]{ruleFactory.modifyRule(this.project.getProject()), ruleFactory.modifyRule(JavaModelManager.getExternalManager().getExternalFoldersProject())});
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(20);
        stringBuffer.append("SetClasspathOperation\n");
        stringBuffer.append(" - classpath : ");
        stringBuffer.append("{");
        for (int i10 = 0; i10 < this.newRawClasspath.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(DocLint.SEPARATOR);
            }
            IClasspathEntry iClasspathEntry = this.newRawClasspath[i10];
            stringBuffer.append(" ");
            stringBuffer.append(iClasspathEntry.toString());
        }
        stringBuffer.append("\n - output location : ");
        stringBuffer.append(this.newOutputLocation.toString());
        return stringBuffer.toString();
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        this.project.flushClasspathProblemMarkers(false, false, true);
        return ClasspathEntry.validateClasspath(this.project, this.newRawClasspath, this.newOutputLocation);
    }

    public SetClasspathOperation(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr, IClasspathEntry[] iClasspathEntryArr2, IPath iPath, boolean z10) {
        super(new IJavaElement[]{javaProject}, z10);
        this.project = javaProject;
        this.newRawClasspath = iClasspathEntryArr;
        this.referencedEntries = iClasspathEntryArr2;
        this.newOutputLocation = iPath;
    }
}
