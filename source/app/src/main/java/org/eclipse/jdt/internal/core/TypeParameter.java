package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.compiler.CharOperation;

public class TypeParameter extends SourceRefElement implements ITypeParameter {
    static final ITypeParameter[] NO_TYPE_PARAMETERS = new ITypeParameter[0];
    protected String name;

    public TypeParameter(JavaElement javaElement, String str) {
        super(javaElement);
        this.name = str;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof TypeParameter) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public String[] getBounds() throws JavaModelException {
        return CharOperation.toStrings(((TypeParameterElementInfo) getElementInfo()).bounds);
    }

    @Override
    public String[] getBoundsSignatures() throws JavaModelException {
        TypeParameterElementInfo typeParameterElementInfo = (TypeParameterElementInfo) getElementInfo();
        if (this.parent instanceof BinaryMember) {
            char[][] cArr = typeParameterElementInfo.boundsSignatures;
            return (cArr == null || cArr.length == 0) ? CharOperation.NO_STRINGS : CharOperation.toStrings(cArr);
        }
        char[][] cArr2 = typeParameterElementInfo.bounds;
        if (cArr2 == null || cArr2.length == 0) {
            return CharOperation.NO_STRINGS;
        }
        int length = cArr2.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = new String(Signature.createCharArrayTypeSignature(cArr2[i10], false));
        }
        return strArr;
    }

    @Override
    public IClassFile getClassFile() {
        return ((JavaElement) getParent()).getClassFile();
    }

    @Override
    public IMember getDeclaringMember() {
        return (IMember) getParent();
    }

    @Override
    public String getElementName() {
        return this.name;
    }

    @Override
    public int getElementType() {
        return 15;
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_TYPE_PARAMETER;
    }

    public String getKey(boolean z10) throws JavaModelException {
        StringBuilder sb2 = new StringBuilder();
        IAdaptable iAdaptable = this.parent;
        if (iAdaptable instanceof IType) {
            if (iAdaptable instanceof BinaryType) {
                sb2.append(((BinaryType) iAdaptable).getKey(z10));
            } else {
                sb2.append(((IType) iAdaptable).getKey());
            }
        } else if (iAdaptable instanceof IMember) {
            if (iAdaptable instanceof BinaryMember) {
                sb2.append(((BinaryMember) iAdaptable).getKey(z10));
            } else {
                sb2.append(((IMethod) iAdaptable).getKey());
            }
        }
        sb2.append(":T");
        sb2.append(this.name);
        sb2.append(';');
        return sb2.toString();
    }

    @Override
    public ISourceRange getNameRange() throws JavaModelException {
        IClassFile classFile;
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper != null && (classFile = getClassFile()) != null) {
            classFile.getBuffer();
            return sourceMapper.getNameRange(this);
        }
        TypeParameterElementInfo typeParameterElementInfo = (TypeParameterElementInfo) getElementInfo();
        int i10 = typeParameterElementInfo.nameStart;
        return new SourceRange(i10, (typeParameterElementInfo.nameEnd - i10) + 1);
    }

    @Override
    public ISourceRange getSourceRange() throws JavaModelException {
        IClassFile classFile;
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper == null || (classFile = getClassFile()) == null) {
            return super.getSourceRange();
        }
        classFile.getBuffer();
        return sourceMapper.getSourceRange(this);
    }

    @Override
    public ITypeRoot getTypeRoot() {
        return getDeclaringMember().getTypeRoot();
    }

    @Override
    public void toStringName(StringBuffer stringBuffer) {
        stringBuffer.append('<');
        stringBuffer.append(getElementName());
        stringBuffer.append('>');
    }
}
