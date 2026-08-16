package org.eclipse.jdt.internal.core;

import android.icu.text.DateFormat;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.ICompletionRequestor;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
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
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;

public class BinaryType extends BinaryMember implements IType, SuffixConstants {
    private static final IField[] NO_FIELDS = new IField[0];
    private static final IMethod[] NO_METHODS = new IMethod[0];
    private static final IType[] NO_TYPES = new IType[0];
    private static final IInitializer[] NO_INITIALIZERS = new IInitializer[0];
    public static final JavadocContents EMPTY_JAVADOC = new JavadocContents(null, Util.EMPTY_STRING);

    public BinaryType(JavaElement javaElement, String str) {
        super(javaElement, str);
    }

    @Override
    public void closing(Object obj) throws JavaModelException {
        getClassFileInfo().removeBinaryChildren();
    }

    @Override
    public void codeComplete(char[] cArr, int i10, int i11, char[][] cArr2, char[][] cArr3, int[] iArr, boolean z10, ICompletionRequestor iCompletionRequestor) throws JavaModelException {
        codeComplete(cArr, i10, i11, cArr2, cArr3, iArr, z10, iCompletionRequestor, DefaultWorkingCopyOwner.PRIMARY);
    }

    @Override
    public IField createField(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }

    @Override
    public IInitializer createInitializer(String str, IJavaElement iJavaElement, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }

    @Override
    public IMethod createMethod(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }

    @Override
    public IType createType(String str, IJavaElement iJavaElement, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof BinaryType) {
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
        IBinaryType iBinaryType = (IBinaryType) getElementInfo();
        return getAnnotations(iBinaryType.getAnnotations(), iBinaryType.getTagBits());
    }

    @Override
    public String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException {
        JavadocContents javadocContents = getJavadocContents(iProgressMonitor);
        if (javadocContents == null) {
            return null;
        }
        return javadocContents.getTypeDoc();
    }

    @Override
    public IJavaElement[] getChildren() throws JavaModelException {
        return getClassFileInfo().binaryChildren;
    }

