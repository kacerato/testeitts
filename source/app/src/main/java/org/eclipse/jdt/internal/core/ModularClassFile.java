package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IModularClassFile;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.nd.java.model.BinaryModuleDescriptor;
import org.eclipse.jdt.internal.core.nd.java.model.BinaryModuleFactory;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Util;

public class ModularClassFile extends AbstractClassFile implements IModularClassFile {
    private BinaryModule binaryModule;

    public ModularClassFile(PackageFragment packageFragment) {
        super(packageFragment, "module-info");
    }

    private IBinaryModule getJarBinaryModuleInfo() throws CoreException, IOException, ClassFormatException {
        BinaryModuleDescriptor createDescriptor = BinaryModuleFactory.createDescriptor(this);
        if (createDescriptor == null) {
            return null;
        }
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        if (!(getPackageFragmentRoot() instanceof JarPackageFragmentRoot)) {
            return BinaryModuleFactory.readModule(createDescriptor, null);
        }
        if (!(packageFragmentRoot instanceof JrtPackageFragmentRoot) && !this.name.equals("module-info")) {
            return BinaryModuleFactory.readModule(createDescriptor, null);
        }
        PackageFragment packageFragment = (PackageFragment) getParent();
        JarPackageFragmentRoot jarPackageFragmentRoot = (JarPackageFragmentRoot) getPackageFragmentRoot();
        String classFilePath = jarPackageFragmentRoot.getClassFilePath(Util.concatWith(packageFragment.names, getElementName(), '/'));
        byte[] classFileContent = getClassFileContent(jarPackageFragmentRoot, classFilePath);
        if (classFileContent == null) {
            return null;
        }
        return new ClassFileReader(classFileContent, (String.valueOf(packageFragmentRoot.getHandleIdentifier()) + '|' + classFilePath).toCharArray(), false).getModuleDeclaration();
    }

    private IBuffer mapSource(SourceMapper sourceMapper) throws JavaModelException {
        char[] findSource = sourceMapper.findSource(getModule());
        if (findSource == null) {
            IBuffer createNullBuffer = BufferManager.createNullBuffer(this);
            if (createNullBuffer == null) {
                return null;
            }
            getBufferManager().addBuffer(createNullBuffer);
            createNullBuffer.addBufferChangedListener(this);
            return createNullBuffer;
        }
        IBuffer createBuffer = BufferManager.createBuffer(this);
        if (createBuffer == null) {
            return null;
        }
        getBufferManager().addBuffer(createBuffer);
        if (createBuffer.getCharacters() == null) {
            createBuffer.setContents(findSource);
        }
        createBuffer.addBufferChangedListener(this);
        sourceMapper.mapSource((NamedMember) getModule(), findSource, null);
        return createBuffer;
    }

    @Override
    public boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) throws JavaModelException {
        IBinaryModule binaryModuleInfo = getBinaryModuleInfo();
        if (binaryModuleInfo == null) {
            openableElementInfo.setChildren(JavaElement.NO_ELEMENTS);
            return false;
        }
        BinaryModule binaryModule = new BinaryModule(this, binaryModuleInfo);
        map.put(binaryModule, binaryModuleInfo);
        openableElementInfo.setChildren(new IJavaElement[]{binaryModule});
        this.binaryModule = binaryModule;
        if (openableElementInfo instanceof ClassFileInfo) {
            ((ClassFileInfo) openableElementInfo).setModule(binaryModule);
        }
        ((PackageFragmentRootInfo) getPackageFragmentRoot().getElementInfo()).setModule(binaryModule);
        return true;
    }

    @Override
    public void codeComplete(int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (getSource() != null) {
            BasicCompilationUnit basicCompilationUnit = new BasicCompilationUnit(getSource().toCharArray(), (char[][]) null, "module-info.java", getJavaProject());
            codeComplete(basicCompilationUnit, basicCompilationUnit, i10, completionRequestor, workingCopyOwner, null, iProgressMonitor);
        }
    }

    @Override
    public IJavaElement[] codeSelect(int i10, int i11, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        char[] characters;
        IBuffer buffer = getBuffer();
        return (buffer == null || (characters = buffer.getCharacters()) == null) ? new IJavaElement[0] : super.codeSelect(new BasicCompilationUnit(characters, (char[][]) null, "module-info.java", this), i10, i11, workingCopyOwner);
    }

    @Override
    public void escapeMementoName(StringBuffer stringBuffer, String str) {
    }

    @Override
    public IType findPrimaryType() {
        return null;
    }

    public IBinaryModule getBinaryModuleInfo() throws JavaModelException {
        try {
            IBinaryModule jarBinaryModuleInfo = getJarBinaryModuleInfo();
            if (jarBinaryModuleInfo != null) {
                return jarBinaryModuleInfo;
            }
            throw newNotPresentException();
        } catch (IOException e10) {
            throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
        } catch (CoreException e11) {
            if (e11 instanceof JavaModelException) {
                throw ((JavaModelException) e11);
            }
            throw new JavaModelException(e11);
        } catch (ClassFormatException e12) {
            if (!JavaCore.getPlugin().isDebugging()) {
                return null;
            }
            e12.printStackTrace(System.err);
            return null;
        }
    }

    @Override
    public IJavaElement getElementAt(int i10) throws JavaModelException {
        IJavaElement parent = getParent();
        while (parent.getElementType() != 3) {
            parent = parent.getParent();
        }
        SourceMapper sourceMapper = ((PackageFragmentRoot) parent).getSourceMapper();
        if (sourceMapper == null) {
            return null;
        }
        getBuffer();
        return findElement(getModule(), i10, sourceMapper);
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        if (str.charAt(0) != '`') {
            return null;
        }
        return !mementoTokenizer.hasMoreTokens() ? this : new BinaryModule(this, mementoTokenizer.nextToken()).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_MODULAR_CLASSFILE;
    }

    @Override
    public IModuleDescription getModule() throws JavaModelException {
        if (this.binaryModule == null) {
            openWhenClosed(createElementInfo(), false, null);
            if (this.binaryModule == null) {
                throw newNotPresentException();
            }
        }
        return this.binaryModule;
    }

    @Override
    public IType getType() {
        throw new UnsupportedOperationException("IClassFile#getType() cannot be used on an IModularClassFile");
    }

    @Override
    public ICompilationUnit getWorkingCopy(WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (workingCopyOwner == null) {
            workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        }
        ClassFileWorkingCopy classFileWorkingCopy = new ClassFileWorkingCopy(this, workingCopyOwner);
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = JavaModelManager.getJavaModelManager().getPerWorkingCopyInfo(classFileWorkingCopy, false, true, null);
        if (perWorkingCopyInfo != null) {
            return perWorkingCopyInfo.getWorkingCopy();
        }
        new BecomeWorkingCopyOperation(classFileWorkingCopy, null).runOperation(iProgressMonitor);
        return classFileWorkingCopy;
    }

    @Override
    public boolean isClass() throws JavaModelException {
        return false;
    }

    @Override
    public boolean isInterface() throws JavaModelException {
        return false;
    }

    @Override
    public IBuffer openBuffer(IProgressMonitor iProgressMonitor, Object obj) throws JavaModelException {
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper != null) {
            return mapSource(sourceMapper);
        }
        return null;
    }
}
