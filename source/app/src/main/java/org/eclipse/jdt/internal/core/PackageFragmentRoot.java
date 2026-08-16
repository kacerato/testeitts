package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Map;
import java.util.jar.Manifest;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModularClassFile;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AutomaticModuleNaming;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.AbstractModule;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class PackageFragmentRoot extends Openable implements IPackageFragmentRoot {
    protected static final char ATTACHMENT_PROPERTY_DELIMITER = '*';
    public static final String NO_SOURCE_ATTACHMENT = "";
    protected IResource resource;

    public PackageFragmentRoot(IResource iResource, JavaProject javaProject) {
        super(javaProject);
        this.resource = iResource;
    }

    private IClasspathEntry findSourceAttachmentRecommendation() {
        try {
            IPath path = getPath();
            JavaProject javaProject = (JavaProject) getJavaProject();
            try {
                IClasspathEntry classpathEntryFor = javaProject.getClasspathEntryFor(path);
                if (classpathEntryFor != null) {
                    if (JavaModel.getTarget(classpathEntryFor.getSourceAttachmentPath(), true) != null) {
                        return classpathEntryFor;
                    }
                }
            } catch (JavaModelException unused) {
            }
            for (IJavaProject iJavaProject : getJavaModel().getJavaProjects()) {
                JavaProject javaProject2 = (JavaProject) iJavaProject;
                if (javaProject2 != javaProject) {
                    try {
                        IClasspathEntry classpathEntryFor2 = javaProject2.getClasspathEntryFor(path);
                        if (classpathEntryFor2 != null && JavaModel.getTarget(classpathEntryFor2.getSourceAttachmentPath(), true) != null) {
                            return classpathEntryFor2;
                        }
                    } catch (JavaModelException unused2) {
                    }
                }
            }
            return null;
        } catch (JavaModelException unused3) {
            return null;
        }
    }

    private IModuleDescription getSourceModuleDescription() {
        CompilationUnitElementInfo compilationUnitElementInfo;
        try {
            IJavaElement[] children = getChildren();
            int length = children.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (children[i10].getElementName().length() == 0) {
                    if (getKind() != 1) {
                        IModularClassFile modularClassFile = ((IPackageFragment) children[i10]).getModularClassFile();
                        if (modularClassFile.exists()) {
                            return modularClassFile.getModule();
                        }
                        return null;
                    }
                    ICompilationUnit compilationUnit = ((PackageFragment) children[i10]).getCompilationUnit("module-info.java");
                    if ((compilationUnit instanceof CompilationUnit) && compilationUnit.exists() && (compilationUnitElementInfo = (CompilationUnitElementInfo) ((CompilationUnit) compilationUnit).getElementInfo()) != null) {
                        return compilationUnitElementInfo.getModule();
                    }
                    return null;
                }
            }
            return null;
        } catch (JavaModelException e10) {
            Util.log((Throwable) e10);
            return null;
        }
    }

    @Override
    public void attachSource(IPath iPath, IPath iPath2, IProgressMonitor iProgressMonitor) throws JavaModelException {
        boolean z10;
        String str;
        try {
            try {
                verifyAttachSource(iPath);
                if (iProgressMonitor != null) {
                    iProgressMonitor.beginTask(Messages.element_attachingSource, 2);
                }
                SourceMapper sourceMapper = getSourceMapper();
                if (iPath == null) {
                    setSourceMapper(null);
                    z10 = true;
                } else {
                    IPath sourceAttachmentPath = getSourceAttachmentPath();
                    IPath sourceAttachmentRootPath = getSourceAttachmentRootPath();
                    if (iProgressMonitor != null) {
                        iProgressMonitor.worked(1);
                    }
                    z10 = (sourceAttachmentPath == null || (sourceAttachmentPath.equals(iPath) && iPath2 != null && iPath2.equals(sourceAttachmentRootPath)) || sourceAttachmentRootPath == null) ? false : true;
                    if (JavaModel.getTarget(iPath, false) == null) {
                        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_PATH, iPath));
                    }
                    SourceMapper createSourceMapper = createSourceMapper(iPath, iPath2);
                    if (iPath2 == null && createSourceMapper.rootPath != null) {
                        iPath2 = new Path(createSourceMapper.rootPath);
                    }
                    setSourceMapper(createSourceMapper);
                }
                if (iPath == null) {
                    Util.setSourceAttachmentProperty(getPath(), null);
                } else {
                    IPath path = getPath();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(iPath.toString()));
                    if (iPath2 == null) {
                        str = "";
                    } else {
                        str = String.valueOf('*') + iPath2.toString();
                    }
                    sb2.append(str);
                    Util.setSourceAttachmentProperty(path, sb2.toString());
                }
                if (z10) {
                    if (sourceMapper != null) {
                        sourceMapper.close();
                    }
                    Enumeration<IBuffer> openBuffers = BufferManager.getDefaultBufferManager().getOpenBuffers();
                    while (openBuffers.hasMoreElements()) {
                        IBuffer nextElement = openBuffers.nextElement();
                        if (isAncestorOf((IJavaElement) nextElement.getOwner())) {
                            nextElement.close();
                        }
                    }
                    if (iProgressMonitor != null) {
                        iProgressMonitor.worked(1);
                    }
                }
                if (iProgressMonitor != null) {
                    iProgressMonitor.done();
                }
            } catch (JavaModelException e10) {
                Util.setSourceAttachmentProperty(getPath(), null);
                throw e10;
            }
        } catch (Throwable th2) {
            if (iProgressMonitor != null) {
                iProgressMonitor.done();
            }
            throw th2;
        }
    }

    @Override
    public boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) throws JavaModelException {
        ((PackageFragmentRootInfo) openableElementInfo).setRootKind(determineKind(iResource));
        return computeChildren(openableElementInfo, iResource);
    }

    public boolean computeChildren(OpenableElementInfo openableElementInfo, IResource iResource) throws JavaModelException {
        try {
            if (iResource.getType() != 2) {
                if (iResource.getType() == 4) {
                }
                return true;
            }
            ArrayList arrayList = new ArrayList(5);
            computeFolderChildren((IContainer) iResource, !Util.isExcluded(r5, r9, r10), CharOperation.NO_STRINGS, arrayList, fullInclusionPatternChars(), fullExclusionPatternChars());
            if (arrayList.isEmpty()) {
                openableElementInfo.setChildren(JavaElement.NO_ELEMENTS);
            } else {
                IJavaElement[] iJavaElementArr = new IJavaElement[arrayList.size()];
                arrayList.toArray(iJavaElementArr);
                openableElementInfo.setChildren(iJavaElementArr);
            }
            return true;
        } catch (JavaModelException e10) {
            openableElementInfo.setChildren(new IJavaElement[0]);
            throw e10;
        }
    }

    public void computeFolderChildren(IContainer iContainer, boolean z10, String[] strArr, ArrayList arrayList, char[][] cArr, char[][] cArr2) throws JavaModelException {
        int i10;
        JavaProject javaProject;
        IFolder[] iFolderArr;
        boolean z11;
        JavaModelManager javaModelManager;
        String str;
        if (z10) {
            arrayList.add(getPackageFragment(strArr));
        }
        try {
            IFolder[] members = iContainer.members();
            int length = members.length;
            if (length > 0) {
                IJavaProject create = JavaCore.create(iContainer.getProject());
                boolean z12 = true;
                String option = create.getOption("org.eclipse.jdt.core.compiler.source", true);
                String option2 = create.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                JavaProject javaProject2 = (JavaProject) getJavaProject();
                JavaModelManager javaModelManager2 = JavaModelManager.getJavaModelManager();
                boolean z13 = z10;
                int i11 = 0;
                while (i11 < length) {
                    IFolder iFolder = members[i11];
                    String name = iFolder.getName();
                    int type = iFolder.getType();
                    if (type == z12) {
                        i10 = i11;
                        javaProject = javaProject2;
                        iFolderArr = members;
                        z11 = z12;
                        javaModelManager = javaModelManager2;
                        str = option2;
                        if (!z13 && Util.isValidCompilationUnitName(name, option, str) && !Util.isExcluded(iFolder, cArr, cArr2)) {
                            arrayList.add(getPackageFragment(strArr));
                            z13 = z11;
                        }
                    } else if (type == 2 && Util.isValidFolderNameForPackage(name, option, option2) && javaProject2.contains(iFolder)) {
                        z11 = true;
                        i10 = i11;
                        javaModelManager = javaModelManager2;
                        javaProject = javaProject2;
                        iFolderArr = members;
                        str = option2;
                        computeFolderChildren(iFolder, !Util.isExcluded(iFolder, cArr, cArr2), Util.arrayConcat(strArr, javaModelManager2.intern(name)), arrayList, cArr, cArr2);
                    } else {
                        i10 = i11;
                        javaModelManager = javaModelManager2;
                        javaProject = javaProject2;
                        iFolderArr = members;
                        z11 = true;
                        str = option2;
                    }
                    i11 = i10 + 1;
                    option2 = str;
                    javaModelManager2 = javaModelManager;
                    z12 = z11;
                    javaProject2 = javaProject;
                    members = iFolderArr;
                }
            }
        } catch (IllegalArgumentException e10) {
            throw new JavaModelException(e10, 969);
        } catch (CoreException e11) {
            throw new JavaModelException(e11);
        }
    }

    @Override
    public void copy(IPath iPath, int i10, int i11, IClasspathEntry iClasspathEntry, IProgressMonitor iProgressMonitor) throws JavaModelException {
        new CopyPackageFragmentRootOperation(this, iPath, i10, i11, iClasspathEntry).runOperation(iProgressMonitor);
    }

    @Override
    public Object createElementInfo() {
        return new PackageFragmentRootInfo();
    }

    @Override
    public IPackageFragment createPackageFragment(String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreatePackageFragmentOperation createPackageFragmentOperation = new CreatePackageFragmentOperation(this, str, z10);
        createPackageFragmentOperation.runOperation(iProgressMonitor);
        return getPackageFragment(createPackageFragmentOperation.pkgName);
    }

    public SourceMapper createSourceMapper(IPath iPath, IPath iPath2) throws JavaModelException {
        IClasspathEntry classpathEntryFor = ((JavaProject) getParent()).getClasspathEntryFor(getPath());
        return new SourceMapper(iPath, iPath2 != null ? iPath2.toOSString() : null, getJavaProject().getOptions(true), classpathEntryFor == null ? null : ((ClasspathEntry) classpathEntryFor).getSourceAttachmentEncoding());
    }

    @Override
    public void delete(int i10, int i11, IProgressMonitor iProgressMonitor) throws JavaModelException {
        new DeletePackageFragmentRootOperation(this, i10, i11).runOperation(iProgressMonitor);
    }

    public int determineKind(IResource iResource) throws JavaModelException {
        IClasspathEntry classpathEntryFor = ((JavaProject) getJavaProject()).getClasspathEntryFor(iResource.getFullPath());
        if (classpathEntryFor != null) {
            return classpathEntryFor.getContentKind();
        }
        return 1;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PackageFragmentRoot)) {
            return false;
        }
        PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) obj;
        return resource().equals(packageFragmentRoot.resource()) && this.parent.equals(packageFragmentRoot.parent);
    }

    public char[][] fullExclusionPatternChars() {
        ClasspathEntry classpathEntry;
        try {
            if ((!isOpen() || getKind() == 1) && (classpathEntry = (ClasspathEntry) getRawClasspathEntry()) != null) {
                return classpathEntry.fullExclusionPatternChars();
            }
            return null;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public char[][] fullInclusionPatternChars() {
        ClasspathEntry classpathEntry;
        try {
            if ((!isOpen() || getKind() == 1) && (classpathEntry = (ClasspathEntry) getRawClasspathEntry()) != null) {
                return classpathEntry.fullInclusionPatternChars();
            }
            return null;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public IModuleDescription getAutomaticModuleDescription() throws JavaModelException {
        return getAutomaticModuleDescription(getResolvedClasspathEntry());
    }

    public String getClassFilePath(String str) {
        return str;
    }

    @Override
    public String getElementName() {
        IFolder resource = resource();
        return resource instanceof IFolder ? resource.getName() : "";
    }

    @Override
    public int getElementType() {
        return 3;
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        String[] strArr;
        String str2 = null;
        if (str.charAt(0) != '<') {
            return null;
        }
        if (mementoTokenizer.hasMoreTokens()) {
            String nextToken = mementoTokenizer.nextToken();
            char charAt = nextToken.charAt(0);
            if (charAt == '(' || charAt == '\'' || charAt == '{' || charAt == '!') {
                str2 = nextToken;
                strArr = CharOperation.NO_STRINGS;
            } else {
                strArr = Util.splitOn('.', nextToken, 0, nextToken.length());
            }
        } else {
            strArr = CharOperation.NO_STRINGS;
        }
        PackageFragment packageFragment = getPackageFragment(strArr);
        return str2 == null ? packageFragment.getHandleFromMemento(mementoTokenizer, workingCopyOwner) : packageFragment.getHandleFromMemento(str2, mementoTokenizer, workingCopyOwner);
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        IResource resource = getResource();
        IPath projectRelativePath = resource != null ? resource().getProject().equals(getJavaProject().getProject()) ? resource.getProjectRelativePath() : resource.getFullPath() : getPath();
        ((JavaElement) getParent()).getHandleMemento(stringBuffer);
        stringBuffer.append(getHandleMementoDelimiter());
        escapeMementoName(stringBuffer, projectRelativePath.toString());
        if (org.eclipse.jdt.internal.compiler.util.Util.isJrt(projectRelativePath.toOSString())) {
            stringBuffer.append(JavaElement.JEM_MODULE);
            escapeMementoName(stringBuffer, getElementName());
        }
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '/';
    }

    public int getKind() throws JavaModelException {
        return ((PackageFragmentRootInfo) getElementInfo()).getRootKind();
    }

    public Manifest getManifest() {
        return null;
    }

    public IModuleDescription getModuleDescription() {
        if (isComplianceJava9OrHigher()) {
            return getSourceModuleDescription();
        }
        return null;
    }

    public Object[] getNonJavaResources() throws JavaModelException {
        return ((PackageFragmentRootInfo) getElementInfo()).getNonJavaResources(getJavaProject(), resource(), this);
    }

    @Override
    public IPackageFragment getPackageFragment(String str) {
        return getPackageFragment(Util.getTrimmedSimpleNames(str));
    }

    public String getPackageName(IFolder iFolder) {
        IPath path = getPath();
        IPath fullPath = iFolder.getFullPath();
        int segmentCount = path.segmentCount();
        int segmentCount2 = fullPath.segmentCount();
        StringBuffer stringBuffer = new StringBuffer("");
        for (int i10 = segmentCount; i10 < segmentCount2; i10++) {
            if (i10 > segmentCount) {
                stringBuffer.append('.');
            }
            stringBuffer.append(fullPath.segment(i10));
        }
        return stringBuffer.toString();
    }

    public IPath getPath() {
        return internalPath();
    }

    @Override
    public IClasspathEntry getRawClasspathEntry() throws JavaModelException {
        JavaProject javaProject = (JavaProject) getJavaProject();
        javaProject.getResolvedClasspath();
        Map<IPath, IClasspathEntry> map = javaProject.getPerProjectInfo().rootPathToRawEntries;
        IClasspathEntry iClasspathEntry = map != null ? map.get(getPath()) : null;
        if (iClasspathEntry != null) {
            return iClasspathEntry;
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1006, this));
    }

    @Override
    public IClasspathEntry getResolvedClasspathEntry() throws JavaModelException {
        JavaProject javaProject = (JavaProject) getJavaProject();
        javaProject.getResolvedClasspath();
        Map<IPath, IClasspathEntry> map = javaProject.getPerProjectInfo().rootPathToResolvedEntries;
        IClasspathEntry iClasspathEntry = map != null ? map.get(getPath()) : null;
        if (iClasspathEntry != null) {
            return iClasspathEntry;
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1006, this));
    }

    @Override
    public IPath getSourceAttachmentPath() throws JavaModelException {
        IPath sourceAttachmentPath;
        IPath sourceAttachmentPath2;
        if (getKind() != 2) {
            return null;
        }
        IPath path = getPath();
        String sourceAttachmentProperty = Util.getSourceAttachmentProperty(path);
        if (sourceAttachmentProperty != null) {
            int lastIndexOf = sourceAttachmentProperty.lastIndexOf(42);
            return lastIndexOf < 0 ? new Path(sourceAttachmentProperty) : new Path(sourceAttachmentProperty.substring(0, lastIndexOf));
        }
        IClasspathEntry classpathEntryFor = ((JavaProject) getParent()).getClasspathEntryFor(path);
        if (classpathEntryFor != null && (sourceAttachmentPath2 = classpathEntryFor.getSourceAttachmentPath()) != null) {
            return sourceAttachmentPath2;
        }
        IClasspathEntry findSourceAttachmentRecommendation = findSourceAttachmentRecommendation();
        if (findSourceAttachmentRecommendation == null || (sourceAttachmentPath = findSourceAttachmentRecommendation.getSourceAttachmentPath()) == null) {
            return null;
        }
        return sourceAttachmentPath;
    }

    @Override
    public IPath getSourceAttachmentRootPath() throws JavaModelException {
        IPath sourceAttachmentRootPath;
        IPath sourceAttachmentRootPath2;
        if (getKind() != 2) {
            return null;
        }
        IPath path = getPath();
        String sourceAttachmentProperty = Util.getSourceAttachmentProperty(path);
        if (sourceAttachmentProperty != null) {
            int lastIndexOf = sourceAttachmentProperty.lastIndexOf(42);
            if (lastIndexOf == -1) {
                return null;
            }
            return new Path(lastIndexOf != sourceAttachmentProperty.length() + (-1) ? sourceAttachmentProperty.substring(lastIndexOf + 1) : "");
        }
        IClasspathEntry classpathEntryFor = ((JavaProject) getParent()).getClasspathEntryFor(path);
        if (classpathEntryFor != null && (sourceAttachmentRootPath2 = classpathEntryFor.getSourceAttachmentRootPath()) != null) {
            return sourceAttachmentRootPath2;
        }
        IClasspathEntry findSourceAttachmentRecommendation = findSourceAttachmentRecommendation();
        if (findSourceAttachmentRecommendation == null || (sourceAttachmentRootPath = findSourceAttachmentRecommendation.getSourceAttachmentRootPath()) == null) {
            return null;
        }
        return sourceAttachmentRootPath;
    }

    @Override
    public SourceMapper getSourceMapper() {
        try {
            PackageFragmentRootInfo packageFragmentRootInfo = (PackageFragmentRootInfo) getElementInfo();
            SourceMapper sourceMapper = packageFragmentRootInfo.getSourceMapper();
            if (sourceMapper != null) {
                return sourceMapper;
            }
            IPath sourceAttachmentPath = getSourceAttachmentPath();
            IPath sourceAttachmentRootPath = getSourceAttachmentRootPath();
            SourceMapper createSourceMapper = sourceAttachmentPath == null ? createSourceMapper(getPath(), sourceAttachmentRootPath) : createSourceMapper(sourceAttachmentPath, sourceAttachmentRootPath);
            packageFragmentRootInfo.setSourceMapper(createSourceMapper);
            return createSourceMapper;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    @Override
    public IResource getUnderlyingResource() throws JavaModelException {
        if (exists()) {
            return resource();
        }
        throw newNotPresentException();
    }

    @Override
    public boolean hasChildren() throws JavaModelException {
        return true;
    }

    public boolean hasCompilationUnit(String str, String str2) {
        IPackageFragment packageFragment = getPackageFragment(str.replace('/', '.'));
        try {
            if (packageFragment.exists()) {
                return packageFragment.containsJavaResources();
            }
            return false;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    @Override
    public int hashCode() {
        return resource().hashCode();
    }

    public boolean ignoreOptionalProblems() {
        try {
            return ((PackageFragmentRootInfo) getElementInfo()).ignoreOptionalProblems(this);
        } catch (JavaModelException unused) {
            return false;
        }
    }

    public int internalKind() throws JavaModelException {
        PackageFragmentRootInfo packageFragmentRootInfo = (PackageFragmentRootInfo) JavaModelManager.getJavaModelManager().peekAtInfo(this);
        if (packageFragmentRootInfo == null) {
            packageFragmentRootInfo = (PackageFragmentRootInfo) openWhenClosed(createElementInfo(), false, null);
        }
        return packageFragmentRootInfo.getRootKind();
    }

    public IPath internalPath() {
        return resource().getFullPath();
    }

    public boolean isArchive() {
        return false;
    }

    public boolean isComplianceJava9OrHigher() {
        return isComplianceJava9OrHigher(getJavaProject());
    }

    public boolean isExternal() {
        return false;
    }

    @Override
    public void move(IPath iPath, int i10, int i11, IClasspathEntry iClasspathEntry, IProgressMonitor iProgressMonitor) throws JavaModelException {
        new MovePackageFragmentRootOperation(this, iPath, i10, i11, iClasspathEntry).runOperation(iProgressMonitor);
    }

    @Override
    public IResource resource() {
        IResource iResource = this.resource;
        return iResource != null ? iResource : super.resource();
    }

    public void setSourceMapper(SourceMapper sourceMapper) throws JavaModelException {
        ((PackageFragmentRootInfo) getElementInfo()).setSourceMapper(sourceMapper);
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        IPath path = getPath();
        if (isExternal()) {
            stringBuffer.append(path.toOSString());
        } else if (!getJavaProject().getElementName().equals(path.segment(0))) {
            stringBuffer.append((Object) path);
        } else if (path.segmentCount() == 1) {
            stringBuffer.append("<project root>");
        } else {
            stringBuffer.append((Object) path.removeFirstSegments(1).makeRelative());
        }
        if (obj == null) {
            stringBuffer.append(" (not open)");
        }
    }

    @Override
    public IStatus validateExistence(IResource iResource) {
        IStatus validateOnClasspath = validateOnClasspath();
        return !validateOnClasspath.isOK() ? validateOnClasspath : !resourceExists(iResource) ? newDoesNotExistStatus() : JavaModelStatus.VERIFIED_OK;
    }

    public IStatus validateOnClasspath() {
        try {
            return ((JavaProject) getJavaProject()).getClasspathEntryFor(getPath()) != null ? Status.OK_STATUS : new JavaModelStatus(1006, this);
        } catch (JavaModelException e10) {
            return e10.getJavaModelStatus();
        }
    }

    public void verifyAttachSource(IPath iPath) throws JavaModelException {
        if (!exists()) {
            throw newNotPresentException();
        }
        if (getKind() != 2) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, this));
        }
        if (iPath != null && !iPath.isAbsolute()) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.RELATIVE_PATH, iPath));
        }
    }

    public IModuleDescription getAutomaticModuleDescription(IClasspathEntry iClasspathEntry) {
        Manifest manifest;
        String elementName = getElementName();
        int entryKind = iClasspathEntry.getEntryKind();
        boolean z10 = true;
        if (entryKind == 1) {
            manifest = getManifest();
        } else if (entryKind == 2) {
            JavaProject javaProject = (JavaProject) getJavaModel().getJavaProject(iClasspathEntry.getPath().lastSegment());
            Manifest manifest2 = javaProject.getManifest();
            elementName = javaProject.getElementName();
            manifest = manifest2;
        } else if (entryKind != 3) {
            manifest = null;
        } else {
            manifest = ((JavaProject) getJavaProject()).getManifest();
            elementName = getJavaProject().getElementName();
        }
        char[] determineAutomaticModuleNameFromManifest = AutomaticModuleNaming.determineAutomaticModuleNameFromManifest(manifest);
        if (determineAutomaticModuleNameFromManifest == null) {
            determineAutomaticModuleNameFromManifest = AutomaticModuleNaming.determineAutomaticModuleNameFromFileName(elementName, true, isArchive());
            z10 = false;
        }
        return new AbstractModule.AutoModule(this, String.valueOf(determineAutomaticModuleNameFromManifest), z10);
    }

    private static boolean isComplianceJava9OrHigher(IJavaProject iJavaProject) {
        return iJavaProject != null && CompilerOptions.versionToJdkLevel(iJavaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)) >= ClassFileConstants.JDK9;
    }

    public PackageFragment getPackageFragment(String[] strArr) {
        return new PackageFragment(this, strArr);
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        return this.resource;
    }

    public PackageFragment getPackageFragment(String[] strArr, String str) {
        return new PackageFragment(this, strArr);
    }
}
