package org.eclipse.jdt.internal.core;

import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.codeassist.CompletionRequestorWrapper;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class AbstractClassFile extends Openable implements IClassFile, SuffixConstants {
    protected String name;

    public AbstractClassFile(PackageFragment packageFragment, String str) {
        super(packageFragment);
        this.name = str;
    }

    private IStatus validateClassFile() {
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        try {
            if (packageFragmentRoot.getKind() != 2) {
                return new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, packageFragmentRoot);
            }
            IJavaProject javaProject = getJavaProject();
            return JavaConventions.validateClassFileName(getElementName(), javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true));
        } catch (JavaModelException e10) {
            return e10.getJavaModelStatus();
        }
    }

    @Override
    public ICompilationUnit becomeWorkingCopy(IProblemRequestor iProblemRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        if (workingCopyOwner == null) {
            workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        }
        ClassFileWorkingCopy classFileWorkingCopy = new ClassFileWorkingCopy(this, workingCopyOwner);
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = javaModelManager.getPerWorkingCopyInfo(classFileWorkingCopy, false, true, null);
        if (perWorkingCopyInfo != null) {
            return perWorkingCopyInfo.workingCopy;
        }
        close();
        new BecomeWorkingCopyOperation(classFileWorkingCopy, iProblemRequestor).runOperation(iProgressMonitor);
        return classFileWorkingCopy;
    }

    @Override
    public abstract void codeComplete(int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    @Override
    @Deprecated
    public void codeComplete(int i10, ICompletionRequestor iCompletionRequestor) throws JavaModelException {
        codeComplete(i10, iCompletionRequestor, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IJavaElement[] codeSelect(int i10, int i11) throws JavaModelException {
        return codeSelect(i10, i11, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public abstract IJavaElement[] codeSelect(int i10, int i11, WorkingCopyOwner workingCopyOwner) throws JavaModelException;

    @Override
    public Object createElementInfo() {
        return new ClassFileInfo();
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof AbstractClassFile)) {
            return false;
        }
        AbstractClassFile abstractClassFile = (AbstractClassFile) obj;
        return this.name.equals(abstractClassFile.name) && this.parent.equals(abstractClassFile.parent);
    }

    public IJavaElement findElement(IJavaElement iJavaElement, int i10, SourceMapper sourceMapper) {
        SourceRange sourceRange = sourceMapper.getSourceRange(iJavaElement);
        if (sourceRange == null || i10 < sourceRange.getOffset() || (sourceRange.getOffset() + sourceRange.getLength()) - 1 < i10) {
            return null;
        }
        if (iJavaElement instanceof IParent) {
            try {
                for (IJavaElement iJavaElement2 : ((IParent) iJavaElement).getChildren()) {
                    IJavaElement findElement = findElement(iJavaElement2, i10, sourceMapper);
                    if (findElement != null) {
                        return findElement;
                    }
                }
            } catch (JavaModelException unused) {
            }
        }
        return iJavaElement;
    }

    @Override
    public IBuffer getBuffer() throws JavaModelException {
        IStatus validateClassFile = validateClassFile();
        if (validateClassFile.isOK()) {
            return super.getBuffer();
        }
        int code = validateClassFile.getCode();
        if (code == 967 || code == 1006) {
            return null;
        }
        throw new JavaModelException(validateClassFile);
    }

    @Override
    public byte[] getBytes() throws JavaModelException {
        JavaElement javaElement = (JavaElement) getParent();
        if (!(javaElement instanceof JarPackageFragment)) {
            return Util.getResourceContentsAsByteArray(resource());
        }
        JarPackageFragmentRoot jarPackageFragmentRoot = (JarPackageFragmentRoot) javaElement.getParent();
        try {
            return getClassFileContent(jarPackageFragmentRoot, jarPackageFragmentRoot.getClassFilePath(Util.concatWith(((PackageFragment) javaElement).names, getElementName(), '/')));
        } catch (IOException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
        } catch (CoreException e11) {
            if (e11 instanceof JavaModelException) {
                throw ((JavaModelException) e11);
            }
            throw new JavaModelException(e11);
        }
    }

    public byte[] getClassFileContent(JarPackageFragmentRoot jarPackageFragmentRoot, String str) throws CoreException, IOException {
        String oSString = jarPackageFragmentRoot.getPath().toOSString();
        if (org.eclipse.jdt.internal.compiler.util.Util.isJrt(oSString)) {
            try {
                r2 = JRTUtil.getClassfileContent(new File(oSString), str, jarPackageFragmentRoot.getElementName());
            } catch (ClassFormatException e10) {
                e10.printStackTrace();
            }
        } else {
            ZipFile jar = jarPackageFragmentRoot.getJar();
            try {
                ZipEntry entry = jar.getEntry(str);
                r2 = entry != null ? org.eclipse.jdt.internal.compiler.util.Util.getZipEntryByteContent(entry, jar) : null;
            } finally {
                JavaModelManager.getJavaModelManager().closeZipFile(jar);
            }
        }
        if (r2 == null && Thread.interrupted()) {
            throw new OperationCanceledException();
        }
        return r2;
    }

    @Override
    public IResource getCorrespondingResource() throws JavaModelException {
        if (((IPackageFragmentRoot) getParent().getParent()).isArchive()) {
            return null;
        }
        return getUnderlyingResource();
    }

    public IJavaElement getElementAtConsideringSibling(int i10) throws JavaModelException {
        IPackageFragment iPackageFragment = (IPackageFragment) getParent();
        SourceMapper sourceMapper = ((PackageFragmentRoot) iPackageFragment.getAncestor(3)).getSourceMapper();
        if (sourceMapper == null) {
            return null;
        }
        int indexOf = this.name.indexOf(36);
        if (indexOf < 0) {
            indexOf = this.name.length();
        }
        int i11 = -1;
        int i12 = Integer.MAX_VALUE;
        IType iType = null;
        for (IJavaElement iJavaElement : iPackageFragment.getChildren()) {
            if (iJavaElement instanceof IOrdinaryClassFile) {
                IOrdinaryClassFile iOrdinaryClassFile = (IOrdinaryClassFile) iJavaElement;
                String elementName = iOrdinaryClassFile.getElementName();
                int indexOf2 = elementName.indexOf(36);
                if (indexOf2 < 0) {
                    indexOf2 = elementName.indexOf(46);
                }
                if (indexOf == indexOf2 && this.name.regionMatches(0, elementName, 0, indexOf)) {
                    iOrdinaryClassFile.getBuffer();
                    SourceRange sourceRange = sourceMapper.getSourceRange(iOrdinaryClassFile.getType());
                    if (sourceRange != SourceMapper.UNKNOWN_RANGE) {
                        int offset = sourceRange.getOffset();
                        int length = (sourceRange.getLength() + offset) - 1;
                        if (offset > i11 && length < i12 && offset <= i10 && length >= i10) {
                            iType = iOrdinaryClassFile.getType();
                            i12 = length;
                            i11 = offset;
                        }
                    }
                }
            }
        }
        if (iType != null) {
            return findElement(iType, i10, sourceMapper);
        }
        return null;
    }

    @Override
    public String getElementName() {
        return String.valueOf(this.name) + ".class";
    }

    @Override
    public int getElementType() {
        return 6;
    }

    @Override
    public ISourceRange getNameRange() {
        return null;
    }

    @Override
    public IPath getPath() {
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        return packageFragmentRoot.isArchive() ? packageFragmentRoot.getPath() : getParent().getPath().append(getElementName());
    }

    @Override
    public String getSource() throws JavaModelException {
        IBuffer buffer = getBuffer();
        if (buffer == null) {
            return null;
        }
        return buffer.getContents();
    }

    @Override
    public ISourceRange getSourceRange() throws JavaModelException {
        String contents;
        IBuffer buffer = getBuffer();
        if (buffer == null || (contents = buffer.getContents()) == null) {
            return null;
        }
        return new SourceRange(0, contents.length());
    }

    public ITypeRoot getTypeRoot() {
        return this;
    }

    @Override
    @Deprecated
    public IJavaElement getWorkingCopy(IProgressMonitor iProgressMonitor, IBufferFactory iBufferFactory) throws JavaModelException {
        return getWorkingCopy(BufferFactoryWrapper.create(iBufferFactory), iProgressMonitor);
    }

    @Override
    public boolean hasBuffer() {
        return true;
    }

    @Override
    public int hashCode() {
        return Util.combineHashCodes(this.name.hashCode(), this.parent.hashCode());
    }

    @Override
    public boolean isReadOnly() {
        return true;
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        return ((Openable) this.parent).resource(packageFragmentRoot).getFile(new Path(getElementName()));
    }

    @Override
    public IStatus validateExistence(IResource iResource) {
        IStatus validateClassFile = validateClassFile();
        if (!validateClassFile.isOK()) {
            return validateClassFile;
        }
        if (iResource != null) {
            if (!iResource.isAccessible()) {
                return newDoesNotExistStatus();
            }
            if (iResource instanceof IFolder) {
                PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
                if (packageFragmentRoot.isArchive()) {
                    return packageFragmentRoot.newDoesNotExistStatus();
                }
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    @Override
    @Deprecated
    public void codeComplete(int i10, ICompletionRequestor iCompletionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        if (iCompletionRequestor != null) {
            codeComplete(i10, new CompletionRequestorWrapper(iCompletionRequestor), workingCopyOwner);
            return;
        }
        throw new IllegalArgumentException("Completion requestor cannot be null");
    }

    @Override
    public void codeComplete(int i10, CompletionRequestor completionRequestor) throws JavaModelException {
        codeComplete(i10, completionRequestor, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public void codeComplete(int i10, CompletionRequestor completionRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        codeComplete(i10, completionRequestor, DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    @Override
    public void codeComplete(int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        codeComplete(i10, completionRequestor, workingCopyOwner, null);
    }

    @Override
    @Deprecated
    public void codeComplete(int i10, final ICodeCompletionRequestor iCodeCompletionRequestor) throws JavaModelException {
        if (iCodeCompletionRequestor == null) {
            codeComplete(i10, (ICompletionRequestor) null);
        } else {
            codeComplete(i10, new ICompletionRequestor() {
                @Override
                public void acceptAnonymousType(char[] cArr, char[] cArr2, char[][] cArr3, char[][] cArr4, char[][] cArr5, char[] cArr6, int i11, int i12, int i13, int i14) {
                }

                @Override
                public void acceptClass(char[] cArr, char[] cArr2, char[] cArr3, int i11, int i12, int i13, int i14) {
                    iCodeCompletionRequestor.acceptClass(cArr, cArr2, cArr3, i11, i12, i13);
                }

                @Override
                public void acceptError(IProblem iProblem) {
                }

                @Override
                public void acceptField(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, char[] cArr5, char[] cArr6, int i11, int i12, int i13, int i14) {
                    iCodeCompletionRequestor.acceptField(cArr, cArr2, cArr3, cArr4, cArr5, cArr6, i11, i12, i13);
                }

                @Override
                public void acceptInterface(char[] cArr, char[] cArr2, char[] cArr3, int i11, int i12, int i13, int i14) {
                    iCodeCompletionRequestor.acceptInterface(cArr, cArr2, cArr3, i11, i12, i13);
                }

                @Override
                public void acceptKeyword(char[] cArr, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptKeyword(cArr, i11, i12);
                }

                @Override
                public void acceptLabel(char[] cArr, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptLabel(cArr, i11, i12);
                }

                @Override
                public void acceptLocalVariable(char[] cArr, char[] cArr2, char[] cArr3, int i11, int i12, int i13, int i14) {
                }

                @Override
                public void acceptMethod(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, char[] cArr8, char[] cArr9, int i11, int i12, int i13, int i14) {
                    iCodeCompletionRequestor.acceptMethod(cArr, cArr2, cArr3, cArr4, cArr5, cArr7, cArr8, cArr9, i11, i12, i13);
                }

                @Override
                public void acceptMethodDeclaration(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4, char[][] cArr5, char[][] cArr6, char[] cArr7, char[] cArr8, char[] cArr9, int i11, int i12, int i13, int i14) {
                }

                @Override
                public void acceptModifier(char[] cArr, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptModifier(cArr, i11, i12);
                }

                @Override
                public void acceptPackage(char[] cArr, char[] cArr2, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptPackage(cArr, cArr2, i11, i12);
                }

                @Override
                public void acceptType(char[] cArr, char[] cArr2, char[] cArr3, int i11, int i12, int i13) {
                    iCodeCompletionRequestor.acceptType(cArr, cArr2, cArr3, i11, i12);
                }

                @Override
                public void acceptVariableName(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4, int i11, int i12, int i13) {
                }
            });
        }
    }
}
