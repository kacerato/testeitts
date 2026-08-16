package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class CompilationUnit implements ICompilationUnit {
    public char[] contents;
    public String destinationPath;
    String encoding;
    public char[] fileName;
    private boolean ignoreOptionalProblems;
    public char[] mainTypeName;
    public char[] module;
    private ModuleBinding moduleBinding;

    public CompilationUnit(char[] cArr, String str, String str2) {
        this(cArr, str, str2, null);
    }

    @Override
    public char[] getContents() {
        char[] cArr = this.contents;
        if (cArr != null) {
            return cArr;
        }
        try {
            return Util.getFileCharContent(new File(new String(this.fileName)), this.encoding);
        } catch (IOException e10) {
            this.contents = CharOperation.NO_CHAR;
            throw new AbortCompilationUnit(null, e10, this.encoding);
        }
    }

    @Override
    public String getDestinationPath() {
        return this.destinationPath;
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
        return this.ignoreOptionalProblems;
    }

    @Override
    public ModuleBinding module(LookupEnvironment lookupEnvironment) {
        ModuleBinding moduleBinding = this.moduleBinding;
        if (moduleBinding != null) {
            return moduleBinding;
        }
        ModuleBinding module = lookupEnvironment.getModule(this.module);
        this.moduleBinding = module;
        if (module != null) {
            return module;
        }
        throw new IllegalStateException("Module should be known");
    }

    public String toString() {
        return "CompilationUnit[" + new String(this.fileName) + "]";
    }

    public CompilationUnit(char[] cArr, String str, String str2, String str3) {
        this(cArr, str, str2, str3, false, null);
    }

    public CompilationUnit(char[] cArr, String str, String str2, String str3, boolean z10, String str4) {
        this.contents = cArr;
        if (str4 != null) {
            this.module = str4.toCharArray();
        }
        char[] charArray = str.toCharArray();
        char c10 = File.separatorChar;
        if (c10 != '/') {
            if (c10 == '\\' && CharOperation.indexOf('/', charArray) != -1) {
                CharOperation.replace(charArray, '/', JavaElement.JEM_ESCAPE);
            }
        } else if (CharOperation.indexOf(JavaElement.JEM_ESCAPE, charArray) != -1) {
            CharOperation.replace(charArray, JavaElement.JEM_ESCAPE, '/');
        }
        this.fileName = charArray;
        int lastIndexOf = CharOperation.lastIndexOf(c10, charArray) + 1;
        int lastIndexOf2 = CharOperation.lastIndexOf('.', charArray);
        this.mainTypeName = CharOperation.subarray(charArray, lastIndexOf, lastIndexOf2 == -1 ? charArray.length : lastIndexOf2);
        this.encoding = str2;
        this.destinationPath = str3;
        this.ignoreOptionalProblems = z10;
    }
}
