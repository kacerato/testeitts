package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.text.edits.TextEdit;

public class CopyResourceElementsOperation extends MultiOperation implements SuffixConstants {
    protected ArrayList createdElements;
    protected Map deltasPerProject;
    protected ASTParser parser;

    public CopyResourceElementsOperation(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, boolean z10) {
        super(iJavaElementArr, iJavaElementArr2, z10);
        this.deltasPerProject = new HashMap(1);
        initializeASTParser();
    }

    private IResource[] collectResourcesOfInterest(IPackageFragment iPackageFragment) throws JavaModelException {
        IJavaElement[] children = iPackageFragment.getChildren();
        int i10 = iPackageFragment.getKind() == 2 ? 6 : 5;
        ArrayList arrayList = new ArrayList(children.length);
        for (IJavaElement iJavaElement : children) {
            if (iJavaElement.getElementType() == i10) {
                arrayList.add(((JavaElement) iJavaElement).resource());
            }
        }
        Object[] nonJavaResources = iPackageFragment.getNonJavaResources();
        int i11 = 0;
        for (Object obj : nonJavaResources) {
            if (obj instanceof IResource) {
                i11++;
            }
        }
        IResource[] iResourceArr = new IResource[i11];
        int i12 = 0;
        for (Object obj2 : nonJavaResources) {
            if (obj2 instanceof IResource) {
                iResourceArr[i12] = (IResource) obj2;
                i12++;
            }
        }
        if (i11 == 0) {
            IResource[] iResourceArr2 = new IResource[arrayList.size()];
            arrayList.toArray(iResourceArr2);
            return iResourceArr2;
        }
        int size = arrayList.size();
        IResource[] iResourceArr3 = new IResource[size + i11];
        arrayList.toArray(iResourceArr3);
        System.arraycopy(iResourceArr, 0, iResourceArr3, size, i11);
        return iResourceArr3;
    }

    private boolean createNeededPackageFragments(IContainer iContainer, PackageFragmentRoot packageFragmentRoot, String[] strArr, boolean z10) throws JavaModelException {
        IFolder iFolder = (IContainer) packageFragmentRoot.resource();
        char[][] fullInclusionPatternChars = packageFragmentRoot.fullInclusionPatternChars();
        char[][] fullExclusionPatternChars = packageFragmentRoot.fullExclusionPatternChars();
        String[] strArr2 = null;
        JavaElementDelta javaElementDelta = null;
        boolean z11 = false;
        for (int i10 = 0; i10 < strArr.length; i10++) {
            String str = strArr[i10];
            strArr2 = Util.arrayConcat(strArr2, str);
            IFolder findMember = iFolder.findMember(str);
            if (findMember == null) {
                if (!z10 || i10 != strArr.length - 1) {
                    createFolder(iFolder, str, this.force);
                }
                iFolder = iFolder.getFolder(new Path(str));
                iContainer = iContainer.getFolder(new Path(str));
                if (Util.isReadOnly(iContainer)) {
                    z11 = true;
                }
                PackageFragment packageFragment = packageFragmentRoot.getPackageFragment(strArr2);
                if (i10 < strArr.length - 1 && !Util.isExcluded(iFolder, fullInclusionPatternChars, fullExclusionPatternChars)) {
                    if (javaElementDelta == null) {
                        javaElementDelta = getDeltaFor(packageFragmentRoot.getJavaProject());
                    }
                    javaElementDelta.added(packageFragment);
                }
                this.createdElements.add(packageFragment);
            } else {
                iFolder = (IContainer) findMember;
            }
        }
        return z11;
    }

    private JavaElementDelta getDeltaFor(IJavaProject iJavaProject) {
        JavaElementDelta javaElementDelta = (JavaElementDelta) this.deltasPerProject.get(iJavaProject);
        if (javaElementDelta != null) {
            return javaElementDelta;
        }
        JavaElementDelta javaElementDelta2 = new JavaElementDelta(iJavaProject);
        this.deltasPerProject.put(iJavaProject, javaElementDelta2);
        return javaElementDelta2;
    }

