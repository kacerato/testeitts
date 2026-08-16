package org.eclipse.jdt.internal.compiler.codegen;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class TypeAnnotationCodeStream extends StackMapFrameCodeStream {
    public List allTypeAnnotationContexts;

    public TypeAnnotationCodeStream(ClassFile classFile) {
        super(classFile);
        this.generateAttributes |= 32;
        this.allTypeAnnotationContexts = new ArrayList();
    }

    private void addAnnotationContext(TypeReference typeReference, int i10, int i11, ArrayAllocationExpression arrayAllocationExpression) {
        arrayAllocationExpression.getAllAnnotationContexts(i11, i10, this.allTypeAnnotationContexts);
    }

    @Override
    public void checkcast(TypeReference typeReference, TypeBinding typeBinding, int i10) {
        if (typeReference == null) {
            super.checkcast(null, typeBinding, i10);
            return;
        }
        TypeReference[] typeReferences = typeReference.getTypeReferences();
        for (int length = typeReferences.length - 1; length >= 0; length--) {
            TypeReference typeReference2 = typeReferences[length];
            if (typeReference2 != null) {
                if ((typeReference2.bits & 1048576) != 0) {
                    if (typeReference2.resolvedType.isBaseType()) {
                        addAnnotationContext(typeReference2, i10, length, 71);
                    } else {
                        addAnnotationContext(typeReference2, this.position, length, 71);
                    }
                }
                if (!typeReference2.resolvedType.isBaseType()) {
                    super.checkcast(typeReference2, typeReference2.resolvedType, i10);
                }
            }
        }
    }

    @Override
    public void init(ClassFile classFile) {
        super.init(classFile);
        this.allTypeAnnotationContexts = new ArrayList();
    }

    @Override
    public void instance_of(TypeReference typeReference, TypeBinding typeBinding) {
        if (typeReference != null && (typeReference.bits & 1048576) != 0) {
            addAnnotationContext(typeReference, this.position, 67);
        }
        super.instance_of(typeReference, typeBinding);
    }

    @Override
    public void invoke(byte b10, MethodBinding methodBinding, TypeBinding typeBinding, TypeReference[] typeReferenceArr) {
        if (typeReferenceArr != null) {
            int i10 = methodBinding.isConstructor() ? 72 : 73;
            int length = typeReferenceArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                TypeReference typeReference = typeReferenceArr[i11];
                if ((typeReference.bits & 1048576) != 0) {
                    addAnnotationContext(typeReference, this.position, i11, i10);
                }
            }
        }
        super.invoke(b10, methodBinding, typeBinding, typeReferenceArr);
    }

    @Override
    public void invokeDynamic(int i10, int i11, int i12, char[] cArr, char[] cArr2, boolean z10, TypeReference typeReference, TypeReference[] typeReferenceArr) {
        if (typeReference != null && (typeReference.bits & 1048576) != 0) {
            if (z10) {
                addAnnotationContext(typeReference, this.position, 0, 69);
            } else {
                addAnnotationContext(typeReference, this.position, 0, 70);
            }
        }
        if (typeReferenceArr != null) {
            int i13 = z10 ? 74 : 75;
            int length = typeReferenceArr.length;
            for (int i14 = 0; i14 < length; i14++) {
                TypeReference typeReference2 = typeReferenceArr[i14];
                if ((typeReference2.bits & 1048576) != 0) {
                    addAnnotationContext(typeReference2, this.position, i14, i13);
                }
            }
        }
        super.invokeDynamic(i10, i11, i12, cArr, cArr2, z10, typeReference, typeReferenceArr);
    }

    @Override
    public void multianewarray(TypeReference typeReference, TypeBinding typeBinding, int i10, ArrayAllocationExpression arrayAllocationExpression) {
        if (typeReference != null && (typeReference.bits & 1048576) != 0) {
            addAnnotationContext(typeReference, this.position, 68, arrayAllocationExpression);
        }
        super.multianewarray(typeReference, typeBinding, i10, arrayAllocationExpression);
    }

    @Override
    public void newArray(TypeReference typeReference, ArrayAllocationExpression arrayAllocationExpression, ArrayBinding arrayBinding) {
        if (typeReference != null && (typeReference.bits & 1048576) != 0) {
            addAnnotationContext(typeReference, this.position, 68, arrayAllocationExpression);
        }
        super.newArray(typeReference, arrayAllocationExpression, arrayBinding);
    }

    @Override
    public void new_(TypeReference typeReference, TypeBinding typeBinding) {
        if (typeReference != null && (typeReference.bits & 1048576) != 0) {
            addAnnotationContext(typeReference, this.position, 68);
        }
        super.new_(typeReference, typeBinding);
    }

    @Override
    public void reset(ClassFile classFile) {
        super.reset(classFile);
        this.allTypeAnnotationContexts = new ArrayList();
    }

    private void addAnnotationContext(TypeReference typeReference, int i10, int i11) {
        typeReference.getAllAnnotationContexts(i11, i10, this.allTypeAnnotationContexts);
    }

    private void addAnnotationContext(TypeReference typeReference, int i10, int i11, int i12) {
        typeReference.getAllAnnotationContexts(i12, i10, i11, this.allTypeAnnotationContexts);
    }
}
