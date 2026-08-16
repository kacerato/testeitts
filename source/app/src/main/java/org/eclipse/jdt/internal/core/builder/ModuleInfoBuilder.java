package org.eclipse.jdt.internal.core.builder;

import java.util.Locale;
import java.util.Map;
import java.util.function.Consumer;
import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.core.CompilationGroup;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.ModuleUpdater;
import org.openjdk.tools.doclint.DocLint;

public class ModuleInfoBuilder {

    public static class BytecodeCollector implements ICompilerRequestor {
        static final boolean $assertionsDisabled = false;
        byte[] bytes;

        @Override
        public void acceptResult(CompilationResult compilationResult) {
            this.bytes = compilationResult.getClassFiles()[0].getBytes();
        }
    }

    private void addModuleUpdates(IModuleDescription iModuleDescription, ModuleUpdater moduleUpdater, Map<String, String> map) {
        final String remove = map.remove(String.valueOf(IAttributeNamesConstants.MODULE_MAIN_CLASS));
        if (remove != null) {
            moduleUpdater.addModuleUpdate(iModuleDescription.getElementName(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ModuleInfoBuilder.lambda$0(String.this, (IUpdatableModule) obj);
                }
            }, IUpdatableModule.UpdateKind.MODULE);
        }
        String remove2 = map.remove(String.valueOf(IAttributeNamesConstants.MODULE_PACKAGES));
        if (remove2 != null) {
            final SimpleSetOfCharArray simpleSetOfCharArray = new SimpleSetOfCharArray();
            for (String str : remove2.split(DocLint.SEPARATOR)) {
                simpleSetOfCharArray.add(str.trim().toCharArray());
            }
            moduleUpdater.addModuleUpdate(iModuleDescription.getElementName(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((IUpdatableModule) obj).setPackageNames(SimpleSetOfCharArray.this);
                }
            }, IUpdatableModule.UpdateKind.MODULE);
        }
        if (map.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException("Unsupported key(s): " + map.o().toString());
    }

    private ClasspathMultiDirectory getSourceLocation(IJavaProject iJavaProject, NameEnvironment nameEnvironment, IModuleDescription iModuleDescription) throws JavaModelException {
        IResource correspondingResource = ((IPackageFragmentRoot) iModuleDescription.getAncestor(3)).getCorrespondingResource();
        for (ClasspathMultiDirectory classpathMultiDirectory : nameEnvironment.sourceLocations) {
            if (classpathMultiDirectory.sourceFolder.equals(correspondingResource)) {
                return classpathMultiDirectory;
            }
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1006, iModuleDescription));
    }

    public static void lambda$0(String str, IUpdatableModule iUpdatableModule) {
        iUpdatableModule.setMainClassName(str.toCharArray());
    }

    public byte[] compileWithAttributes(IModuleDescription iModuleDescription, Map<String, String> map) throws JavaModelException {
        IJavaProject javaProject = iModuleDescription.getJavaProject();
        NameEnvironment nameEnvironment = new NameEnvironment(javaProject, CompilationGroup.MAIN);
        addModuleUpdates(iModuleDescription, nameEnvironment.moduleUpdater, map);
        ICompilationUnit[] iCompilationUnitArr = {new SourceFile(iModuleDescription.getCompilationUnit().getCorrespondingResource(), getSourceLocation(javaProject, nameEnvironment, iModuleDescription))};
        BytecodeCollector bytecodeCollector = new BytecodeCollector();
        new Compiler(nameEnvironment, DefaultErrorHandlingPolicies.exitOnFirstError(), new CompilerOptions(javaProject.getOptions(true)), bytecodeCollector, ProblemFactory.getProblemFactory(Locale.getDefault())).compile(iCompilationUnitArr);
        return bytecodeCollector.bytes;
    }
}
