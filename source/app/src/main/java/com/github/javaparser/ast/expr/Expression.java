package com.github.javaparser.ast.expr;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithOptionalScope;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.ExpressionMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.utils.CodeGenerationUtils;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class Expression extends Node {
    public static final Predicate<Node> IS_NOT_ENCLOSED_EXPR = new Predicate() {
        @Override
        public final boolean test(Object obj) {
            boolean lambda$static$0;
            lambda$static$0 = Expression.lambda$static$0((Node) obj);
            return lambda$static$0;
        }
    };
    public static final Function<Expression, Expression> EXCLUDE_ENCLOSED_EXPR = new Function() {
        @Override
        public final Object apply(Object obj) {
            Expression lambda$static$1;
            lambda$static$1 = Expression.lambda$static$1((Expression) obj);
            return lambda$static$1;
        }
    };

    @AllFieldsConstructor
    public Expression() {
        this(null);
    }

    public static boolean lambda$static$0(Node n10) {
        return !(n10 instanceof EnclosedExpr);
    }

    public static Expression lambda$static$1(Expression expr) {
        while (expr.isEnclosedExpr()) {
            expr = expr.asEnclosedExpr().getInner();
        }
        return expr;
    }

    public final boolean appearsInAssignmentContext() {
        if (getParentNode().isPresent() && (getParentNode().get() instanceof Expression)) {
            return ((Expression) getParentNode().get()).isAssignmentContext();
        }
        return false;
    }

    public final boolean appearsInInvocationContext() {
        if (getParentNode().isPresent() && (getParentNode().get() instanceof Expression)) {
            return ((Expression) getParentNode().get()).isInvocationContext();
        }
        return false;
    }

    public AnnotationExpr asAnnotationExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not AnnotationExpr, it is %s", this, getClass().getSimpleName()));
    }

    public ArrayAccessExpr asArrayAccessExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ArrayAccessExpr, it is %s", this, getClass().getSimpleName()));
    }

    public ArrayCreationExpr asArrayCreationExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ArrayCreationExpr, it is %s", this, getClass().getSimpleName()));
    }

    public ArrayInitializerExpr asArrayInitializerExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ArrayInitializerExpr, it is %s", this, getClass().getSimpleName()));
    }

    public AssignExpr asAssignExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not AssignExpr, it is %s", this, getClass().getSimpleName()));
    }

    public BinaryExpr asBinaryExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not BinaryExpr, it is %s", this, getClass().getSimpleName()));
    }

    public BooleanLiteralExpr asBooleanLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not BooleanLiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public CastExpr asCastExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not CastExpr, it is %s", this, getClass().getSimpleName()));
    }

    public CharLiteralExpr asCharLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not CharLiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public ClassExpr asClassExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ClassExpr, it is %s", this, getClass().getSimpleName()));
    }

    public ConditionalExpr asConditionalExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ConditionalExpr, it is %s", this, getClass().getSimpleName()));
    }

    public DoubleLiteralExpr asDoubleLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not DoubleLiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public EnclosedExpr asEnclosedExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not EnclosedExpr, it is %s", this, getClass().getSimpleName()));
    }

    public FieldAccessExpr asFieldAccessExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not FieldAccessExpr, it is %s", this, getClass().getSimpleName()));
    }

    public InstanceOfExpr asInstanceOfExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not InstanceOfExpr, it is %s", this, getClass().getSimpleName()));
    }

    public IntegerLiteralExpr asIntegerLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not IntegerLiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public LambdaExpr asLambdaExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not LambdaExpr, it is %s", this, getClass().getSimpleName()));
    }

    public LiteralExpr asLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not LiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public LiteralStringValueExpr asLiteralStringValueExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not LiteralStringValueExpr, it is %s", this, getClass().getSimpleName()));
    }

    public LongLiteralExpr asLongLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not LongLiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public MarkerAnnotationExpr asMarkerAnnotationExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not MarkerAnnotationExpr, it is %s", this, getClass().getSimpleName()));
    }

    public MethodCallExpr asMethodCallExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not MethodCallExpr, it is %s", this, getClass().getSimpleName()));
    }

    public MethodReferenceExpr asMethodReferenceExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not MethodReferenceExpr, it is %s", this, getClass().getSimpleName()));
    }

    public NameExpr asNameExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not NameExpr, it is %s", this, getClass().getSimpleName()));
    }

    public NormalAnnotationExpr asNormalAnnotationExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not NormalAnnotationExpr, it is %s", this, getClass().getSimpleName()));
    }

    public NullLiteralExpr asNullLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not NullLiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public ObjectCreationExpr asObjectCreationExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ObjectCreationExpr, it is %s", this, getClass().getSimpleName()));
    }

    public PatternExpr asPatternExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not PatternExpr, it is %s", this, getClass().getSimpleName()));
    }

    public RecordPatternExpr asRecordPatternExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not RecordPatternExpr, it is %s", this, getClass().getSimpleName()));
    }

    public SingleMemberAnnotationExpr asSingleMemberAnnotationExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not SingleMemberAnnotationExpr, it is %s", this, getClass().getSimpleName()));
    }

    public StringLiteralExpr asStringLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not StringLiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public SuperExpr asSuperExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not SuperExpr, it is %s", this, getClass().getSimpleName()));
    }

    public SwitchExpr asSwitchExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not SwitchExpr, it is %s", this, getClass().getSimpleName()));
    }

    public TextBlockLiteralExpr asTextBlockLiteralExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not TextBlockLiteralExpr, it is %s", this, getClass().getSimpleName()));
    }

    public ThisExpr asThisExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ThisExpr, it is %s", this, getClass().getSimpleName()));
    }

    public TypeExpr asTypeExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not TypeExpr, it is %s", this, getClass().getSimpleName()));
    }

    public TypePatternExpr asTypePatternExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not TypePatternExpr, it is %s", this, getClass().getSimpleName()));
    }

    public UnaryExpr asUnaryExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not UnaryExpr, it is %s", this, getClass().getSimpleName()));
    }

    public VariableDeclarationExpr asVariableDeclarationExpr() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not VariableDeclarationExpr, it is %s", this, getClass().getSimpleName()));
    }

    public ResolvedType calculateResolvedType() {
        return getSymbolResolver().calculateType(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean elidesTypeArguments() {
        if (!hasScope() || !(this instanceof NodeWithTypeArguments)) {
            return true;
        }
        NodeWithTypeArguments nodeWithTypeArguments = (NodeWithTypeArguments) this;
        return ((NodeWithOptionalScope) this).getScope().get().elidesTypeArguments() && (!nodeWithTypeArguments.getTypeArguments().isPresent() || nodeWithTypeArguments.isUsingDiamondOperator());
    }

    public void ifAnnotationExpr(Consumer<AnnotationExpr> action) {
    }

    public void ifArrayAccessExpr(Consumer<ArrayAccessExpr> action) {
    }

    public void ifArrayCreationExpr(Consumer<ArrayCreationExpr> action) {
    }

    public void ifArrayInitializerExpr(Consumer<ArrayInitializerExpr> action) {
    }

    public void ifAssignExpr(Consumer<AssignExpr> action) {
    }

    public void ifBinaryExpr(Consumer<BinaryExpr> action) {
    }

    public void ifBooleanLiteralExpr(Consumer<BooleanLiteralExpr> action) {
    }

    public void ifCastExpr(Consumer<CastExpr> action) {
    }

    public void ifCharLiteralExpr(Consumer<CharLiteralExpr> action) {
    }

    public void ifClassExpr(Consumer<ClassExpr> action) {
    }

    public void ifConditionalExpr(Consumer<ConditionalExpr> action) {
    }

    public void ifDoubleLiteralExpr(Consumer<DoubleLiteralExpr> action) {
    }

    public void ifEnclosedExpr(Consumer<EnclosedExpr> action) {
    }

    public void ifFieldAccessExpr(Consumer<FieldAccessExpr> action) {
    }

    public void ifInstanceOfExpr(Consumer<InstanceOfExpr> action) {
    }

    public void ifIntegerLiteralExpr(Consumer<IntegerLiteralExpr> action) {
    }

    public void ifLambdaExpr(Consumer<LambdaExpr> action) {
    }

    public void ifLiteralExpr(Consumer<LiteralExpr> action) {
    }

    public void ifLiteralStringValueExpr(Consumer<LiteralStringValueExpr> action) {
    }

    public void ifLongLiteralExpr(Consumer<LongLiteralExpr> action) {
    }

    public void ifMarkerAnnotationExpr(Consumer<MarkerAnnotationExpr> action) {
    }

    public void ifMethodCallExpr(Consumer<MethodCallExpr> action) {
    }

    public void ifMethodReferenceExpr(Consumer<MethodReferenceExpr> action) {
    }

    public void ifNameExpr(Consumer<NameExpr> action) {
    }

    public void ifNormalAnnotationExpr(Consumer<NormalAnnotationExpr> action) {
    }

    public void ifNullLiteralExpr(Consumer<NullLiteralExpr> action) {
    }

    public void ifObjectCreationExpr(Consumer<ObjectCreationExpr> action) {
    }

    public void ifPatternExpr(Consumer<PatternExpr> action) {
    }

    public void ifRecordPatternExpr(Consumer<RecordPatternExpr> action) {
    }

    public void ifSingleMemberAnnotationExpr(Consumer<SingleMemberAnnotationExpr> action) {
    }

    public void ifStringLiteralExpr(Consumer<StringLiteralExpr> action) {
    }

    public void ifSuperExpr(Consumer<SuperExpr> action) {
    }

    public void ifSwitchExpr(Consumer<SwitchExpr> action) {
    }

    public void ifTextBlockLiteralExpr(Consumer<TextBlockLiteralExpr> action) {
    }

    public void ifThisExpr(Consumer<ThisExpr> action) {
    }

    public void ifTypeExpr(Consumer<TypeExpr> action) {
    }

    public void ifTypePatternExpr(Consumer<TypePatternExpr> action) {
    }

    public void ifUnaryExpr(Consumer<UnaryExpr> action) {
    }

    public void ifVariableDeclarationExpr(Consumer<VariableDeclarationExpr> action) {
    }

    public boolean isAnnotationExpr() {
        return false;
    }

    public boolean isArrayAccessExpr() {
        return false;
    }

    public boolean isArrayCreationExpr() {
        return false;
    }

    public boolean isArrayInitializerExpr() {
        return false;
    }

    public boolean isAssignExpr() {
        return false;
    }

    public boolean isAssignmentContext() {
        return false;
    }

    public boolean isBinaryExpr() {
        return false;
    }

    public boolean isBooleanLiteralExpr() {
        return false;
    }

    public boolean isCastExpr() {
        return false;
    }

    public boolean isCharLiteralExpr() {
        return false;
    }

    public boolean isClassExpr() {
        return false;
    }

    public boolean isConditionalExpr() {
        return false;
    }

    public boolean isDoubleLiteralExpr() {
        return false;
    }

    public boolean isEnclosedExpr() {
        return false;
    }

    public boolean isFieldAccessExpr() {
        return false;
    }

    public boolean isInstanceOfExpr() {
        return false;
    }

    public boolean isIntegerLiteralExpr() {
        return false;
    }

    public boolean isInvocationContext() {
        return false;
    }

    public boolean isLambdaExpr() {
        return false;
    }

    public boolean isLiteralExpr() {
        return false;
    }

    public boolean isLiteralStringValueExpr() {
        return false;
    }

    public boolean isLongLiteralExpr() {
        return false;
    }

    public boolean isMarkerAnnotationExpr() {
        return false;
    }

    public boolean isMethodCallExpr() {
        return false;
    }

    public boolean isMethodReferenceExpr() {
        return false;
    }

    public boolean isNameExpr() {
        return false;
    }

    public boolean isNormalAnnotationExpr() {
        return false;
    }

    public boolean isNullLiteralExpr() {
        return false;
    }

    public boolean isObjectCreationExpr() {
        return false;
    }

    public boolean isPatternExpr() {
        return false;
    }

    public boolean isPolyExpression() {
        return false;
    }

    public boolean isQualified() {
        return hasScope();
    }

    public boolean isRecordPatternExpr() {
        return false;
    }

    public boolean isSingleMemberAnnotationExpr() {
        return false;
    }

    public boolean isStandaloneExpression() {
        return !isPolyExpression();
    }

    public boolean isStringLiteralExpr() {
        return false;
    }

    public boolean isSuperExpr() {
        return false;
    }

    public boolean isSwitchExpr() {
        return false;
    }

    public boolean isTextBlockLiteralExpr() {
        return false;
    }

    public boolean isThisExpr() {
        return false;
    }

    public boolean isTypeExpr() {
        return false;
    }

    public boolean isTypePatternExpr() {
        return false;
    }

    public boolean isUnaryExpr() {
        return false;
    }

    public boolean isVariableDeclarationExpr() {
        return false;
    }

    public Optional<AnnotationExpr> toAnnotationExpr() {
        return Optional.empty();
    }

    public Optional<ArrayAccessExpr> toArrayAccessExpr() {
        return Optional.empty();
    }

    public Optional<ArrayCreationExpr> toArrayCreationExpr() {
        return Optional.empty();
    }

    public Optional<ArrayInitializerExpr> toArrayInitializerExpr() {
        return Optional.empty();
    }

    public Optional<AssignExpr> toAssignExpr() {
        return Optional.empty();
    }

    public Optional<BinaryExpr> toBinaryExpr() {
        return Optional.empty();
    }

    public Optional<BooleanLiteralExpr> toBooleanLiteralExpr() {
        return Optional.empty();
    }

    public Optional<CastExpr> toCastExpr() {
        return Optional.empty();
    }

    public Optional<CharLiteralExpr> toCharLiteralExpr() {
        return Optional.empty();
    }

    public Optional<ClassExpr> toClassExpr() {
        return Optional.empty();
    }

    public Optional<ConditionalExpr> toConditionalExpr() {
        return Optional.empty();
    }

    public Optional<DoubleLiteralExpr> toDoubleLiteralExpr() {
        return Optional.empty();
    }

    public Optional<EnclosedExpr> toEnclosedExpr() {
        return Optional.empty();
    }

    public Optional<FieldAccessExpr> toFieldAccessExpr() {
        return Optional.empty();
    }

    public Optional<InstanceOfExpr> toInstanceOfExpr() {
        return Optional.empty();
    }

    public Optional<IntegerLiteralExpr> toIntegerLiteralExpr() {
        return Optional.empty();
    }

    public Optional<LambdaExpr> toLambdaExpr() {
        return Optional.empty();
    }

    public Optional<LiteralExpr> toLiteralExpr() {
        return Optional.empty();
    }

    public Optional<LiteralStringValueExpr> toLiteralStringValueExpr() {
        return Optional.empty();
    }

    public Optional<LongLiteralExpr> toLongLiteralExpr() {
        return Optional.empty();
    }

    public Optional<MarkerAnnotationExpr> toMarkerAnnotationExpr() {
        return Optional.empty();
    }

    public Optional<MethodCallExpr> toMethodCallExpr() {
        return Optional.empty();
    }

    public Optional<MethodReferenceExpr> toMethodReferenceExpr() {
        return Optional.empty();
    }

    public Optional<NameExpr> toNameExpr() {
        return Optional.empty();
    }

    public Optional<NormalAnnotationExpr> toNormalAnnotationExpr() {
        return Optional.empty();
    }

    public Optional<NullLiteralExpr> toNullLiteralExpr() {
        return Optional.empty();
    }

    public Optional<ObjectCreationExpr> toObjectCreationExpr() {
        return Optional.empty();
    }

    public Optional<PatternExpr> toPatternExpr() {
        return Optional.empty();
    }

    public Optional<RecordPatternExpr> toRecordPatternExpr() {
        return Optional.empty();
    }

    public Optional<SingleMemberAnnotationExpr> toSingleMemberAnnotationExpr() {
        return Optional.empty();
    }

    public Optional<StringLiteralExpr> toStringLiteralExpr() {
        return Optional.empty();
    }

    public Optional<SuperExpr> toSuperExpr() {
        return Optional.empty();
    }

    public Optional<SwitchExpr> toSwitchExpr() {
        return Optional.empty();
    }

    public Optional<TextBlockLiteralExpr> toTextBlockLiteralExpr() {
        return Optional.empty();
    }

    public Optional<ThisExpr> toThisExpr() {
        return Optional.empty();
    }

    public Optional<TypeExpr> toTypeExpr() {
        return Optional.empty();
    }

    public Optional<TypePatternExpr> toTypePatternExpr() {
        return Optional.empty();
    }

    public Optional<UnaryExpr> toUnaryExpr() {
        return Optional.empty();
    }

    public Optional<VariableDeclarationExpr> toVariableDeclarationExpr() {
        return Optional.empty();
    }

    public Expression(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public ExpressionMetaModel getMetaModel() {
        return JavaParserMetaModel.expressionMetaModel;
    }

    @Override
    public Expression mo1220clone() {
        return (Expression) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
