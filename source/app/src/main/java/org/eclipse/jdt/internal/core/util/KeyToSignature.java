package org.eclipse.jdt.internal.core.util;

import java.util.ArrayList;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.JavaElement;

public class KeyToSignature extends BindingKeyParser {
    public static final int DECLARING_TYPE = 2;
    public static final int SIGNATURE = 0;
    public static final int THROWN_EXCEPTIONS = 3;
    public static final int TYPE_ARGUMENTS = 1;
    private ArrayList arguments;
    private boolean asBinarySignature;
    private int kind;
    private int mainTypeEnd;
    private int mainTypeStart;
    public StringBuffer signature;
    private ArrayList thrownExceptions;
    private ArrayList typeArguments;
    private ArrayList typeParameters;
    private int typeSigStart;

    public KeyToSignature(BindingKeyParser bindingKeyParser) {
        super(bindingKeyParser);
        this.signature = new StringBuffer();
        this.asBinarySignature = false;
        this.arguments = new ArrayList();
        this.typeArguments = new ArrayList();
        this.typeParameters = new ArrayList();
        this.thrownExceptions = new ArrayList();
        this.mainTypeStart = -1;
        this.typeSigStart = -1;
        KeyToSignature keyToSignature = (KeyToSignature) bindingKeyParser;
        this.kind = keyToSignature.kind;
        this.asBinarySignature = keyToSignature.asBinarySignature;
    }

