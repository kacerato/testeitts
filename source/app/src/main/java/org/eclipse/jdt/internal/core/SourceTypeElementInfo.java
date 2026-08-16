package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ISourceField;
import org.eclipse.jdt.internal.compiler.env.ISourceImport;
import org.eclipse.jdt.internal.compiler.env.ISourceMethod;
import org.eclipse.jdt.internal.compiler.env.ISourceType;

public class SourceTypeElementInfo extends AnnotatableInfo implements ISourceType {
    protected HashMap<IJavaElement, String[]> categories;
    protected char[][] superInterfaceNames;
    protected char[] superclassName;
    protected static final ISourceImport[] NO_IMPORTS = new ISourceImport[0];
    protected static final InitializerElementInfo[] NO_INITIALIZERS = new InitializerElementInfo[0];
    protected static final SourceField[] NO_FIELDS = new SourceField[0];
    protected static final SourceMethod[] NO_METHODS = new SourceMethod[0];
    protected static final SourceType[] NO_TYPES = new SourceType[0];
    protected IJavaElement[] children = JavaElement.NO_ELEMENTS;
    protected IType handle = null;
    protected ITypeParameter[] typeParameters = TypeParameter.NO_TYPE_PARAMETERS;

    public void addCategories(IJavaElement iJavaElement, char[][] cArr) {
        if (cArr == null) {
            return;
        }
        if (this.categories == null) {
            this.categories = new HashMap<>();
        }
        this.categories.put(iJavaElement, CharOperation.toStrings(cArr));
    }

    public HashMap<IJavaElement, String[]> getCategories() {
        return this.categories;
    }

    @Override
    public IJavaElement[] getChildren() {
        return this.children;
    }

    @Override
    public int getDeclarationSourceEnd() {
        return super.getDeclarationSourceEnd();
    }

    @Override
    public int getDeclarationSourceStart() {
        return super.getDeclarationSourceStart();
    }

    @Override
    public ISourceType getEnclosingType() {
        IJavaElement parent = this.handle.getParent();
        if (parent != null && parent.getElementType() == 7) {
            try {
                return (ISourceType) ((JavaElement) parent).getElementInfo();
            } catch (JavaModelException unused) {
            }
        }
        return null;
    }

    public SourceField[] getFieldHandles() {
        int length = this.children.length;
        if (length == 0) {
            return NO_FIELDS;
        }
        SourceField[] sourceFieldArr = new SourceField[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            IJavaElement iJavaElement = this.children[i11];
            if (iJavaElement instanceof SourceField) {
                sourceFieldArr[i10] = (SourceField) iJavaElement;
                i10++;
            }
        }
        if (i10 == 0) {
            return NO_FIELDS;
        }
        if (i10 >= length) {
            return sourceFieldArr;
        }
        SourceField[] sourceFieldArr2 = new SourceField[i10];
        System.arraycopy(sourceFieldArr, 0, sourceFieldArr2, 0, i10);
        return sourceFieldArr2;
    }

    @Override
    public ISourceField[] getFields() {
        SourceField[] fieldHandles = getFieldHandles();
        int length = fieldHandles.length;
        ISourceField[] iSourceFieldArr = new ISourceField[length];
        for (int i10 = 0; i10 < length; i10++) {
            try {
                iSourceFieldArr[i10] = (ISourceField) fieldHandles[i10].getElementInfo();
            } catch (JavaModelException unused) {
            }
        }
        return iSourceFieldArr;
    }

    @Override
    public char[] getFileName() {
        return this.handle.getPath().toString().toCharArray();
    }

    public IType getHandle() {
        return this.handle;
    }

    public InitializerElementInfo[] getInitializers() {
        int length = this.children.length;
        if (length == 0) {
            return NO_INITIALIZERS;
        }
        InitializerElementInfo[] initializerElementInfoArr = new InitializerElementInfo[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            IJavaElement iJavaElement = this.children[i11];
            if (iJavaElement instanceof Initializer) {
                try {
                    int i12 = i10 + 1;
                    try {
                        initializerElementInfoArr[i10] = (InitializerElementInfo) ((Initializer) iJavaElement).getElementInfo();
                    } catch (JavaModelException unused) {
                    }
                    i10 = i12;
                } catch (JavaModelException unused2) {
                }
            }
        }
        if (i10 == 0) {
            return NO_INITIALIZERS;
        }
        InitializerElementInfo[] initializerElementInfoArr2 = new InitializerElementInfo[i10];
        System.arraycopy(initializerElementInfoArr, 0, initializerElementInfoArr2, 0, i10);
        return initializerElementInfoArr2;
    }

