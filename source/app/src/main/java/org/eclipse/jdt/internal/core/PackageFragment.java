package org.eclipse.jdt.internal.core;

import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModularClassFile;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class PackageFragment extends Openable implements IPackageFragment, SuffixConstants {
    private boolean isValidPackageName;
    public String[] names;
    protected static final IClassFile[] NO_CLASSFILES = new IClassFile[0];
    protected static final IOrdinaryClassFile[] NO_ORDINARY_CLASSFILES = new IOrdinaryClassFile[0];
    protected static final ICompilationUnit[] NO_COMPILATION_UNITS = new ICompilationUnit[0];

    public PackageFragment(PackageFragmentRoot packageFragmentRoot, String[] strArr) {
        super(packageFragmentRoot);
        this.names = strArr;
        this.isValidPackageName = internalIsValidPackageName();
    }

    @Override
    public boolean buildStructure(OpenableElementInfo openableElementInfo, IProgressMonitor iProgressMonitor, Map map, IResource iResource) throws JavaModelException {
        HashSet hashSet = new HashSet();
        int kind = getKind();
        try {
            PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
            char[][] fullInclusionPatternChars = packageFragmentRoot.fullInclusionPatternChars();
            char[][] fullExclusionPatternChars = packageFragmentRoot.fullExclusionPatternChars();
            IResource[] members = ((IContainer) iResource).members();
            if (members.length > 0) {
                IJavaProject javaProject = getJavaProject();
                String option = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                String option2 = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                for (IResource iResource2 : members) {
                    if (iResource2.getType() != 2 && !Util.isExcluded(iResource2, fullInclusionPatternChars, fullExclusionPatternChars)) {
                        if (kind == 1 && Util.isValidCompilationUnitName(iResource2.getName(), option, option2)) {
                            hashSet.add(new CompilationUnit(this, iResource2.getName(), DefaultWorkingCopyOwner.PRIMARY));
                        } else if (kind == 2 && Util.isValidClassFileName(iResource2.getName(), option, option2)) {
                            hashSet.add(getClassFile(iResource2.getName()));
                        }
                    }
                }
            }
            if (kind == 1) {
                for (ICompilationUnit iCompilationUnit : getCompilationUnits(DefaultWorkingCopyOwner.PRIMARY)) {
                    hashSet.add(iCompilationUnit);
                }
            }
            if (hashSet.isEmpty()) {
                openableElementInfo.setChildren(JavaElement.NO_ELEMENTS);
            } else {
                IJavaElement[] iJavaElementArr = new IJavaElement[hashSet.size()];
                hashSet.toArray(iJavaElementArr);
                openableElementInfo.setChildren(iJavaElementArr);
            }
            return true;
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    public boolean containsJavaResources() throws JavaModelException {
        return ((PackageFragmentInfo) getElementInfo()).containsJavaResources();
    }

    @Override
    public void copy(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iJavaElement == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        getJavaModel().copy(new IJavaElement[]{this}, new IJavaElement[]{iJavaElement}, iJavaElement2 != null ? new IJavaElement[]{iJavaElement2} : null, str != null ? new String[]{str} : null, z10, iProgressMonitor);
    }

    public ICompilationUnit createCompilationUnit(String str, String str2, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        new CreateCompilationUnitOperation(this, str, str2, z10).runOperation(iProgressMonitor);
        return new CompilationUnit(this, str, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public Object createElementInfo() {
        return new PackageFragmentInfo();
    }

    @Override
    public void delete(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        getJavaModel().delete(new IJavaElement[]{this}, z10, iProgressMonitor);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PackageFragment)) {
            return false;
        }
        PackageFragment packageFragment = (PackageFragment) obj;
        return Util.equalArraysOrNull(this.names, packageFragment.names) && this.parent.equals(packageFragment.parent);
    }

    @Override
    public boolean exists() {
        return super.exists() && !Util.isExcluded(this) && isValidPackageName();
    }

    public IClassFile[] getAllClassFiles() throws JavaModelException {
        if (getKind() == 1) {
            return NO_CLASSFILES;
        }
        ArrayList childrenOfType = getChildrenOfType(6);
        IClassFile[] iClassFileArr = new IClassFile[childrenOfType.size()];
        childrenOfType.toArray(iClassFileArr);
        return iClassFileArr;
    }

    @Override
    public String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException {
        String str;
        JavaModelManager.PerProjectInfo perProjectInfoCheckExistence = JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(getJavaProject().getProject());
        synchronized (perProjectInfoCheckExistence.javadocCache) {
            str = (String) perProjectInfoCheckExistence.javadocCache.get(this);
        }
        if (str != null) {
            return str;
        }
        URL javadocBaseLocation = getJavadocBaseLocation();
        if (javadocBaseLocation == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(javadocBaseLocation.toExternalForm());
        if (stringBuffer.charAt(stringBuffer.length() - 1) != '/') {
            stringBuffer.append('/');
        }
        stringBuffer.append(getElementName().replace('.', '/'));
        stringBuffer.append('/');
        stringBuffer.append(JavadocConstants.PACKAGE_FILE_NAME);
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        String uRLContents = getURLContents(javadocBaseLocation, String.valueOf(stringBuffer));
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        if (uRLContents == null) {
            return null;
        }
        String packageDoc = new JavadocContents(uRLContents).getPackageDoc();
        if (packageDoc == null) {
            packageDoc = "";
        }
        synchronized (perProjectInfoCheckExistence.javadocCache) {
            perProjectInfoCheckExistence.javadocCache.put(this, packageDoc);
        }
        return packageDoc;
    }

    @Override
    public IClassFile getClassFile(String str) {
        return "module-info.class".equals(str) ? getModularClassFile() : getOrdinaryClassFile(str);
    }

    @Override
    @Deprecated
    public IClassFile[] getClassFiles() throws JavaModelException {
        return getOrdinaryClassFiles();
    }

    @Override
    public ICompilationUnit getCompilationUnit(String str) {
        if (Util.isJavaLikeFileName(str)) {
            return new CompilationUnit(this, str, DefaultWorkingCopyOwner.PRIMARY);
        }
        throw new IllegalArgumentException(Messages.convention_unit_notJavaName);
    }

    public ICompilationUnit[] getCompilationUnits() throws JavaModelException {
        if (getKind() == 2) {
            return NO_COMPILATION_UNITS;
        }
        ArrayList childrenOfType = getChildrenOfType(5);
        ICompilationUnit[] iCompilationUnitArr = new ICompilationUnit[childrenOfType.size()];
        childrenOfType.toArray(iCompilationUnitArr);
        return iCompilationUnitArr;
    }

    @Override
    public String getElementName() {
        String[] strArr = this.names;
        return strArr.length == 0 ? "" : Util.concatWith(strArr, '.');
    }

    @Override
    public int getElementType() {
        return 4;
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        char charAt = str.charAt(0);
        if (charAt == '\'') {
            return ((JavaElement) getModularClassFile()).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
        }
        if (charAt == '(') {
            return !mementoTokenizer.hasMoreTokens() ? this : ((JavaElement) getClassFile(mementoTokenizer.nextToken())).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
        }
        if (charAt != '{') {
            return null;
        }
        return !mementoTokenizer.hasMoreTokens() ? this : new CompilationUnit(this, mementoTokenizer.nextToken(), workingCopyOwner).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '<';
    }

    @Override
    public int getKind() throws JavaModelException {
        return ((IPackageFragmentRoot) getParent()).getKind();
    }

    @Override
    public IModularClassFile getModularClassFile() {
        return new ModularClassFile(this);
    }

    public Object[] getNonJavaResources() throws JavaModelException {
        return isDefaultPackage() ? JavaElementInfo.NO_NON_JAVA_RESOURCES : ((PackageFragmentInfo) getElementInfo()).getNonJavaResources(resource(), getPackageFragmentRoot());
    }

    @Override
    public IOrdinaryClassFile getOrdinaryClassFile(String str) {
        if (!org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(str)) {
            throw new IllegalArgumentException(Messages.bind(Messages.element_invalidClassFileName, str));
        }
        if ("module-info.class".equals(str)) {
            throw new IllegalArgumentException(Messages.element_moduleInfoNotSupported);
        }
        int length = str.length() - 6;
        char[] cArr = new char[length];
        str.getChars(0, length, cArr, 0);
        return new ClassFile(this, new String(cArr));
    }

    @Override
    public IOrdinaryClassFile[] getOrdinaryClassFiles() throws JavaModelException {
        if (getKind() == 1) {
            return NO_ORDINARY_CLASSFILES;
        }
        ArrayList childrenOfType = getChildrenOfType(6);
        Iterator it = childrenOfType.iterator();
        while (it.hasNext()) {
            if (it.next() instanceof ModularClassFile) {
                it.remove();
            }
        }
        IOrdinaryClassFile[] iOrdinaryClassFileArr = new IOrdinaryClassFile[childrenOfType.size()];
        childrenOfType.toArray(iOrdinaryClassFileArr);
        return iOrdinaryClassFileArr;
    }

    @Override
    public IPath getPath() {
        PackageFragmentRoot packageFragmentRoot = getPackageFragmentRoot();
        if (packageFragmentRoot.isArchive()) {
            return packageFragmentRoot.getPath();
        }
        IPath path = packageFragmentRoot.getPath();
        int length = this.names.length;
        for (int i10 = 0; i10 < length; i10++) {
            path = path.append(this.names[i10]);
        }
        return path;
    }

    @Override
    public IResource getUnderlyingResource() throws JavaModelException {
        throw null;
    }

    @Override
    public boolean hasChildren() throws JavaModelException {
        return getChildren().length > 0;
    }

    @Override
    public boolean hasSubpackages() throws JavaModelException {
        IJavaElement[] children = ((IPackageFragmentRoot) getParent()).getChildren();
        int length = this.names.length;
        for (IJavaElement iJavaElement : children) {
            String[] strArr = ((PackageFragment) iJavaElement).names;
            if (strArr.length > length) {
                for (int i10 = 0; i10 < length; i10++) {
                    if (!this.names[i10].equals(strArr[i10])) {
                        break;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        int hashCode = this.parent.hashCode();
        int length = this.names.length;
        for (int i10 = 0; i10 < length; i10++) {
            hashCode = Util.combineHashCodes(this.names[i10].hashCode(), hashCode);
        }
        return hashCode;
    }

    public boolean internalIsValidPackageName() {
        IJavaProject create = JavaCore.create(resource().getProject());
        String option = create.getOption("org.eclipse.jdt.core.compiler.source", true);
        String option2 = create.getOption("org.eclipse.jdt.core.compiler.compliance", true);
        int length = this.names.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!Util.isValidFolderNameForPackage(this.names[i10], option, option2)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isDefaultPackage() {
        return this.names.length == 0;
    }

    public final boolean isValidPackageName() {
        return this.isValidPackageName;
    }

    @Override
    public void move(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (iJavaElement == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        getJavaModel().move(new IJavaElement[]{this}, new IJavaElement[]{iJavaElement}, iJavaElement2 != null ? new IJavaElement[]{iJavaElement2} : null, str != null ? new String[]{str} : null, z10, iProgressMonitor);
    }

    @Override
    public void rename(String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (str == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        IJavaElement[] iJavaElementArr = {getParent()};
        getJavaModel().rename(new IJavaElement[]{this}, iJavaElementArr, new String[]{str}, z10, iProgressMonitor);
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        int length = this.names.length;
        if (length == 0) {
            return packageFragmentRoot.resource(packageFragmentRoot);
        }
        IPath path = new Path(this.names[0]);
        for (int i10 = 1; i10 < length; i10++) {
            path = path.append(this.names[i10]);
        }
        return packageFragmentRoot.resource(packageFragmentRoot).getFolder(path);
    }

    @Override
    public void toStringChildren(int i10, StringBuffer stringBuffer, Object obj) {
        if (i10 == 0) {
            super.toStringChildren(i10, stringBuffer, obj);
        }
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        if (this.names.length == 0) {
            stringBuffer.append("<default>");
        } else {
            toStringName(stringBuffer);
        }
        if (obj == null) {
            stringBuffer.append(" (not open)");
        } else if (i10 > 0) {
            stringBuffer.append(" (...)");
        }
    }

    @Override
    public IStatus validateExistence(IResource iResource) {
        if (!isValidPackageName()) {
            return newDoesNotExistStatus();
        }
        if (iResource != null && !resourceExists(iResource)) {
            return newDoesNotExistStatus();
        }
        try {
            return (getKind() == 1 && Util.isExcluded(this)) ? newDoesNotExistStatus() : JavaModelStatus.VERIFIED_OK;
        } catch (JavaModelException e10) {
            return e10.getStatus();
        }
    }

    @Override
    public ICompilationUnit[] getCompilationUnits(WorkingCopyOwner workingCopyOwner) {
        ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, false);
        if (workingCopies == null) {
            return JavaModelManager.NO_WORKING_COPY;
        }
        int length = workingCopies.length;
        ICompilationUnit[] iCompilationUnitArr = new ICompilationUnit[length];
        int i10 = 0;
        for (ICompilationUnit iCompilationUnit : workingCopies) {
            if (equals(iCompilationUnit.getParent()) && !Util.isExcluded(iCompilationUnit)) {
                iCompilationUnitArr[i10] = iCompilationUnit;
                i10++;
            }
        }
        if (i10 == length) {
            return iCompilationUnitArr;
        }
        ICompilationUnit[] iCompilationUnitArr2 = new ICompilationUnit[i10];
        System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 0, i10);
        return iCompilationUnitArr2;
    }
}
