package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.BreakStatement;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CharLiteral;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.Clinit;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ContinueStatement;
import org.eclipse.jdt.internal.compiler.ast.DoStatement;
import org.eclipse.jdt.internal.compiler.ast.DoubleLiteral;
import org.eclipse.jdt.internal.compiler.ast.EmptyStatement;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.ExtendedStringLiteral;
import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.FloatLiteral;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.IntersectionCastTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocArraySingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocImplicitTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.LabeledStatement;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LongLiteral;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
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
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.StringLiteralConcatenation;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.SwitchExpression;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.WhileStatement;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;

public abstract class ASTVisitor {
    public void acceptProblem(IProblem iProblem) {
    }

    public void endVisit(AND_AND_Expression aND_AND_Expression, BlockScope blockScope) {
    }

    public boolean visit(AND_AND_Expression aND_AND_Expression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(AllocationExpression allocationExpression, BlockScope blockScope) {
    }

    public boolean visit(AllocationExpression allocationExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(AnnotationMethodDeclaration annotationMethodDeclaration, ClassScope classScope) {
    }

    public boolean visit(AnnotationMethodDeclaration annotationMethodDeclaration, ClassScope classScope) {
        return true;
    }

    public void endVisit(Argument argument, BlockScope blockScope) {
    }

    public boolean visit(Argument argument, BlockScope blockScope) {
        return true;
    }

    public void endVisit(Argument argument, ClassScope classScope) {
    }

    public boolean visit(Argument argument, ClassScope classScope) {
        return true;
    }

    public void endVisit(ArrayAllocationExpression arrayAllocationExpression, BlockScope blockScope) {
    }

    public boolean visit(ArrayAllocationExpression arrayAllocationExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ArrayInitializer arrayInitializer, BlockScope blockScope) {
    }

    public boolean visit(ArrayInitializer arrayInitializer, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ArrayInitializer arrayInitializer, ClassScope classScope) {
    }

    public boolean visit(ArrayInitializer arrayInitializer, ClassScope classScope) {
        return true;
    }

    public void endVisit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope blockScope) {
    }

    public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, ClassScope classScope) {
    }

