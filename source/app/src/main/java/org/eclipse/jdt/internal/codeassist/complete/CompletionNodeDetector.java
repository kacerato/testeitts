package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.PostfixExpression;
import org.eclipse.jdt.internal.compiler.ast.PrefixExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;

public class CompletionNodeDetector extends ASTVisitor {
    private ASTNode parent;
    private boolean result = false;
    private ASTNode searchedNode;

    public CompletionNodeDetector(ASTNode aSTNode, ASTNode aSTNode2) {
        this.searchedNode = aSTNode;
        if (aSTNode == null || aSTNode2 == null) {
            return;
        }
        aSTNode2.traverse(this, null);
    }

    public boolean containsCompletionNode() {
        return this.result;
    }

    @Override
    public void endVisit(AllocationExpression allocationExpression, BlockScope blockScope) {
        endVisit(allocationExpression);
    }

    public ASTNode getCompletionNodeParent() {
        return this.parent;
    }

    @Override
    public boolean visit(AllocationExpression allocationExpression, BlockScope blockScope) {
        return visit(allocationExpression);
    }

    @Override
    public void endVisit(AND_AND_Expression aND_AND_Expression, BlockScope blockScope) {
        endVisit(aND_AND_Expression);
    }

    @Override
    public boolean visit(AND_AND_Expression aND_AND_Expression, BlockScope blockScope) {
        return visit(aND_AND_Expression);
    }

    @Override
    public void endVisit(ArrayAllocationExpression arrayAllocationExpression, BlockScope blockScope) {
        endVisit(arrayAllocationExpression);
    }

    @Override
    public boolean visit(ArrayAllocationExpression arrayAllocationExpression, BlockScope blockScope) {
        return visit(arrayAllocationExpression);
    }

    @Override
    public void endVisit(ArrayInitializer arrayInitializer, BlockScope blockScope) {
        endVisit(arrayInitializer);
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer, BlockScope blockScope) {
        return visit(arrayInitializer);
    }

