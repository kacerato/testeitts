package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.util.Util;

public class SourceFile implements ICompilationUnit {
    String initialTypeName;
    public IFile resource;
    ClasspathMultiDirectory sourceLocation;
    boolean updateClassFile;

    public SourceFile(IFile iFile, ClasspathMultiDirectory classpathMultiDirectory) {
        this.resource = iFile;
        this.sourceLocation = classpathMultiDirectory;
        this.initialTypeName = extractTypeName();
        this.updateClassFile = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SourceFile)) {
            return false;
        }
        SourceFile sourceFile = (SourceFile) obj;
        return this.sourceLocation == sourceFile.sourceLocation && this.resource.getFullPath().equals(sourceFile.resource.getFullPath());
    }

    public String extractTypeName() {
        IPath fullPath = this.resource.getFullPath();
        int segmentCount = fullPath.segmentCount();
        int segmentCount2 = this.sourceLocation.sourceFolder.getFullPath().segmentCount();
        int i10 = (segmentCount - segmentCount2) - 1;
        int i11 = segmentCount - 1;
        for (int i12 = segmentCount2; i12 < i11; i12++) {
            i10 += fullPath.segment(i12).length();
        }
        String segment = fullPath.segment(i11);
        int indexOfJavaLikeExtension = Util.indexOfJavaLikeExtension(segment);
        char[] cArr = new char[i10 + indexOfJavaLikeExtension];
        int i13 = 0;
        while (segmentCount2 < i11) {
            String segment2 = fullPath.segment(segmentCount2);
            int length = segment2.length();
            segment2.getChars(0, length, cArr, i13);
            int i14 = i13 + length;
            cArr[i14] = '/';
            segmentCount2++;
            i13 = i14 + 1;
        }
        segment.getChars(0, indexOfJavaLikeExtension, cArr, i13);
        return new String(cArr);
    }

    @Override
    public char[] getContents() {
        try {
            return Util.getResourceContentsAsCharArray(this.resource);
        } catch (CoreException unused) {
            throw new AbortCompilation(true, (RuntimeException) new MissingSourceFileException(this.resource.getFullPath().toString()));
        }
    }

    @Override
    public char[] getFileName() {
        return this.resource.getFullPath().toString().toCharArray();
    }

    @Override
    public char[] getMainTypeName() {
        char[] charArray = this.initialTypeName.toCharArray();
        return CharOperation.subarray(charArray, CharOperation.lastIndexOf('/', charArray) + 1, -1);
    }

    @Override
    public char[] getModuleName() {
        IModule module = this.sourceLocation.module();
        if (module == null) {
            return null;
        }
        return module.name();
    }

    @Override
    public char[][] getPackageName() {
        char[] charArray = this.initialTypeName.toCharArray();
        return CharOperation.splitOn('/', charArray, 0, CharOperation.lastIndexOf('/', charArray));
    }

    public int hashCode() {
        return this.initialTypeName.hashCode();
    }

    @Override
    public boolean ignoreOptionalProblems() {
        return this.sourceLocation.ignoreOptionalProblems;
    }

    public String toString() {
        return "SourceFile[" + ((Object) this.resource.getFullPath()) + "]";
    }

    public String typeLocator() {
        return this.resource.getProjectRelativePath().toString();
    }

    public SourceFile(IFile iFile, ClasspathMultiDirectory classpathMultiDirectory, boolean z10) {
        this(iFile, classpathMultiDirectory);
        this.updateClassFile = z10;
    }
}
