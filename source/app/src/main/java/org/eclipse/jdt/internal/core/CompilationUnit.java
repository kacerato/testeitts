package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.ICodeCompletionRequestor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.internal.codeassist.CompletionRequestorWrapper;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.UndoEdit;

public class CompilationUnit extends Openable implements ICompilationUnit, org.eclipse.jdt.internal.compiler.env.ICompilationUnit, SuffixConstants {
    static final int JLS2_INTERNAL = 2;
    private static final IImportDeclaration[] NO_IMPORTS = new IImportDeclaration[0];
    protected String name;
    public WorkingCopyOwner owner;

    public CompilationUnit(PackageFragment packageFragment, String str, WorkingCopyOwner workingCopyOwner) {
        super(packageFragment);
        this.name = str;
        this.owner = workingCopyOwner;
    }

    @Override
    public UndoEdit applyTextEdit(TextEdit textEdit, IProgressMonitor iProgressMonitor) throws JavaModelException {
        IDocument buffer = getBuffer();
        if (buffer instanceof IBuffer.ITextEditCapability) {
            return ((IBuffer.ITextEditCapability) buffer).applyTextEdit(textEdit, iProgressMonitor);
        }
        if (buffer == null) {
            return null;
        }
        try {
            return textEdit.apply(buffer instanceof IDocument ? buffer : new DocumentAdapter(buffer));
        } catch (MalformedTreeException e10) {
            throw new JavaModelException(e10, 1011);
        } catch (BadLocationException e11) {
            throw new JavaModelException(e11, 1011);
        }
    }