    private void substitute(char[] cArr, char[][] cArr2, int i10) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (CharOperation.equals(cArr, cArr2[i12])) {
                this.signature.append(((KeyToSignature) this.arguments.get(i12)).signature.toString());
                return;
            }
        }
        int indexOf = CharOperation.indexOf('<', cArr);
        if (indexOf > -1) {
            this.signature.append(CharOperation.subarray(cArr, 0, indexOf));
            char[][] typeArguments = Signature.getTypeArguments(cArr);
            this.signature.append('<');
            int length = typeArguments.length;
            while (i11 < length) {
                substitute(typeArguments[i11], cArr2, i10);
                i11++;
            }
            this.signature.append('>');
            this.signature.append(';');
            return;
        }
        int length2 = cArr.length;
        while (i11 < length2) {
            char c10 = cArr[i11];
            if (c10 != '!' && c10 != '+' && c10 != '-' && c10 != '[') {
                break;
            }
            this.signature.append(c10);
            i11++;
        }
        if (i11 > 0) {
            substitute(CharOperation.subarray(cArr, i11, length2), cArr2, i10);
        } else {
            this.signature.append(cArr);
        }
    }

    @Override
    public void consumeArrayDimension(char[] cArr) {
        this.signature.append(cArr);
    }

    @Override
    public void consumeBaseType(char[] cArr) {
        this.typeSigStart = this.signature.length();
        this.signature.append(cArr);
    }

    @Override
    public void consumeCapture(int i10) {
        this.signature.append('!');
        this.signature.append(((KeyToSignature) this.arguments.get(0)).signature);
    }

    @Override
    public void consumeCapture18ID(int i10, int i11) {
        this.signature.append("!*");
    }

    @Override
    public void consumeException() {
        int size = this.arguments.size();
        if (size > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                this.thrownExceptions.add(((KeyToSignature) this.arguments.get(i10)).signature.toString());
            }
            this.arguments = new ArrayList();
            this.typeArguments = new ArrayList();
        }
    }

    @Override
    public void consumeField(char[] cArr) {
        if (this.kind == 0) {
            this.signature = ((KeyToSignature) this.arguments.get(0)).signature;
        }
    }

    @Override
    public void consumeFullyQualifiedName(char[] cArr) {
        this.typeSigStart = this.signature.length();
        this.signature.append('L');
        if (!this.asBinarySignature) {
            cArr = CharOperation.replaceOnCopy(cArr, '/', '.');
        }
        this.signature.append(cArr);
    }

    @Override
    public void consumeLocalType(char[] cArr) {
        this.signature = new StringBuffer();
        char[] subarray = CharOperation.subarray(cArr, 0, cArr.length - 1);
        if (!this.asBinarySignature) {
            CharOperation.replace(subarray, '/', '.');
        }
        this.signature.append(subarray);
    }

    @Override
    public void consumeMemberType(char[] cArr) {
        this.signature.append('$');
        this.signature.append(cArr);
    }

    @Override
    public void consumeMethod(char[] cArr, char[] cArr2) {
        this.arguments = new ArrayList();
        this.typeArguments = new ArrayList();
        if (!this.asBinarySignature) {
            CharOperation.replace(cArr2, '/', '.');
        }
        int i10 = this.kind;
        if (i10 == 0) {
            StringBuffer stringBuffer = new StringBuffer();
            this.signature = stringBuffer;
            stringBuffer.append(cArr2);
        } else if (i10 == 3 && CharOperation.indexOf('^', cArr2) > 0) {
            for (char[] cArr3 : Signature.getThrownExceptionTypes(cArr2)) {
                this.thrownExceptions.add(new String(cArr3));
            }
        }
    }

    @Override
    public void consumePackage(char[] cArr) {
        this.signature.append(cArr);
    }

    @Override
    public void consumeParameterizedGenericMethod() {
        ArrayList arrayList = this.arguments;
        this.typeArguments = arrayList;
        int size = arrayList.size();
        if (size > 0) {
            int length = this.signature.length();
            char[] cArr = new char[length];
            this.signature.getChars(0, length, cArr, 0);
            char[][] typeParameters = Signature.getTypeParameters(cArr);
            if (typeParameters.length != size) {
                return;
            }
            this.signature = new StringBuffer();
            for (int i10 = 0; i10 < size; i10++) {
                typeParameters[i10] = CharOperation.concat('T', Signature.getTypeVariable(typeParameters[i10]), ';');
            }
            this.signature.append(CharOperation.subarray(cArr, 0, CharOperation.indexOf('(', cArr)));
            this.signature.append('(');
            for (char[] cArr2 : Signature.getParameterTypes(cArr)) {
                substitute(cArr2, typeParameters, size);
            }
            this.signature.append(')');
            substitute(Signature.getReturnType(cArr), typeParameters, size);
            for (char[] cArr3 : Signature.getThrownExceptionTypes(cArr)) {
                this.signature.append('^');
                substitute(cArr3, typeParameters, size);
            }
        }
    }

    @Override
    public void consumeParameterizedType(char[] cArr, boolean z10) {
        if (cArr != null) {
            this.signature.append(this.asBinarySignature ? '$' : '.');
            this.signature.append(cArr);
        }
        if (z10) {
            return;
        }
        this.signature.append('<');
        int size = this.arguments.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.signature.append(((KeyToSignature) this.arguments.get(i10)).signature);
        }
        this.signature.append('>');
        this.typeArguments = this.arguments;
        this.arguments = new ArrayList();
    }

    @Override
    public void consumeParser(BindingKeyParser bindingKeyParser) {
        this.arguments.add(bindingKeyParser);
    }

    @Override
    public void consumeSecondaryType(char[] cArr) {
        this.signature.append(JavaElement.JEM_METHOD);
        int lastIndexOf = this.signature.lastIndexOf(this.asBinarySignature ? "/" : ".") + 1;
        this.mainTypeStart = lastIndexOf;
        if (lastIndexOf == 0) {
            this.mainTypeStart = 1;
            for (int i10 = 0; this.signature.charAt(i10) == '['; i10++) {
                this.mainTypeStart++;
            }
        }
        this.mainTypeEnd = this.signature.length();
        this.signature.append(cArr);
    }

    @Override
    public void consumeType() {
        int i10 = this.mainTypeStart;
        if (i10 != -1) {
            this.signature.replace(i10, this.mainTypeEnd, "");
        }
        int size = this.typeParameters.size();
        if (size > 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('<');
            for (int i11 = 0; i11 < size; i11++) {
                stringBuffer.append(Signature.createTypeParameterSignature((char[]) this.typeParameters.get(i11), new char[][]{org.eclipse.jdt.internal.compiler.codegen.ConstantPool.ObjectSignature}));
            }
            stringBuffer.append('>');
            this.signature.insert(this.typeSigStart, stringBuffer.toString());
            this.typeParameters = new ArrayList();
        }
        this.signature.append(';');
    }

    @Override
    public void consumeTypeParameter(char[] cArr) {
        this.typeParameters.add(cArr);
    }

    @Override
    public void consumeTypeVariable(char[] cArr, char[] cArr2) {
        StringBuffer stringBuffer = new StringBuffer();
        this.signature = stringBuffer;
        stringBuffer.append('T');
        this.signature.append(cArr2);
        this.signature.append(';');
    }

    @Override
    public void consumeTypeWithCapture() {
        KeyToSignature keyToSignature = (KeyToSignature) this.arguments.get(0);
        this.signature = keyToSignature.signature;
        this.arguments = keyToSignature.arguments;
        this.typeArguments = keyToSignature.typeArguments;
        this.thrownExceptions = keyToSignature.thrownExceptions;
    }

    @Override
    public void consumeWildCard(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        this.signature = stringBuffer;
        if (i10 == 0) {
            stringBuffer.append('*');
            return;
        }
        if (i10 == 1) {
            stringBuffer.append('+');
            this.signature.append(((KeyToSignature) this.arguments.get(0)).signature);
        } else {
            if (i10 != 2) {
                return;
            }
            stringBuffer.append('-');
            this.signature.append(((KeyToSignature) this.arguments.get(0)).signature);
        }
    }

    public String[] getThrownExceptions() {
        int size = this.thrownExceptions.size();
        String[] strArr = new String[size];
        for (int i10 = 0; i10 < size; i10++) {
            strArr[i10] = (String) this.thrownExceptions.get(i10);
        }
        return strArr;
    }

    public String[] getTypeArguments() {
        int size = this.typeArguments.size();
        String[] strArr = new String[size];
        for (int i10 = 0; i10 < size; i10++) {
            strArr[i10] = ((KeyToSignature) this.typeArguments.get(i10)).signature.toString();
        }
        return strArr;
    }

    @Override
    public BindingKeyParser newParser() {
        return new KeyToSignature(this);
    }

    public String toString() {
        return this.signature.toString();
    }

    public KeyToSignature(String str, int i10) {
        super(str);
        this.signature = new StringBuffer();
        this.asBinarySignature = false;
        this.arguments = new ArrayList();
        this.typeArguments = new ArrayList();
        this.typeParameters = new ArrayList();
        this.thrownExceptions = new ArrayList();
        this.mainTypeStart = -1;
        this.typeSigStart = -1;
        this.kind = i10;
    }

    public KeyToSignature(String str, int i10, boolean z10) {
        super(str);
        this.signature = new StringBuffer();
        this.asBinarySignature = false;
        this.arguments = new ArrayList();
        this.typeArguments = new ArrayList();
        this.typeParameters = new ArrayList();
        this.thrownExceptions = new ArrayList();
        this.mainTypeStart = -1;
        this.typeSigStart = -1;
        this.kind = i10;
        this.asBinarySignature = z10;
    }
}
