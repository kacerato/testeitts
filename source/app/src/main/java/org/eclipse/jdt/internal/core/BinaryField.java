package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.lookup.Binding;

public class BinaryField extends BinaryMember implements IField {
    public BinaryField(JavaElement javaElement, String str) {
        super(javaElement, str);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof BinaryField) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public IAnnotation[] getAnnotations() throws JavaModelException {
        IBinaryField iBinaryField = (IBinaryField) getElementInfo();
        return getAnnotations(iBinaryField.getAnnotations(), iBinaryField.getTagBits());
    }

    @Override
    public String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException {
        JavadocContents javadocContents = ((BinaryType) getDeclaringType()).getJavadocContents(iProgressMonitor);
        if (javadocContents == null) {
            return null;
        }
        return javadocContents.getFieldDoc(this);
    }

    @Override
    public Object getConstant() throws JavaModelException {
        return Member.convertConstant(((IBinaryField) getElementInfo()).getConstant());
    }

    @Override
    public int getElementType() {
        return 8;
    }

    @Override
    public int getFlags() throws JavaModelException {
        return ((IBinaryField) getElementInfo()).getModifiers();
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '^';
    }

    @Override
    public String getKey(boolean z10) throws JavaModelException {
        return getKey(this, z10);
    }

    @Override
    public String getTypeSignature() throws JavaModelException {
        IBinaryField iBinaryField = (IBinaryField) getElementInfo();
        char[] genericSignature = iBinaryField.getGenericSignature();
        return genericSignature != null ? new String(ClassFile.translatedName(genericSignature)) : new String(ClassFile.translatedName(iBinaryField.getTypeName()));
    }

    @Override
    public boolean isEnumConstant() throws JavaModelException {
        return Flags.isEnum(getFlags());
    }

    @Override
    public boolean isResolved() {
        return false;
    }

    @Override
    public JavaElement resolved(Binding binding) {
        ResolvedBinaryField resolvedBinaryField = new ResolvedBinaryField(this.parent, this.name, new String(binding.computeUniqueKey()));
        resolvedBinaryField.occurrenceCount = this.occurrenceCount;
        return resolvedBinaryField;
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
