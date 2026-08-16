package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;

public class JavaModelInfo extends OpenableElementInfo {
    private Object[] computeNonJavaResources() {
        IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        int length = projects.length;
        Object[] objArr = null;
        int i10 = 0;
        for (IProject iProject : projects) {
            if (!JavaProject.hasJavaNature(iProject)) {
                if (objArr == null) {
                    objArr = new Object[length];
                }
                objArr[i10] = iProject;
                i10++;
            }
        }
        if (i10 == 0) {
            return JavaElementInfo.NO_NON_JAVA_RESOURCES;
        }
        if (i10 >= length) {
            return objArr;
        }
        Object[] objArr2 = new Object[i10];
        System.arraycopy(objArr, 0, objArr2, 0, i10);
        return objArr2;
    }

    public Object[] getNonJavaResources() {
        Object[] objArr = this.nonJavaResources;
        if (objArr != null) {
            return objArr;
        }
        Object[] computeNonJavaResources = computeNonJavaResources();
        this.nonJavaResources = computeNonJavaResources;
        return computeNonJavaResources;
    }
}
