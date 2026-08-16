package org.eclipse.jdt.internal.core.nd.indexer;

import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotatableType;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayAccess;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.AssertStatement;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BlockComment;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.Comment;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.CreationReference;
import org.eclipse.jdt.core.dom.Dimension;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.ExportsDirective;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionMethodReference;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.InstanceofExpression;
import org.eclipse.jdt.core.dom.IntersectionType;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.LambdaExpression;
import org.eclipse.jdt.core.dom.LineComment;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.MethodRefParameter;
import org.eclipse.jdt.core.dom.MethodReference;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ModuleDeclaration;
import org.eclipse.jdt.core.dom.ModuleDirective;
import org.eclipse.jdt.core.dom.ModuleModifier;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NameQualifiedType;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.NullLiteral;
import org.eclipse.jdt.core.dom.NumberLiteral;
import org.eclipse.jdt.core.dom.OpensDirective;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.ProvidesDirective;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.RequiresDirective;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SuperMethodReference;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.TextElement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclarationStatement;
import org.eclipse.jdt.core.dom.TypeLiteral;
import org.eclipse.jdt.core.dom.TypeMethodReference;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.UsesDirective;
import org.eclipse.jdt.core.dom.VariableDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;

public abstract class HierarchicalASTVisitor extends ASTVisitor {
    public void endVisit(ASTNode aSTNode) {
    }

    public boolean visit(ASTNode aSTNode) {
        return true;
    }

    @Override
    public void endVisit(AnonymousClassDeclaration anonymousClassDeclaration) {
        endVisit((ASTNode) anonymousClassDeclaration);
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        return visit((ASTNode) anonymousClassDeclaration);
    }

    public void endVisit(BodyDeclaration bodyDeclaration) {
        endVisit((ASTNode) bodyDeclaration);
    }

    public boolean visit(BodyDeclaration bodyDeclaration) {
        return visit((ASTNode) bodyDeclaration);
    }

    public void endVisit(AbstractTypeDeclaration abstractTypeDeclaration) {
        endVisit((BodyDeclaration) abstractTypeDeclaration);
    }

    public boolean visit(AbstractTypeDeclaration abstractTypeDeclaration) {
        return visit((BodyDeclaration) abstractTypeDeclaration);
    }