    @Override
    public void endVisit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope blockScope) {
        endVisit(arrayQualifiedTypeReference);
    }

    @Override
    public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope blockScope) {
        return visit(arrayQualifiedTypeReference);
    }

    @Override
    public void endVisit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, ClassScope classScope) {
        endVisit(arrayQualifiedTypeReference);
    }

    @Override
    public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, ClassScope classScope) {
        return visit(arrayQualifiedTypeReference);
    }

    @Override
    public void endVisit(ArrayReference arrayReference, BlockScope blockScope) {
        endVisit(arrayReference);
    }

    @Override
    public boolean visit(ArrayReference arrayReference, BlockScope blockScope) {
        return visit(arrayReference);
    }

    @Override
    public void endVisit(ArrayTypeReference arrayTypeReference, BlockScope blockScope) {
        endVisit(arrayTypeReference);
    }

    @Override
    public boolean visit(ArrayTypeReference arrayTypeReference, BlockScope blockScope) {
        return visit(arrayTypeReference);
    }

    @Override
    public void endVisit(ArrayTypeReference arrayTypeReference, ClassScope classScope) {
        endVisit(arrayTypeReference);
    }

    @Override
    public boolean visit(ArrayTypeReference arrayTypeReference, ClassScope classScope) {
        return visit(arrayTypeReference);
    }

    @Override
    public void endVisit(Assignment assignment, BlockScope blockScope) {
        endVisit(assignment);
    }

    @Override
    public boolean visit(Assignment assignment, BlockScope blockScope) {
        return visit(assignment);
    }

    @Override
    public void endVisit(BinaryExpression binaryExpression, BlockScope blockScope) {
        endVisit(binaryExpression);
    }

    @Override
    public boolean visit(BinaryExpression binaryExpression, BlockScope blockScope) {
        return visit(binaryExpression);
    }

    @Override
    public void endVisit(CastExpression castExpression, BlockScope blockScope) {
        endVisit(castExpression);
    }

    @Override
    public boolean visit(CastExpression castExpression, BlockScope blockScope) {
        return visit(castExpression);
    }

    @Override
    public void endVisit(CompoundAssignment compoundAssignment, BlockScope blockScope) {
        endVisit(compoundAssignment);
    }

    @Override
    public boolean visit(CompoundAssignment compoundAssignment, BlockScope blockScope) {
        return visit(compoundAssignment);
    }

    @Override
    public void endVisit(ConditionalExpression conditionalExpression, BlockScope blockScope) {
        endVisit(conditionalExpression);
    }

    @Override
    public boolean visit(ConditionalExpression conditionalExpression, BlockScope blockScope) {
        return visit(conditionalExpression);
    }

    @Override
    public void endVisit(EqualExpression equalExpression, BlockScope blockScope) {
        endVisit(equalExpression);
    }

    @Override
    public boolean visit(EqualExpression equalExpression, BlockScope blockScope) {
        return visit(equalExpression);
    }

    @Override
    public void endVisit(ExplicitConstructorCall explicitConstructorCall, BlockScope blockScope) {
        endVisit(explicitConstructorCall);
    }

    @Override
    public boolean visit(ExplicitConstructorCall explicitConstructorCall, BlockScope blockScope) {
        return visit(explicitConstructorCall);
    }

    @Override
    public void endVisit(FieldReference fieldReference, BlockScope blockScope) {
        endVisit(fieldReference);
    }

    @Override
    public boolean visit(FieldReference fieldReference, BlockScope blockScope) {
        return visit(fieldReference);
    }

    @Override
    public void endVisit(InstanceOfExpression instanceOfExpression, BlockScope blockScope) {
        endVisit(instanceOfExpression);
    }

    @Override
    public boolean visit(InstanceOfExpression instanceOfExpression, BlockScope blockScope) {
        return visit(instanceOfExpression);
    }

    @Override
    public void endVisit(MessageSend messageSend, BlockScope blockScope) {
        endVisit(messageSend);
    }

    @Override
    public boolean visit(MessageSend messageSend, BlockScope blockScope) {
        return visit(messageSend);
    }

    @Override
    public void endVisit(OR_OR_Expression oR_OR_Expression, BlockScope blockScope) {
        endVisit(oR_OR_Expression);
    }

    @Override
    public boolean visit(OR_OR_Expression oR_OR_Expression, BlockScope blockScope) {
        return visit(oR_OR_Expression);
    }

    @Override
    public void endVisit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, BlockScope blockScope) {
        endVisit(parameterizedQualifiedTypeReference);
    }

    @Override
    public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, BlockScope blockScope) {
        return visit(parameterizedQualifiedTypeReference);
    }

    @Override
    public void endVisit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, ClassScope classScope) {
        endVisit(parameterizedQualifiedTypeReference);
    }

    @Override
    public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, ClassScope classScope) {
        return visit(parameterizedQualifiedTypeReference);
    }

    @Override
    public void endVisit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, BlockScope blockScope) {
        endVisit(parameterizedSingleTypeReference);
    }

    @Override
    public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, BlockScope blockScope) {
        return visit(parameterizedSingleTypeReference);
    }

    @Override
    public void endVisit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, ClassScope classScope) {
        endVisit(parameterizedSingleTypeReference);
    }

    @Override
    public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, ClassScope classScope) {
        return visit(parameterizedSingleTypeReference);
    }

    @Override
    public void endVisit(PostfixExpression postfixExpression, BlockScope blockScope) {
        endVisit(postfixExpression);
    }

    @Override
    public boolean visit(PostfixExpression postfixExpression, BlockScope blockScope) {
        return visit(postfixExpression);
    }

    @Override
    public void endVisit(PrefixExpression prefixExpression, BlockScope blockScope) {
        endVisit(prefixExpression);
    }

    @Override
    public boolean visit(PrefixExpression prefixExpression, BlockScope blockScope) {
        return visit(prefixExpression);
    }

    @Override
    public void endVisit(QualifiedAllocationExpression qualifiedAllocationExpression, BlockScope blockScope) {
        endVisit(qualifiedAllocationExpression);
    }

    @Override
    public boolean visit(QualifiedAllocationExpression qualifiedAllocationExpression, BlockScope blockScope) {
        return visit(qualifiedAllocationExpression);
    }

    @Override
    public void endVisit(QualifiedNameReference qualifiedNameReference, BlockScope blockScope) {
        endVisit(qualifiedNameReference);
    }

    @Override
    public boolean visit(QualifiedNameReference qualifiedNameReference, BlockScope blockScope) {
        return visit(qualifiedNameReference);
    }

    @Override
    public void endVisit(QualifiedSuperReference qualifiedSuperReference, BlockScope blockScope) {
        endVisit(qualifiedSuperReference);
    }

    @Override
    public boolean visit(QualifiedSuperReference qualifiedSuperReference, BlockScope blockScope) {
        return visit(qualifiedSuperReference);
    }

    @Override
    public void endVisit(QualifiedThisReference qualifiedThisReference, BlockScope blockScope) {
        endVisit(qualifiedThisReference);
    }

    @Override
    public boolean visit(QualifiedThisReference qualifiedThisReference, BlockScope blockScope) {
        return visit(qualifiedThisReference);
    }

    @Override
    public void endVisit(QualifiedTypeReference qualifiedTypeReference, BlockScope blockScope) {
        endVisit(qualifiedTypeReference);
    }

    @Override
    public boolean visit(QualifiedTypeReference qualifiedTypeReference, BlockScope blockScope) {
        return visit(qualifiedTypeReference);
    }

    @Override
    public void endVisit(QualifiedTypeReference qualifiedTypeReference, ClassScope classScope) {
        endVisit(qualifiedTypeReference);
    }

    @Override
    public boolean visit(QualifiedTypeReference qualifiedTypeReference, ClassScope classScope) {
        return visit(qualifiedTypeReference);
    }

    @Override
    public void endVisit(ReferenceExpression referenceExpression, BlockScope blockScope) {
        endVisit(referenceExpression);
    }

    @Override
    public boolean visit(ReferenceExpression referenceExpression, BlockScope blockScope) {
        return visit(referenceExpression);
    }

    @Override
    public void endVisit(SingleNameReference singleNameReference, BlockScope blockScope) {
        endVisit(singleNameReference);
    }

    @Override
    public boolean visit(SingleNameReference singleNameReference, BlockScope blockScope) {
        return visit(singleNameReference);
    }

    @Override
    public void endVisit(SingleTypeReference singleTypeReference, BlockScope blockScope) {
        endVisit(singleTypeReference);
    }

    @Override
    public boolean visit(SingleTypeReference singleTypeReference, BlockScope blockScope) {
        return visit(singleTypeReference);
    }

    @Override
    public void endVisit(SingleTypeReference singleTypeReference, ClassScope classScope) {
        endVisit(singleTypeReference);
    }

    @Override
    public boolean visit(SingleTypeReference singleTypeReference, ClassScope classScope) {
        return visit(singleTypeReference);
    }

    @Override
    public void endVisit(SuperReference superReference, BlockScope blockScope) {
        endVisit(superReference);
    }

    @Override
    public boolean visit(StringLiteral stringLiteral, BlockScope blockScope) {
        return visit(stringLiteral);
    }

    @Override
    public void endVisit(ThisReference thisReference, BlockScope blockScope) {
        endVisit(thisReference);
    }

    @Override
    public boolean visit(SuperReference superReference, BlockScope blockScope) {
        return visit(superReference);
    }

    @Override
    public void endVisit(UnaryExpression unaryExpression, BlockScope blockScope) {
        endVisit(unaryExpression);
    }

    @Override
    public boolean visit(ThisReference thisReference, BlockScope blockScope) {
        return visit(thisReference);
    }

    @Override
    public void endVisit(MemberValuePair memberValuePair, BlockScope blockScope) {
        endVisit(memberValuePair);
    }

    @Override
    public boolean visit(UnaryExpression unaryExpression, BlockScope blockScope) {
        return visit(unaryExpression);
    }

    public void endVisit(MemberValuePair memberValuePair, CompilationUnitScope compilationUnitScope) {
        endVisit(memberValuePair);
    }

    @Override
    public boolean visit(MemberValuePair memberValuePair, BlockScope blockScope) {
        return visit(memberValuePair);
    }

    @Override
    public void endVisit(LambdaExpression lambdaExpression, BlockScope blockScope) {
        endVisit(lambdaExpression);
    }

    public boolean visit(MemberValuePair memberValuePair, CompilationUnitScope compilationUnitScope) {
        return visit(memberValuePair);
    }

    private void endVisit(ASTNode aSTNode) {
        ASTNode aSTNode2;
        if (this.result && this.parent == null && aSTNode != (aSTNode2 = this.searchedNode)) {
            if ((aSTNode instanceof AllocationExpression) && ((AllocationExpression) aSTNode).type == aSTNode2) {
                return;
            }
            boolean z10 = aSTNode instanceof ConditionalExpression;
            if (z10 && ((ConditionalExpression) aSTNode).valueIfTrue == aSTNode2) {
                return;
            }
            if (z10 && ((ConditionalExpression) aSTNode).valueIfFalse == aSTNode2) {
                return;
            }
            this.parent = aSTNode;
        }
    }

    private boolean visit(ASTNode aSTNode) {
        if (aSTNode == this.searchedNode) {
            this.result = true;
        }
        return !this.result;
    }
}
