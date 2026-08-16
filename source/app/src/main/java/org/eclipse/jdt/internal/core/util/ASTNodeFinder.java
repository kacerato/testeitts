package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.SourceType;

public class ASTNodeFinder {
    private CompilationUnitDeclaration unit;

    public class C1Visitor extends ASTVisitor {
        int count = 0;
        TypeDeclaration result;
        private final boolean val$findAnonymous;
        private final int val$occurenceCount;
        private final char[] val$typeName;

        public C1Visitor(boolean z10, int i10, char[] cArr) {
            this.val$findAnonymous = z10;
            this.val$occurenceCount = i10;
            this.val$typeName = cArr;
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
            if (this.result != null) {
                return false;
            }
            if ((typeDeclaration.bits & 512) != 0) {
                if (this.val$findAnonymous) {
                    int i10 = this.count + 1;
                    this.count = i10;
                    if (i10 == this.val$occurenceCount) {
                        this.result = typeDeclaration;
                    }
                }
            } else if (!this.val$findAnonymous && CharOperation.equals(this.val$typeName, typeDeclaration.name)) {
                this.result = typeDeclaration;
            }
            return false;
        }
    }

    public ASTNodeFinder(CompilationUnitDeclaration compilationUnitDeclaration) {
        this.unit = compilationUnitDeclaration;
    }

    public FieldDeclaration findField(IField iField) {
        FieldDeclaration[] fieldDeclarationArr;
        TypeDeclaration findType = findType((IType) iField.getParent());
        if (findType != null && (fieldDeclarationArr = findType.fields) != null) {
            char[] charArray = iField.getElementName().toCharArray();
            for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                if (CharOperation.equals(charArray, fieldDeclaration.name)) {
                    return fieldDeclaration;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Initializer findInitializer(IInitializer iInitializer) {
        FieldDeclaration[] fieldDeclarationArr;
        TypeDeclaration findType = findType((IType) iInitializer.getParent());
        if (findType != null && (fieldDeclarationArr = findType.fields) != null) {
            int i10 = ((SourceRefElement) iInitializer).occurrenceCount;
            for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                if ((fieldDeclaration instanceof Initializer) && i10 - 1 == 0) {
                    return (Initializer) fieldDeclaration;
                }
            }
        }
        return null;
    }

    public AbstractMethodDeclaration findMethod(IMethod iMethod) {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr;
        TypeDeclaration findType = findType((IType) iMethod.getParent());
        if (findType != null && (abstractMethodDeclarationArr = findType.methods) != null) {
            char[] charArray = iMethod.getElementName().toCharArray();
            String[] parameterTypes = iMethod.getParameterTypes();
            int length = parameterTypes.length;
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                if (CharOperation.equals(charArray, abstractMethodDeclaration.selector)) {
                    Argument[] argumentArr = abstractMethodDeclaration.arguments;
                    if ((argumentArr == null ? 0 : argumentArr.length) == length) {
                        for (int i10 = 0; i10 < length; i10++) {
                            if (!Util.typeSignature(argumentArr[i10].type).equals(parameterTypes[i10])) {
                                break;
                            }
                        }
                        return abstractMethodDeclaration;
                    }
                    continue;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public TypeDeclaration findType(IType iType) {
        TypeDeclaration[] typeDeclarationArr;
        IJavaElement parent = iType.getParent();
        char[] charArray = iType.getElementName().toCharArray();
        int i10 = ((SourceType) iType).occurrenceCount;
        int i11 = 0;
        boolean z10 = charArray.length == 0;
        switch (parent.getElementType()) {
            case 5:
                TypeDeclaration[] typeDeclarationArr2 = this.unit.types;
                if (typeDeclarationArr2 != null) {
                    int length = typeDeclarationArr2.length;
                    while (i11 < length) {
                        TypeDeclaration typeDeclaration = typeDeclarationArr2[i11];
                        if (CharOperation.equals(charArray, typeDeclaration.name)) {
                            return typeDeclaration;
                        }
                        i11++;
                    }
                }
                return null;
            case 6:
            default:
                return null;
            case 7:
                TypeDeclaration findType = findType((IType) parent);
                if (findType != null && (typeDeclarationArr = findType.memberTypes) != null) {
                    int length2 = typeDeclarationArr.length;
                    while (i11 < length2) {
                        TypeDeclaration typeDeclaration2 = typeDeclarationArr[i11];
                        if (CharOperation.equals(charArray, typeDeclaration2.name)) {
                            return typeDeclaration2;
                        }
                        i11++;
                    }
                }
                return null;
            case 8:
                FieldDeclaration findField = findField((IField) parent);
                if (findField == null) {
                    return null;
                }
                C1Visitor c1Visitor = new C1Visitor(z10, i10, charArray);
                findField.traverse((ASTVisitor) c1Visitor, (MethodScope) null);
                return c1Visitor.result;
            case 9:
                AbstractMethodDeclaration findMethod = findMethod((IMethod) parent);
                if (findMethod == null) {
                    return null;
                }
                C1Visitor c1Visitor2 = new C1Visitor(z10, i10, charArray);
                findMethod.traverse(c1Visitor2, (ClassScope) null);
                return c1Visitor2.result;
            case 10:
                Initializer findInitializer = findInitializer((IInitializer) parent);
                if (findInitializer == null) {
                    return null;
                }
                C1Visitor c1Visitor3 = new C1Visitor(z10, i10, charArray);
                findInitializer.traverse((ASTVisitor) c1Visitor3, (MethodScope) null);
                return c1Visitor3.result;
        }
    }
}
