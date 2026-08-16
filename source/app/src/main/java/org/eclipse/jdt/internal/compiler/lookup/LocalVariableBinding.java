package org.eclipse.jdt.internal.compiler.lookup;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.FakedTrackingVariable;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.core.JavaElement;

public class LocalVariableBinding extends VariableBinding {
    public static final int FAKE_USED = 2;
    public static final int UNUSED = 0;
    public static final int USED = 1;
    public FakedTrackingVariable closeTracker;
    public LocalDeclaration declaration;
    public BlockScope declaringScope;
    public int initializationCount;
    public int[] initializationPCs;
    public int resolvedPosition;
    public Set<MethodScope> uninitializedInMethod;
    public int useFlag;

    public LocalVariableBinding(char[] cArr, TypeBinding typeBinding, int i10, boolean z10) {
        super(cArr, typeBinding, i10, z10 ? Constant.NotAConstant : null);
        this.initializationCount = 0;
        if (z10) {
            this.tagBits |= 1024;
        }
        this.tagBits |= 2048;
    }

    private void getScopeKey(BlockScope blockScope, StringBuffer stringBuffer) {
        int scopeIndex = blockScope.scopeIndex();
        if (scopeIndex != -1) {
            getScopeKey((BlockScope) blockScope.parent, stringBuffer);
            stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
            stringBuffer.append(scopeIndex);
        }
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        int i10;
        MethodBinding methodBinding;
        StringBuffer stringBuffer = new StringBuffer();
        BlockScope blockScope = this.declaringScope;
        if (blockScope != null) {
            ReferenceContext referenceContext = (blockScope instanceof MethodScope ? (MethodScope) blockScope : blockScope.enclosingMethodScope()).referenceContext;
            if (referenceContext instanceof AbstractMethodDeclaration) {
                MethodBinding methodBinding2 = ((AbstractMethodDeclaration) referenceContext).binding;
                if (methodBinding2 != null) {
                    stringBuffer.append(methodBinding2.computeUniqueKey(false));
                }
            } else if (referenceContext instanceof TypeDeclaration) {
                SourceTypeBinding sourceTypeBinding = ((TypeDeclaration) referenceContext).binding;
                if (sourceTypeBinding != null) {
                    stringBuffer.append(sourceTypeBinding.computeUniqueKey(false));
                }
            } else if ((referenceContext instanceof LambdaExpression) && (methodBinding = ((LambdaExpression) referenceContext).binding) != null) {
                stringBuffer.append(methodBinding.computeUniqueKey(false));
            }
            getScopeKey(blockScope, stringBuffer);
            LocalVariableBinding[] localVariableBindingArr = blockScope.locals;
            i10 = 0;
            for (int i11 = 0; i11 < blockScope.localIndex; i11++) {
                LocalVariableBinding localVariableBinding = localVariableBindingArr[i11];
                if (CharOperation.equals(this.name, localVariableBinding.name)) {
                    if (this == localVariableBinding) {
                        break;
                    }
                    i10++;
                }
            }
        } else {
            i10 = 0;
        }
        stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
        stringBuffer.append(this.name);
        boolean z11 = isParameter() && this.declaringScope != null;
        if (i10 > 0 || z11) {
            stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
            stringBuffer.append(i10);
            if (z11) {
                LocalVariableBinding[] localVariableBindingArr2 = this.declaringScope.locals;
                int i12 = 0;
                while (true) {
                    if (i12 >= localVariableBindingArr2.length) {
                        i12 = -1;
                        break;
                    }
                    if (localVariableBindingArr2[i12] == this) {
                        break;
                    }
                    i12++;
                }
                if (i12 > -1) {
                    stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                    stringBuffer.append(i12);
                }
            }
        }
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public AnnotationBinding[] getAnnotations() {
        LocalDeclaration localDeclaration;
        Annotation[] annotationArr;
        BlockScope blockScope = this.declaringScope;
        if (blockScope != null) {
            SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
            if (enclosingSourceType == null) {
                return Binding.NO_ANNOTATIONS;
            }
            long j10 = this.tagBits;
            if ((8589934592L & j10) == 0 && (1024 & j10) != 0 && (localDeclaration = this.declaration) != null && (annotationArr = localDeclaration.annotations) != null) {
                ASTNode.resolveAnnotations(this.declaringScope, annotationArr, this, true);
            }
            return enclosingSourceType.retrieveAnnotations(this);
        }
        if ((this.tagBits & 8589934592L) != 0) {
            LocalDeclaration localDeclaration2 = this.declaration;
            if (localDeclaration2 == null) {
                return Binding.NO_ANNOTATIONS;
            }
            Annotation[] annotationArr2 = localDeclaration2.annotations;
            if (annotationArr2 != null) {
                int length = annotationArr2.length;
                AnnotationBinding[] annotationBindingArr = new AnnotationBinding[length];
                for (int i10 = 0; i10 < length; i10++) {
                    AnnotationBinding compilerAnnotation = annotationArr2[i10].getCompilerAnnotation();
                    if (compilerAnnotation == null) {
                        return Binding.NO_ANNOTATIONS;
                    }
                    annotationBindingArr[i10] = compilerAnnotation;
                }
                return annotationBindingArr;
            }
        }
        return Binding.NO_ANNOTATIONS;
    }

    public MethodBinding getEnclosingMethod() {
        BlockScope blockScope = this.declaringScope;
        if (blockScope != null) {
            ReferenceContext referenceContext = blockScope.referenceContext();
            if (!(referenceContext instanceof Initializer) && (referenceContext instanceof AbstractMethodDeclaration)) {
                return ((AbstractMethodDeclaration) referenceContext).binding;
            }
        }
        return null;
    }

    public boolean isCatchParameter() {
        return false;
    }

    @Override
    public boolean isParameter() {
        return (this.tagBits & 1024) != 0;
    }

    public boolean isSecret() {
        return this.declaration == null && (this.tagBits & 1024) == 0;
    }

    public boolean isUninitializedIn(Scope scope) {
        Set<MethodScope> set = this.uninitializedInMethod;
        if (set != null) {
            return set.contains(scope.methodScope());
        }
        return false;
    }

    @Override
    public final int kind() {
        return 2;
    }

    public void markAsUninitializedIn(Scope scope) {
        if (this.uninitializedInMethod == null) {
            this.uninitializedInMethod = new HashSet();
        }
        this.uninitializedInMethod.add(scope.methodScope());
    }

    public void markInitialized() {
    }

    public void markReferenced() {
    }

    public void recordInitializationEndPC(int i10) {
        int[] iArr = this.initializationPCs;
        int i11 = this.initializationCount;
        if (iArr[((i11 - 1) << 1) + 1] == -1) {
            iArr[((i11 - 1) << 1) + 1] = i10;
        }
    }

    public void recordInitializationStartPC(int i10) {
        int[] iArr = this.initializationPCs;
        if (iArr == null) {
            return;
        }
        int i11 = this.initializationCount;
        if (i11 > 0) {
            int i12 = iArr[((i11 - 1) << 1) + 1];
            if (i12 == -1) {
                return;
            }
            if (i12 == i10) {
                iArr[((i11 - 1) << 1) + 1] = -1;
                return;
            }
        }
        int i13 = i11 << 1;
        if (i13 == iArr.length) {
            int[] iArr2 = new int[i11 << 2];
            this.initializationPCs = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i13);
        }
        int[] iArr3 = this.initializationPCs;
        iArr3[i13] = i10;
        iArr3[i13 + 1] = -1;
        this.initializationCount++;
    }