    @Override
    public IJavaElement[] getChildrenForCategory(String str) throws JavaModelException {
        int i10;
        IJavaElement[] children = getChildren();
        int length = children.length;
        if (length == 0) {
            return children;
        }
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper == null) {
            return JavaElement.NO_ELEMENTS;
        }
        getClassFile().getBuffer();
        HashMap hashMap = sourceMapper.categories;
        IJavaElement[] iJavaElementArr = new IJavaElement[length];
        if (hashMap != null) {
            i10 = 0;
            for (IJavaElement iJavaElement : children) {
                String[] strArr = (String[]) hashMap.get(iJavaElement);
                if (strArr != null) {
                    int length2 = strArr.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 < length2) {
                            if (strArr[i11].equals(str)) {
                                iJavaElementArr[i10] = iJavaElement;
                                i10++;
                                break;
                            }
                            i11++;
                        }
                    }
                }
            }
        } else {
            i10 = 0;
        }
        if (i10 >= length) {
            return iJavaElementArr;
        }
        IJavaElement[] iJavaElementArr2 = new IJavaElement[i10];
        System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, i10);
        return iJavaElementArr2;
    }

    public ClassFileInfo getClassFileInfo() throws JavaModelException {
        return (ClassFileInfo) this.parent.getElementInfo();
    }

    @Override
    public IType getDeclaringType() {
        IOrdinaryClassFile classFile = getClassFile();
        if (classFile.isOpen()) {
            try {
                char[] enclosingTypeName = ((IBinaryType) getElementInfo()).getEnclosingTypeName();
                if (enclosingTypeName == null) {
                    return null;
                }
                char[] unqualifiedName = ClassFile.unqualifiedName(enclosingTypeName);
                if (classFile.getElementName().length() > unqualifiedName.length + 1 && Character.isDigit(classFile.getElementName().charAt(unqualifiedName.length + 1))) {
                    return null;
                }
                return getPackageFragment().getOrdinaryClassFile(new String(unqualifiedName) + ".class").getType();
            } catch (JavaModelException unused) {
                return null;
            }
        }
        String elementName = classFile.getElementName();
        int length = elementName.length();
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            char charAt = elementName.charAt(i11);
            if (Character.isDigit(charAt) && i10 == i11 - 1) {
                return null;
            }
            if (charAt == '$') {
                i10 = i11;
            }
        }
        if (i10 == -1) {
            return null;
        }
        String substring = elementName.substring(0, i10);
        return new BinaryType((JavaElement) getPackageFragment().getClassFile(String.valueOf(substring) + ".class"), org.eclipse.jdt.internal.core.util.Util.localTypeName(substring, substring.lastIndexOf(36), substring.length()));
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        Object info = JavaModelManager.getJavaModelManager().getInfo(this);
        return (info == null || info == JavaModelCache.NON_EXISTING_JAR_TYPE_INFO) ? openWhenClosed(createElementInfo(), false, iProgressMonitor) : info;
    }

    @Override
    public int getElementType() {
        return 7;
    }

    @Override
    public IField getField(String str) {
        return new BinaryField(this, str);
    }

    @Override
    public IField[] getFields() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(8);
        int size = childrenOfType.size();
        if (size == 0) {
            return NO_FIELDS;
        }
        IField[] iFieldArr = new IField[size];
        childrenOfType.toArray(iFieldArr);
        return iFieldArr;
    }

    @Override
    public int getFlags() throws JavaModelException {
        return ((IBinaryType) getElementInfo()).getModifiers() & (-33);
    }

    @Override
    public String getFullyQualifiedName() {
        return getFullyQualifiedName('$');
    }

    @Override
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

    @Override
    public IInitializer getInitializer(int i10) {
        return new Initializer(this, i10);
    }

    @Override
    public IInitializer[] getInitializers() {
        return NO_INITIALIZERS;
    }

    public JavadocContents getJavadocContents(IProgressMonitor iProgressMonitor) throws JavaModelException {
        JavadocContents javadocContents;
        String elementName;
        JavaModelManager.PerProjectInfo perProjectInfoCheckExistence = JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(getJavaProject().getProject());
        synchronized (perProjectInfoCheckExistence.javadocCache) {
            javadocContents = (JavadocContents) perProjectInfoCheckExistence.javadocCache.get(this);
        }
        if (javadocContents != null && javadocContents != EMPTY_JAVADOC) {
            return javadocContents;
        }
        URL javadocBaseLocation = getJavadocBaseLocation();
        if (javadocBaseLocation == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(javadocBaseLocation.toExternalForm());
        if (stringBuffer.charAt(stringBuffer.length() - 1) != '/') {
            stringBuffer.append('/');
        }
        IPackageFragment packageFragment = getPackageFragment();
        if (isMember()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            IType iType = this;
            while (iType != null) {
                stringBuffer2.insert(0, iType.getElementName());
                iType = iType.getDeclaringType();
                if (iType != null) {
                    stringBuffer2.insert(0, '.');
                }
            }
            elementName = stringBuffer2.toString();
        } else {
            elementName = getElementName();
        }
        stringBuffer.append(packageFragment.getElementName().replace('.', '/'));
        stringBuffer.append('/');
        stringBuffer.append(elementName);
        stringBuffer.append(JavadocConstants.HTML_EXTENSION);
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        JavadocContents javadocContents2 = new JavadocContents(this, getURLContents(javadocBaseLocation, String.valueOf(stringBuffer)));
        synchronized (perProjectInfoCheckExistence.javadocCache) {
            perProjectInfoCheckExistence.javadocCache.put(this, javadocContents2);
        }
        return javadocContents2;
    }

    @Override
    public String getKey(boolean z10) throws JavaModelException {
        return getKey(this, z10);
    }

    @Override
    public IMethod getMethod(String str, String[] strArr) {
        return new BinaryMethod(this, str, strArr);
    }

    @Override
    public IMethod[] getMethods() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(9);
        int size = childrenOfType.size();
        if (size == 0) {
            return NO_METHODS;
        }
        IMethod[] iMethodArr = new IMethod[size];
        childrenOfType.toArray(iMethodArr);
        return iMethodArr;
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

    public String getSourceFileName(IBinaryType iBinaryType) {
        if (iBinaryType == null) {
            try {
                iBinaryType = (IBinaryType) getElementInfo();
            } catch (JavaModelException unused) {
                IType iType = this;
                for (IType declaringType = getDeclaringType(); declaringType != null; declaringType = declaringType.getDeclaringType()) {
                    iType = declaringType;
                }
                return String.valueOf(iType.getElementName()) + org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension();
            }
        }
        return sourceFileName(iBinaryType);
    }

    @Override
    public String[] getSuperInterfaceNames() throws JavaModelException {
        int length;
        char[][] interfaceNames = ((IBinaryType) getElementInfo()).getInterfaceNames();
        if (interfaceNames == null || (length = interfaceNames.length) == 0) {
            return CharOperation.NO_STRINGS;
        }
        char[][] translatedNames = ClassFile.translatedNames(interfaceNames);
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = new String(translatedNames[i10]);
        }
        return strArr;
    }

    @Override
    public String[] getSuperInterfaceTypeSignatures() throws JavaModelException {
        int length;
        IBinaryType iBinaryType = (IBinaryType) getElementInfo();
        char[] genericSignature = iBinaryType.getGenericSignature();
        int i10 = 0;
        if (genericSignature == null) {
            char[][] interfaceNames = iBinaryType.getInterfaceNames();
            if (interfaceNames == null || (length = interfaceNames.length) == 0) {
                return CharOperation.NO_STRINGS;
            }
            char[][] translatedNames = ClassFile.translatedNames(interfaceNames);
            String[] strArr = new String[length];
            while (i10 < length) {
                strArr[i10] = Signature.createTypeSignature(translatedNames[i10], true);
                i10++;
            }
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        int length2 = genericSignature.length;
        if (genericSignature[0] == '<') {
            int i11 = 1;
            while (i11 > 0) {
                i10++;
                if (i10 >= length2) {
                    break;
                }
                char c10 = genericSignature[i10];
                if (c10 == '<') {
                    i11++;
                } else if (c10 == '>') {
                    i11--;
                }
            }
            i10++;
        }
        int scanClassTypeSignature = Util.scanClassTypeSignature(genericSignature, i10) + 1;
        while (scanClassTypeSignature < length2) {
            int scanClassTypeSignature2 = Util.scanClassTypeSignature(genericSignature, scanClassTypeSignature) + 1;
            arrayList.add(new String(ClassFile.translatedName(CharOperation.subarray(genericSignature, scanClassTypeSignature, scanClassTypeSignature2))));
            scanClassTypeSignature = scanClassTypeSignature2;
        }
        String[] strArr2 = new String[arrayList.size()];
        arrayList.toArray(strArr2);
        return strArr2;
    }

    @Override
    public String getSuperclassName() throws JavaModelException {
        char[] superclassName = ((IBinaryType) getElementInfo()).getSuperclassName();
        if (superclassName == null) {
            return null;
        }
        return new String(ClassFile.translatedName(superclassName));
    }

    @Override
    public String getSuperclassTypeSignature() throws JavaModelException {
        IBinaryType iBinaryType = (IBinaryType) getElementInfo();
        char[] genericSignature = iBinaryType.getGenericSignature();
        if (genericSignature == null) {
            char[] superclassName = iBinaryType.getSuperclassName();
            if (superclassName == null) {
                return null;
            }
            return Signature.createTypeSignature(ClassFile.translatedName(superclassName), true);
        }
        int length = genericSignature.length;
        int i10 = 0;
        if (genericSignature[0] == '<') {
            int i11 = 1;
            while (i11 > 0) {
                i10++;
                if (i10 >= length) {
                    break;
                }
                char c10 = genericSignature[i10];
                if (c10 == '<') {
                    i11++;
                } else if (c10 == '>') {
                    i11--;
                }
            }
            i10++;
        }
        return new String(ClassFile.translatedName(CharOperation.subarray(genericSignature, i10, Util.scanClassTypeSignature(genericSignature, i10) + 1)));
    }

    @Override
    public IType getType(String str) {
        return new BinaryType((JavaElement) getPackageFragment().getClassFile(String.valueOf(getTypeQualifiedName()) + "$" + str + ".class"), str);
    }

    @Override
    public ITypeParameter getTypeParameter(String str) {
        return new TypeParameter(this, str);
    }

    @Override
    public String[] getTypeParameterSignatures() throws JavaModelException {
        char[] genericSignature = ((IBinaryType) getElementInfo()).getGenericSignature();
        return genericSignature == null ? CharOperation.NO_STRINGS : CharOperation.toStrings(Signature.getTypeParameters(CharOperation.replaceOnCopy(genericSignature, '/', '.')));
    }

    @Override
    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        String[] typeParameterSignatures = getTypeParameterSignatures();
        int length = typeParameterSignatures.length;
        if (length == 0) {
            return TypeParameter.NO_TYPE_PARAMETERS;
        }
        ITypeParameter[] iTypeParameterArr = new ITypeParameter[length];
        for (int i10 = 0; i10 < typeParameterSignatures.length; i10++) {
            iTypeParameterArr[i10] = new TypeParameter(this, Signature.getTypeVariable(typeParameterSignatures[i10]));
        }
        return iTypeParameterArr;
    }

    @Override
    public String getTypeQualifiedName() {
        return getTypeQualifiedName('$');
    }

    @Override
    public IType[] getTypes() throws JavaModelException {
        ArrayList childrenOfType = getChildrenOfType(7);
        int size = childrenOfType.size();
        if (size == 0) {
            return NO_TYPES;
        }
        IType[] iTypeArr = new IType[size];
        childrenOfType.toArray(iTypeArr);
        return iTypeArr;
    }

    @Override
    public boolean isAnnotation() throws JavaModelException {
        return TypeDeclaration.kind(((IBinaryType) getElementInfo()).getModifiers()) == 4;
    }

    @Override
    public boolean isAnonymous() throws JavaModelException {
        return ((IBinaryType) getElementInfo()).isAnonymous();
    }

    @Override
    public boolean isClass() throws JavaModelException {
        return TypeDeclaration.kind(((IBinaryType) getElementInfo()).getModifiers()) == 1;
    }

    @Override
    public boolean isEnum() throws JavaModelException {
        return TypeDeclaration.kind(((IBinaryType) getElementInfo()).getModifiers()) == 3;
    }

    @Override
    public boolean isInterface() throws JavaModelException {
        int kind = TypeDeclaration.kind(((IBinaryType) getElementInfo()).getModifiers());
        return kind == 2 || kind == 4;
    }

    @Override
    public boolean isLambda() {
        return false;
    }

    @Override
    public boolean isLocal() throws JavaModelException {
        return ((IBinaryType) getElementInfo()).isLocal();
    }

    @Override
    public boolean isMember() throws JavaModelException {
        return ((IBinaryType) getElementInfo()).isMember();
    }

    @Override
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
        ResolvedBinaryType resolvedBinaryType = new ResolvedBinaryType(this.parent, this.name, new String(binding.computeUniqueKey()));
        resolvedBinaryType.occurrenceCount = this.occurrenceCount;
        return resolvedBinaryType;
    }

    public String sourceFileName(IBinaryType iBinaryType) {
        char[] sourceFileName = iBinaryType.sourceFileName();
        if (sourceFileName != null) {
            return new String(sourceFileName, CharOperation.lastIndexOf('/', sourceFileName) + 1, (sourceFileName.length - r5) - 1);
        }
        if (iBinaryType.isMember()) {
            IType declaringType = getDeclaringType();
            if (declaringType == null) {
                return null;
            }
            while (declaringType.getDeclaringType() != null) {
                declaringType = declaringType.getDeclaringType();
            }
            return String.valueOf(declaringType.getElementName()) + org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension();
        }
        if (!iBinaryType.isLocal() && !iBinaryType.isAnonymous()) {
            return String.valueOf(getElementName()) + org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension();
        }
        String typeQualifiedName = getTypeQualifiedName();
        int indexOf = typeQualifiedName.indexOf(36);
        if (indexOf == -1) {
            return String.valueOf(getElementName()) + org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension();
        }
        return String.valueOf(typeQualifiedName.substring(0, indexOf)) + org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension();
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        if (obj == null) {
            toStringName(stringBuffer);
            stringBuffer.append(" (not open)");
            return;
        }
        if (obj == JavaElement.NO_INFO) {
            toStringName(stringBuffer);
            return;
        }
        try {
            if (isAnnotation()) {
                stringBuffer.append("@interface ");
            } else if (isEnum()) {
                stringBuffer.append("enum ");
            } else if (isInterface()) {
                stringBuffer.append("interface ");
            } else {
                stringBuffer.append(ExternalAnnotationProvider.CLASS_PREFIX);
            }
            toStringName(stringBuffer);
        } catch (JavaModelException unused) {
            stringBuffer.append("<JavaModelException in toString of " + getElementName());
        }
    }

    @Override
    public void toStringName(StringBuffer stringBuffer) {
        if (getElementName().length() > 0) {
            super.toStringName(stringBuffer);
        } else {
            stringBuffer.append("<anonymous>");
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
    public IOrdinaryClassFile getClassFile() {
        return (IOrdinaryClassFile) super.getClassFile();
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
            String source = getClassFile().getSource();
            if (source != null && i10 > -1 && i10 < source.length()) {
                char[] concat = CharOperation.concat(source.substring(0, i10).toCharArray(), new char[]{JavaElement.JEM_COMPILATIONUNIT});
                completionEngine.complete(new BasicCompilationUnit(CharOperation.concat(concat, cArr, CharOperation.concat(new char[]{JavaElement.JEM_ANNOTATION}, source.substring(i10).toCharArray())), (char[][]) null, getElementName(), javaProject), concat.length + i11, concat.length, null);
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
