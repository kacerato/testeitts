package org.eclipse.jdt.internal.compiler.flow;

import java.util.ArrayList;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.SubRoutineStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.codegen.ObjectCache;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CatchParameterBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class ExceptionHandlingFlowContext extends FlowContext {
    public static final int BitCacheSize = 32;
    private static final Argument[] NO_ARGUMENTS = new Argument[0];
    public Argument[] catchArguments;
    private int[] exceptionToCatchBlockMap;
    public ArrayList extendedExceptions;
    public ReferenceBinding[] handledExceptions;
    ObjectCache indexes;
    public FlowContext initializationParent;
    UnconditionalFlowInfo[] initsOnExceptions;
    public UnconditionalFlowInfo initsOnReturn;
    boolean isMethodContext;
    int[] isNeeded;
    int[] isReached;

    public ExceptionHandlingFlowContext(FlowContext flowContext, ASTNode aSTNode, ReferenceBinding[] referenceBindingArr, FlowContext flowContext2, BlockScope blockScope, UnconditionalFlowInfo unconditionalFlowInfo) {
        this(flowContext, aSTNode, referenceBindingArr, null, NO_ARGUMENTS, flowContext2, blockScope, unconditionalFlowInfo);
    }

    private ASTNode getExceptionType(int i10) {
        int[] iArr = this.exceptionToCatchBlockMap;
        if (iArr == null) {
            return this.catchArguments[i10].type;
        }
        TypeReference typeReference = this.catchArguments[iArr[i10]].type;
        if (typeReference instanceof UnionTypeReference) {
            for (TypeReference typeReference2 : ((UnionTypeReference) typeReference).typeReferences) {
                if (TypeBinding.equalsEquals(typeReference2.resolvedType, this.handledExceptions[i10])) {
                    return typeReference2;
                }
            }
        }
        return typeReference;
    }

    public void complainIfUnusedExceptionHandlers(AbstractMethodDeclaration abstractMethodDeclaration) {
        int i10;
        Javadoc javadoc;
        TypeReference[] typeReferenceArr;
        MethodScope methodScope = abstractMethodDeclaration.scope;
        if ((abstractMethodDeclaration.binding.modifiers & 805306368) == 0 || methodScope.compilerOptions().reportUnusedDeclaredThrownExceptionWhenOverriding) {
            TypeBinding[] typeBindingArr = null;
            if (!methodScope.compilerOptions().reportUnusedDeclaredThrownExceptionIncludeDocCommentReference || (javadoc = abstractMethodDeclaration.javadoc) == null || (typeReferenceArr = javadoc.exceptionReferences) == null) {
                i10 = 0;
            } else {
                i10 = typeReferenceArr.length;
                if (i10 > 0) {
                    TypeBinding[] typeBindingArr2 = new TypeBinding[i10];
                    for (int i11 = 0; i11 < i10; i11++) {
                        typeBindingArr2[i11] = abstractMethodDeclaration.javadoc.exceptionReferences[i11].resolvedType;
                    }
                    typeBindingArr = typeBindingArr2;
                }
            }
            int length = this.handledExceptions.length;
            for (int i12 = 0; i12 < length; i12++) {
                int i13 = this.indexes.get(this.handledExceptions[i12]);
                if ((this.isReached[i13 / 32] & (1 << (i13 % 32))) == 0) {
                    int i14 = 0;
                    while (true) {
                        if (i14 >= i10) {
                            methodScope.problemReporter().unusedDeclaredThrownException(this.handledExceptions[i13], abstractMethodDeclaration, abstractMethodDeclaration.thrownExceptions[i13]);
                            break;
                        } else if (TypeBinding.equalsEquals(typeBindingArr[i14], this.handledExceptions[i12])) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                }
            }
        }
    }

    @Override
    public FlowContext getInitializationContext() {
        return this.initializationParent;
    }

    @Override
    public String individualToString() {
        StringBuffer stringBuffer = new StringBuffer("Exception flow context");
        int length = this.handledExceptions.length;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 / 32;
            int i12 = 1 << (i10 % 32);
            stringBuffer.append('[');
            stringBuffer.append(this.handledExceptions[i10].readableName());
            if ((this.isReached[i11] & i12) == 0) {
                stringBuffer.append("-not reached");
            } else if ((this.isNeeded[i11] & i12) == 0) {
                stringBuffer.append("-masked");
            } else {
                stringBuffer.append("-reached");
            }
            int[] iArr = this.exceptionToCatchBlockMap;
            int i13 = iArr != null ? iArr[i10] : i10;
            stringBuffer.append('-');
            stringBuffer.append(this.initsOnExceptions[i13].toString());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        stringBuffer.append("[initsOnReturn -");
        stringBuffer.append(this.initsOnReturn.toString());
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        return stringBuffer.toString();
    }

    public UnconditionalFlowInfo initsOnException(int i10) {
        return this.initsOnExceptions[i10];
    }

    @Override
    public UnconditionalFlowInfo initsOnReturn() {
        return this.initsOnReturn;
    }

    public void mergeUnhandledException(TypeBinding typeBinding) {
        boolean z10 = false;
        if (this.extendedExceptions == null) {
            this.extendedExceptions = new ArrayList(5);
            int i10 = 0;
            while (true) {
                ReferenceBinding[] referenceBindingArr = this.handledExceptions;
                if (i10 >= referenceBindingArr.length) {
                    break;
                }
                this.extendedExceptions.add(referenceBindingArr[i10]);
                i10++;
            }
        }
        for (int size = this.extendedExceptions.size() - 1; size >= 0; size--) {
            int compareTypes = Scope.compareTypes(typeBinding, (TypeBinding) this.extendedExceptions.get(size));
            if (compareTypes == -1) {
                z10 = true;
            } else if (compareTypes == 1) {
                this.extendedExceptions.remove(size);
            }
        }
        if (z10) {
            return;
        }
        this.extendedExceptions.add(typeBinding);
    }

    public void recordHandlingException(ReferenceBinding referenceBinding, UnconditionalFlowInfo unconditionalFlowInfo, TypeBinding typeBinding, TypeBinding typeBinding2, ASTNode aSTNode, boolean z10) {
        Argument[] argumentArr;
        int i10 = this.indexes.get(referenceBinding);
        int i11 = i10 / 32;
        int i12 = 1 << (i10 % 32);
        if (!z10) {
            int[] iArr = this.isNeeded;
            iArr[i11] = iArr[i11] | i12;
        }
        int[] iArr2 = this.isReached;
        iArr2[i11] = i12 | iArr2[i11];
        int[] iArr3 = this.exceptionToCatchBlockMap;
        if (iArr3 != null) {
            i10 = iArr3[i10];
        }
        if (typeBinding2 != null && (argumentArr = this.catchArguments) != null && argumentArr.length > 0 && !z10) {
            ((CatchParameterBinding) argumentArr[i10].binding).setPreciseType(typeBinding2);
        }
        UnconditionalFlowInfo[] unconditionalFlowInfoArr = this.initsOnExceptions;
        UnconditionalFlowInfo unconditionalFlowInfo2 = unconditionalFlowInfoArr[i10];
        unconditionalFlowInfoArr[i10] = (unconditionalFlowInfo2.tagBits & 3) == 0 ? unconditionalFlowInfo2.mergedWith(unconditionalFlowInfo) : unconditionalFlowInfo.unconditionalCopy();
    }

    @Override
    public void recordReturnFrom(UnconditionalFlowInfo unconditionalFlowInfo) {
        if ((unconditionalFlowInfo.tagBits & 1) == 0) {
            UnconditionalFlowInfo unconditionalFlowInfo2 = this.initsOnReturn;
            if ((unconditionalFlowInfo2.tagBits & 1) == 0) {
                this.initsOnReturn = unconditionalFlowInfo2.mergedWith(unconditionalFlowInfo);
            } else {
                this.initsOnReturn = (UnconditionalFlowInfo) unconditionalFlowInfo.copy();
            }
        }
    }

    @Override
    public SubRoutineStatement subroutine() {
        if (!(this.associatedNode instanceof SubRoutineStatement)) {
            return null;
        }
        SubRoutineStatement subroutine = this.parent.subroutine();
        ASTNode aSTNode = this.associatedNode;
        if (subroutine == aSTNode) {
            return null;
        }
        return (SubRoutineStatement) aSTNode;
    }

    public ExceptionHandlingFlowContext(FlowContext flowContext, TryStatement tryStatement, ReferenceBinding[] referenceBindingArr, int[] iArr, FlowContext flowContext2, BlockScope blockScope, FlowInfo flowInfo) {
        this(flowContext, tryStatement, referenceBindingArr, iArr, tryStatement.catchArguments, flowContext2, blockScope, flowInfo.unconditionalInits());
        UnconditionalFlowInfo unconditionalCopy = flowInfo.unconditionalCopy();
        unconditionalCopy.iNBit = -1L;
        unconditionalCopy.iNNBit = -1L;
        unconditionalCopy.tagBits |= 64;
        this.initsOnFinally = unconditionalCopy;
    }

    public ExceptionHandlingFlowContext(FlowContext flowContext, ASTNode aSTNode, ReferenceBinding[] referenceBindingArr, int[] iArr, Argument[] argumentArr, FlowContext flowContext2, BlockScope blockScope, UnconditionalFlowInfo unconditionalFlowInfo) {
        super(flowContext, aSTNode, true);
        int i10;
        this.indexes = new ObjectCache();
        boolean z10 = blockScope == blockScope.methodScope();
        this.isMethodContext = z10;
        this.handledExceptions = referenceBindingArr;
        this.catchArguments = argumentArr;
        this.exceptionToCatchBlockMap = iArr;
        int length = referenceBindingArr.length;
        int i11 = (length / 32) + 1;
        this.isReached = new int[i11];
        this.isNeeded = new int[i11];
        this.initsOnExceptions = new UnconditionalFlowInfo[length];
        boolean z11 = !z10 || blockScope.compilerOptions().reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable;
        for (int i12 = 0; i12 < length; i12++) {
            ReferenceBinding referenceBinding = referenceBindingArr[i12];
            int[] iArr2 = this.exceptionToCatchBlockMap;
            int i13 = iArr2 != null ? iArr2[i12] : i12;
            this.indexes.put(referenceBinding, i12);
            if (referenceBinding.isUncheckedException(true)) {
                if (z11 || ((i10 = referenceBinding.f102482id) != 21 && i10 != 25)) {
                    int[] iArr3 = this.isReached;
                    int i14 = i12 / 32;
                    iArr3[i14] = iArr3[i14] | (1 << (i12 % 32));
                }
                this.initsOnExceptions[i13] = unconditionalFlowInfo.unconditionalCopy();
            } else {
                this.initsOnExceptions[i13] = FlowInfo.DEAD_END;
            }
        }
        if (!this.isMethodContext) {
            System.arraycopy(this.isReached, 0, this.isNeeded, 0, i11);
        }
        this.initsOnReturn = FlowInfo.DEAD_END;
        this.initializationParent = flowContext2;
    }

    public void complainIfUnusedExceptionHandlers(BlockScope blockScope, TryStatement tryStatement) {
        int length = this.handledExceptions.length;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 / 32;
            int i12 = 1 << (i10 % 32);
            if ((this.isReached[i11] & i12) == 0) {
                blockScope.problemReporter().unreachableCatchBlock(this.handledExceptions[i10], getExceptionType(i10));
            } else if ((this.isNeeded[i11] & i12) == 0) {
                blockScope.problemReporter().hiddenCatchBlock(this.handledExceptions[i10], getExceptionType(i10));
            }
        }
    }
}
