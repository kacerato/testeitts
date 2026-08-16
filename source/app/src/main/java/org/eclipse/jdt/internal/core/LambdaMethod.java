package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.util.Util;

public class LambdaMethod extends SourceMethod {
    SourceMethodElementInfo elementInfo;
    private String key;
    private String[] parameterNameStrings;
    private String returnTypeString;
    private int sourceStart;

    public LambdaMethod(JavaElement javaElement, String str, String str2, int i10, String[] strArr, String[] strArr2, String str3, SourceMethodElementInfo sourceMethodElementInfo) {
        super(javaElement, str, strArr);
        this.sourceStart = i10;
        this.parameterNameStrings = strArr2;
        this.returnTypeString = str3;
        this.elementInfo = sourceMethodElementInfo;
        this.key = str2;
    }

    @Override
    public void closing(Object obj) {
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof LambdaMethod) {
            return super.equals(obj) && this.sourceStart == ((LambdaMethod) obj).sourceStart;
        }
        return false;
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.elementInfo;
    }

    public void getHandleMemento(StringBuffer stringBuffer, boolean z10) {
        if (z10) {
            ((LambdaExpression) getParent()).getHandleMemento(stringBuffer, true, false);
        }
        appendEscapedDelimiter(stringBuffer, getHandleMementoDelimiter());
        escapeMementoName(stringBuffer, getElementName());
        stringBuffer.append('!');
        stringBuffer.append(this.parameterTypes.length);
        int length = this.parameterTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            appendEscapedDelimiter(stringBuffer, '\"');
            escapeMementoName(stringBuffer, this.parameterTypes[i10]);
            appendEscapedDelimiter(stringBuffer, '\"');
            escapeMementoName(stringBuffer, this.parameterNameStrings[i10]);
        }
        appendEscapedDelimiter(stringBuffer, '\"');
        escapeMementoName(stringBuffer, this.returnTypeString);
        appendEscapedDelimiter(stringBuffer, '\"');
        escapeMementoName(stringBuffer, this.key);
        for (ILocalVariable iLocalVariable : this.elementInfo.arguments) {
            ((LocalVariable) iLocalVariable).getHandleMemento(stringBuffer, false);
        }
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '&';
    }

    @Override
    public String getKey() {
        return this.key;
    }

    @Override
    public String getReturnType() throws JavaModelException {
        return this.returnTypeString;
    }

    @Override
    public String getSignature() throws JavaModelException {
        return Signature.createMethodSignature(this.parameterTypes, this.returnTypeString);
    }

    @Override
    public int hashCode() {
        return Util.combineHashCodes(super.hashCode(), this.sourceStart);
    }

    @Override
    public boolean isLambdaMethod() {
        return true;
    }

    @Override
    public boolean isResolved() {
        return true;
    }

    @Override
    public JavaElement resolved(Binding binding) {
        return this;
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        getHandleMemento(stringBuffer, true);
        appendEscapedDelimiter(stringBuffer, getHandleMementoDelimiter());
    }
}
