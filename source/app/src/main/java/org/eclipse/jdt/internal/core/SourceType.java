package org.eclipse.jdt.internal.core;

import android.icu.text.DateFormat;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.IWorkingCopy;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.CompletionRequestorWrapper;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;

public class SourceType extends NamedMember implements IType {
    public int localOccurrenceCount;

    public SourceType(JavaElement javaElement, String str) {
        super(javaElement, str);
        this.localOccurrenceCount = 1;
    }

    @Override
    public void closing(Object obj) throws JavaModelException {
        super.closing(obj);
        for (ITypeParameter iTypeParameter : ((SourceTypeElementInfo) obj).typeParameters) {
            ((TypeParameter) iTypeParameter).close();
        }
    }

    @Override
    public void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, ICompletionRequestor iCompletionRequestor) throws JavaModelException {
        codeComplete(cArr, i10, i11, cArr2, cArr3, iArr, z10, iCompletionRequestor, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IField createField(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateFieldOperation createFieldOperation = new CreateFieldOperation(this, str, z10);
        if (iJavaElement != null) {
            createFieldOperation.createBefore(iJavaElement);
        }
        createFieldOperation.runOperation(iProgressMonitor);
        return (IField) createFieldOperation.getResultElements()[0];
    }

    @Override
    public IInitializer createInitializer(String str, IJavaElement iJavaElement, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateInitializerOperation createInitializerOperation = new CreateInitializerOperation(this, str);
        if (iJavaElement != null) {
            createInitializerOperation.createBefore(iJavaElement);
        }
        createInitializerOperation.runOperation(iProgressMonitor);
        return (IInitializer) createInitializerOperation.getResultElements()[0];
    }

    @Override
    public IMethod createMethod(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateMethodOperation createMethodOperation = new CreateMethodOperation(this, str, z10);
        if (iJavaElement != null) {
            createMethodOperation.createBefore(iJavaElement);
        }
        createMethodOperation.runOperation(iProgressMonitor);
        return (IMethod) createMethodOperation.getResultElements()[0];
    }

    @Override
    public IType createType(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateTypeOperation createTypeOperation = new CreateTypeOperation(this, str, z10);
        if (iJavaElement != null) {
            createTypeOperation.createBefore(iJavaElement);
        }
        createTypeOperation.runOperation(iProgressMonitor);
        return (IType) createTypeOperation.getResultElements()[0];
    }

    @Override
    public boolean equals(Object obj) {
        if ((obj instanceof SourceType) && !((SourceType) obj).isLambda()) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public IMethod[] findMethods(IMethod iMethod) {
        try {
            return Member.findMethods(iMethod, getMethods());
        } catch (JavaModelException unused) {
            return null;
        }
    }

    @Override
    public IAnnotation[] getAnnotations() throws JavaModelException {
        return ((AnnotatableInfo) getElementInfo()).annotations;
    }

    @Override
    public IJavaElement[] getChildrenForCategory(String str) throws JavaModelException {
        HashMap<IJavaElement, String[]> categories;
        IJavaElement[] children = getChildren();
        int length = children.length;
        if (length != 0 && (categories = ((SourceTypeElementInfo) getElementInfo()).getCategories()) != null) {
            IJavaElement[] iJavaElementArr = new IJavaElement[length];
            int i10 = 0;
            for (IJavaElement iJavaElement : children) {
                String[] strArr = categories.get(iJavaElement);
                if (strArr != null) {
                    for (String str2 : strArr) {
                        if (str2.equals(str)) {
                            iJavaElementArr[i10] = iJavaElement;
                            i10++;
                        }
                    }
                }
            }
            if (i10 == 0) {
                return JavaElement.NO_ELEMENTS;
            }
            if (i10 >= length) {
                return iJavaElementArr;
            }
            IJavaElement[] iJavaElementArr2 = new IJavaElement[i10];
            System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, i10);
            return iJavaElementArr2;
        }
        return JavaElement.NO_ELEMENTS;
    }

    @Override
    public IOrdinaryClassFile getClassFile() {
        return null;
    }

    @Override
    public IType getDeclaringType() {
        for (IJavaElement parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent.getElementType() == 7) {
                return (IType) parent;
            }
            if (!(parent instanceof IMember)) {
                return null;
            }
        }
        return null;
    }

    @Override
    public int getElementType() {
        return 7;
    }

    public IField getField(String str) {
        return new SourceField(this, str);
    }

    @Override
    public IField[] getFields() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(8);
        IField[] iFieldArr = new IField[childrenOfType.size()];
        childrenOfType.toArray(iFieldArr);
        return iFieldArr;
    }

    @Override
    public String getFullyQualifiedName() {
        return getFullyQualifiedName('$');
    }

    public String getFullyQualifiedParameterizedName() throws JavaModelException {
        return getFullyQualifiedName('.', true);
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        char charAt = str.charAt(0);
        if (charAt == '!') {
            return getHandleUpdatingCountFromMemento(mementoTokenizer, workingCopyOwner);
        }
        String str2 = null;
        if (charAt == '[') {
            String str3 = "";
            if (mementoTokenizer.hasMoreTokens()) {
                String nextToken = mementoTokenizer.nextToken();
                char charAt2 = nextToken.charAt(0);
                if (charAt2 == '^' || charAt2 == '|' || charAt2 == '~' || charAt2 == '[' || charAt2 == '!') {
                    str2 = nextToken;
                } else {
                    str3 = nextToken;
                }
            }
            JavaElement javaElement = (JavaElement) getType(str3);
            return str2 == null ? javaElement.getHandleFromMemento(mementoTokenizer, workingCopyOwner) : javaElement.getHandleFromMemento(str2, mementoTokenizer, workingCopyOwner);
        }
        if (charAt == ']') {
            return !mementoTokenizer.hasMoreTokens() ? this : new TypeParameter(this, mementoTokenizer.nextToken()).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
        }
        if (charAt == '^') {
            return !mementoTokenizer.hasMoreTokens() ? this : ((JavaElement) getField(mementoTokenizer.nextToken())).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
        }
        switch (charAt) {
            case '|':
                return !mementoTokenizer.hasMoreTokens() ? this : ((JavaElement) getInitializer(Integer.parseInt(mementoTokenizer.nextToken()))).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
            case '}':
                return !mementoTokenizer.hasMoreTokens() ? this : new Annotation(this, mementoTokenizer.nextToken()).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
            case '~':
                if (!mementoTokenizer.hasMoreTokens()) {
                    return this;
                }
                String nextToken2 = mementoTokenizer.nextToken();
                ArrayList arrayList = new ArrayList();
                while (mementoTokenizer.hasMoreTokens()) {
                    str = mementoTokenizer.nextToken();
                    if (str.charAt(0) != '~') {
                        String[] strArr = new String[arrayList.size()];
                        arrayList.toArray(strArr);
                        JavaElement javaElement2 = (JavaElement) getMethod(nextToken2, strArr);
                        char charAt3 = str.charAt(0);
                        return (charAt3 != ')' || charAt3 == '@' || charAt3 == '[' || charAt3 == ']' || charAt3 == '}') ? javaElement2.getHandleFromMemento(str, mementoTokenizer, workingCopyOwner) : javaElement2;
                    }
                    if (!mementoTokenizer.hasMoreTokens()) {
                        return this;
                    }
                    String nextToken3 = mementoTokenizer.nextToken();
                    StringBuffer stringBuffer = new StringBuffer();
                    while (nextToken3.length() == 1 && '[' == nextToken3.charAt(0)) {
                        stringBuffer.append('[');
                        if (!mementoTokenizer.hasMoreTokens()) {
                            return this;
                        }
                        nextToken3 = mementoTokenizer.nextToken();
                    }
                    arrayList.add(String.valueOf(stringBuffer.toString()) + nextToken3);
                }
                String[] strArr2 = new String[arrayList.size()];
                arrayList.toArray(strArr2);
                JavaElement javaElement22 = (JavaElement) getMethod(nextToken2, strArr2);
                char charAt32 = str.charAt(0);
                if (charAt32 != ')') {
                }
            default:
                return null;
        }
    }

    public IInitializer getInitializer(int i10) {
        return new Initializer(this, i10);
    }

    @Override
    public IInitializer[] getInitializers() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(10);
        IInitializer[] iInitializerArr = new IInitializer[childrenOfType.size()];
        childrenOfType.toArray(iInitializerArr);
        return iInitializerArr;
    }

    public String getKey() {
        try {
            return getKey((IType) this, false);
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public IMethod getMethod(String str, String[] strArr) {
        return new SourceMethod(this, str, strArr);
    }

    @Override
    public IMethod[] getMethods() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(9);
        IMethod[] iMethodArr = new IMethod[childrenOfType.size()];
        childrenOfType.toArray(iMethodArr);
        return iMethodArr;
    }

    @Override
    public String getOccurrenceCountSignature() {
        return Integer.toString(this.localOccurrenceCount);
    }

    @Override
    public IPackageFragment getPackageFragment() {
        for (IJavaElement iJavaElement = this.parent; iJavaElement != null; iJavaElement = iJavaElement.getParent()) {
            if (iJavaElement.getElementType() == 4) {
                return (IPackageFragment) iJavaElement;
            }
        }
        Assert.isTrue(false);
        return null;
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        if (z10 && ((CompilationUnit) getAncestor(5)).isPrimary()) {
            return this;
        }
        IJavaElement primaryElement = this.parent.getPrimaryElement(false);
        switch (primaryElement.getElementType()) {
            case 5:
                return ((ICompilationUnit) primaryElement).getType(this.name);
            case 6:
            default:
                return this;
            case 7:
                return ((IType) primaryElement).getType(this.name);
            case 8:
            case 9:
            case 10:
                return ((IMember) primaryElement).getType(this.name, this.occurrenceCount);
        }
    }

    @Override
    public String[] getSuperInterfaceNames() throws JavaModelException {
        return CharOperation.toStrings(((SourceTypeElementInfo) getElementInfo()).getInterfaceNames());
    }

    public String[] getSuperInterfaceTypeSignatures() throws JavaModelException {
        char[][] interfaceNames = ((SourceTypeElementInfo) getElementInfo()).getInterfaceNames();
        if (interfaceNames == null) {
            return CharOperation.NO_STRINGS;
        }
        String[] strArr = new String[interfaceNames.length];
        for (int i10 = 0; i10 < interfaceNames.length; i10++) {
            strArr[i10] = Signature.createTypeSignature(interfaceNames[i10], false);
        }
        return strArr;
    }

    @Override
    public String getSuperclassName() throws JavaModelException {
        char[] superclassName = ((SourceTypeElementInfo) getElementInfo()).getSuperclassName();
        if (superclassName == null) {
            return null;
        }
        return new String(superclassName);
    }

    @Override
    public String getSuperclassTypeSignature() throws JavaModelException {
        char[] superclassName = ((SourceTypeElementInfo) getElementInfo()).getSuperclassName();
        if (superclassName == null) {
            return null;
        }
        return Signature.createTypeSignature(superclassName, false);
    }

    public IType getType(String str) {
        return new SourceType(this, str);
    }

    public ITypeParameter getTypeParameter(String str) {
        return new TypeParameter(this, str);
    }

    @Override
    public String[] getTypeParameterSignatures() throws JavaModelException {
        ITypeParameter[] typeParameters = getTypeParameters();
        int length = typeParameters.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            TypeParameter typeParameter = (TypeParameter) typeParameters[i10];
            char[][] cArr = ((TypeParameterElementInfo) typeParameter.getElementInfo()).bounds;
            if (cArr == null) {
                strArr[i10] = Signature.createTypeParameterSignature(typeParameter.getElementName(), CharOperation.NO_STRINGS);
            } else {
                int length2 = cArr.length;
                char[][] cArr2 = new char[length2];
                for (int i11 = 0; i11 < length2; i11++) {
                    cArr2[i11] = Signature.createCharArrayTypeSignature(cArr[i11], false);
                }
                strArr[i10] = new String(Signature.createTypeParameterSignature(typeParameter.getElementName().toCharArray(), cArr2));
            }
        }
        return strArr;
    }

    @Override
    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        return ((SourceTypeElementInfo) getElementInfo()).typeParameters;
    }

    @Override
    public String getTypeQualifiedName() {
        return getTypeQualifiedName('$');
    }

    @Override
    public IType[] getTypes() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(7);
        IType[] iTypeArr = new IType[childrenOfType.size()];
        childrenOfType.toArray(iTypeArr);
        return iTypeArr;
    }

    @Override
    public boolean isAnnotation() throws JavaModelException {
        return TypeDeclaration.kind(((SourceTypeElementInfo) getElementInfo()).getModifiers()) == 4;
    }

    public boolean isAnonymous() {
        return this.name.length() == 0;
    }

    @Override
    public boolean isClass() throws JavaModelException {
        return TypeDeclaration.kind(((SourceTypeElementInfo) getElementInfo()).getModifiers()) == 1;
    }

    @Override
    public boolean isEnum() throws JavaModelException {
        return TypeDeclaration.kind(((SourceTypeElementInfo) getElementInfo()).getModifiers()) == 3;
    }

    @Override
    public boolean isInterface() throws JavaModelException {
        int kind = TypeDeclaration.kind(((SourceTypeElementInfo) getElementInfo()).getModifiers());
        return kind == 2 || kind == 4;
    }

    public boolean isLambda() {
        return false;
    }

    public boolean isLocal() {
        switch (this.parent.getElementType()) {
            case 8:
            case 9:
            case 10:
                return true;
            default:
                return false;
        }
    }

    @Override
    public boolean isMember() {
        return getDeclaringType() != null;
    }

    public boolean isResolved() {
        return false;
    }

    @Override
    public ITypeHierarchy loadTypeHierachy(InputStream inputStream, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return loadTypeHierachy(inputStream, DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    @Override
    public ITypeHierarchy newSupertypeHierarchy(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return newSupertypeHierarchy(DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(IJavaProject iJavaProject, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return newTypeHierarchy(iJavaProject, DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    @Override
    public JavaElement resolved(Binding binding) {
        ResolvedSourceType resolvedSourceType = new ResolvedSourceType(this.parent, this.name, new String(binding.computeUniqueKey()));
        resolvedSourceType.occurrenceCount = this.occurrenceCount;
        resolvedSourceType.localOccurrenceCount = this.localOccurrenceCount;
        return resolvedSourceType;
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        if (obj == null) {
            if (isAnonymous()) {
                stringBuffer.append("<anonymous #");
                stringBuffer.append(this.occurrenceCount);
                stringBuffer.append(">");
            } else {
                toStringName(stringBuffer);
            }
            stringBuffer.append(" (not open)");
            return;
        }
        if (obj == JavaElement.NO_INFO) {
            if (!isAnonymous()) {
                toStringName(stringBuffer);
                return;
            }
            stringBuffer.append("<anonymous #");
            stringBuffer.append(this.occurrenceCount);
            stringBuffer.append(">");
            return;
        }
        try {
            if (isEnum()) {
                stringBuffer.append("enum ");
            } else if (isAnnotation()) {
                stringBuffer.append("@interface ");
            } else if (isInterface()) {
                stringBuffer.append("interface ");
            } else {
                stringBuffer.append(ExternalAnnotationProvider.CLASS_PREFIX);
            }
            if (!isAnonymous()) {
                toStringName(stringBuffer);
                return;
            }
            stringBuffer.append("<anonymous #");
            stringBuffer.append(this.occurrenceCount);
            stringBuffer.append(">");
        } catch (JavaModelException unused) {
            stringBuffer.append("<JavaModelException in toString of " + getElementName());
        }
    }

    @Override
    public void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, ICompletionRequestor iCompletionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        if (iCompletionRequestor != null) {
            codeComplete(cArr, i10, i11, cArr2, cArr3, iArr, z10, new CompletionRequestorWrapper(iCompletionRequestor), workingCopyOwner);
            return;
        }
        throw new IllegalArgumentException("Completion requestor cannot be null");
    }

    @Override
    public String getFullyQualifiedName(char c10) {
        try {
            return getFullyQualifiedName(c10, false);
        } catch (JavaModelException unused) {
            return null;
        }
    }

    @Override
    public String getTypeQualifiedName(char c10) {
        try {
            return getTypeQualifiedName(c10, false);
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public ITypeHierarchy loadTypeHierachy(InputStream inputStream, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        return TypeHierarchy.load(this, inputStream, workingCopyOwner);
    }

    @Override
    public ITypeHierarchy newSupertypeHierarchy(ICompilationUnit[] iCompilationUnitArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateTypeHierarchyOperation createTypeHierarchyOperation = new CreateTypeHierarchyOperation((IType) this, iCompilationUnitArr, SearchEngine.createWorkspaceScope(), false);
        createTypeHierarchyOperation.runOperation(iProgressMonitor);
        return createTypeHierarchyOperation.getResult();
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(IJavaProject iJavaProject, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        ICompilationUnit[] iCompilationUnitArr;
        if (iJavaProject != null) {
            ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, true);
            if (workingCopies != null) {
                int length = workingCopies.length;
                iCompilationUnitArr = new ICompilationUnit[length];
                int i10 = 0;
                for (ICompilationUnit iCompilationUnit : workingCopies) {
                    if (iJavaProject.equals(iCompilationUnit.getJavaProject())) {
                        iCompilationUnitArr[i10] = iCompilationUnit;
                        i10++;
                    }
                }
                if (i10 != length) {
                    ICompilationUnit[] iCompilationUnitArr2 = new ICompilationUnit[i10];
                    System.arraycopy(iCompilationUnitArr, 0, iCompilationUnitArr2, 0, i10);
                    iCompilationUnitArr = iCompilationUnitArr2;
                }
            } else {
                iCompilationUnitArr = null;
            }
            CreateTypeHierarchyOperation createTypeHierarchyOperation = new CreateTypeHierarchyOperation((IType) this, iCompilationUnitArr, iJavaProject, true);
            createTypeHierarchyOperation.runOperation(iProgressMonitor);
            return createTypeHierarchyOperation.getResult();
        }
        throw new IllegalArgumentException(Messages.hierarchy_nullProject);
    }

    @Override
    public void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, CompletionRequestor completionRequestor) throws JavaModelException {
        codeComplete(cArr, i10, i11, cArr2, cArr3, iArr, z10, completionRequestor, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, CompletionRequestor completionRequestor, IProgressMonitor iProgressMonitor) throws JavaModelException {
        codeComplete(cArr, i10, i11, cArr2, cArr3, iArr, z10, completionRequestor, DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    @Override
    public ITypeHierarchy newSupertypeHierarchy(IWorkingCopy[] iWorkingCopyArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        ICompilationUnit[] iCompilationUnitArr;
        if (iWorkingCopyArr == null) {
            iCompilationUnitArr = null;
        } else {
            int length = iWorkingCopyArr.length;
            ICompilationUnit[] iCompilationUnitArr2 = new ICompilationUnit[length];
            System.arraycopy(iWorkingCopyArr, 0, iCompilationUnitArr2, 0, length);
            iCompilationUnitArr = iCompilationUnitArr2;
        }
        return newSupertypeHierarchy(iCompilationUnitArr, iProgressMonitor);
    }

    @Override
    public void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        codeComplete(cArr, i10, i11, cArr2, cArr3, iArr, z10, completionRequestor, workingCopyOwner, null);
    }

    @Override
    public void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, CompletionRequestor completionRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        if (completionRequestor != null) {
            JavaProject javaProject = (JavaProject) getJavaProject();
            SearchableEnvironment newSearchableNameEnvironment = javaProject.newSearchableNameEnvironment(workingCopyOwner, completionRequestor.isTestCodeExcluded());
            CompletionEngine completionEngine = new CompletionEngine(newSearchableNameEnvironment, completionRequestor, javaProject.getOptions(true), javaProject, workingCopyOwner, iProgressMonitor);
            String source = getCompilationUnit().getSource();
            if (source != null && i10 > -1 && i10 < source.length()) {
                char[] concat = CharOperation.concat(source.substring(0, i10).toCharArray(), new char[]{JavaElement.JEM_COMPILATIONUNIT});
                completionEngine.complete(new BasicCompilationUnit(CharOperation.concat(concat, cArr, CharOperation.concat(new char[]{JavaElement.JEM_ANNOTATION}, source.substring(i10).toCharArray())), (char[][]) null, getElementName(), getParent()), concat.length + i11, concat.length, null);
            } else {
                completionEngine.complete(this, cArr, i11, cArr2, cArr3, iArr, z10);
            }
            if (NameLookup.VERBOSE) {
                PrintStream printStream = System.out;
                printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + newSearchableNameEnvironment.nameLookup.timeSpentInSeekTypesInSourcePackage + DateFormat.MINUTE_SECOND);
                printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + newSearchableNameEnvironment.nameLookup.timeSpentInSeekTypesInBinaryPackage + DateFormat.MINUTE_SECOND);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Completion requestor cannot be null");
    }

    @Override
    public ITypeHierarchy newSupertypeHierarchy(WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateTypeHierarchyOperation createTypeHierarchyOperation = new CreateTypeHierarchyOperation((IType) this, JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, true), SearchEngine.createWorkspaceScope(), false);
        createTypeHierarchyOperation.runOperation(iProgressMonitor);
        return createTypeHierarchyOperation.getResult();
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return newTypeHierarchy(DefaultWorkingCopyOwner.PRIMARY, iProgressMonitor);
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(ICompilationUnit[] iCompilationUnitArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateTypeHierarchyOperation createTypeHierarchyOperation = new CreateTypeHierarchyOperation((IType) this, iCompilationUnitArr, SearchEngine.createWorkspaceScope(), true);
        createTypeHierarchyOperation.runOperation(iProgressMonitor);
        return createTypeHierarchyOperation.getResult();
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(IWorkingCopy[] iWorkingCopyArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        ICompilationUnit[] iCompilationUnitArr;
        if (iWorkingCopyArr == null) {
            iCompilationUnitArr = null;
        } else {
            int length = iWorkingCopyArr.length;
            ICompilationUnit[] iCompilationUnitArr2 = new ICompilationUnit[length];
            System.arraycopy(iWorkingCopyArr, 0, iCompilationUnitArr2, 0, length);
            iCompilationUnitArr = iCompilationUnitArr2;
        }
        return newTypeHierarchy(iCompilationUnitArr, iProgressMonitor);
    }

    @Override
    public ITypeHierarchy newTypeHierarchy(WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        CreateTypeHierarchyOperation createTypeHierarchyOperation = new CreateTypeHierarchyOperation((IType) this, JavaModelManager.getJavaModelManager().getWorkingCopies(workingCopyOwner, true), SearchEngine.createWorkspaceScope(), true);
        createTypeHierarchyOperation.runOperation(iProgressMonitor);
        return createTypeHierarchyOperation.getResult();
    }
}
