package org.eclipse.jdt.internal.core;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IDynamicReferenceProvider;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;

public class DynamicProjectReferences implements IDynamicReferenceProvider {
    public List<IProject> getDependentProjects(IBuildConfiguration iBuildConfiguration) throws CoreException {
        IProject project = iBuildConfiguration.getProject();
        IJavaProject create = JavaCore.create(project);
        if (!(create instanceof JavaProject)) {
            return Collections.emptyList();
        }
        JavaProject javaProject = (JavaProject) create;
        String[] projectPrerequisites = javaProject.projectPrerequisites(javaProject.getResolvedClasspath());
        final IWorkspaceRoot root = project.getWorkspace().getRoot();
        return (List) Arrays.stream(projectPrerequisites).sorted().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                IProject project2;
                project2 = root.getProject((String) obj);
                return project2;
            }
        }).collect(Collectors.toList());
    }
}
