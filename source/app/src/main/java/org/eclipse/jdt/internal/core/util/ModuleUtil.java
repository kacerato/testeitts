package org.eclipse.jdt.internal.core.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.BasicCompilationUnit;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.CompilationGroup;
import org.eclipse.jdt.internal.core.builder.NameEnvironment;
import org.eclipse.jdt.internal.core.builder.ProblemFactory;

public class ModuleUtil {
    public static String[] getReferencedModules(IJavaProject iJavaProject) throws CoreException {
        ModuleAccumulatorEnvironment moduleAccumulatorEnvironment = new ModuleAccumulatorEnvironment(iJavaProject);
        Compiler newCompiler = newCompiler(moduleAccumulatorEnvironment, iJavaProject);
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        IPackageFragmentRoot[] packageFragmentRoots = iJavaProject.getPackageFragmentRoots();
        int length = packageFragmentRoots.length;
        int i10 = 0;
        while (i10 < length) {
            IPackageFragmentRoot iPackageFragmentRoot = packageFragmentRoots[i10];
            if (iPackageFragmentRoot.getKind() == 1) {
                IJavaElement[] children = iPackageFragmentRoot.getChildren();
                int length2 = children.length;
                int i11 = 0;
                while (i11 < length2) {
                    IJavaElement iJavaElement = children[i11];
                    if (iJavaElement instanceof IPackageFragment) {
                        IPackageFragment iPackageFragment = (IPackageFragment) iJavaElement;
                        if (!iPackageFragment.isDefaultPackage()) {
                            ICompilationUnit[] compilationUnits = iPackageFragment.getCompilationUnits();
                            if (compilationUnits.length != 0) {
                                String elementName = iPackageFragment.getElementName();
                                int length3 = compilationUnits.length;
                                int i12 = 0;
                                while (i12 < length3) {
                                    ICompilationUnit iCompilationUnit = compilationUnits[i12];
                                    hashSet.add(new BasicCompilationUnit(iCompilationUnit.getSource().toCharArray(), CharOperation.splitOn('.', elementName.toCharArray()), iCompilationUnit.getPath().toOSString(), iCompilationUnit));
                                    i12++;
                                    moduleAccumulatorEnvironment = moduleAccumulatorEnvironment;
                                    packageFragmentRoots = packageFragmentRoots;
                                    newCompiler = newCompiler;
                                }
                            }
                        }
                    }
                    i11++;
                    moduleAccumulatorEnvironment = moduleAccumulatorEnvironment;
                    packageFragmentRoots = packageFragmentRoots;
                    newCompiler = newCompiler;
                }
            }
            i10++;
            moduleAccumulatorEnvironment = moduleAccumulatorEnvironment;
            packageFragmentRoots = packageFragmentRoots;
            newCompiler = newCompiler;
        }
        org.eclipse.jdt.internal.compiler.env.ICompilationUnit[] iCompilationUnitArr = new org.eclipse.jdt.internal.compiler.env.ICompilationUnit[hashSet.size()];
        hashSet.toArray(iCompilationUnitArr);
        newCompiler.compile(iCompilationUnitArr);
        for (String str : moduleAccumulatorEnvironment.getModules()) {
            arrayList.add(str);
        }
        Collections.sort(arrayList, new Comparator<String>() {
            @Override
            public int compare(String str2, String str3) {
                return str2.compareTo(str3);
            }
        });
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static Compiler newCompiler(ModuleAccumulatorEnvironment moduleAccumulatorEnvironment, IJavaProject iJavaProject) {
        CompilerOptions compilerOptions = new CompilerOptions(iJavaProject.getOptions(true));
        compilerOptions.performMethodsFullRecovery = true;
        compilerOptions.performStatementsRecovery = true;
        return new Compiler(moduleAccumulatorEnvironment, DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new ICompilerRequestor() {
            @Override
            public void acceptResult(CompilationResult compilationResult) {
            }
        }, ProblemFactory.getProblemFactory(Locale.getDefault()));
    }

    public static class ModuleAccumulatorEnvironment extends NameEnvironment {
        Set<String> modules;

        public ModuleAccumulatorEnvironment(IJavaProject iJavaProject) {
            super(iJavaProject, CompilationGroup.MAIN);
            this.modules = new HashSet();
        }

        @Override
        public void cleanup() {
            this.modules.clear();
        }

        @Override
        public NameEnvironmentAnswer findType(char[][] cArr, char[] cArr2) {
            NameEnvironmentAnswer findType = super.findType(cArr, cArr2);
            if (findType != null && findType.moduleName() != null) {
                this.modules.add(String.valueOf(findType.moduleName()));
            }
            return findType;
        }

        public String[] getModules() {
            this.modules.remove(String.valueOf(TypeConstants.JAVA_BASE));
            return (String[]) this.modules.toArray(new String[this.modules.size()]);
        }

        @Override
        public boolean isOnModulePath(ClasspathEntry classpathEntry) {
            return true;
        }

        @Override
        public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, char[] cArr3) {
            NameEnvironmentAnswer findType = super.findType(cArr, cArr2, cArr3);
            if (findType != null && findType.moduleName() != null) {
                this.modules.add(String.valueOf(findType.moduleName()));
            }
            return findType;
        }
    }
}
