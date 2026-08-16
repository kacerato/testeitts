package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.util.Util;

public class SetContainerOperation extends ChangeClasspathOperation {
    IJavaProject[] affectedProjects;
    IPath containerPath;
    IClasspathContainer[] respectiveContainers;

    public SetContainerOperation(IPath iPath, IJavaProject[] iJavaProjectArr, IClasspathContainer[] iClasspathContainerArr) {
        super(new IJavaElement[]{JavaModelManager.getJavaModelManager().getJavaModel()}, !ResourcesPlugin.getWorkspace().isTreeLocked());
        this.containerPath = iPath;
        this.affectedProjects = iJavaProjectArr;
        this.respectiveContainers = iClasspathContainerArr;
    }

    private void verbose_failure(CoreException coreException) {
        Util.verbose("CPContainer SET  - FAILED DUE TO EXCEPTION\n\tcontainer path: " + ((Object) this.containerPath), System.err);
        coreException.printStackTrace();
    }

    private void verbose_set_container() {
        Util.verbose("CPContainer SET  - setting container\n\tcontainer path: " + ((Object) this.containerPath) + "\n\tprojects: {" + org.eclipse.jdt.internal.compiler.util.Util.toString(this.affectedProjects, new Util.Displayable() {
            @Override
            public String displayString(Object obj) {
                return ((IJavaProject) obj).getElementName();
            }
        }) + "}\n\tvalues: {\n" + org.eclipse.jdt.internal.compiler.util.Util.toString(this.respectiveContainers, new Util.Displayable() {
            @Override
            public String displayString(Object obj) {
                StringBuffer stringBuffer = new StringBuffer("\t\t");
                if (obj == null) {
                    stringBuffer.append("<null>");
                    return stringBuffer.toString();
                }
                IClasspathContainer iClasspathContainer = (IClasspathContainer) obj;
                stringBuffer.append(iClasspathContainer.getDescription());
                stringBuffer.append(" {\n");
                IClasspathEntry[] classpathEntries = iClasspathContainer.getClasspathEntries();
                if (classpathEntries != null) {
                    for (IClasspathEntry iClasspathEntry : classpathEntries) {
                        stringBuffer.append(" \t\t\t");
                        stringBuffer.append((Object) iClasspathEntry);
                        stringBuffer.append('\n');
                    }
                }
                stringBuffer.append(" \t\t}");
                return stringBuffer.toString();
            }
        }) + "\n\t}");
    }

    private void verbose_set_container_invocation_trace() {
        org.eclipse.jdt.internal.core.util.Util.verbose("CPContainer SET  - setting container\n\tinvocation stack trace:");
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    private void verbose_update_project(JavaProject javaProject) {
        org.eclipse.jdt.internal.core.util.Util.verbose("CPContainer SET  - updating affected project due to setting container\n\tproject: " + javaProject.getElementName() + "\n\tcontainer path: " + ((Object) this.containerPath));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v13 */
    @Override
    public void executeOperation() throws JavaModelException {
        checkCanceled();
        try {
            ?? r22 = 1;
            beginTask("", 1);
            if (JavaModelManager.CP_RESOLVE_VERBOSE) {
                verbose_set_container();
            }
            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                verbose_set_container_invocation_trace();
            }
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            if (javaModelManager.containerPutIfInitializingWithSameEntries(this.containerPath, this.affectedProjects, this.respectiveContainers)) {
                done();
                return;
            }
            IJavaProject[] iJavaProjectArr = this.affectedProjects;
            int length = iJavaProjectArr.length;
            IJavaProject[] iJavaProjectArr2 = new IJavaProject[length];
            int i10 = 0;
            System.arraycopy(iJavaProjectArr, 0, iJavaProjectArr2, 0, length);
            int i11 = 0;
            int i12 = 0;
            while (i11 < length) {
                if (isCanceled()) {
                    done();
                    return;
                }
                JavaProject javaProject = (JavaProject) this.affectedProjects[i11];
                IClasspathContainer iClasspathContainer = this.respectiveContainers[i11];
                if (iClasspathContainer == null) {
                    iClasspathContainer = JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS;
                }
                if (JavaProject.hasJavaNature(javaProject.getProject())) {
                    for (IClasspathEntry iClasspathEntry : javaProject.getRawClasspath()) {
                        if (iClasspathEntry.getEntryKind() == 5 && iClasspathEntry.getPath().equals(this.containerPath)) {
                            IClasspathContainer containerGet = javaModelManager.containerGet(javaProject, this.containerPath);
                            if (containerGet == JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS) {
                                containerGet = null;
                            }
                            if ((containerGet == null || !containerGet.equals(this.respectiveContainers[i11])) && containerGet != this.respectiveContainers[i11]) {
                                i12++;
                                javaModelManager.containerPut(javaProject, this.containerPath, iClasspathContainer);
                            } else {
                                iJavaProjectArr2[i11] = null;
                            }
                            i11++;
                            r22 = 1;
                        }
                    }
                }
                iJavaProjectArr2[i11] = null;
                javaModelManager.containerPut(javaProject, this.containerPath, iClasspathContainer);
                i11++;
                r22 = 1;
            }
            if (i12 == 0) {
                done();
                return;
            }
            int i13 = 0;
            while (i13 < length) {
                try {
                    try {
                        this.progressMonitor.setWorkRemaining(length - i13);
                        if (isCanceled()) {
                            while (i10 < length) {
                                if (this.respectiveContainers[i10] == null) {
                                    javaModelManager.containerPut(this.affectedProjects[i10], this.containerPath, null);
                                }
                                i10++;
                            }
                            done();
                            return;
                        }
                        JavaProject javaProject2 = (JavaProject) iJavaProjectArr2[i13];
                        if (javaProject2 != null) {
                            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                                verbose_update_project(javaProject2);
                            }
                            classpathChanged(javaProject2.getPerProjectInfo().resetResolvedClasspath(), i13 == 0 ? r22 : false);
                            if (this.canChangeResources) {
                                try {
                                    javaProject2.getProject().touch(this.progressMonitor.split((int) r22));
                                } catch (CoreException e10) {
                                    if (!" ".equals(javaProject2.getElementName())) {
                                        throw e10;
                                    }
                                }
                            } else {
                                continue;
                            }
                        }
                        i13++;
                    } catch (CoreException e11) {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            verbose_failure(e11);
                        }
                        if (!(e11 instanceof JavaModelException)) {
                            throw new JavaModelException(e11);
                        }
                        throw ((JavaModelException) e11);
                    }
                } finally {
                    while (i10 < length) {
                        if (this.respectiveContainers[i10] == null) {
                            javaModelManager.containerPut(this.affectedProjects[i10], this.containerPath, null);
                        }
                        i10++;
                    }
                }
            }
            while (i10 < length) {
                if (this.respectiveContainers[i10] == null) {
                    javaModelManager.containerPut(this.affectedProjects[i10], this.containerPath, null);
                }
                i10++;
            }
            done();
        } catch (Throwable th2) {
            done();
            throw th2;
        }
    }
}