    @Override
    public void becomeWorkingCopy(IProblemRequestor iProblemRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (JavaModelManager.getJavaModelManager().getPerWorkingCopyInfo(this, false, true, null) == null) {
            close();
            new BecomeWorkingCopyOperation(this, iProblemRequestor).runOperation(iProgressMonitor);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0168  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) throws JavaModelException {
        boolean z10;
        boolean z11;
        int i10;
        HashMap hashMap;
        CompilationUnitDeclaration compilationUnitDeclaration;
        CompilationUnit compilationUnit;
        CompilationUnitDeclaration parseCompilationUnit;
        CompilationUnitElementInfo compilationUnitElementInfo = (CompilationUnitElementInfo) openableElementInfo;
        if (getBufferManager().getBuffer(this) == null) {
            openBuffer(iProgressMonitor, compilationUnitElementInfo);
        }
        CompilationUnitStructureRequestor compilationUnitStructureRequestor = new CompilationUnitStructureRequestor(this, compilationUnitElementInfo, map);
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = getPerWorkingCopyInfo();
        IJavaProject javaProject = getJavaProject();
        if (openableElementInfo instanceof ASTHolderCUInfo) {
            ASTHolderCUInfo aSTHolderCUInfo = (ASTHolderCUInfo) openableElementInfo;
            boolean z12 = aSTHolderCUInfo.astLevel != 0;
            boolean z13 = aSTHolderCUInfo.resolveBindings;
            int i11 = aSTHolderCUInfo.reconcileFlags;
            hashMap = aSTHolderCUInfo.problems;
            z10 = z12;
            z11 = z13;
            i10 = i11;
        } else {
            z10 = false;
            z11 = false;
            i10 = 0;
            hashMap = null;
        }
        boolean z14 = perWorkingCopyInfo != null && perWorkingCopyInfo.isActive() && javaProject != null && JavaProject.hasJavaNature(javaProject.getProject());
        DefaultProblemFactory defaultProblemFactory = new DefaultProblemFactory();
        Map<String, String> options = javaProject == null ? JavaCore.getOptions() : javaProject.getOptions(true);
        if (!z14) {
            options.put("org.eclipse.jdt.core.compiler.taskTags", "");
        }
        CompilerOptions compilerOptions = new CompilerOptions(options);
        compilerOptions.ignoreMethodBodies = (i10 & 8) != 0;
        SourceElementParser sourceElementParser = new SourceElementParser(compilationUnitStructureRequestor, defaultProblemFactory, compilerOptions, true, !z10);
        sourceElementParser.reportOnlyOneSyntaxError = !z14;
        sourceElementParser.setMethodsFullRecovery(true);
        sourceElementParser.setStatementsRecovery((i10 & 2) != 0);
        if (!z14 && !z11 && !z10) {
            sourceElementParser.javadocParser.checkDocComment = false;
        }
        compilationUnitStructureRequestor.parser = sourceElementParser;
        IResource resource = iResource == null ? getResource() : iResource;
        if (resource != null) {
            compilationUnitElementInfo.timestamp = ((IFile) resource).getModificationStamp();
        }
        CompilationUnit cloneCachingContents = cloneCachingContents();
        try {
            if (!z14) {
                compilationUnit = cloneCachingContents;
                parseCompilationUnit = sourceElementParser.parseCompilationUnit(compilationUnit, true, iProgressMonitor);
            } else if (hashMap == null) {
                HashMap hashMap2 = new HashMap();
                parseCompilationUnit = CompilationUnitProblemFinder.process(cloneCachingContents, sourceElementParser, this.owner, hashMap2, z10, i10, iProgressMonitor);
                try {
                    try {
                        perWorkingCopyInfo.beginReporting();
                        for (IProblem[] iProblemArr : hashMap2.values()) {
                            if (iProblemArr != null) {
                                for (IProblem iProblem : iProblemArr) {
                                    perWorkingCopyInfo.acceptProblem(iProblem);
                                }
                            }
                        }
                        compilationUnit = cloneCachingContents;
                    } catch (Throwable th2) {
                        th = th2;
                        compilationUnitDeclaration = parseCompilationUnit;
                        if (compilationUnitDeclaration != null) {
                            compilationUnitElementInfo.hasFunctionalTypes = compilationUnitDeclaration.hasFunctionalTypes();
                            compilationUnitDeclaration.cleanUp();
                        }
                        throw th;
                    }
                } finally {
                    perWorkingCopyInfo.endReporting();
                }
            } else {
                compilationUnit = cloneCachingContents;
                parseCompilationUnit = CompilationUnitProblemFinder.process(compilationUnit, sourceElementParser, this.owner, hashMap, z10, i10, iProgressMonitor);
            }
            compilationUnitDeclaration = parseCompilationUnit;
            if (z10) {
                try {
                    ((ASTHolderCUInfo) openableElementInfo).ast = AST.convertCompilationUnit(((ASTHolderCUInfo) openableElementInfo).astLevel, compilationUnitDeclaration, options, z14, compilationUnit, i10, iProgressMonitor);
                } catch (Throwable th3) {
                    th = th3;
                    if (compilationUnitDeclaration != null) {
                    }
                    throw th;
                }
            }
            if (compilationUnitDeclaration != null) {
                compilationUnitElementInfo.hasFunctionalTypes = compilationUnitDeclaration.hasFunctionalTypes();
                compilationUnitDeclaration.cleanUp();
            }
            return compilationUnitElementInfo.isStructureKnown();
        } catch (Throwable th4) {
            th = th4;
            compilationUnitDeclaration = null;
        }
    }

    @Override
    public boolean canBeRemovedFromCache() {
        if (getPerWorkingCopyInfo() != null) {
            return false;
        }
        return super.canBeRemovedFromCache();
    }

    @Override
    public boolean canBufferBeRemovedFromCache(IBuffer iBuffer) {
        if (getPerWorkingCopyInfo() != null) {
            return false;
        }
        return super.canBufferBeRemovedFromCache(iBuffer);
    }

    public CompilationUnit cloneCachingContents() {
        return new CompilationUnit((PackageFragment) this.parent, this.name, this.owner) {
            private char[] cachedContents;

            @Override
            public char[] getContents() {
                if (this.cachedContents == null) {
                    this.cachedContents = CompilationUnit.this.getContents();
                }
                return this.cachedContents;
            }

            @Override
            public CompilationUnit originalFromClone() {
                return CompilationUnit.this;
            }
        };
    }

    @Override
    public void close() throws JavaModelException {
        if (getPerWorkingCopyInfo() != null) {
            return;
        }
        super.close();
    }

    @Override
    public void closing(Object obj) {
        if (getPerWorkingCopyInfo() == null) {
            super.closing(obj);
        }
    }

    @Override
    public void codeComplete(int i10, ICompletionRequestor iCompletionRequestor) throws JavaModelException {
        codeComplete(i10, iCompletionRequestor, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IJavaElement[] codeSelect(int i10, int i11) throws JavaModelException {
        return codeSelect(i10, i11, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public void commit(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        commitWorkingCopy(z10, iProgressMonitor);
    }

    public void commitWorkingCopy(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        new CommitWorkingCopyOperation(this, z10).runOperation(iProgressMonitor);
    }

    @Override
    public void copy(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iJavaElement == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        getJavaModel().copy(new IJavaElement[]{this}, new IJavaElement[]{iJavaElement}, null, str != null ? new String[]{str} : null, z10, iProgressMonitor);
    }

    @Override
    public Object createElementInfo() {
        return new CompilationUnitElementInfo();
    }

    @Override
    public IImportDeclaration createImport(String str, IJavaElement iJavaElement, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return createImport(str, iJavaElement, 0, iProgressMonitor);
    }

    @Override
    public IPackageDeclaration createPackageDeclaration(String str, IProgressMonitor iProgressMonitor) throws JavaModelException {
        new CreatePackageDeclarationOperation(str, this).runOperation(iProgressMonitor);
        return getPackageDeclaration(str);
    }

    @Override
    public IType createType(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        String str2;
        if (!exists()) {
            IPackageFragment iPackageFragment = (IPackageFragment) getParent();
            if (iPackageFragment.isDefaultPackage()) {
                str2 = "";
            } else {
                String lineSeparator = Util.getLineSeparator((String) null, getJavaProject());
                str2 = "package " + iPackageFragment.getElementName() + ";" + lineSeparator + lineSeparator;
            }
            new CreateCompilationUnitOperation(iPackageFragment, this.name, str2, z10).runOperation(iProgressMonitor);
        }
        CreateTypeOperation createTypeOperation = new CreateTypeOperation(this, str, z10);
        if (iJavaElement != null) {
            createTypeOperation.createBefore(iJavaElement);
        }
        createTypeOperation.runOperation(iProgressMonitor);
        return (IType) createTypeOperation.getResultElements()[0];
    }

    @Override
    public void delete(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        getJavaModel().delete(new IJavaElement[]{this}, z10, iProgressMonitor);
    }

    @Override
    public void destroy() {
        try {
            discardWorkingCopy();
        } catch (JavaModelException e10) {
            if (JavaModelManager.VERBOSE) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void discardWorkingCopy() throws JavaModelException {
        new DiscardWorkingCopyOperation(this).runOperation(null);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof CompilationUnit) && this.owner.equals(((CompilationUnit) obj).owner) && super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public IJavaElement[] findElements(IJavaElement iJavaElement) {
        if ((iJavaElement instanceof IType) && ((IType) iJavaElement).isLambda()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (iJavaElement != null && iJavaElement.getElementType() != 5) {
            arrayList.add(iJavaElement);
            iJavaElement = iJavaElement.getParent();
        }
        if (iJavaElement == null) {
            return null;
        }
        IJavaElement iJavaElement2 = this;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            SourceRefElement sourceRefElement = (SourceRefElement) arrayList.get(size);
            switch (sourceRefElement.getElementType()) {
                case 7:
                    switch (iJavaElement2.getElementType()) {
                        case 5:
                            iJavaElement2 = ((ICompilationUnit) iJavaElement2).getType(sourceRefElement.getElementName());
                            break;
                        case 7:
                            iJavaElement2 = ((IType) iJavaElement2).getType(sourceRefElement.getElementName());
                            break;
                        case 8:
                        case 9:
                        case 10:
                            iJavaElement2 = ((IMember) iJavaElement2).getType(sourceRefElement.getElementName(), sourceRefElement.occurrenceCount);
                            break;
                    }
                case 8:
                    iJavaElement2 = ((IType) iJavaElement2).getField(sourceRefElement.getElementName());
                    break;
                case 9:
                    iJavaElement2 = ((IType) iJavaElement2).getMethod(sourceRefElement.getElementName(), ((IMethod) sourceRefElement).getParameterTypes());
                    break;
                case 10:
                    iJavaElement2 = ((IType) iJavaElement2).getInitializer(sourceRefElement.occurrenceCount);
                    break;
                case 11:
                    iJavaElement2 = ((ICompilationUnit) iJavaElement2).getPackageDeclaration(sourceRefElement.getElementName());
                    break;
                case 12:
                    iJavaElement2 = ((ICompilationUnit) iJavaElement2).getImportContainer();
                    break;
                case 13:
                    iJavaElement2 = ((IImportContainer) iJavaElement2).getImport(sourceRefElement.getElementName());
                    break;
            }
        }
        if (iJavaElement2 == null || !iJavaElement2.exists()) {
            return null;
        }
        return new IJavaElement[]{iJavaElement2};
    }

    @Override
    public IType findPrimaryType() {
        IType type = getType(Util.getNameWithoutJavaLikeExtension(getElementName()));
        if (type.exists()) {
            return type;
        }
        return null;
    }

    @Override
    public IJavaElement findSharedWorkingCopy(IBufferFactory iBufferFactory) {
        if (iBufferFactory == null) {
            iBufferFactory = getBufferManager().getDefaultBufferFactory();
        }
        return findWorkingCopy(BufferFactoryWrapper.create(iBufferFactory));
    }

    @Override
    public ICompilationUnit findWorkingCopy(WorkingCopyOwner workingCopyOwner) {
        CompilationUnit compilationUnit = new CompilationUnit((PackageFragment) this.parent, getElementName(), workingCopyOwner);
        if (workingCopyOwner == DefaultWorkingCopyOwner.PRIMARY) {
            return compilationUnit;
        }
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = compilationUnit.getPerWorkingCopyInfo();
        if (perWorkingCopyInfo != null) {
            return perWorkingCopyInfo.getWorkingCopy();
        }
        return null;
    }

    @Override
    public IType[] getAllTypes() throws JavaModelException {
        IType[] types = getTypes();
        ArrayList arrayList = new ArrayList(types.length);
        ArrayList arrayList2 = new ArrayList(types.length);
        for (IType iType : types) {
            arrayList2.add(iType);
        }
        while (!arrayList2.isEmpty()) {
            IType iType2 = (IType) arrayList2.get(0);
            arrayList2.remove(iType2);
            arrayList.add(iType2);
            IType[] types2 = iType2.getTypes();
            for (IType iType3 : types2) {
                arrayList2.add(iType3);
            }
        }
        IType[] iTypeArr = new IType[arrayList.size()];
        arrayList.toArray(iTypeArr);
        return iTypeArr;
    }

    @Override
    public ICompilationUnit getCompilationUnit() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    public char[] getContents() {
        String str;
        String str2;
        IBuffer buffer = getBufferManager().getBuffer(this);
        if (buffer == null) {
            IFile resource = getResource();
            try {
                str2 = resource.getCharset();
            } catch (CoreException unused) {
                str2 = null;
            }
            try {
                return Util.getResourceContentsAsCharArray(resource, str2);
            } catch (JavaModelException e10) {
                if (JavaModelManager.getJavaModelManager().abortOnMissingSource.get() == Boolean.TRUE) {
                    throw new AbortCompilationUnit(null, e10.getJavaModelStatus().getCode() == 985 ? (IOException) e10.getException() : new IOException(e10.getMessage()), str2);
                }
                Util.log((Throwable) e10, Messages.bind(Messages.file_notFound, resource.getFullPath().toString()));
                return CharOperation.NO_CHAR;
            }
        }
        char[] characters = buffer.getCharacters();
        if (characters != null) {
            return characters;
        }
        if (JavaModelManager.getJavaModelManager().abortOnMissingSource.get() != Boolean.TRUE) {
            return CharOperation.NO_CHAR;
        }
        IOException iOException = new IOException(Messages.buffer_closed);
        try {
            str = getResource().getCharset();
        } catch (CoreException unused2) {
            str = null;
        }
        throw new AbortCompilationUnit(null, iOException, str);
    }

    @Override
    public IResource getCorrespondingResource() throws JavaModelException {
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        if (packageFragmentRoot == null || packageFragmentRoot.isArchive()) {
            return null;
        }
        return getUnderlyingResource();
    }

    @Override
    public IJavaElement getElementAt(int i10) throws JavaModelException {
        IJavaElement sourceElementAt = getSourceElementAt(i10);
        if (sourceElementAt == this) {
            return null;
        }
        return sourceElementAt;
    }

    @Override
    public String getElementName() {
        return this.name;
    }

    @Override
    public int getElementType() {
        return 5;
    }

    @Override
    public char[] getFileName() {
        return getPath().toString().toCharArray();
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        char charAt = str.charAt(0);
        if (charAt == '#') {
            return ((JavaElement) getImportContainer()).getHandleFromMemento(str, mementoTokenizer, workingCopyOwner);
        }
        if (charAt == '%') {
            return !mementoTokenizer.hasMoreTokens() ? this : ((JavaElement) getPackageDeclaration(mementoTokenizer.nextToken())).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
        }
        if (charAt == '[') {
            return !mementoTokenizer.hasMoreTokens() ? this : ((JavaElement) getType(mementoTokenizer.nextToken())).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
        }
        if (charAt != '`') {
            return null;
        }
        return !mementoTokenizer.hasMoreTokens() ? this : new SourceModule(this, mementoTokenizer.nextToken()).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_COMPILATIONUNIT;
    }

    @Override
    public IImportDeclaration getImport(String str) {
        return getImportContainer().getImport(str);
    }

    public IImportContainer getImportContainer() {
        return new ImportContainer(this);
    }

    @Override
    public IImportDeclaration[] getImports() throws JavaModelException {
        IImportContainer importContainer = getImportContainer();
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        Object info = javaModelManager.getInfo(importContainer);
        if (info == null) {
            if (javaModelManager.getInfo(this) != null) {
                return NO_IMPORTS;
            }
            open(null);
            info = javaModelManager.getInfo(importContainer);
            if (info == null) {
                return NO_IMPORTS;
            }
        }
        IJavaElement[] iJavaElementArr = ((ImportContainerInfo) info).children;
        int length = iJavaElementArr.length;
        IImportDeclaration[] iImportDeclarationArr = new IImportDeclaration[length];
        System.arraycopy(iJavaElementArr, 0, iImportDeclarationArr, 0, length);
        return iImportDeclarationArr;
    }

    @Override
    public char[] getMainTypeName() {
        return Util.getNameWithoutJavaLikeExtension(getElementName()).toCharArray();
    }

    @Override
    public IModuleDescription getModule() throws JavaModelException {
        if ("module-info.java".equals(getElementName())) {
            return ((CompilationUnitElementInfo) getElementInfo()).getModule();
        }
        return null;
    }

    @Override
    public char[] getModuleName() {
        try {
            IModuleDescription module = getModule();
            if (module == null) {
                module = ((JavaProject) getAncestor(2)).getModuleDescription();
            }
            if (module != null) {
                return module.getElementName().toCharArray();
            }
            return null;
        } catch (JavaModelException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override
    public ISourceRange getNameRange() {
        return null;
    }

    @Override
    public IJavaElement getOriginal(IJavaElement iJavaElement) {
        CompilationUnit compilationUnit;
        if (isWorkingCopy() && (compilationUnit = (CompilationUnit) iJavaElement.getAncestor(5)) != null && this.owner.equals(compilationUnit.owner)) {
            return iJavaElement.getPrimaryElement();
        }
        return null;
    }

    @Override
    public IJavaElement getOriginalElement() {
        if (isWorkingCopy()) {
            return getPrimaryElement();
        }
        return null;
    }

    @Override
    public WorkingCopyOwner getOwner() {
        if (isPrimary() || !isWorkingCopy()) {
            return null;
        }
        return this.owner;
    }

    public IPackageDeclaration getPackageDeclaration(String str) {
        return new PackageDeclaration(this, str);
    }

    @Override
    public IPackageDeclaration[] getPackageDeclarations() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(11);
        IPackageDeclaration[] iPackageDeclarationArr = new IPackageDeclaration[childrenOfType.size()];
        childrenOfType.toArray(iPackageDeclarationArr);
        return iPackageDeclarationArr;
    }

    @Override
    public char[][] getPackageName() {
        PackageFragment packageFragment = (PackageFragment) getParent();
        return packageFragment == null ? CharOperation.NO_CHAR_CHAR : Util.toCharArrays(packageFragment.names);
    }

    public IPath getPath() {
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        return packageFragmentRoot == null ? new Path(getElementName()) : packageFragmentRoot.isArchive() ? packageFragmentRoot.getPath() : getParent().getPath().append(getElementName());
    }

    public JavaModelManager.PerWorkingCopyInfo getPerWorkingCopyInfo() {
        return JavaModelManager.getJavaModelManager().getPerWorkingCopyInfo(this, false, false, null);
    }

    @Override
    public ICompilationUnit getPrimary() {
        return (ICompilationUnit) getPrimaryElement(true);
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        return (z10 && isPrimary()) ? this : new CompilationUnit((PackageFragment) getParent(), getElementName(), DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IJavaElement getSharedWorkingCopy(IProgressMonitor iProgressMonitor, IBufferFactory iBufferFactory, IProblemRequestor iProblemRequestor) throws JavaModelException {
        if (iBufferFactory == null) {
            iBufferFactory = getBufferManager().getDefaultBufferFactory();
        }
        return getWorkingCopy(BufferFactoryWrapper.create(iBufferFactory), iProblemRequestor, iProgressMonitor);
    }

    @Override
    public String getSource() throws JavaModelException {
        IBuffer buffer = getBuffer();
        return buffer == null ? "" : buffer.getContents();
    }

    @Override
    public ISourceRange getSourceRange() throws JavaModelException {
        return ((CompilationUnitElementInfo) getElementInfo()).getSourceRange();
    }

    public IType getType(String str) {
        return new SourceType(this, str);
    }

    public ITypeRoot getTypeRoot() {
        return this;
    }

    @Override
    public IType[] getTypes() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(7);
        IType[] iTypeArr = new IType[childrenOfType.size()];
        childrenOfType.toArray(iTypeArr);
        return iTypeArr;
    }

    @Override
    public IResource getUnderlyingResource() throws JavaModelException {
        if (!isWorkingCopy() || isPrimary()) {
            return super.getUnderlyingResource();
        }
        return null;
    }

    @Override
    public IJavaElement getWorkingCopy() throws JavaModelException {
        return getWorkingCopy(null);
    }

    @Override
    public boolean hasBuffer() {
        return true;
    }

    @Override
    public boolean hasResourceChanged() {
        Object info;
        IResource resource;
        return (!isWorkingCopy() || (info = JavaModelManager.getJavaModelManager().getInfo(this)) == null || (resource = getResource()) == null || ((CompilationUnitElementInfo) info).timestamp == resource.getModificationStamp()) ? false : true;
    }

    @Override
    public boolean ignoreOptionalProblems() {
        return getPackageFragmentRoot().ignoreOptionalProblems();
    }

    @Override
    public boolean isBasedOn(IResource iResource) {
        if (isWorkingCopy() && getResource().equals(iResource)) {
            return !hasResourceChanged();
        }
        return false;
    }

    @Override
    public boolean isConsistent() {
        return !JavaModelManager.getJavaModelManager().getElementsOutOfSynchWithBuffers().contains(this);
    }

    public boolean isPrimary() {
        return this.owner == DefaultWorkingCopyOwner.PRIMARY;
    }

    @Override
    public boolean isSourceElement() {
        return true;
    }

    @Override
    public boolean isWorkingCopy() {
        return (isPrimary() && getPerWorkingCopyInfo() == null) ? false : true;
    }

    @Override
    public void makeConsistent(IProgressMonitor iProgressMonitor) throws JavaModelException {
        makeConsistent(0, false, 0, null, iProgressMonitor);
    }

    @Override
    public void move(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iJavaElement == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        getJavaModel().move(new IJavaElement[]{this}, new IJavaElement[]{iJavaElement}, null, str != null ? new String[]{str} : null, z10, iProgressMonitor);
    }

    @Override
    public void openAncestors(HashMap hashMap, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (isWorkingCopy()) {
            return;
        }
        super.openAncestors(hashMap, iProgressMonitor);
    }

    @Override
    public IBuffer openBuffer(IProgressMonitor iProgressMonitor, Object obj) throws JavaModelException {
        IBuffer buffer;
        BufferManager bufferManager = getBufferManager();
        boolean isWorkingCopy = isWorkingCopy();
        IBuffer createBuffer = isWorkingCopy ? this.owner.createBuffer(this) : BufferManager.createBuffer(this);
        CompilationUnit compilationUnit = null;
        if (createBuffer == null) {
            return null;
        }
        boolean z10 = false;
        if (isWorkingCopy && !isPrimary()) {
            compilationUnit = new CompilationUnit((PackageFragment) getParent(), getElementName(), DefaultWorkingCopyOwner.PRIMARY);
            if (compilationUnit.isOpen()) {
                z10 = true;
            }
        }
        synchronized (bufferManager) {
            try {
                buffer = bufferManager.getBuffer(this);
                if (buffer == null) {
                    if (createBuffer.getCharacters() == null) {
                        if (!isWorkingCopy) {
                            IFile resource = getResource();
                            if (resource == null || !resource.exists()) {
                                throw newNotPresentException();
                            }
                            createBuffer.setContents(Util.getResourceContentsAsCharArray(resource));
                        } else if (z10) {
                            createBuffer.setContents(compilationUnit.getSource());
                        } else {
                            IFile resource2 = getResource();
                            if (resource2 != null && resource2.exists()) {
                                createBuffer.setContents(Util.getResourceContentsAsCharArray(resource2));
                            }
                            createBuffer.setContents(CharOperation.NO_CHAR);
                        }
                    }
                    bufferManager.addBuffer(createBuffer);
                    createBuffer.addBufferChangedListener(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (buffer == null) {
            return createBuffer;
        }
        createBuffer.close();
        return buffer;
    }

    public CompilationUnit originalFromClone() {
        return this;
    }

    @Override
    public IMarker[] reconcile() throws JavaModelException {
        reconcile(0, false, false, null, null);
        return null;
    }

    @Override
    public void rename(String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.operation_nullName);
        }
        IJavaElement[] iJavaElementArr = {getParent()};
        getJavaModel().rename(new IJavaElement[]{this}, iJavaElementArr, new String[]{str}, z10, iProgressMonitor);
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        if (packageFragmentRoot == null) {
            return null;
        }
        return ((Openable) this.parent).resource(packageFragmentRoot).getFile(new Path(getElementName()));
    }

    @Override
    public void restore() throws JavaModelException {
        if (isWorkingCopy()) {
            CompilationUnit compilationUnit = (CompilationUnit) getOriginalElement();
            IBuffer buffer = getBuffer();
            if (buffer == null) {
                return;
            }
            buffer.setContents(compilationUnit.getContents());
            updateTimeStamp(compilationUnit);
            makeConsistent(null);
        }
    }

    @Override
    public void save(IProgressMonitor iProgressMonitor, boolean z10) throws JavaModelException {
        if (isWorkingCopy()) {
            reconcile();
        } else {
            super.save(iProgressMonitor, z10);
        }
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        if (!isPrimary()) {
            stringBuffer.append(tabString(i10));
            stringBuffer.append("[Working copy] ");
            toStringName(stringBuffer);
        } else {
            if (!isWorkingCopy()) {
                super.toStringInfo(i10, stringBuffer, obj, z10);
                return;
            }
            stringBuffer.append(tabString(i10));
            stringBuffer.append("[Working copy] ");
            toStringName(stringBuffer);
            if (obj == null) {
                stringBuffer.append(" (not open)");
            }
        }
    }

    public void updateTimeStamp(CompilationUnit compilationUnit) throws JavaModelException {
        long modificationStamp = compilationUnit.getResource().getModificationStamp();
        if (modificationStamp == -1) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_RESOURCE));
        }
        ((CompilationUnitElementInfo) getElementInfo()).timestamp = modificationStamp;
    }

    public IStatus validateCompilationUnit(IResource iResource) {
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        try {
            if (packageFragmentRoot.getKind() != 1) {
                return new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, packageFragmentRoot);
            }
            if (iResource != null) {
                if (Util.isExcluded(iResource, packageFragmentRoot.fullInclusionPatternChars(), packageFragmentRoot.fullExclusionPatternChars())) {
                    return new JavaModelStatus(1006, this);
                }
                if (!iResource.isAccessible()) {
                    return new JavaModelStatus(969, this);
                }
            }
            IJavaProject javaProject = getJavaProject();
            return JavaConventions.validateCompilationUnitName(getElementName(), javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true));
        } catch (JavaModelException e10) {
            return e10.getJavaModelStatus();
        }
    }

    @Override
    public IStatus validateExistence(IResource iResource) {
        if (!isWorkingCopy()) {
            IStatus validateCompilationUnit = validateCompilationUnit(iResource);
            if (!validateCompilationUnit.isOK()) {
                return validateCompilationUnit;
            }
        }
        return (isPrimary() || getPerWorkingCopyInfo() != null) ? JavaModelStatus.VERIFIED_OK : newDoesNotExistStatus();
    }

    @Override
    public void codeComplete(int i10, ICompletionRequestor iCompletionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        if (iCompletionRequestor != null) {
            codeComplete(i10, new CompletionRequestorWrapper(iCompletionRequestor), workingCopyOwner);
            return;
        }
        throw new IllegalArgumentException("Completion requestor cannot be null");
    }

    @Override
    public IJavaElement[] codeSelect(int i10, int i11, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        return super.codeSelect(this, i10, i11, workingCopyOwner);
    }

    @Override
    public IImportDeclaration createImport(String str, IJavaElement iJavaElement, int i10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateImportOperation createImportOperation = new CreateImportOperation(str, this, i10);
        if (iJavaElement != null) {
            createImportOperation.createBefore(iJavaElement);
        }
        createImportOperation.runOperation(iProgressMonitor);
        return getImport(str);
    }

    @Override
    public ICompilationUnit getWorkingCopy(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return getWorkingCopy(new WorkingCopyOwner() {
        }, (IProblemRequestor) null, iProgressMonitor);
    }

    public org.eclipse.jdt.core.dom.CompilationUnit makeConsistent(int i10, boolean z10, int i11, HashMap hashMap, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (isConsistent()) {
            return null;
        }
        try {
            JavaModelManager.getJavaModelManager().abortOnMissingSource.set(Boolean.TRUE);
            if (i10 == 0 && hashMap == null) {
                openWhenClosed(createElementInfo(), true, iProgressMonitor);
                return null;
            }
            ASTHolderCUInfo aSTHolderCUInfo = new ASTHolderCUInfo();
            aSTHolderCUInfo.astLevel = i10;
            aSTHolderCUInfo.resolveBindings = z10;
            aSTHolderCUInfo.reconcileFlags = i11;
            aSTHolderCUInfo.problems = hashMap;
            openWhenClosed(aSTHolderCUInfo, true, iProgressMonitor);
            org.eclipse.jdt.core.dom.CompilationUnit compilationUnit = aSTHolderCUInfo.ast;
            aSTHolderCUInfo.ast = null;
            return compilationUnit;
        } finally {
            JavaModelManager.getJavaModelManager().abortOnMissingSource.set(null);
        }
    }

    @Override
    public void reconcile(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        reconcile(0, z10 ? 1 : 0, (WorkingCopyOwner) null, iProgressMonitor);
    }

    @Override
    public ICompilationUnit getWorkingCopy(WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return getWorkingCopy(workingCopyOwner, (IProblemRequestor) null, iProgressMonitor);
    }

    @Override
    public org.eclipse.jdt.core.dom.CompilationUnit reconcile(int i10, boolean z10, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return reconcile(i10, z10 ? 1 : 0, workingCopyOwner, iProgressMonitor);
    }

    @Override
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

    @Override
    public IJavaElement getWorkingCopy(IProgressMonitor iProgressMonitor, IBufferFactory iBufferFactory, IProblemRequestor iProblemRequestor) throws JavaModelException {
        return getWorkingCopy(BufferFactoryWrapper.create(iBufferFactory), iProblemRequestor, iProgressMonitor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public org.eclipse.jdt.core.dom.CompilationUnit reconcile(int i10, boolean z10, boolean z11, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        int i11;
        if (z11) {
            i11 = (z10 ? 1 : 0) | 2;
        }
        return reconcile(i10, i11, workingCopyOwner, iProgressMonitor);
    }

    @Override
    public ICompilationUnit getWorkingCopy(WorkingCopyOwner workingCopyOwner, IProblemRequestor iProblemRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (!isPrimary()) {
            return this;
        }
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        CompilationUnit compilationUnit = new CompilationUnit((PackageFragment) getParent(), getElementName(), workingCopyOwner);
        JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = javaModelManager.getPerWorkingCopyInfo(compilationUnit, false, true, null);
        if (perWorkingCopyInfo != null) {
            return perWorkingCopyInfo.getWorkingCopy();
        }
        new BecomeWorkingCopyOperation(compilationUnit, iProblemRequestor).runOperation(iProgressMonitor);
        return compilationUnit;
    }

    @Override
    public org.eclipse.jdt.core.dom.CompilationUnit reconcile(int i10, int i11, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        PerformanceStats performanceStats = null;
        if (!isWorkingCopy()) {
            return null;
        }
        if (workingCopyOwner == null) {
            workingCopyOwner = DefaultWorkingCopyOwner.PRIMARY;
        }
        if (ReconcileWorkingCopyOperation.PERF) {
            performanceStats = PerformanceStats.getStats(JavaModelManager.RECONCILE_PERF, this);
            performanceStats.startRun(new String(getFileName()));
        }
        ReconcileWorkingCopyOperation reconcileWorkingCopyOperation = new ReconcileWorkingCopyOperation(this, i10, i11, workingCopyOwner);
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        try {
            javaModelManager.cacheZipFiles(this);
            reconcileWorkingCopyOperation.runOperation(iProgressMonitor);
            javaModelManager.flushZipFiles(this);
            if (ReconcileWorkingCopyOperation.PERF) {
                performanceStats.endRun();
            }
            return reconcileWorkingCopyOperation.ast;
        } catch (Throwable th2) {
            javaModelManager.flushZipFiles(this);
            throw th2;
        }
    }

    @Override
    public void becomeWorkingCopy(IProgressMonitor iProgressMonitor) throws JavaModelException {
        WorkingCopyOwner workingCopyOwner = this.owner;
        becomeWorkingCopy(workingCopyOwner == null ? null : workingCopyOwner.getProblemRequestor(this), iProgressMonitor);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [org.eclipse.jdt.internal.compiler.env.ICompilationUnit] */
    @Override
    public void codeComplete(int i10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        codeComplete(this, isWorkingCopy() ? (org.eclipse.jdt.internal.compiler.env.ICompilationUnit) getOriginalElement() : this, i10, completionRequestor, workingCopyOwner, this, iProgressMonitor);
    }
}
