package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.util.Disassembler;
import org.eclipse.jdt.internal.core.util.Util;

public class ClassFileWorkingCopy extends CompilationUnit {
    public AbstractClassFile classFile;

    public ClassFileWorkingCopy(AbstractClassFile abstractClassFile, WorkingCopyOwner workingCopyOwner) {
        super((PackageFragment) abstractClassFile.getParent(), sourceFileName(abstractClassFile), workingCopyOwner);
        this.classFile = abstractClassFile;
    }

    private static String sourceFileName(AbstractClassFile abstractClassFile) {
        return abstractClassFile instanceof ModularClassFile ? "module-info.java" : ((BinaryType) ((ClassFile) abstractClassFile).getType()).getSourceFileName(null);
    }

    @Override
    public void commitWorkingCopy(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, this));
    }

    @Override
    public IBuffer getBuffer() throws JavaModelException {
        return isWorkingCopy() ? super.getBuffer() : this.classFile.getBuffer();
    }

    @Override
    public char[] getContents() {
        char[] characters;
        try {
            IBuffer buffer = getBuffer();
            return (buffer == null || (characters = buffer.getCharacters()) == null) ? CharOperation.NO_CHAR : characters;
        } catch (JavaModelException unused) {
            return CharOperation.NO_CHAR;
        }
    }

    @Override
    public IPath getPath() {
        return this.classFile.getPath();
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        return (z10 && isPrimary()) ? this : new ClassFileWorkingCopy(this.classFile, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IBuffer openBuffer(IProgressMonitor iProgressMonitor, Object obj) throws JavaModelException {
        IBuffer createBuffer = BufferManager.createBuffer(this);
        IBuffer buffer = this.classFile.getBuffer();
        if (buffer != null) {
            createBuffer.setContents(buffer.getCharacters());
        } else {
            createBuffer.setContents(new Disassembler().disassemble(ToolFactory.createDefaultClassFileReader(this.classFile, 65535), Util.getLineSeparator("", getJavaProject()), 16));
        }
        getBufferManager().addBuffer(createBuffer);
        createBuffer.addBufferChangedListener(this);
        return createBuffer;
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        return packageFragmentRoot.isArchive() ? packageFragmentRoot.resource(packageFragmentRoot) : this.classFile.resource(packageFragmentRoot);
    }

    @Override
    public void toStringName(StringBuffer stringBuffer) {
        stringBuffer.append(this.classFile.getElementName());
    }
}
