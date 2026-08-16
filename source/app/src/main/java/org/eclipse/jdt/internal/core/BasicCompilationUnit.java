package org.eclipse.jdt.internal.core;

import java.io.File;
import java.io.IOException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModularClassFile;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.util.Util;

public class BasicCompilationUnit implements ICompilationUnit {
    protected char[] contents;
    protected String encoding;
    protected char[] fileName;
    protected char[] mainTypeName;
    protected char[] moduleName;
    protected char[][] packageName;

    private BasicCompilationUnit(char[] cArr, char[][] cArr2, String str) {
        this.contents = cArr;
        this.fileName = str.toCharArray();
        this.packageName = cArr2;
    }

    private void initAttributes(IJavaElement iJavaElement) {
        IProject project;
        int elementType;
        if (iJavaElement == null) {
            this.encoding = null;
            return;
        }
        IModuleDescription iModuleDescription = null;
        while (true) {
            if (iJavaElement != null) {
                try {
                    elementType = iJavaElement.getElementType();
                } catch (CoreException unused) {
                    this.encoding = null;
                    return;
                }
                if (elementType == 2) {
                    iModuleDescription = ((IJavaProject) iJavaElement).getModuleDescription();
                    break;
                }
                if (elementType == 3) {
                    iModuleDescription = ((IPackageFragmentRoot) iJavaElement).getModuleDescription();
                    break;
                }
                if (elementType != 5) {
                    if (elementType == 6 && (iJavaElement instanceof IModularClassFile)) {
                        iModuleDescription = ((IModularClassFile) iJavaElement).getModule();
                        break;
                    }
                    iJavaElement = iJavaElement.getParent();
                } else {
                    IFile resource = iJavaElement.getResource();
                    if (resource != null) {
                        this.encoding = resource.getCharset();
                    }
                    iModuleDescription = ((org.eclipse.jdt.core.ICompilationUnit) iJavaElement).getModule();
                    if (iModuleDescription != null) {
                        break;
                    } else {
                        iJavaElement = iJavaElement.getParent();
                    }
                }
                this.encoding = null;
                return;
            }
            break;
        }
        if (iModuleDescription != null) {
            this.moduleName = iModuleDescription.getElementName().toCharArray();
        }
        if (this.encoding != null || (project = iJavaElement.getJavaProject().getProject()) == null) {
            return;
        }
        this.encoding = project.getDefaultCharset();
    }

    @Override
    public char[] getContents() {
        char[] cArr = this.contents;
        if (cArr != null) {
            return cArr;
        }
        try {
            return Util.getFileCharContent(new File(new String(this.fileName)), this.encoding);
        } catch (IOException unused) {
            return CharOperation.NO_CHAR;
        }
    }

    @Override
    public char[] getFileName() {
        return this.fileName;
    }

    @Override
    public char[] getMainTypeName() {
        if (this.mainTypeName == null) {
            int lastIndexOf = CharOperation.lastIndexOf('/', this.fileName) + 1;
            if (lastIndexOf == 0 || lastIndexOf < CharOperation.lastIndexOf(JavaElement.JEM_ESCAPE, this.fileName)) {
                lastIndexOf = CharOperation.lastIndexOf(JavaElement.JEM_ESCAPE, this.fileName) + 1;
            }
            int lastIndexOf2 = CharOperation.lastIndexOf('|', this.fileName) + 1;
            if (lastIndexOf2 > lastIndexOf) {
                lastIndexOf = lastIndexOf2;
            }
            int lastIndexOf3 = CharOperation.lastIndexOf('$', this.fileName);
            if ((lastIndexOf3 == -1 || !Util.isClassFileName(this.fileName)) && (lastIndexOf3 = CharOperation.lastIndexOf('.', this.fileName)) == -1) {
                lastIndexOf3 = this.fileName.length;
            }
            this.mainTypeName = CharOperation.subarray(this.fileName, lastIndexOf, lastIndexOf3);
        }
        return this.mainTypeName;
    }

    @Override
    public char[] getModuleName() {
        return this.moduleName;
    }

    @Override
    public char[][] getPackageName() {
        return this.packageName;
    }

    @Override
    public boolean ignoreOptionalProblems() {
        return false;
    }

    public String toString() {
        return "CompilationUnit: " + new String(this.fileName);
    }

    @Deprecated
    public BasicCompilationUnit(char[] cArr, char[][] cArr2, String str, String str2) {
        this(cArr, cArr2, str);
        this.encoding = str2;
    }

    public BasicCompilationUnit(char[] cArr, char[][] cArr2, String str, IJavaElement iJavaElement) {
        this(cArr, cArr2, str);
        initAttributes(iJavaElement);
    }
}
