package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationDecorator;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.nd.java.JavaNames;
import org.eclipse.jdt.internal.core.nd.java.model.BinaryTypeDescriptor;
import org.eclipse.jdt.internal.core.nd.java.model.BinaryTypeFactory;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Util;

public class ClassFile extends AbstractClassFile implements IOrdinaryClassFile {
    protected BinaryType binaryType;
    private IPath externalAnnotationBase;

    public ClassFile(PackageFragment packageFragment, String str) {
        super(packageFragment, str);
        this.binaryType = null;
    }

    private IBinaryType getJarBinaryTypeInfo() throws CoreException, IOException, ClassFormatException {
        IBinaryType readType;
        BinaryTypeDescriptor createDescriptor = BinaryTypeFactory.createDescriptor(this);
        if (createDescriptor == null) {
            return null;
        }
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        if (!(getPackageFragmentRoot() instanceof JarPackageFragmentRoot)) {
            readType = BinaryTypeFactory.readType(createDescriptor, null);
        } else if ((packageFragmentRoot instanceof JrtPackageFragmentRoot) || this.name.equals("module-info")) {
            PackageFragment packageFragment = (PackageFragment) getParent();
            JarPackageFragmentRoot jarPackageFragmentRoot = (JarPackageFragmentRoot) getPackageFragmentRoot();
            String classFilePath = jarPackageFragmentRoot.getClassFilePath(Util.concatWith(packageFragment.names, getElementName(), '/'));
            byte[] classFileContent = getClassFileContent(jarPackageFragmentRoot, classFilePath);
            if (classFileContent != null) {
                readType = new ClassFileReader(classFileContent, (String.valueOf(packageFragmentRoot.getHandleIdentifier()) + '|' + classFilePath).toCharArray(), false);
            } else {
                readType = null;
            }
        } else {
            readType = BinaryTypeFactory.readType(createDescriptor, null);
        }
        if (readType == null) {
            return null;
        }
        if (packageFragmentRoot.getKind() != 2) {
            return readType;
        }
        JavaProject javaProject = (JavaProject) getAncestor(2);
        try {
            IClasspathEntry classpathEntryFor = javaProject.getClasspathEntryFor(getPath());
            if (classpathEntryFor == null) {
                return readType;
            }
            Util.concatWith(((PackageFragment) getParent()).names, getElementName(), '/');
            char[] fieldDescriptorToBinaryName = JavaNames.fieldDescriptorToBinaryName(createDescriptor.fieldDescriptor);
            char[] cArr = SuffixConstants.SUFFIX_CLASS;
            String str = new String(CharArrayUtils.concat(fieldDescriptorToBinaryName, cArr));
            IProject project = javaProject.getProject();
            IPath externalAnnotationPath = ClasspathEntry.getExternalAnnotationPath(classpathEntryFor, project, false);
            return externalAnnotationPath != null ? setupExternalAnnotationProvider(project, externalAnnotationPath, readType, str.substring(0, str.length() - cArr.length)) : classpathEntryFor.getEntryKind() == 3 ? new ExternalAnnotationDecorator(readType, true) : readType;
        } catch (JavaModelException unused) {
            return readType;
        }
    }

    private IType getOuterMostEnclosingType() {
        IType type = getType();
        IType declaringType = type.getDeclaringType();
        while (true) {
            IType iType = declaringType;
            IType iType2 = type;
            type = iType;
            if (type == null) {
                return iType2;
            }
            declaringType = type.getDeclaringType();
        }
    }

    private IBuffer mapSource(SourceMapper sourceMapper, IBinaryType iBinaryType, IClassFile iClassFile) {
        char[] findSource = sourceMapper.findSource(getType(), iBinaryType);
        if (findSource == null) {
            IBuffer createNullBuffer = BufferManager.createNullBuffer(iClassFile);
            if (createNullBuffer == null) {
                return null;
            }
            getBufferManager().addBuffer(createNullBuffer);
            createNullBuffer.addBufferChangedListener(this);
            return createNullBuffer;
        }
        IBuffer createBuffer = BufferManager.createBuffer(iClassFile);
        if (createBuffer == null) {
            return null;
        }
        getBufferManager().addBuffer(createBuffer);
        if (createBuffer.getCharacters() == null) {
            createBuffer.setContents(findSource);
        }
        createBuffer.addBufferChangedListener(this);
        sourceMapper.mapSource((NamedMember) getOuterMostEnclosingType(), findSource, iBinaryType);
        return createBuffer;
    }

