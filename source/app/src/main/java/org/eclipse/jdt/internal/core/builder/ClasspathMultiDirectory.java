package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.batch.BasicModule;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathMultiDirectory extends ClasspathDirectory {
    char[][] exclusionPatterns;
    boolean hasIndependentOutputFolder;
    public boolean ignoreOptionalProblems;
    char[][] inclusionPatterns;
    IContainer sourceFolder;

    public ClasspathMultiDirectory(IContainer iContainer, IContainer iContainer2, char[][] cArr, char[][] cArr2, boolean z10) {
        super(iContainer2, true, null, null, false);
        this.sourceFolder = iContainer;
        this.inclusionPatterns = cArr;
        this.exclusionPatterns = cArr2;
        this.hasIndependentOutputFolder = false;
        this.ignoreOptionalProblems = z10;
        if (cArr != null && cArr.length == 0) {
            this.inclusionPatterns = null;
        }
        if (cArr2 == null || cArr2.length != 0) {
            return;
        }
        this.exclusionPatterns = null;
    }

    public void acceptModuleInfo(ICompilationUnit iCompilationUnit, Parser parser) {
        CompilationUnitDeclaration parse = parser.parse(iCompilationUnit, new CompilationResult(iCompilationUnit, 0, 1, 10));
        if (!parse.isModuleInfo() || parse.moduleDeclaration == null) {
            return;
        }
        this.module = new BasicModule(parse.moduleDeclaration, null);
    }

    @Override
    public String[] directoryList(String str) {
        String[] strArr = (String[]) this.directoryCache.get(str);
        if (strArr != null) {
            return strArr;
        }
        try {
            IContainer findMember = this.binaryFolder.findMember(str);
            if (!(findMember instanceof IContainer)) {
                return null;
            }
            IResource[] members = findMember.members();
            int length = members.length;
            String[] strArr2 = new String[length];
            int i10 = 0;
            for (IResource iResource : members) {
                String name = iResource.getName();
                if (iResource.getType() == 1 && Util.isClassFileName(name)) {
                    int i11 = i10 + 1;
                    strArr2[i10] = name;
                    i10 = i11;
                }
            }
            if (i10 < length) {
                String[] strArr3 = new String[i10];
                System.arraycopy(strArr2, 0, strArr3, 0, i10);
                strArr2 = strArr3;
            }
            this.directoryCache.put(str, strArr2);
            return strArr2;
        } catch (CoreException unused) {
            return null;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClasspathMultiDirectory)) {
            return false;
        }
        ClasspathMultiDirectory classpathMultiDirectory = (ClasspathMultiDirectory) obj;
        return this.ignoreOptionalProblems == classpathMultiDirectory.ignoreOptionalProblems && this.sourceFolder.equals(classpathMultiDirectory.sourceFolder) && this.binaryFolder.equals(classpathMultiDirectory.binaryFolder) && CharOperation.equals(this.inclusionPatterns, classpathMultiDirectory.inclusionPatterns) && CharOperation.equals(this.exclusionPatterns, classpathMultiDirectory.exclusionPatterns);
    }

    @Override
    public boolean isExcluded(IResource iResource) {
        if (!(this.exclusionPatterns == null && this.inclusionPatterns == null) && this.sourceFolder.equals(this.binaryFolder)) {
            return org.eclipse.jdt.internal.core.util.Util.isExcluded(iResource, this.inclusionPatterns, this.exclusionPatterns);
        }
        return false;
    }

    public IModule module() {
        return this.module;
    }

    @Override
    public void setModule(IModule iModule) {
        this.module = iModule;
    }

    @Override
    public String toString() {
        return "Source classpath directory " + this.sourceFolder.getFullPath().toString() + " with " + super.toString();
    }
}
