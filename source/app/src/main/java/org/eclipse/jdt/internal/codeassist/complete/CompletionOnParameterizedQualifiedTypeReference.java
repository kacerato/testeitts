package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnParameterizedQualifiedTypeReference extends ParameterizedQualifiedTypeReference {
    public static final int K_CLASS = 1;
    public static final int K_EXCEPTION = 3;
    public static final int K_INTERFACE = 2;
    public static final int K_TYPE = 0;
    public char[] completionIdentifier;
    private int kind;

    public CompletionOnParameterizedQualifiedTypeReference(char[][] cArr, TypeReference[][] typeReferenceArr, char[] cArr2, long[] jArr) {
        this(cArr, typeReferenceArr, cArr2, jArr, 0);
    }

    public boolean isClass() {
        return this.kind == 1;
    }

    public boolean isException() {
        return this.kind == 3;
    }

    public boolean isInterface() {
        return this.kind == 2;
    }

    public boolean isSuperType() {
        int i10 = this.kind;
        return i10 == 1 || i10 == 2;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        int i11;
        int i12 = this.kind;
        if (i12 == 1) {
            stringBuffer.append("<CompleteOnClass:");
        } else if (i12 == 2) {
            stringBuffer.append("<CompleteOnInterface:");
        } else if (i12 != 3) {
            stringBuffer.append("<CompleteOnType:");
        } else {
            stringBuffer.append("<CompleteOnException:");
        }
        int length = this.tokens.length;
        int i13 = 0;
        while (true) {
            i11 = length - 1;
            if (i13 >= i11) {
                break;
            }
            stringBuffer.append(this.tokens[i13]);
            TypeReference[] typeReferenceArr = this.typeArguments[i13];
            if (typeReferenceArr != null) {
                stringBuffer.append('<');
                int length2 = typeReferenceArr.length - 1;
                for (int i14 = 0; i14 < length2; i14++) {
                    typeReferenceArr[i14].print(0, stringBuffer);
                    stringBuffer.append(", ");
                }
                typeReferenceArr[length2].print(0, stringBuffer);
                stringBuffer.append('>');
            }
            stringBuffer.append('.');
            i13++;
        }
        stringBuffer.append(this.tokens[i11]);
        TypeReference[] typeReferenceArr2 = this.typeArguments[i11];
        if (typeReferenceArr2 != null) {
            stringBuffer.append('<');
            int length3 = typeReferenceArr2.length - 1;
            for (int i15 = 0; i15 < length3; i15++) {
                typeReferenceArr2[i15].print(0, stringBuffer);
                stringBuffer.append(", ");
            }
            typeReferenceArr2[length3].print(0, stringBuffer);
            stringBuffer.append('>');
        }
        stringBuffer.append('.');
        stringBuffer.append(this.completionIdentifier);
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        super.resolveType(blockScope, z10, i10);
        throw new CompletionNodeFound(this, this.resolvedType, blockScope);
    }

    public CompletionOnParameterizedQualifiedTypeReference(char[][] cArr, TypeReference[][] typeReferenceArr, char[] cArr2, long[] jArr, int i10) {
        super(cArr, typeReferenceArr, 0, jArr);
        this.completionIdentifier = cArr2;
        this.kind = i10;
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope, int i10) {
        super.resolveType(classScope, i10);
        throw new CompletionNodeFound(this, this.resolvedType, classScope);
    }
}