    private IBinaryType setupExternalAnnotationProvider(IProject iProject, final IPath iPath, IBinaryType iBinaryType, final String str) {
        IProject file;
        String obj;
        IWorkspaceRoot root = iProject.getWorkspace().getRoot();
        if (iPath.segmentCount() == 1) {
            file = root.getProject(iPath.lastSegment());
        } else {
            IProject folder = root.getFolder(iPath);
            file = !folder.exists() ? root.getFile(iPath) : folder;
        }
        if (!file.exists()) {
            obj = iPath.toString();
        } else {
            if (file.isVirtual()) {
                Util.log((IStatus) new Status(4, JavaCore.PLUGIN_ID, "Virtual resource " + ((Object) iPath) + " cannot be used as annotationpath for project " + iProject.getName()));
                return iBinaryType;
            }
            obj = file.getLocation().toString();
        }
        ZipFile zipFile = null;
        try {
            try {
                zipFile = ExternalAnnotationDecorator.getAnnotationZipFile(obj, new ExternalAnnotationDecorator.ZipFileProducer() {
                    @Override
                    public ZipFile produce() throws IOException {
                        try {
                            return JavaModelManager.getJavaModelManager().getZipFile(iPath);
                        } catch (CoreException e10) {
                            throw new IOException("Failed to read annotation file for " + str + " from " + iPath.toString(), e10);
                        }
                    }
                });
                ExternalAnnotationDecorator externalAnnotationDecorator = new ExternalAnnotationDecorator(iBinaryType, ExternalAnnotationDecorator.externalAnnotationProvider(obj, str, zipFile));
                if (zipFile != null) {
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                }
                if (zipFile == null) {
                    this.externalAnnotationBase = iPath;
                    ExternalAnnotationTracker.registerClassFile(iPath, new Path(str), this);
                }
                return externalAnnotationDecorator;
            } catch (IOException e10) {
                Util.log(e10);
                if (zipFile != null) {
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                }
                return iBinaryType;
            }
        } catch (Throwable th2) {
            if (zipFile != null) {
                JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
            }
            throw th2;
        }
    }

    public static String simpleName(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        String str = new String(unqualifiedName(cArr));
        int lastIndexOf = str.lastIndexOf(36);
        return lastIndexOf != -1 ? Util.localTypeName(str, lastIndexOf, str.length()) : str;
    }