    @Override
    public char[][] getInterfaceNames() {
        if (isAnonymous()) {
            return null;
        }
        return this.superInterfaceNames;
    }

    public SourceType[] getMemberTypeHandles() {
        int length = this.children.length;
        if (length == 0) {
            return NO_TYPES;
        }
        SourceType[] sourceTypeArr = new SourceType[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            IJavaElement iJavaElement = this.children[i11];
            if (iJavaElement instanceof SourceType) {
                sourceTypeArr[i10] = (SourceType) iJavaElement;
                i10++;
            }
        }
        if (i10 == 0) {
            return NO_TYPES;
        }
        if (i10 >= length) {
            return sourceTypeArr;
        }
        SourceType[] sourceTypeArr2 = new SourceType[i10];
        System.arraycopy(sourceTypeArr, 0, sourceTypeArr2, 0, i10);
        return sourceTypeArr2;
    }

    @Override
    public ISourceType[] getMemberTypes() {
        SourceType[] memberTypeHandles = getMemberTypeHandles();
        int length = memberTypeHandles.length;
        ISourceType[] iSourceTypeArr = new ISourceType[length];
        for (int i10 = 0; i10 < length; i10++) {
            try {
                iSourceTypeArr[i10] = (ISourceType) memberTypeHandles[i10].getElementInfo();
            } catch (JavaModelException unused) {
            }
        }
        return iSourceTypeArr;
    }

    public SourceMethod[] getMethodHandles() {
        int length = this.children.length;
        if (length == 0) {
            return NO_METHODS;
        }
        SourceMethod[] sourceMethodArr = new SourceMethod[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            IJavaElement iJavaElement = this.children[i11];
            if (iJavaElement instanceof SourceMethod) {
                sourceMethodArr[i10] = (SourceMethod) iJavaElement;
                i10++;
            }
        }
        if (i10 == 0) {
            return NO_METHODS;
        }
        if (i10 >= length) {
            return sourceMethodArr;
        }
        SourceMethod[] sourceMethodArr2 = new SourceMethod[i10];
        System.arraycopy(sourceMethodArr, 0, sourceMethodArr2, 0, i10);
        return sourceMethodArr2;
    }

    @Override
    public ISourceMethod[] getMethods() {
        SourceMethod[] methodHandles = getMethodHandles();
        ISourceMethod[] iSourceMethodArr = new ISourceMethod[methodHandles.length];
        int i10 = 0;
        for (SourceMethod sourceMethod : methodHandles) {
            try {
                int i11 = i10 + 1;
                try {
                    iSourceMethodArr[i10] = (ISourceMethod) sourceMethod.getElementInfo();
                } catch (JavaModelException unused) {
                }
                i10 = i11;
            } catch (JavaModelException unused2) {
            }
        }
        return iSourceMethodArr;
    }

    @Override
    public int getModifiers() {
        return super.getModifiers();
    }

    @Override
    public char[] getName() {
        return this.handle.getElementName().toCharArray();
    }

    @Override
    public char[] getSuperclassName() {
        char[][] cArr;
        return (!isAnonymous() || (cArr = this.superInterfaceNames) == null || cArr.length <= 0) ? this.superclassName : cArr[0];
    }

    @Override
    public char[][][] getTypeParameterBounds() {
        int length = this.typeParameters.length;
        char[][][] cArr = new char[length][];
        for (int i10 = 0; i10 < length; i10++) {
            try {
                cArr[i10] = ((TypeParameterElementInfo) ((JavaElement) this.typeParameters[i10]).getElementInfo()).bounds;
            } catch (JavaModelException unused) {
            }
        }
        return cArr;
    }

    @Override
    public char[][] getTypeParameterNames() {
        int length = this.typeParameters.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = this.typeParameters[i10].getElementName().toCharArray();
        }
        return cArr;
    }

    @Override
    public boolean isAnonymous() {
        try {
            return this.handle.isAnonymous();
        } catch (JavaModelException unused) {
            return false;
        }
    }

    public boolean isAnonymousMember() {
        return false;
    }

    @Override
    public boolean isBinaryType() {
        return false;
    }

    public void setHandle(IType iType) {
        this.handle = iType;
    }

    public void setSuperInterfaceNames(char[][] cArr) {
        this.superInterfaceNames = cArr;
    }

    public void setSuperclassName(char[] cArr) {
        this.superclassName = cArr;
    }

    public String toString() {
        return "Info for " + this.handle.toString();
    }
}