    public boolean visit(ArrayQualifiedTypeReference arrayQualifiedTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(ArrayReference arrayReference, BlockScope blockScope) {
    }

    public boolean visit(ArrayReference arrayReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ArrayTypeReference arrayTypeReference, BlockScope blockScope) {
    }

    public boolean visit(ArrayTypeReference arrayTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ArrayTypeReference arrayTypeReference, ClassScope classScope) {
    }

    public boolean visit(ArrayTypeReference arrayTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(AssertStatement assertStatement, BlockScope blockScope) {
    }

    public boolean visit(AssertStatement assertStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(Assignment assignment, BlockScope blockScope) {
    }

    public boolean visit(Assignment assignment, BlockScope blockScope) {
        return true;
    }

    public void endVisit(BinaryExpression binaryExpression, BlockScope blockScope) {
    }

    public boolean visit(BinaryExpression binaryExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(Block block, BlockScope blockScope) {
    }

    public boolean visit(Block block, BlockScope blockScope) {
        return true;
    }

    public void endVisit(BreakStatement breakStatement, BlockScope blockScope) {
    }

    public boolean visit(BreakStatement breakStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(CaseStatement caseStatement, BlockScope blockScope) {
    }

    public boolean visit(CaseStatement caseStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(CastExpression castExpression, BlockScope blockScope) {
    }

    public boolean visit(CastExpression castExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(CharLiteral charLiteral, BlockScope blockScope) {
    }

    public boolean visit(CharLiteral charLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ClassLiteralAccess classLiteralAccess, BlockScope blockScope) {
    }

    public boolean visit(ClassLiteralAccess classLiteralAccess, BlockScope blockScope) {
        return true;
    }

    public void endVisit(Clinit clinit, ClassScope classScope) {
    }

    public boolean visit(Clinit clinit, ClassScope classScope) {
        return true;
    }

    public void endVisit(CompilationUnitDeclaration compilationUnitDeclaration, CompilationUnitScope compilationUnitScope) {
    }

    public boolean visit(CompilationUnitDeclaration compilationUnitDeclaration, CompilationUnitScope compilationUnitScope) {
        return true;
    }

    public void endVisit(CompoundAssignment compoundAssignment, BlockScope blockScope) {
    }

    public boolean visit(CompoundAssignment compoundAssignment, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ConditionalExpression conditionalExpression, BlockScope blockScope) {
    }

    public boolean visit(ConditionalExpression conditionalExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
    }

    public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
        return true;
    }

    public void endVisit(ContinueStatement continueStatement, BlockScope blockScope) {
    }

    public boolean visit(ContinueStatement continueStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(DoStatement doStatement, BlockScope blockScope) {
    }

    public boolean visit(DoStatement doStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(DoubleLiteral doubleLiteral, BlockScope blockScope) {
    }

    public boolean visit(DoubleLiteral doubleLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(EmptyStatement emptyStatement, BlockScope blockScope) {
    }

    public boolean visit(EmptyStatement emptyStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(EqualExpression equalExpression, BlockScope blockScope) {
    }

    public boolean visit(EqualExpression equalExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ExplicitConstructorCall explicitConstructorCall, BlockScope blockScope) {
    }

    public boolean visit(ExplicitConstructorCall explicitConstructorCall, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ExtendedStringLiteral extendedStringLiteral, BlockScope blockScope) {
    }

    public boolean visit(ExtendedStringLiteral extendedStringLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(FalseLiteral falseLiteral, BlockScope blockScope) {
    }

    public boolean visit(FalseLiteral falseLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
    }

    public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
        return true;
    }

    public void endVisit(FieldReference fieldReference, BlockScope blockScope) {
    }

    public boolean visit(FieldReference fieldReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(FieldReference fieldReference, ClassScope classScope) {
    }

    public boolean visit(FieldReference fieldReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(FloatLiteral floatLiteral, BlockScope blockScope) {
    }

    public boolean visit(FloatLiteral floatLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ForStatement forStatement, BlockScope blockScope) {
    }

    public boolean visit(ForStatement forStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ForeachStatement foreachStatement, BlockScope blockScope) {
    }

    public boolean visit(ForeachStatement foreachStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(IfStatement ifStatement, BlockScope blockScope) {
    }

    public boolean visit(IfStatement ifStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ImportReference importReference, CompilationUnitScope compilationUnitScope) {
    }

    public boolean visit(ImportReference importReference, CompilationUnitScope compilationUnitScope) {
        return true;
    }

    public void endVisit(Initializer initializer, MethodScope methodScope) {
    }

    public boolean visit(Initializer initializer, MethodScope methodScope) {
        return true;
    }

    public void endVisit(InstanceOfExpression instanceOfExpression, BlockScope blockScope) {
    }

    public boolean visit(InstanceOfExpression instanceOfExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(IntLiteral intLiteral, BlockScope blockScope) {
    }

    public boolean visit(IntLiteral intLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(IntersectionCastTypeReference intersectionCastTypeReference, BlockScope blockScope) {
    }

    public boolean visit(IntersectionCastTypeReference intersectionCastTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(IntersectionCastTypeReference intersectionCastTypeReference, ClassScope classScope) {
    }

    public boolean visit(IntersectionCastTypeReference intersectionCastTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(Javadoc javadoc, BlockScope blockScope) {
    }

    public boolean visit(Javadoc javadoc, BlockScope blockScope) {
        return true;
    }

    public void endVisit(Javadoc javadoc, ClassScope classScope) {
    }

    public boolean visit(Javadoc javadoc, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocAllocationExpression javadocAllocationExpression, BlockScope blockScope) {
    }

    public boolean visit(JavadocAllocationExpression javadocAllocationExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocAllocationExpression javadocAllocationExpression, ClassScope classScope) {
    }

    public boolean visit(JavadocAllocationExpression javadocAllocationExpression, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocArgumentExpression javadocArgumentExpression, BlockScope blockScope) {
    }

    public boolean visit(JavadocArgumentExpression javadocArgumentExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocArgumentExpression javadocArgumentExpression, ClassScope classScope) {
    }

    public boolean visit(JavadocArgumentExpression javadocArgumentExpression, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocArrayQualifiedTypeReference javadocArrayQualifiedTypeReference, BlockScope blockScope) {
    }

    public boolean visit(JavadocArrayQualifiedTypeReference javadocArrayQualifiedTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocArrayQualifiedTypeReference javadocArrayQualifiedTypeReference, ClassScope classScope) {
    }

    public boolean visit(JavadocArrayQualifiedTypeReference javadocArrayQualifiedTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocArraySingleTypeReference javadocArraySingleTypeReference, BlockScope blockScope) {
    }

    public boolean visit(JavadocArraySingleTypeReference javadocArraySingleTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocArraySingleTypeReference javadocArraySingleTypeReference, ClassScope classScope) {
    }

    public boolean visit(JavadocArraySingleTypeReference javadocArraySingleTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocFieldReference javadocFieldReference, BlockScope blockScope) {
    }

    public boolean visit(JavadocFieldReference javadocFieldReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocFieldReference javadocFieldReference, ClassScope classScope) {
    }

    public boolean visit(JavadocFieldReference javadocFieldReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocImplicitTypeReference javadocImplicitTypeReference, BlockScope blockScope) {
    }

    public boolean visit(JavadocImplicitTypeReference javadocImplicitTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocImplicitTypeReference javadocImplicitTypeReference, ClassScope classScope) {
    }

    public boolean visit(JavadocImplicitTypeReference javadocImplicitTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocMessageSend javadocMessageSend, BlockScope blockScope) {
    }

    public boolean visit(JavadocMessageSend javadocMessageSend, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocMessageSend javadocMessageSend, ClassScope classScope) {
    }

    public boolean visit(JavadocMessageSend javadocMessageSend, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocQualifiedTypeReference javadocQualifiedTypeReference, BlockScope blockScope) {
    }

    public boolean visit(JavadocQualifiedTypeReference javadocQualifiedTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocQualifiedTypeReference javadocQualifiedTypeReference, ClassScope classScope) {
    }

    public boolean visit(JavadocQualifiedTypeReference javadocQualifiedTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocReturnStatement javadocReturnStatement, BlockScope blockScope) {
    }

    public boolean visit(JavadocReturnStatement javadocReturnStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocReturnStatement javadocReturnStatement, ClassScope classScope) {
    }

    public boolean visit(JavadocReturnStatement javadocReturnStatement, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocSingleNameReference javadocSingleNameReference, BlockScope blockScope) {
    }

    public boolean visit(JavadocSingleNameReference javadocSingleNameReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocSingleNameReference javadocSingleNameReference, ClassScope classScope) {
    }

    public boolean visit(JavadocSingleNameReference javadocSingleNameReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(JavadocSingleTypeReference javadocSingleTypeReference, BlockScope blockScope) {
    }

    public boolean visit(JavadocSingleTypeReference javadocSingleTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(JavadocSingleTypeReference javadocSingleTypeReference, ClassScope classScope) {
    }

    public boolean visit(JavadocSingleTypeReference javadocSingleTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(LabeledStatement labeledStatement, BlockScope blockScope) {
    }

    public boolean visit(LabeledStatement labeledStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(LambdaExpression lambdaExpression, BlockScope blockScope) {
    }

    public boolean visit(LambdaExpression lambdaExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(LocalDeclaration localDeclaration, BlockScope blockScope) {
    }

    public boolean visit(LocalDeclaration localDeclaration, BlockScope blockScope) {
        return true;
    }

    public void endVisit(LongLiteral longLiteral, BlockScope blockScope) {
    }

    public boolean visit(LongLiteral longLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(MarkerAnnotation markerAnnotation, BlockScope blockScope) {
    }

    public boolean visit(MarkerAnnotation markerAnnotation, BlockScope blockScope) {
        return true;
    }

    public void endVisit(MarkerAnnotation markerAnnotation, ClassScope classScope) {
    }

    public boolean visit(MarkerAnnotation markerAnnotation, ClassScope classScope) {
        return true;
    }

    public void endVisit(MemberValuePair memberValuePair, BlockScope blockScope) {
    }

    public boolean visit(MemberValuePair memberValuePair, BlockScope blockScope) {
        return true;
    }

    public void endVisit(MemberValuePair memberValuePair, ClassScope classScope) {
    }

    public boolean visit(MemberValuePair memberValuePair, ClassScope classScope) {
        return true;
    }

    public void endVisit(MessageSend messageSend, BlockScope blockScope) {
    }

    public boolean visit(MessageSend messageSend, BlockScope blockScope) {
        return true;
    }

    public void endVisit(MethodDeclaration methodDeclaration, ClassScope classScope) {
    }

    public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
        return true;
    }

    public void endVisit(NormalAnnotation normalAnnotation, BlockScope blockScope) {
    }

    public boolean visit(ModuleDeclaration moduleDeclaration, CompilationUnitScope compilationUnitScope) {
        return true;
    }

    public void endVisit(NormalAnnotation normalAnnotation, ClassScope classScope) {
    }

    public boolean visit(NormalAnnotation normalAnnotation, BlockScope blockScope) {
        return true;
    }

    public void endVisit(NullLiteral nullLiteral, BlockScope blockScope) {
    }

    public boolean visit(NormalAnnotation normalAnnotation, ClassScope classScope) {
        return true;
    }

    public void endVisit(OR_OR_Expression oR_OR_Expression, BlockScope blockScope) {
    }

    public boolean visit(NullLiteral nullLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, BlockScope blockScope) {
    }

    public boolean visit(OR_OR_Expression oR_OR_Expression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, ClassScope classScope) {
    }

    public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, BlockScope blockScope) {
    }

    public boolean visit(ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, ClassScope classScope) {
    }

    public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(PostfixExpression postfixExpression, BlockScope blockScope) {
    }

    public boolean visit(ParameterizedSingleTypeReference parameterizedSingleTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(PrefixExpression prefixExpression, BlockScope blockScope) {
    }

    public boolean visit(PostfixExpression postfixExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(QualifiedAllocationExpression qualifiedAllocationExpression, BlockScope blockScope) {
    }

    public boolean visit(PrefixExpression prefixExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(QualifiedNameReference qualifiedNameReference, BlockScope blockScope) {
    }

    public boolean visit(QualifiedAllocationExpression qualifiedAllocationExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(QualifiedNameReference qualifiedNameReference, ClassScope classScope) {
    }

    public boolean visit(QualifiedNameReference qualifiedNameReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(QualifiedSuperReference qualifiedSuperReference, BlockScope blockScope) {
    }

    public boolean visit(QualifiedNameReference qualifiedNameReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(QualifiedSuperReference qualifiedSuperReference, ClassScope classScope) {
    }

    public boolean visit(QualifiedSuperReference qualifiedSuperReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(QualifiedThisReference qualifiedThisReference, BlockScope blockScope) {
    }

    public boolean visit(QualifiedSuperReference qualifiedSuperReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(QualifiedThisReference qualifiedThisReference, ClassScope classScope) {
    }

    public boolean visit(QualifiedThisReference qualifiedThisReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(QualifiedTypeReference qualifiedTypeReference, BlockScope blockScope) {
    }

    public boolean visit(QualifiedThisReference qualifiedThisReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(QualifiedTypeReference qualifiedTypeReference, ClassScope classScope) {
    }

    public boolean visit(QualifiedTypeReference qualifiedTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ReferenceExpression referenceExpression, BlockScope blockScope) {
    }

    public boolean visit(QualifiedTypeReference qualifiedTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(ReturnStatement returnStatement, BlockScope blockScope) {
    }

    public boolean visit(ReferenceExpression referenceExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(SingleMemberAnnotation singleMemberAnnotation, BlockScope blockScope) {
    }

    public boolean visit(ReturnStatement returnStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(SingleMemberAnnotation singleMemberAnnotation, ClassScope classScope) {
    }

    public boolean visit(SingleMemberAnnotation singleMemberAnnotation, BlockScope blockScope) {
        return true;
    }

    public void endVisit(SingleNameReference singleNameReference, BlockScope blockScope) {
    }

    public boolean visit(SingleMemberAnnotation singleMemberAnnotation, ClassScope classScope) {
        return true;
    }

    public void endVisit(SingleNameReference singleNameReference, ClassScope classScope) {
    }

    public boolean visit(SingleNameReference singleNameReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(SingleTypeReference singleTypeReference, BlockScope blockScope) {
    }

    public boolean visit(SingleNameReference singleNameReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(SingleTypeReference singleTypeReference, ClassScope classScope) {
    }

    public boolean visit(SingleTypeReference singleTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(StringLiteral stringLiteral, BlockScope blockScope) {
    }

    public boolean visit(SingleTypeReference singleTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(StringLiteralConcatenation stringLiteralConcatenation, BlockScope blockScope) {
    }

    public boolean visit(StringLiteral stringLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(SuperReference superReference, BlockScope blockScope) {
    }

    public boolean visit(StringLiteralConcatenation stringLiteralConcatenation, BlockScope blockScope) {
        return true;
    }

    public void endVisit(SwitchExpression switchExpression, BlockScope blockScope) {
    }

    public boolean visit(SuperReference superReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(SwitchStatement switchStatement, BlockScope blockScope) {
    }

    public boolean visit(SwitchExpression switchExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(SynchronizedStatement synchronizedStatement, BlockScope blockScope) {
    }

    public boolean visit(SwitchStatement switchStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ThisReference thisReference, BlockScope blockScope) {
    }

    public boolean visit(SynchronizedStatement synchronizedStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ThisReference thisReference, ClassScope classScope) {
    }

    public boolean visit(ThisReference thisReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(ThrowStatement throwStatement, BlockScope blockScope) {
    }

    public boolean visit(ThisReference thisReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(TrueLiteral trueLiteral, BlockScope blockScope) {
    }

    public boolean visit(ThrowStatement throwStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(TryStatement tryStatement, BlockScope blockScope) {
    }

    public boolean visit(TrueLiteral trueLiteral, BlockScope blockScope) {
        return true;
    }

    public void endVisit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
    }

    public boolean visit(TryStatement tryStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(TypeDeclaration typeDeclaration, ClassScope classScope) {
    }

    public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
        return true;
    }

    public void endVisit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
    }

    public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
        return true;
    }

    public void endVisit(TypeParameter typeParameter, BlockScope blockScope) {
    }

    public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
        return true;
    }

    public void endVisit(TypeParameter typeParameter, ClassScope classScope) {
    }

    public boolean visit(TypeParameter typeParameter, BlockScope blockScope) {
        return true;
    }

    public void endVisit(UnaryExpression unaryExpression, BlockScope blockScope) {
    }

    public boolean visit(TypeParameter typeParameter, ClassScope classScope) {
        return true;
    }

    public void endVisit(UnionTypeReference unionTypeReference, BlockScope blockScope) {
    }

    public boolean visit(UnaryExpression unaryExpression, BlockScope blockScope) {
        return true;
    }

    public void endVisit(UnionTypeReference unionTypeReference, ClassScope classScope) {
    }

    public boolean visit(UnionTypeReference unionTypeReference, BlockScope blockScope) {
        return true;
    }

    public void endVisit(WhileStatement whileStatement, BlockScope blockScope) {
    }

    public boolean visit(UnionTypeReference unionTypeReference, ClassScope classScope) {
        return true;
    }

    public void endVisit(Wildcard wildcard, BlockScope blockScope) {
    }

    public boolean visit(WhileStatement whileStatement, BlockScope blockScope) {
        return true;
    }

    public void endVisit(Wildcard wildcard, ClassScope classScope) {
    }

    public boolean visit(Wildcard wildcard, BlockScope blockScope) {
        return true;
    }

    public boolean visit(Wildcard wildcard, ClassScope classScope) {
        return true;
    }
}