    public static char[] translatedName(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        char[] cArr2 = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = cArr[i10];
            if (c10 == '/') {
                cArr2[i10] = '.';
            } else {
                cArr2[i10] = c10;
            }
        }
        return cArr2;
    }

    public static char[][] translatedNames(char[][] cArr) {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        char[][] cArr2 = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr2[i10] = translatedName(cArr[i10]);
        }
        return cArr2;
    }

    public static char[] unqualifiedName(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        int i10 = 0;
        for (int length = cArr.length - 1; length > -1; length--) {
            if (cArr[length] == '/') {
                char[] cArr2 = new char[i10];
                System.arraycopy(cArr, length + 1, cArr2, 0, i10);
                return cArr2;
            }
            i10++;
        }
        return cArr;
    }

    @Override
    public boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) throws JavaModelException {
        IBinaryType binaryTypeInfo = getBinaryTypeInfo();
        if (binaryTypeInfo == null) {
            openableElementInfo.setChildren(JavaElement.NO_ELEMENTS);
            return false;
        }
        IType type = getType();
        openableElementInfo.setChildren(new IJavaElement[]{type});
        map.put(type, binaryTypeInfo);
        ((ClassFileInfo) openableElementInfo).readBinaryChildren(this, (HashMap) map, binaryTypeInfo);
        return true;
    }

    @Override
    public void close() throws JavaModelException {
        if (this.externalAnnotationBase != null) {
            ExternalAnnotationTracker.unregisterClassFile(this.externalAnnotationBase, new Path(Util.concatWith(((PackageFragment) getParent()).names, this.name, '/')));
        }
        super.close();
    }

    public void closeAndRemoveFromJarTypeCache() throws JavaModelException {
        super.close();
        JavaModelManager.getJavaModelManager().removeFromJarTypeCache(this.binaryType);
    }

    @Override
    public void codeComplete(int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (getSource() != null) {
            BinaryType binaryType = (BinaryType) getType();
            BasicCompilationUnit basicCompilationUnit = new BasicCompilationUnit(getSource().toCharArray(), (char[][]) null, binaryType.sourceFileName((IBinaryType) binaryType.getElementInfo()), getJavaProject());
            codeComplete(basicCompilationUnit, basicCompilationUnit, i10, completionRequestor, workingCopyOwner, null, iProgressMonitor);
        }
    }

    @Override
    public IJavaElement[] codeSelect(int i10, int i11, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        char[] characters;
        IBuffer buffer = getBuffer();
        if (buffer == null || (characters = buffer.getCharacters()) == null) {
            return new IJavaElement[0];
        }
        BinaryType binaryType = (BinaryType) getType();
        return super.codeSelect(new BasicCompilationUnit(characters, (char[][]) null, binaryType.sourceFileName((IBinaryType) binaryType.getElementInfo()), this), i10, i11, workingCopyOwner);
    }

    public boolean existsUsingJarTypeCache() {
        if (!getPackageFragmentRoot().isArchive()) {
            return exists();
        }
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        IType type = getType();
        Object info = javaModelManager.getInfo(type);
        if (info == JavaModelCache.NON_EXISTING_JAR_TYPE_INFO) {
            return false;
        }
        if (info != null) {
            return true;
        }
        JavaElementInfo javaElementInfo = (JavaElementInfo) javaModelManager.getInfo(getParent());
        if (javaElementInfo == null) {
            try {
                info = getJarBinaryTypeInfo();
            } catch (CoreException | IOException | ClassFormatException unused) {
            }
            javaModelManager.putJarTypeInfo(type, info == null ? JavaModelCache.NON_EXISTING_JAR_TYPE_INFO : info);
            return info != null;
        }
        for (IJavaElement iJavaElement : javaElementInfo.getChildren()) {
            if ((iJavaElement instanceof ClassFile) && this.name.equals(((ClassFile) iJavaElement).name)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public IType findPrimaryType() {
        IType type = getType();
        if (type.exists()) {
            return type;
        }
        return null;
    }

    @Override
    public String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return getType().getAttachedJavadoc(iProgressMonitor);
    }

    public IBinaryType getBinaryTypeInfo() throws JavaModelException {
        try {
            IBinaryType jarBinaryTypeInfo = getJarBinaryTypeInfo();
            if (jarBinaryTypeInfo != null) {
                return jarBinaryTypeInfo;
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
    public IClassFile getClassFile() {
        return this;
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
        return findElement(getType(), i10, sourceMapper);
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        if (str.charAt(0) != '[') {
            return null;
        }
        return !mementoTokenizer.hasMoreTokens() ? this : new BinaryType(this, mementoTokenizer.nextToken()).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '(';
    }

    public String getName() {
        return this.name;
    }

    public String getTopLevelTypeName() {
        String elementName = getElementName();
        int indexOf = elementName.indexOf(36);
        return indexOf != -1 ? elementName.substring(0, indexOf) : elementName.substring(0, elementName.length() - SuffixConstants.SUFFIX_CLASS.length);
    }

    @Override
    public IType getType() {
        if (this.binaryType == null) {
            this.binaryType = new BinaryType(this, getTypeName());
        }
        return this.binaryType;
    }

    public String getTypeName() {
        int lastIndexOf = this.name.lastIndexOf(36);
        if (lastIndexOf <= -1) {
            return this.name;
        }
        String str = this.name;
        return Util.localTypeName(str, lastIndexOf, str.length());
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
        return getType().isClass();
    }

    @Override
    public boolean isInterface() throws JavaModelException {
        return getType().isInterface();
    }

    @Override
    public IBuffer openBuffer(IProgressMonitor iProgressMonitor, Object obj) throws JavaModelException {
        IType outerMostEnclosingType = getOuterMostEnclosingType();
        IBuffer buffer = getBufferManager().getBuffer(outerMostEnclosingType.getClassFile());
        if (buffer != null) {
            return buffer;
        }
        SourceMapper sourceMapper = getSourceMapper();
        return sourceMapper != null ? mapSource(sourceMapper, obj instanceof IBinaryType ? (IBinaryType) obj : null, outerMostEnclosingType.getClassFile()) : buffer;
    }
}
