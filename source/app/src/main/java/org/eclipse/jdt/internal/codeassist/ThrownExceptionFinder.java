package org.eclipse.jdt.internal.codeassist;

import java.util.Stack;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

public class ThrownExceptionFinder extends ASTVisitor {
    private SimpleSet caughtExceptions;
    private SimpleSet discouragedExceptions;
    private Stack exceptionsStack;
    private SimpleSet thrownExceptions;

    private void acceptException(ReferenceBinding referenceBinding) {
        if (referenceBinding == null || !referenceBinding.isValidBinding()) {
            return;
        }
        this.thrownExceptions.add(referenceBinding);
    }

    private void endVisitMethodInvocation(MethodBinding methodBinding) {
        ReferenceBinding[] referenceBindingArr = methodBinding.thrownExceptions;
        int length = referenceBindingArr == null ? 0 : referenceBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            acceptException(referenceBindingArr[i10]);
        }
    }

    private void removeCaughtException(ReferenceBinding referenceBinding) {
        for (Object obj : this.thrownExceptions.values) {
            ReferenceBinding referenceBinding2 = (ReferenceBinding) obj;
            if (referenceBinding2 != null) {
                if (TypeBinding.equalsEquals(referenceBinding2, referenceBinding)) {
                    this.thrownExceptions.remove(referenceBinding2);
                } else if (referenceBinding.isSuperclassOf(referenceBinding2)) {
                    this.thrownExceptions.remove(referenceBinding2);
                    this.discouragedExceptions.add(referenceBinding2);
                }
            }
        }
    }

    private void removeCaughtExceptions(TryStatement tryStatement, boolean z10) {
        Argument[] argumentArr = tryStatement.catchArguments;
        int length = argumentArr == null ? 0 : argumentArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            TypeReference typeReference = argumentArr[i10].type;
            if (typeReference instanceof UnionTypeReference) {
                UnionTypeReference unionTypeReference = (UnionTypeReference) typeReference;
                int i11 = 0;
                while (true) {
                    TypeReference[] typeReferenceArr = unionTypeReference.typeReferences;
                    if (i11 >= typeReferenceArr.length) {
                        break;
                    }
                    TypeBinding typeBinding = typeReferenceArr[i11].resolvedType;
                    if ((typeBinding instanceof ReferenceBinding) && typeBinding.isValidBinding()) {
                        if (z10) {
                            removeCaughtException((ReferenceBinding) typeBinding);
                            this.caughtExceptions.add(typeBinding);
                        } else if (!typeBinding.isUncheckedException(true)) {
                            this.discouragedExceptions.add(typeBinding);
                        }
                    }
                    i11++;
                }
            } else {
                TypeBinding typeBinding2 = typeReference.resolvedType;
                if ((typeBinding2 instanceof ReferenceBinding) && typeBinding2.isValidBinding()) {
                    if (z10) {
                        removeCaughtException((ReferenceBinding) typeBinding2);
                        this.caughtExceptions.add(typeBinding2);
                    } else if (!typeBinding2.isUncheckedException(true)) {
                        this.discouragedExceptions.add(typeBinding2);
                    }
                }
            }
        }
    }

    private boolean visitType(TypeDeclaration typeDeclaration) {
        return false;
    }

    @Override
    public void endVisit(MessageSend messageSend, BlockScope blockScope) {
        MethodBinding methodBinding = messageSend.binding;
        if (methodBinding != null) {
            endVisitMethodInvocation(methodBinding);
        }
        super.endVisit(messageSend, blockScope);
    }

    public ReferenceBinding[] getAlreadyCaughtExceptions() {
        SimpleSet simpleSet = this.caughtExceptions;
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[simpleSet.elementSize];
        simpleSet.asArray(referenceBindingArr);
        return referenceBindingArr;
    }

    public ReferenceBinding[] getDiscouragedExceptions() {
        SimpleSet simpleSet = this.discouragedExceptions;
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[simpleSet.elementSize];
        simpleSet.asArray(referenceBindingArr);
        return referenceBindingArr;
    }

    public ReferenceBinding[] getThrownUncaughtExceptions() {
        SimpleSet simpleSet = this.thrownExceptions;
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[simpleSet.elementSize];
        simpleSet.asArray(referenceBindingArr);
        return referenceBindingArr;
    }

    public void processThrownExceptions(TryStatement tryStatement, BlockScope blockScope) {
        this.thrownExceptions = new SimpleSet();
        this.exceptionsStack = new Stack();
        this.caughtExceptions = new SimpleSet();
        this.discouragedExceptions = new SimpleSet();
        tryStatement.traverse(this, blockScope);
        removeCaughtExceptions(tryStatement, true);
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
        return visitType(typeDeclaration);
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
        return visitType(typeDeclaration);
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
        return visitType(typeDeclaration);
    }

    @Override
    public void endVisit(AllocationExpression allocationExpression, BlockScope blockScope) {
        MethodBinding methodBinding = allocationExpression.binding;
        if (methodBinding != null) {
            endVisitMethodInvocation(methodBinding);
        }
        super.endVisit(allocationExpression, blockScope);
    }

    @Override
    public boolean visit(TryStatement tryStatement, BlockScope blockScope) {
        this.exceptionsStack.push(this.thrownExceptions);
        SimpleSet simpleSet = new SimpleSet();
        this.thrownExceptions = simpleSet;
        tryStatement.tryBlock.traverse(this, blockScope);
        removeCaughtExceptions(tryStatement, false);
        this.thrownExceptions = (SimpleSet) this.exceptionsStack.pop();
        for (Object obj : simpleSet.values) {
            if (obj != null) {
                this.thrownExceptions.add(obj);
            }
        }
        Block[] blockArr = tryStatement.catchBlocks;
        int length = blockArr == null ? 0 : blockArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            blockArr[i10].traverse(this, blockScope);
        }
        return false;
    }

    @Override
    public void endVisit(ThrowStatement throwStatement, BlockScope blockScope) {
        acceptException((ReferenceBinding) throwStatement.exception.resolvedType);
        super.endVisit(throwStatement, blockScope);
    }
}
