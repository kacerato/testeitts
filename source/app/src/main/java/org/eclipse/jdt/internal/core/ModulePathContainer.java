package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;

public class ModulePathContainer implements IClasspathContainer {
    private IJavaProject project;

    public ModulePathContainer(IJavaProject iJavaProject) {
        this.project = iJavaProject;
    }

    @Override
    public IClasspathEntry[] getClasspathEntries() {
        AbstractModule abstractModule;
        ArrayList arrayList = new ArrayList();
        ModuleSourcePathManager modulePathManager = JavaModelManager.getModulePathManager();
        try {
            abstractModule = (AbstractModule) ((JavaProject) this.project).getModuleDescription();
        } catch (JavaModelException unused) {
        }
        if (abstractModule == null) {
            return new IClasspathEntry[0];
        }
        for (IModule.IModuleReference iModuleReference : abstractModule.getRequiredModules()) {
            IModulePathEntry moduleRoot = modulePathManager.getModuleRoot(new String(iModuleReference.name()));
            JavaProject javaProject = moduleRoot instanceof ProjectEntry ? ((ProjectEntry) moduleRoot).project : null;
            if (javaProject != null) {
                arrayList.add(JavaCore.newProjectEntry(javaProject.getPath(), ClasspathEntry.NO_ACCESS_RULES, false, new IClasspathAttribute[]{new ClasspathAttribute(IClasspathAttribute.MODULE, "true")}, iModuleReference.isTransitive()));
            }
        }
        return (IClasspathEntry[]) arrayList.toArray(new IClasspathEntry[arrayList.size()]);
    }

    @Override
    public String getDescription() {
        return "Module path";
    }

    @Override
    public int getKind() {
        return 1;
    }

    @Override
    public IPath getPath() {
        return new Path(JavaCore.MODULE_PATH_CONTAINER_ID);
    }
}