    private IResource getResource(IJavaElement iJavaElement) {
        String elementName;
        int indexOf;
        if (iJavaElement == null) {
            return null;
        }
        if (iJavaElement.getElementType() == 4 && (indexOf = (elementName = iJavaElement.getElementName()).indexOf(46)) != -1) {
            iJavaElement = ((IPackageFragmentRoot) iJavaElement.getParent()).getPackageFragment(elementName.substring(0, indexOf));
        }
        return iJavaElement.getResource();
    }

    private ISchedulingRule getSchedulingRule(IJavaElement iJavaElement) {
        throw null;
    }

    private void initializeASTParser() {
        this.parser = ASTParser.newParser(11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void processCompilationUnitResource(ICompilationUnit iCompilationUnit, PackageFragment packageFragment) throws JavaModelException {
        String str;
        String newNameFor = getNewNameFor(iCompilationUnit);
        String elementName = newNameFor != null ? newNameFor : iCompilationUnit.getElementName();
        TextEdit updateContent = updateContent(iCompilationUnit, packageFragment, newNameFor);
        IFile resource = iCompilationUnit.getResource();
        try {
            str = resource.getCharset(false);
        } catch (CoreException unused) {
            str = null;
        }
        String str2 = str;
        IResource file = packageFragment.getResource().getFile(new Path(elementName));
        CompilationUnit compilationUnit = new CompilationUnit(packageFragment, elementName, DefaultWorkingCopyOwner.PRIMARY);
        if (file.equals(resource)) {
            if (!this.force) {
                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, file.getFullPath().toString())));
            }
            if (updateContent != null) {
                saveContent(packageFragment, elementName, updateContent, str2, file);
                return;
            }
            return;
        }
        try {
            if (compilationUnit.isWorkingCopy()) {
                compilationUnit.getBuffer().setContents(iCompilationUnit.getBuffer().getContents());
            } else {
                if (file.exists()) {
                    if (!this.force) {
                        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, file.getFullPath().toString())));
                    }
                    deleteResource(file, 2);
                    compilationUnit.close();
                }
                boolean z10 = this.force;
                int i10 = z10;
                if (isMove()) {
                    resource.move(file.getFullPath(), (z10 ? 1 : 0) | 2, getSubProgressMonitor(1));
                } else {
                    if (updateContent != null) {
                        i10 = (z10 ? 1 : 0) | 2;
                    }
                    resource.copy(file.getFullPath(), i10, getSubProgressMonitor(1));
                }
                JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
            }
            if (updateContent != null) {
                boolean isReadOnly = file.isReadOnly();
                try {
                    try {
                        saveContent(packageFragment, elementName, updateContent, str2, file);
                    } finally {
                        Util.setReadOnly(file, isReadOnly);
                    }
                } catch (CoreException e10) {
                    if (!(e10 instanceof JavaModelException)) {
                        throw new JavaModelException(e10);
                    }
                    throw ((JavaModelException) e10);
                }
            }
            prepareDeltas(iCompilationUnit, compilationUnit, isMove(), this.force && file.exists());
            if (newNameFor != null) {
                prepareDeltas(iCompilationUnit.getType(Util.getNameWithoutJavaLikeExtension(iCompilationUnit.getElementName())), compilationUnit.getType(Util.getNameWithoutJavaLikeExtension(newNameFor)), isMove(), false);
            }
        } catch (JavaModelException e11) {
            throw e11;
        } catch (CoreException e12) {
            throw new JavaModelException(e12);
        }
    }

    private void processPackageFragmentResource(PackageFragment packageFragment, PackageFragmentRoot packageFragmentRoot, String str) throws JavaModelException {
        boolean z10;
        try {
            String[] trimmedSimpleNames = str == null ? packageFragment.names : Util.getTrimmedSimpleNames(str);
            PackageFragment packageFragment2 = packageFragmentRoot.getPackageFragment(trimmedSimpleNames);
            IResource[] collectResourcesOfInterest = collectResourcesOfInterest(packageFragment);
            boolean z11 = isMove() && !packageFragment2.resource().exists();
            IFolder resource = packageFragment.resource();
            IPath path = packageFragment2.getPath();
            if (z11) {
                if (!resource.getFullPath().isPrefixOf(path)) {
                    for (IResource iResource : resource.members()) {
                        if (!(iResource instanceof IFolder)) {
                        }
                    }
                }
                z11 = false;
                break;
            }
            boolean createNeededPackageFragments = createNeededPackageFragments((IContainer) packageFragment.parent.resource(), packageFragmentRoot, trimmedSimpleNames, z11);
            boolean isReadOnly = Util.isReadOnly(resource);
            if (z11) {
                if (isReadOnly) {
                    Util.setReadOnly(resource, false);
                }
                resource.move(path, this.force, true, getSubProgressMonitor(1));
                if (isReadOnly) {
                    Util.setReadOnly(resource, true);
                }
                JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
            } else if (collectResourcesOfInterest.length > 0) {
                if (isRename()) {
                    if (!path.equals(packageFragment.getPath())) {
                        moveResources(collectResourcesOfInterest, path);
                    }
                } else if (isMove()) {
                    for (IResource iResource2 : collectResourcesOfInterest) {
                        IResource findMember = ResourcesPlugin.getWorkspace().getRoot().findMember(path.append(iResource2.getName()));
                        if (findMember != null) {
                            if (!this.force) {
                                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, findMember.getFullPath().toString())));
                            }
                            deleteResource(findMember, 2);
                        }
                    }
                    moveResources(collectResourcesOfInterest, path);
                } else {
                    for (IResource iResource3 : collectResourcesOfInterest) {
                        IResource findMember2 = ResourcesPlugin.getWorkspace().getRoot().findMember(path.append(iResource3.getName()));
                        if (findMember2 != null) {
                            if (!this.force) {
                                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, findMember2.getFullPath().toString())));
                            }
                            deleteResource(findMember2, 2);
                        }
                    }
                    copyResources(collectResourcesOfInterest, path);
                }
            }
            if (!Util.equalArraysOrNull(trimmedSimpleNames, packageFragment.names)) {
                char[][] fullInclusionPatternChars = packageFragmentRoot.fullInclusionPatternChars();
                char[][] fullExclusionPatternChars = packageFragmentRoot.fullExclusionPatternChars();
                for (IResource iResource4 : collectResourcesOfInterest) {
                    String name = iResource4.getName();
                    if (Util.isJavaLikeFileName(name)) {
                        ICompilationUnit compilationUnit = packageFragment2.getCompilationUnit(name);
                        if (!Util.isExcluded(compilationUnit.getPath(), fullInclusionPatternChars, fullExclusionPatternChars, false)) {
                            this.parser.setSource(compilationUnit);
                            org.eclipse.jdt.core.dom.CompilationUnit compilationUnit2 = (org.eclipse.jdt.core.dom.CompilationUnit) this.parser.createAST(this.progressMonitor);
                            ASTRewrite create = ASTRewrite.create(compilationUnit2.getAST());
                            updatePackageStatement(compilationUnit2, trimmedSimpleNames, create, compilationUnit);
                            applyTextEdit(compilationUnit, create.rewriteAST());
                            compilationUnit.save(null, false);
                        }
                    }
                }
            }
            if (isMove()) {
                updateReadOnlyPackageFragmentsForMove((IContainer) packageFragment.parent.resource(), packageFragmentRoot, trimmedSimpleNames, isReadOnly);
                if (resource.exists()) {
                    z10 = true;
                    for (IResource iResource5 : resource.members()) {
                        if (iResource5 instanceof IFile) {
                            if (Util.isReadOnly(iResource5)) {
                                Util.setReadOnly(iResource5, false);
                            }
                            deleteResource(iResource5, 3);
                        } else {
                            z10 = false;
                        }
                    }
                } else {
                    z10 = true;
                }
                if (z10) {
                    deleteEmptyPackageFragment(packageFragment, false, path.isPrefixOf(resource.getFullPath()) ? packageFragment2.resource() : packageFragment.parent.resource());
                }
            } else {
                if (createNeededPackageFragments) {
                    updateReadOnlyPackageFragmentsForCopy((IContainer) packageFragment.parent.resource(), packageFragmentRoot, trimmedSimpleNames);
                }
                z10 = true;
            }
            if (!z10 || !isMove() || Util.isExcluded(packageFragment) || Util.isExcluded(packageFragment2)) {
                return;
            }
            getDeltaFor(packageFragment.getJavaProject()).movedFrom(packageFragment, packageFragment2);
            getDeltaFor(packageFragment2.getJavaProject()).movedTo(packageFragment2, packageFragment);
        } catch (JavaModelException e10) {
            throw e10;
        } catch (CoreException e11) {
            throw new JavaModelException(e11);
        }
    }

    private void saveContent(PackageFragment packageFragment, String str, TextEdit textEdit, String str2, IFile iFile) throws JavaModelException {
        if (str2 != null) {
            try {
                iFile.setCharset(str2, this.progressMonitor);
            } catch (CoreException unused) {
            }
        }
        Util.setReadOnly(iFile, false);
        ICompilationUnit compilationUnit = packageFragment.getCompilationUnit(str);
        applyTextEdit(compilationUnit, textEdit);
        compilationUnit.save(getSubProgressMonitor(1), this.force);
    }

    private TextEdit updateContent(ICompilationUnit iCompilationUnit, PackageFragment packageFragment, String str) throws JavaModelException {
        String[] strArr = ((PackageFragment) iCompilationUnit.getParent()).names;
        String[] strArr2 = packageFragment.names;
        if (Util.equalArraysOrNull(strArr, strArr2) && str == null) {
            return null;
        }
        iCompilationUnit.makeConsistent(this.progressMonitor);
        this.parser.setSource(iCompilationUnit);
        org.eclipse.jdt.core.dom.CompilationUnit compilationUnit = (org.eclipse.jdt.core.dom.CompilationUnit) this.parser.createAST(this.progressMonitor);
        ASTRewrite create = ASTRewrite.create(compilationUnit.getAST());
        updateTypeName(iCompilationUnit, compilationUnit, iCompilationUnit.getElementName(), str, create);
        updatePackageStatement(compilationUnit, strArr2, create, iCompilationUnit);
        return create.rewriteAST();
    }

    private void updatePackageStatement(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit, String[] strArr, ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException {
        boolean z10 = strArr.length == 0;
        AST ast = compilationUnit.getAST();
        if (!z10) {
            org.eclipse.jdt.core.dom.PackageDeclaration packageDeclaration = compilationUnit.getPackage();
            if (packageDeclaration != null) {
                aSTRewrite.set(packageDeclaration, org.eclipse.jdt.core.dom.PackageDeclaration.NAME_PROPERTY, ast.newName(strArr), null);
                return;
            }
            org.eclipse.jdt.core.dom.PackageDeclaration newPackageDeclaration = ast.newPackageDeclaration();
            newPackageDeclaration.setName(ast.newName(strArr));
            aSTRewrite.set(compilationUnit, org.eclipse.jdt.core.dom.CompilationUnit.PACKAGE_PROPERTY, newPackageDeclaration, null);
            return;
        }
        org.eclipse.jdt.core.dom.PackageDeclaration packageDeclaration2 = compilationUnit.getPackage();
        if (packageDeclaration2 != null) {
            Javadoc javadoc = packageDeclaration2.getJavadoc();
            int startPosition = javadoc != null ? javadoc.getStartPosition() + javadoc.getLength() + 1 : packageDeclaration2.getStartPosition();
            int extendedStartPosition = compilationUnit.getExtendedStartPosition(packageDeclaration2);
            if (startPosition != extendedStartPosition) {
                aSTRewrite.set(compilationUnit, org.eclipse.jdt.core.dom.CompilationUnit.PACKAGE_PROPERTY, aSTRewrite.createStringPlaceholder(iCompilationUnit.getSource().substring(extendedStartPosition, startPosition), 35), null);
            } else {
                aSTRewrite.set(compilationUnit, org.eclipse.jdt.core.dom.CompilationUnit.PACKAGE_PROPERTY, null, null);
            }
        }
    }

    private void updateReadOnlyPackageFragmentsForCopy(IContainer iContainer, PackageFragmentRoot packageFragmentRoot, String[] strArr) {
        IFolder iFolder = (IContainer) packageFragmentRoot.resource();
        for (String str : strArr) {
            iFolder = iFolder.getFolder(new Path(str));
            iContainer = iContainer.getFolder(new Path(str));
            if (iContainer.exists() && Util.isReadOnly(iContainer)) {
                Util.setReadOnly(iFolder, true);
            }
        }
    }

    private void updateReadOnlyPackageFragmentsForMove(IContainer iContainer, PackageFragmentRoot packageFragmentRoot, String[] strArr, boolean z10) {
        IFolder iFolder = (IContainer) packageFragmentRoot.resource();
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            iFolder = iFolder.getFolder(new Path(str));
            iContainer = iContainer.getFolder(new Path(str));
            if ((iContainer.exists() && Util.isReadOnly(iContainer)) || (i10 == length - 1 && z10)) {
                Util.setReadOnly(iFolder, true);
                Util.setReadOnly(iContainer, false);
            }
        }
    }

    private void updateTypeName(ICompilationUnit iCompilationUnit, org.eclipse.jdt.core.dom.CompilationUnit compilationUnit, String str, String str2, ASTRewrite aSTRewrite) throws JavaModelException {
        AbstractTypeDeclaration abstractTypeDeclaration;
        if (str2 != null) {
            String nameWithoutJavaLikeExtension = Util.getNameWithoutJavaLikeExtension(str);
            String nameWithoutJavaLikeExtension2 = Util.getNameWithoutJavaLikeExtension(str2);
            AST ast = compilationUnit.getAST();
            for (IJavaElement iJavaElement : iCompilationUnit.getTypes()) {
                if (iJavaElement.getElementName().equals(nameWithoutJavaLikeExtension) && (abstractTypeDeclaration = (AbstractTypeDeclaration) ((JavaElement) iJavaElement).findNode(compilationUnit)) != null) {
                    aSTRewrite.replace(abstractTypeDeclaration.getName(), ast.newSimpleName(nameWithoutJavaLikeExtension2), null);
                    for (Object obj : abstractTypeDeclaration.bodyDeclarations()) {
                        if (obj instanceof MethodDeclaration) {
                            MethodDeclaration methodDeclaration = (MethodDeclaration) obj;
                            if (methodDeclaration.isConstructor()) {
                                SimpleName name = methodDeclaration.getName();
                                if (name.getIdentifier().equals(nameWithoutJavaLikeExtension)) {
                                    aSTRewrite.replace(name, ast.newSimpleName(nameWithoutJavaLikeExtension2), null);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_copyResourceProgress;
    }

    @Override
    public ISchedulingRule getSchedulingRule() {
        IJavaElement[] iJavaElementArr = this.elementsToProcess;
        if (iJavaElementArr == null) {
            return null;
        }
        int length = iJavaElementArr.length;
        if (length == 1) {
            return getSchedulingRule(iJavaElementArr[0]);
        }
        ISchedulingRule[] iSchedulingRuleArr = new ISchedulingRule[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            ISchedulingRule schedulingRule = getSchedulingRule(this.elementsToProcess[i11]);
            if (schedulingRule != null) {
                iSchedulingRuleArr[i10] = schedulingRule;
                i10++;
            }
        }
        if (i10 != length) {
            ISchedulingRule[] iSchedulingRuleArr2 = new ISchedulingRule[i10];
            System.arraycopy(iSchedulingRuleArr, 0, iSchedulingRuleArr2, 0, i10);
            iSchedulingRuleArr = iSchedulingRuleArr2;
        }
        return new MultiRule(iSchedulingRuleArr);
    }

    public void prepareDeltas(IJavaElement iJavaElement, IJavaElement iJavaElement2, boolean z10, boolean z11) {
        if (Util.isExcluded(iJavaElement) || Util.isExcluded(iJavaElement2)) {
            return;
        }
        IJavaProject javaProject = iJavaElement2.getJavaProject();
        if (z10) {
            getDeltaFor(iJavaElement.getJavaProject()).movedFrom(iJavaElement, iJavaElement2);
            if (!z11) {
                getDeltaFor(javaProject).movedTo(iJavaElement2, iJavaElement);
                return;
            }
        } else if (!z11) {
            getDeltaFor(javaProject).added(iJavaElement2);
            return;
        }
        getDeltaFor(iJavaElement2.getJavaProject()).changed(iJavaElement2, 1);
    }

    public void processDeltas() {
        Iterator it = this.deltasPerProject.values().iterator();
        while (it.hasNext()) {
            addDelta((IJavaElementDelta) it.next());
        }
    }

    @Override
    public void processElement(IJavaElement iJavaElement) throws JavaModelException {
        IJavaElement destinationParent = getDestinationParent(iJavaElement);
        int elementType = iJavaElement.getElementType();
        if (elementType == 4) {
            processPackageFragmentResource((PackageFragment) iJavaElement, (PackageFragmentRoot) destinationParent, getNewNameFor(iJavaElement));
        } else {
            if (elementType != 5) {
                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement));
            }
            processCompilationUnitResource((ICompilationUnit) iJavaElement, (PackageFragment) destinationParent);
            this.createdElements.add(((IPackageFragment) destinationParent).getCompilationUnit(iJavaElement.getElementName()));
        }
    }

    @Override
    public void processElements() throws JavaModelException {
        this.createdElements = new ArrayList(this.elementsToProcess.length);
        try {
            try {
                super.processElements();
                IJavaElement[] iJavaElementArr = new IJavaElement[this.createdElements.size()];
                this.resultElements = iJavaElementArr;
                this.createdElements.toArray(iJavaElementArr);
                processDeltas();
            } catch (JavaModelException e10) {
                throw e10;
            }
        } catch (Throwable th2) {
            IJavaElement[] iJavaElementArr2 = new IJavaElement[this.createdElements.size()];
            this.resultElements = iJavaElementArr2;
            this.createdElements.toArray(iJavaElementArr2);
            processDeltas();
            throw th2;
        }
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        String[] strArr = this.renamingsList;
        if (strArr != null && strArr.length != this.elementsToProcess.length) {
            return new JavaModelStatus(IJavaModelStatusConstants.INDEX_OUT_OF_BOUNDS);
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    @Override
    public void verify(IJavaElement iJavaElement) throws JavaModelException {
        if (iJavaElement == null || !iJavaElement.exists()) {
            error(969, iJavaElement);
        }
        if (iJavaElement.isReadOnly() && (isRename() || isMove())) {
            error(976, iJavaElement);
        }
        IResource resource = ((JavaElement) iJavaElement).resource();
        if ((resource instanceof IFolder) && resource.isLinked()) {
            error(IJavaModelStatusConstants.INVALID_RESOURCE, iJavaElement);
        }
        int elementType = iJavaElement.getElementType();
        if (elementType == 5) {
            CompilationUnit compilationUnit = (CompilationUnit) iJavaElement;
            if (isMove() && compilationUnit.isWorkingCopy() && !compilationUnit.isPrimary()) {
                error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
            }
        } else if (elementType != 4) {
            error(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, iJavaElement);
        }
        verifyDestination(iJavaElement, (JavaElement) getDestinationParent(iJavaElement));
        if (this.renamings != null) {
            verifyRenaming(iJavaElement);
        }
    }
}