    @Override
    public void endVisit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        endVisit((AbstractTypeDeclaration) annotationTypeDeclaration);
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        return visit((AbstractTypeDeclaration) annotationTypeDeclaration);
    }

    @Override
    public void endVisit(EnumDeclaration enumDeclaration) {
        endVisit((AbstractTypeDeclaration) enumDeclaration);
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        return visit((AbstractTypeDeclaration) enumDeclaration);
    }

    @Override
    public void endVisit(TypeDeclaration typeDeclaration) {
        endVisit((AbstractTypeDeclaration) typeDeclaration);
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        return visit((AbstractTypeDeclaration) typeDeclaration);
    }

    @Override
    public void endVisit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        endVisit((BodyDeclaration) annotationTypeMemberDeclaration);
    }

    @Override
    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        return visit((BodyDeclaration) annotationTypeMemberDeclaration);
    }

    @Override
    public void endVisit(EnumConstantDeclaration enumConstantDeclaration) {
        endVisit((BodyDeclaration) enumConstantDeclaration);
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        return visit((BodyDeclaration) enumConstantDeclaration);
    }

    @Override
    public void endVisit(FieldDeclaration fieldDeclaration) {
        endVisit((BodyDeclaration) fieldDeclaration);
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        return visit((BodyDeclaration) fieldDeclaration);
    }

    @Override
    public void endVisit(Initializer initializer) {
        endVisit((BodyDeclaration) initializer);
    }

    @Override
    public boolean visit(Initializer initializer) {
        return visit((BodyDeclaration) initializer);
    }

    @Override
    public void endVisit(MethodDeclaration methodDeclaration) {
        endVisit((BodyDeclaration) methodDeclaration);
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        return visit((BodyDeclaration) methodDeclaration);
    }

    @Override
    public void endVisit(CatchClause catchClause) {
        endVisit((ASTNode) catchClause);
    }

    @Override
    public boolean visit(CatchClause catchClause) {
        return visit((ASTNode) catchClause);
    }

    public void endVisit(Comment comment) {
        endVisit((ASTNode) comment);
    }

    public boolean visit(Comment comment) {
        return visit((ASTNode) comment);
    }

    @Override
    public void endVisit(BlockComment blockComment) {
        endVisit((Comment) blockComment);
    }

    @Override
    public boolean visit(BlockComment blockComment) {
        return visit((Comment) blockComment);
    }

    @Override
    public void endVisit(Javadoc javadoc) {
        endVisit((Comment) javadoc);
    }

    @Override
    public boolean visit(Javadoc javadoc) {
        return visit((Comment) javadoc);
    }

    @Override
    public void endVisit(LineComment lineComment) {
        endVisit((Comment) lineComment);
    }

    @Override
    public boolean visit(LineComment lineComment) {
        return visit((Comment) lineComment);
    }

    @Override
    public void endVisit(CompilationUnit compilationUnit) {
        endVisit((ASTNode) compilationUnit);
    }

    @Override
    public boolean visit(CompilationUnit compilationUnit) {
        return visit((ASTNode) compilationUnit);
    }

    @Override
    public void endVisit(Dimension dimension) {
        endVisit((ASTNode) dimension);
    }

    @Override
    public boolean visit(Dimension dimension) {
        return visit((ASTNode) dimension);
    }

    public void endVisit(Expression expression) {
        endVisit((ASTNode) expression);
    }

    public boolean visit(Expression expression) {
        return visit((ASTNode) expression);
    }

    public void endVisit(Annotation annotation) {
        endVisit((Expression) annotation);
    }

    public boolean visit(Annotation annotation) {
        return visit((Expression) annotation);
    }

    @Override
    public void endVisit(MarkerAnnotation markerAnnotation) {
        endVisit((Annotation) markerAnnotation);
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation) {
        return visit((Annotation) markerAnnotation);
    }

    @Override
    public void endVisit(NormalAnnotation normalAnnotation) {
        endVisit((Annotation) normalAnnotation);
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        return visit((Annotation) normalAnnotation);
    }

    @Override
    public void endVisit(SingleMemberAnnotation singleMemberAnnotation) {
        endVisit((Annotation) singleMemberAnnotation);
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        return visit((Annotation) singleMemberAnnotation);
    }

    @Override
    public void endVisit(ArrayAccess arrayAccess) {
        endVisit((Expression) arrayAccess);
    }

    @Override
    public boolean visit(ArrayAccess arrayAccess) {
        return visit((Expression) arrayAccess);
    }

    @Override
    public void endVisit(ArrayCreation arrayCreation) {
        endVisit((Expression) arrayCreation);
    }

    @Override
    public boolean visit(ArrayCreation arrayCreation) {
        return visit((Expression) arrayCreation);
    }

    @Override
    public void endVisit(ArrayInitializer arrayInitializer) {
        endVisit((Expression) arrayInitializer);
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer) {
        return visit((Expression) arrayInitializer);
    }

    @Override
    public void endVisit(Assignment assignment) {
        endVisit((Expression) assignment);
    }

    @Override
    public boolean visit(Assignment assignment) {
        return visit((Expression) assignment);
    }

    @Override
    public void endVisit(BooleanLiteral booleanLiteral) {
        endVisit((Expression) booleanLiteral);
    }

    @Override
    public boolean visit(BooleanLiteral booleanLiteral) {
        return visit((Expression) booleanLiteral);
    }

    @Override
    public void endVisit(CastExpression castExpression) {
        endVisit((Expression) castExpression);
    }

    @Override
    public boolean visit(CastExpression castExpression) {
        return visit((Expression) castExpression);
    }

    @Override
    public void endVisit(CharacterLiteral characterLiteral) {
        endVisit((Expression) characterLiteral);
    }

    @Override
    public boolean visit(CharacterLiteral characterLiteral) {
        return visit((Expression) characterLiteral);
    }

    @Override
    public void endVisit(ClassInstanceCreation classInstanceCreation) {
        endVisit((Expression) classInstanceCreation);
    }

    @Override
    public boolean visit(ClassInstanceCreation classInstanceCreation) {
        return visit((Expression) classInstanceCreation);
    }

    @Override
    public void endVisit(ConditionalExpression conditionalExpression) {
        endVisit((Expression) conditionalExpression);
    }

    @Override
    public boolean visit(ConditionalExpression conditionalExpression) {
        return visit((Expression) conditionalExpression);
    }

    @Override
    public void endVisit(FieldAccess fieldAccess) {
        endVisit((Expression) fieldAccess);
    }

    @Override
    public boolean visit(FieldAccess fieldAccess) {
        return visit((Expression) fieldAccess);
    }

    @Override
    public void endVisit(InfixExpression infixExpression) {
        endVisit((Expression) infixExpression);
    }

    @Override
    public boolean visit(InfixExpression infixExpression) {
        return visit((Expression) infixExpression);
    }

    @Override
    public void endVisit(InstanceofExpression instanceofExpression) {
        endVisit((Expression) instanceofExpression);
    }

    @Override
    public boolean visit(InstanceofExpression instanceofExpression) {
        return visit((Expression) instanceofExpression);
    }

    @Override
    public void endVisit(LambdaExpression lambdaExpression) {
        endVisit((Expression) lambdaExpression);
    }

    @Override
    public boolean visit(LambdaExpression lambdaExpression) {
        return visit((Expression) lambdaExpression);
    }

    @Override
    public void endVisit(MethodInvocation methodInvocation) {
        endVisit((Expression) methodInvocation);
    }

    @Override
    public boolean visit(MethodInvocation methodInvocation) {
        return visit((Expression) methodInvocation);
    }

    public void endVisit(MethodReference methodReference) {
        endVisit((Expression) methodReference);
    }

    public boolean visit(MethodReference methodReference) {
        return visit((Expression) methodReference);
    }

    @Override
    public void endVisit(CreationReference creationReference) {
        endVisit((MethodReference) creationReference);
    }

    @Override
    public boolean visit(CreationReference creationReference) {
        return visit((MethodReference) creationReference);
    }

    @Override
    public void endVisit(ExpressionMethodReference expressionMethodReference) {
        endVisit((MethodReference) expressionMethodReference);
    }

    @Override
    public boolean visit(ExpressionMethodReference expressionMethodReference) {
        return visit((MethodReference) expressionMethodReference);
    }

    @Override
    public void endVisit(SuperMethodReference superMethodReference) {
        endVisit((MethodReference) superMethodReference);
    }

    @Override
    public boolean visit(SuperMethodReference superMethodReference) {
        return visit((MethodReference) superMethodReference);
    }

    @Override
    public void endVisit(TypeMethodReference typeMethodReference) {
        endVisit((MethodReference) typeMethodReference);
    }

    @Override
    public boolean visit(TypeMethodReference typeMethodReference) {
        return visit((MethodReference) typeMethodReference);
    }

    public void endVisit(Name name) {
        endVisit((Expression) name);
    }

    public boolean visit(Name name) {
        return visit((Expression) name);
    }

    @Override
    public void endVisit(QualifiedName qualifiedName) {
        endVisit((Name) qualifiedName);
    }

    @Override
    public boolean visit(QualifiedName qualifiedName) {
        return visit((Name) qualifiedName);
    }

    @Override
    public void endVisit(SimpleName simpleName) {
        endVisit((Name) simpleName);
    }

    @Override
    public boolean visit(SimpleName simpleName) {
        return visit((Name) simpleName);
    }

    @Override
    public void endVisit(NullLiteral nullLiteral) {
        endVisit((Expression) nullLiteral);
    }

    @Override
    public boolean visit(NullLiteral nullLiteral) {
        return visit((Expression) nullLiteral);
    }

    @Override
    public void endVisit(NumberLiteral numberLiteral) {
        endVisit((Expression) numberLiteral);
    }

    @Override
    public boolean visit(NumberLiteral numberLiteral) {
        return visit((Expression) numberLiteral);
    }

    @Override
    public void endVisit(ParenthesizedExpression parenthesizedExpression) {
        endVisit((Expression) parenthesizedExpression);
    }

    @Override
    public boolean visit(ParenthesizedExpression parenthesizedExpression) {
        return visit((Expression) parenthesizedExpression);
    }

    @Override
    public void endVisit(PostfixExpression postfixExpression) {
        endVisit((Expression) postfixExpression);
    }

    @Override
    public boolean visit(PostfixExpression postfixExpression) {
        return visit((Expression) postfixExpression);
    }

    @Override
    public void endVisit(PrefixExpression prefixExpression) {
        endVisit((Expression) prefixExpression);
    }

    @Override
    public boolean visit(PrefixExpression prefixExpression) {
        return visit((Expression) prefixExpression);
    }

    @Override
    public void endVisit(StringLiteral stringLiteral) {
        endVisit((Expression) stringLiteral);
    }

    @Override
    public boolean visit(StringLiteral stringLiteral) {
        return visit((Expression) stringLiteral);
    }

    @Override
    public void endVisit(SuperFieldAccess superFieldAccess) {
        endVisit((Expression) superFieldAccess);
    }

    @Override
    public boolean visit(SuperFieldAccess superFieldAccess) {
        return visit((Expression) superFieldAccess);
    }

    @Override
    public void endVisit(SuperMethodInvocation superMethodInvocation) {
        endVisit((Expression) superMethodInvocation);
    }

    @Override
    public boolean visit(SuperMethodInvocation superMethodInvocation) {
        return visit((Expression) superMethodInvocation);
    }

    @Override
    public void endVisit(ThisExpression thisExpression) {
        endVisit((Expression) thisExpression);
    }

    @Override
    public boolean visit(ThisExpression thisExpression) {
        return visit((Expression) thisExpression);
    }

    @Override
    public void endVisit(TypeLiteral typeLiteral) {
        endVisit((Expression) typeLiteral);
    }

    @Override
    public boolean visit(TypeLiteral typeLiteral) {
        return visit((Expression) typeLiteral);
    }

    @Override
    public void endVisit(VariableDeclarationExpression variableDeclarationExpression) {
        endVisit((Expression) variableDeclarationExpression);
    }

    @Override
    public boolean visit(VariableDeclarationExpression variableDeclarationExpression) {
        return visit((Expression) variableDeclarationExpression);
    }

    @Override
    public void endVisit(ImportDeclaration importDeclaration) {
        endVisit((ASTNode) importDeclaration);
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        return visit((ASTNode) importDeclaration);
    }

    @Override
    public void endVisit(MemberRef memberRef) {
        endVisit((ASTNode) memberRef);
    }

    @Override
    public boolean visit(MemberRef memberRef) {
        return visit((ASTNode) memberRef);
    }

    @Override
    public void endVisit(MemberValuePair memberValuePair) {
        endVisit((ASTNode) memberValuePair);
    }

    @Override
    public boolean visit(MemberValuePair memberValuePair) {
        return visit((ASTNode) memberValuePair);
    }

    @Override
    public void endVisit(MethodRef methodRef) {
        endVisit((ASTNode) methodRef);
    }

    @Override
    public boolean visit(MethodRef methodRef) {
        return visit((ASTNode) methodRef);
    }

    @Override
    public void endVisit(MethodRefParameter methodRefParameter) {
        endVisit((ASTNode) methodRefParameter);
    }

    @Override
    public boolean visit(MethodRefParameter methodRefParameter) {
        return visit((ASTNode) methodRefParameter);
    }

    @Override
    public void endVisit(Modifier modifier) {
        endVisit((ASTNode) modifier);
    }

    @Override
    public boolean visit(Modifier modifier) {
        return visit((ASTNode) modifier);
    }

    @Override
    public void endVisit(PackageDeclaration packageDeclaration) {
        endVisit((ASTNode) packageDeclaration);
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        return visit((ASTNode) packageDeclaration);
    }

    public void endVisit(Statement statement) {
        endVisit((ASTNode) statement);
    }

    public boolean visit(Statement statement) {
        return visit((ASTNode) statement);
    }

    @Override
    public void endVisit(AssertStatement assertStatement) {
        endVisit((Statement) assertStatement);
    }

    @Override
    public boolean visit(AssertStatement assertStatement) {
        return visit((Statement) assertStatement);
    }

    @Override
    public void endVisit(Block block) {
        endVisit((Statement) block);
    }

    @Override
    public boolean visit(Block block) {
        return visit((Statement) block);
    }

    @Override
    public void endVisit(BreakStatement breakStatement) {
        endVisit((Statement) breakStatement);
    }

    @Override
    public boolean visit(BreakStatement breakStatement) {
        return visit((Statement) breakStatement);
    }

    @Override
    public void endVisit(ConstructorInvocation constructorInvocation) {
        endVisit((Statement) constructorInvocation);
    }

    @Override
    public boolean visit(ConstructorInvocation constructorInvocation) {
        return visit((Statement) constructorInvocation);
    }

    @Override
    public void endVisit(ContinueStatement continueStatement) {
        endVisit((Statement) continueStatement);
    }

    @Override
    public boolean visit(ContinueStatement continueStatement) {
        return visit((Statement) continueStatement);
    }

    @Override
    public void endVisit(DoStatement doStatement) {
        endVisit((Statement) doStatement);
    }

    @Override
    public boolean visit(DoStatement doStatement) {
        return visit((Statement) doStatement);
    }

    @Override
    public void endVisit(EmptyStatement emptyStatement) {
        endVisit((Statement) emptyStatement);
    }

    @Override
    public boolean visit(EmptyStatement emptyStatement) {
        return visit((Statement) emptyStatement);
    }

    @Override
    public void endVisit(EnhancedForStatement enhancedForStatement) {
        endVisit((Statement) enhancedForStatement);
    }

    @Override
    public boolean visit(EnhancedForStatement enhancedForStatement) {
        return visit((Statement) enhancedForStatement);
    }

    @Override
    public void endVisit(ExpressionStatement expressionStatement) {
        endVisit((Statement) expressionStatement);
    }

    @Override
    public boolean visit(ExpressionStatement expressionStatement) {
        return visit((Statement) expressionStatement);
    }

    @Override
    public void endVisit(ForStatement forStatement) {
        endVisit((Statement) forStatement);
    }

    @Override
    public boolean visit(ForStatement forStatement) {
        return visit((Statement) forStatement);
    }

    @Override
    public void endVisit(IfStatement ifStatement) {
        endVisit((Statement) ifStatement);
    }

    @Override
    public boolean visit(IfStatement ifStatement) {
        return visit((Statement) ifStatement);
    }

    @Override
    public void endVisit(LabeledStatement labeledStatement) {
        endVisit((Statement) labeledStatement);
    }

    @Override
    public boolean visit(LabeledStatement labeledStatement) {
        return visit((Statement) labeledStatement);
    }

    @Override
    public void endVisit(ReturnStatement returnStatement) {
        endVisit((Statement) returnStatement);
    }

    @Override
    public boolean visit(ReturnStatement returnStatement) {
        return visit((Statement) returnStatement);
    }

    @Override
    public void endVisit(SuperConstructorInvocation superConstructorInvocation) {
        endVisit((Statement) superConstructorInvocation);
    }

    @Override
    public boolean visit(SuperConstructorInvocation superConstructorInvocation) {
        return visit((Statement) superConstructorInvocation);
    }

    @Override
    public void endVisit(SwitchCase switchCase) {
        endVisit((Statement) switchCase);
    }

    @Override
    public boolean visit(SwitchCase switchCase) {
        return visit((Statement) switchCase);
    }

    @Override
    public void endVisit(SwitchStatement switchStatement) {
        endVisit((Statement) switchStatement);
    }

    @Override
    public boolean visit(SwitchStatement switchStatement) {
        return visit((Statement) switchStatement);
    }

    @Override
    public void endVisit(SynchronizedStatement synchronizedStatement) {
        endVisit((Statement) synchronizedStatement);
    }

    @Override
    public boolean visit(SynchronizedStatement synchronizedStatement) {
        return visit((Statement) synchronizedStatement);
    }

    @Override
    public void endVisit(ThrowStatement throwStatement) {
        endVisit((Statement) throwStatement);
    }

    @Override
    public boolean visit(ThrowStatement throwStatement) {
        return visit((Statement) throwStatement);
    }

    @Override
    public void endVisit(TryStatement tryStatement) {
        endVisit((Statement) tryStatement);
    }

    @Override
    public boolean visit(TryStatement tryStatement) {
        return visit((Statement) tryStatement);
    }

    @Override
    public void endVisit(TypeDeclarationStatement typeDeclarationStatement) {
        endVisit((Statement) typeDeclarationStatement);
    }

    @Override
    public boolean visit(TypeDeclarationStatement typeDeclarationStatement) {
        return visit((Statement) typeDeclarationStatement);
    }

    @Override
    public void endVisit(VariableDeclarationStatement variableDeclarationStatement) {
        endVisit((Statement) variableDeclarationStatement);
    }

    @Override
    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        return visit((Statement) variableDeclarationStatement);
    }

    @Override
    public void endVisit(WhileStatement whileStatement) {
        endVisit((Statement) whileStatement);
    }

    @Override
    public boolean visit(WhileStatement whileStatement) {
        return visit((Statement) whileStatement);
    }

    @Override
    public void endVisit(TagElement tagElement) {
        endVisit((ASTNode) tagElement);
    }

    @Override
    public boolean visit(TagElement tagElement) {
        return visit((ASTNode) tagElement);
    }

    @Override
    public void endVisit(TextElement textElement) {
        endVisit((ASTNode) textElement);
    }

    @Override
    public boolean visit(TextElement textElement) {
        return visit((ASTNode) textElement);
    }

    public void endVisit(Type type) {
        endVisit((ASTNode) type);
    }

    public boolean visit(Type type) {
        return visit((ASTNode) type);
    }

    public void endVisit(AnnotatableType annotatableType) {
        endVisit((Type) annotatableType);
    }

    public boolean visit(AnnotatableType annotatableType) {
        return visit((Type) annotatableType);
    }

    @Override
    public void endVisit(NameQualifiedType nameQualifiedType) {
        endVisit((AnnotatableType) nameQualifiedType);
    }

    @Override
    public boolean visit(NameQualifiedType nameQualifiedType) {
        return visit((AnnotatableType) nameQualifiedType);
    }

    @Override
    public void endVisit(PrimitiveType primitiveType) {
        endVisit((AnnotatableType) primitiveType);
    }

    @Override
    public boolean visit(PrimitiveType primitiveType) {
        return visit((AnnotatableType) primitiveType);
    }

    @Override
    public void endVisit(QualifiedType qualifiedType) {
        endVisit((AnnotatableType) qualifiedType);
    }

    @Override
    public boolean visit(QualifiedType qualifiedType) {
        return visit((AnnotatableType) qualifiedType);
    }

    @Override
    public void endVisit(SimpleType simpleType) {
        endVisit((AnnotatableType) simpleType);
    }

    @Override
    public boolean visit(SimpleType simpleType) {
        return visit((AnnotatableType) simpleType);
    }

    @Override
    public void endVisit(WildcardType wildcardType) {
        endVisit((AnnotatableType) wildcardType);
    }

    @Override
    public boolean visit(WildcardType wildcardType) {
        return visit((AnnotatableType) wildcardType);
    }

    @Override
    public void endVisit(ArrayType arrayType) {
        endVisit((Type) arrayType);
    }

    @Override
    public boolean visit(ArrayType arrayType) {
        return visit((Type) arrayType);
    }

    @Override
    public void endVisit(IntersectionType intersectionType) {
        endVisit((Type) intersectionType);
    }

    @Override
    public boolean visit(IntersectionType intersectionType) {
        return visit((Type) intersectionType);
    }

    @Override
    public void endVisit(ParameterizedType parameterizedType) {
        endVisit((Type) parameterizedType);
    }

    @Override
    public boolean visit(ParameterizedType parameterizedType) {
        return visit((Type) parameterizedType);
    }

    @Override
    public void endVisit(UnionType unionType) {
        endVisit((Type) unionType);
    }

    @Override
    public boolean visit(UnionType unionType) {
        return visit((Type) unionType);
    }

    @Override
    public void endVisit(TypeParameter typeParameter) {
        endVisit((ASTNode) typeParameter);
    }

    @Override
    public boolean visit(TypeParameter typeParameter) {
        return visit((ASTNode) typeParameter);
    }

    public void endVisit(VariableDeclaration variableDeclaration) {
        endVisit((ASTNode) variableDeclaration);
    }

    public boolean visit(VariableDeclaration variableDeclaration) {
        return visit((ASTNode) variableDeclaration);
    }

    @Override
    public void endVisit(SingleVariableDeclaration singleVariableDeclaration) {
        endVisit((VariableDeclaration) singleVariableDeclaration);
    }

    @Override
    public boolean visit(SingleVariableDeclaration singleVariableDeclaration) {
        return visit((VariableDeclaration) singleVariableDeclaration);
    }

    @Override
    public void endVisit(VariableDeclarationFragment variableDeclarationFragment) {
        endVisit((VariableDeclaration) variableDeclarationFragment);
    }

    @Override
    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        return visit((VariableDeclaration) variableDeclarationFragment);
    }

    @Override
    public void endVisit(ModuleDeclaration moduleDeclaration) {
        endVisit((ASTNode) moduleDeclaration);
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        return visit((ASTNode) moduleDeclaration);
    }

    @Override
    public void endVisit(ModuleModifier moduleModifier) {
        endVisit((ASTNode) moduleModifier);
    }

    @Override
    public boolean visit(ModuleModifier moduleModifier) {
        return visit((ASTNode) moduleModifier);
    }

    public void endVisit(ModuleDirective moduleDirective) {
        endVisit((ASTNode) moduleDirective);
    }

    public boolean visit(ModuleDirective moduleDirective) {
        return visit((ASTNode) moduleDirective);
    }

    @Override
    public void endVisit(ExportsDirective exportsDirective) {
        endVisit((ModuleDirective) exportsDirective);
    }

    @Override
    public boolean visit(ExportsDirective exportsDirective) {
        return visit((ModuleDirective) exportsDirective);
    }

    @Override
    public void endVisit(OpensDirective opensDirective) {
        endVisit((ModuleDirective) opensDirective);
    }

    @Override
    public boolean visit(OpensDirective opensDirective) {
        return visit((ModuleDirective) opensDirective);
    }

    @Override
    public void endVisit(RequiresDirective requiresDirective) {
        endVisit((ModuleDirective) requiresDirective);
    }

    @Override
    public boolean visit(RequiresDirective requiresDirective) {
        return visit((ModuleDirective) requiresDirective);
    }

    @Override
    public void endVisit(ProvidesDirective providesDirective) {
        endVisit((ModuleDirective) providesDirective);
    }

    @Override
    public boolean visit(ProvidesDirective providesDirective) {
        return visit((ModuleDirective) providesDirective);
    }

    @Override
    public void endVisit(UsesDirective usesDirective) {
        endVisit((ModuleDirective) usesDirective);
    }

    @Override
    public boolean visit(UsesDirective usesDirective) {
        return visit((ModuleDirective) usesDirective);
    }
}
