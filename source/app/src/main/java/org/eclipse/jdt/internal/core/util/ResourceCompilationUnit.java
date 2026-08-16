package org.eclipse.jdt.internal.core.util;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import yd.C16181m;

public class ResourceCompilationUnit implements ICompilationUnit {
    private char[] contents;
    private IFile file;
    private char[] fileName;
    private char[] mainTypeName;
    private char[] module;

    public ResourceCompilationUnit(IFile iFile, char[] cArr) {
        this.file = iFile;
        this.module = cArr;
        String obj = iFile.getFullPath().toString();
        this.fileName = obj.toCharArray();
        int lastIndexOf = obj.lastIndexOf("/") + 1;
        lastIndexOf = (lastIndexOf == 0 || lastIndexOf < obj.lastIndexOf(C16181m.f130232i)) ? obj.lastIndexOf(C16181m.f130232i) + 1 : lastIndexOf;
        int lastIndexOf2 = obj.lastIndexOf(".");
        this.mainTypeName = obj.substring(lastIndexOf, lastIndexOf2 == -1 ? obj.length() : lastIndexOf2).toCharArray();
    }

    @Override
    public char[] getContents() {
        char[] cArr = this.contents;
        if (cArr != null) {
            return cArr;
        }
        try {
            char[] resourceContentsAsCharArray = Util.getResourceContentsAsCharArray(this.file);
            this.contents = resourceContentsAsCharArray;
            return resourceContentsAsCharArray;
        } catch (CoreException unused) {
            return CharOperation.NO_CHAR;
        }
    }

    @Override
    public char[] getFileName() {
        return this.fileName;
    }

    @Override
    public char[] getMainTypeName() {
        return this.mainTypeName;
    }

    @Override
    public char[] getModuleName() {
        return this.module;
    }

    @Override
    public char[][] getPackageName() {
        return null;
    }

    @Override
    public boolean ignoreOptionalProblems() {
        return false;
    }
}
