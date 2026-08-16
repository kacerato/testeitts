package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Util;

public class SetVariablesOperation extends ChangeClasspathOperation {
    boolean updatePreferences;
    String[] variableNames;
    IPath[] variablePaths;

    public SetVariablesOperation(String[] strArr, IPath[] iPathArr, boolean z10) {
        super(new IJavaElement[]{JavaModelManager.getJavaModelManager().getJavaModel()}, !ResourcesPlugin.getWorkspace().isTreeLocked());
        this.variableNames = strArr;
        this.variablePaths = iPathArr;
        this.updatePreferences = z10;
    }

    private void verbose_failure(String[] strArr) {
        Util.verbose("CPVariable SET  - FAILED DUE TO EXCEPTION\n\tvariables: " + org.eclipse.jdt.internal.compiler.util.Util.toString(strArr), System.err);
    }

    private void verbose_set_variables() {
        Util.verbose("CPVariable SET  - setting variables\n\tvariables: " + org.eclipse.jdt.internal.compiler.util.Util.toString(this.variableNames) + "\n\tvalues: " + org.eclipse.jdt.internal.compiler.util.Util.toString(this.variablePaths));
    }

    private void verbose_update_project(String[] strArr, JavaProject javaProject) {
        Util.verbose("CPVariable SET  - updating affected project due to setting variables\n\tproject: " + javaProject.getElementName() + "\n\tvariables: " + org.eclipse.jdt.internal.compiler.util.Util.toString(strArr));
    }

    @Override
    public void executeOperation() throws JavaModelException {
        checkCanceled();
        try {
            boolean z10 = true;
            beginTask("", 1);
            if (JavaModelManager.CP_RESOLVE_VERBOSE) {
                verbose_set_variables();
            }
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            if (javaModelManager.variablePutIfInitializingWithSameValue(this.variableNames, this.variablePaths)) {
                done();
                return;
            }
            int length = this.variableNames.length;
            HashMap hashMap = new HashMap(5);
            IJavaModel javaModel = getJavaModel();
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                IPath variableGet = javaModelManager.variableGet(this.variableNames[i10]);
                if (variableGet == JavaModelManager.VARIABLE_INITIALIZATION_IN_PROGRESS) {
                    variableGet = null;
                }
                if (variableGet != null && variableGet.equals(this.variablePaths[i10])) {
                    this.variableNames[i10] = null;
                    i11++;
                }
                i10++;
                z10 = true;
            }
            if (i11 > 0) {
                if (i11 == length) {
                    done();
                    return;
                }
                int i12 = length - i11;
                String[] strArr = new String[i12];
                IPath[] iPathArr = new IPath[i12];
                int i13 = 0;
                for (int i14 = 0; i14 < length; i14++) {
                    String str = this.variableNames[i14];
                    if (str != null) {
                        strArr[i13] = str;
                        iPathArr[i13] = this.variablePaths[i14];
                        i13++;
                    }
                }
                this.variableNames = strArr;
                this.variablePaths = iPathArr;
                length = i12;
            }
            if (isCanceled()) {
                done();
                return;
            }
            IJavaProject[] javaProjects = javaModel.getJavaProjects();
            int length2 = javaProjects.length;
            int i15 = 0;
            while (i15 < length2) {
                JavaProject javaProject = (JavaProject) javaProjects[i15];
                IClasspathEntry[] rawClasspath = javaProject.getRawClasspath();
                int length3 = rawClasspath.length;
                int i16 = 0;
                while (true) {
                    if (i16 >= length3) {
                        break;
                    }
                    IClasspathEntry iClasspathEntry = rawClasspath[i16];
                    for (int i17 = 0; i17 < length; i17++) {
                        String str2 = this.variableNames[i17];
                        if (iClasspathEntry.getEntryKind() == 4) {
                            if (str2.equals(iClasspathEntry.getPath().segment(0))) {
                                hashMap.put(javaProject, javaProject.getResolvedClasspath());
                                break;
                            }
                            IPath sourceAttachmentPath = iClasspathEntry.getSourceAttachmentPath();
                            if (sourceAttachmentPath != null && str2.equals(sourceAttachmentPath.segment(0))) {
                                break;
                            }
                            IPath sourceAttachmentRootPath = iClasspathEntry.getSourceAttachmentRootPath();
                            if (sourceAttachmentRootPath != null) {
                                if (str2.equals(sourceAttachmentRootPath.segment(0))) {
                                    break;
                                }
                            }
                        }
                    }
                    i16++;
                }
                hashMap.put(javaProject, javaProject.getResolvedClasspath());
                i15++;
                z10 = true;
            }
            for (int i18 = 0; i18 < length; i18++) {
                javaModelManager.variablePut(this.variableNames[i18], this.variablePaths[i18]);
                if (this.updatePreferences) {
                    javaModelManager.variablePreferencesPut(this.variableNames[i18], this.variablePaths[i18]);
                }
            }
            if (!hashMap.isEmpty()) {
                String[] strArr2 = this.variableNames;
                try {
                    for (JavaProject javaProject2 : hashMap.o()) {
                        SubMonitor subMonitor = this.progressMonitor;
                        if (subMonitor != null && subMonitor.isCanceled()) {
                            done();
                            return;
                        }
                        if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                            verbose_update_project(strArr2, javaProject2);
                        }
                        classpathChanged(javaProject2.getPerProjectInfo().resetResolvedClasspath(), z10);
                        if (this.canChangeResources) {
                            javaProject2.getProject().touch(this.progressMonitor);
                        }
                    }
                } catch (CoreException e10) {
                    if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                        verbose_failure(strArr2);
                        e10.printStackTrace();
                    }
                    if (!(e10 instanceof JavaModelException)) {
                        throw new JavaModelException(e10);
                    }
                    throw ((JavaModelException) e10);
                }
            }
        } finally {
            done();
        }
    }
}
