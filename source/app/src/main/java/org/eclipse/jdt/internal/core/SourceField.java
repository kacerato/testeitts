package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.compiler.lookup.Binding;

public class SourceField extends NamedMember implements IField {
    public SourceField(JavaElement javaElement, String str) {
        super(javaElement, str);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof SourceField) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public ASTNode findNode(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit) {
        ASTNode findNode = super.findNode(compilationUnit);
        if (findNode == null) {
            return null;
        }
        return findNode.getNodeType() == 72 ? findNode : findNode.getParent();
    }

    @Override
    public Object getConstant() throws JavaModelException {
        Object f10;
        SourceFieldElementInfo sourceFieldElementInfo = (SourceFieldElementInfo) getElementInfo();
        char[] cArr = sourceFieldElementInfo.initializationSource;
        if (cArr == null) {
            return null;
        }
        String str = new String(cArr);
        String typeSignature = sourceFieldElementInfo.getTypeSignature();
        try {
            if (typeSignature.equals(Signature.SIG_INT)) {
                return Integer.valueOf(str);
            }
            if (typeSignature.equals("S")) {
                return Short.valueOf(str);
            }
            if (typeSignature.equals(Signature.SIG_BYTE)) {
                return Byte.valueOf(str);
            }
            if (typeSignature.equals(Signature.SIG_BOOLEAN)) {
                return Boolean.valueOf(str);
            }
            if (typeSignature.equals(Signature.SIG_CHAR)) {
                if (cArr.length != 3) {
                    return null;
                }
                return Character.valueOf(cArr[1]);
            }
            if (typeSignature.equals(Signature.SIG_DOUBLE)) {
                f10 = new Double(str);
            } else {
                if (!typeSignature.equals(Signature.SIG_FLOAT)) {
                    if (!typeSignature.equals(Signature.SIG_LONG)) {
                        if (!typeSignature.equals("QString;") && !typeSignature.equals("Qjava.lang.String;")) {
                            return null;
                        }
                        return str;
                    }
                    if (!str.endsWith("L") && !str.endsWith("l")) {
                        return Long.valueOf(str);
                    }
                    int lastIndexOf = str.lastIndexOf("L");
                    return lastIndexOf != -1 ? Long.valueOf(str.substring(0, lastIndexOf)) : Long.valueOf(str.substring(0, str.lastIndexOf("l")));
                }
                f10 = new Float(str);
            }
            return f10;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Override
    public int getElementType() {
        return 8;
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '^';
    }

    public String getKey() {
        try {
            return getKey((IField) this, false);
        } catch (JavaModelException unused) {
            return null;
        }
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        return (z10 && ((CompilationUnit) getAncestor(5)).isPrimary()) ? this : ((IType) this.parent.getPrimaryElement(false)).getField(this.name);
    }

    @Override
    public String getTypeSignature() throws JavaModelException {
        return ((SourceFieldElementInfo) getElementInfo()).getTypeSignature();
    }

    @Override
    public boolean isEnumConstant() throws JavaModelException {
        return Flags.isEnum(getFlags());
    }

    public boolean isResolved() {
        return false;
    }

    @Override
    public JavaElement resolved(Binding binding) {
        ResolvedSourceField resolvedSourceField = new ResolvedSourceField(this.parent, this.name, new String(binding.computeUniqueKey()));
        resolvedSourceField.occurrenceCount = this.occurrenceCount;
        return resolvedSourceField;
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        if (obj == null) {
            toStringName(stringBuffer);
            stringBuffer.append(" (not open)");
        } else {
            if (obj == JavaElement.NO_INFO) {
                toStringName(stringBuffer);
                return;
            }
            try {
                stringBuffer.append(Signature.toString(getTypeSignature()));
                stringBuffer.append(" ");
                toStringName(stringBuffer);
            } catch (JavaModelException unused) {
                stringBuffer.append("<JavaModelException in toString of " + getElementName());
            }
        }
    }
}