    public void resetInitializations() {
        this.initializationCount = 0;
        this.initializationPCs = null;
    }

    @Override
    public void setAnnotations(AnnotationBinding[] annotationBindingArr, Scope scope, boolean z10) {
        SourceTypeBinding enclosingSourceType;
        if (scope == null || (enclosingSourceType = scope.enclosingSourceType()) == null) {
            return;
        }
        enclosingSourceType.storeAnnotations(this, annotationBindingArr, z10);
    }

    @Override
    public String toString() {
        String variableBinding = super.toString();
        int i10 = this.useFlag;
        if (i10 == 0) {
            variableBinding = String.valueOf(variableBinding) + "[pos: unused]";
        } else if (i10 == 1) {
            variableBinding = String.valueOf(variableBinding) + "[pos: " + String.valueOf(this.resolvedPosition) + "]";
        } else if (i10 == 2) {
            variableBinding = String.valueOf(variableBinding) + "[pos: fake_used]";
        }
        String str = String.valueOf(variableBinding) + "[id:" + String.valueOf(this.f102483id) + "]";
        if (this.initializationCount <= 0) {
            return str;
        }
        String str2 = String.valueOf(str) + "[pc: ";
        for (int i11 = 0; i11 < this.initializationCount; i11++) {
            if (i11 > 0) {
                str2 = String.valueOf(str2) + ", ";
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2));
            int i12 = i11 << 1;
            sb2.append(String.valueOf(this.initializationPCs[i12]));
            sb2.append("-");
            int i13 = this.initializationPCs[i12 + 1];
            sb2.append(i13 == -1 ? "?" : String.valueOf(i13));
            str2 = sb2.toString();
        }
        return String.valueOf(str2) + "]";
    }

    public LocalVariableBinding(LocalDeclaration localDeclaration, TypeBinding typeBinding, int i10, boolean z10) {
        this(localDeclaration.name, typeBinding, i10, z10);
        this.declaration = localDeclaration;
    }

    public LocalVariableBinding(LocalDeclaration localDeclaration, TypeBinding typeBinding, int i10, MethodScope methodScope) {
        this(localDeclaration, typeBinding, i10, true);
        this.declaringScope = methodScope;
    }
}
