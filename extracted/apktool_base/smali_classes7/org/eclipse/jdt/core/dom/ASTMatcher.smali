.class public Lorg/eclipse/jdt/core/dom/ASTMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private matchDocTags:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTMatcher;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/ASTMatcher;->matchDocTags:Z

    return-void
.end method

.method private compareDeprecatedComment(Lorg/eclipse/jdt/core/dom/Javadoc;Lorg/eclipse/jdt/core/dom/Javadoc;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Javadoc;->getComment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Javadoc;->getComment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private compareDeprecatedSwitchExpression(Lorg/eclipse/jdt/core/dom/SwitchCase;Lorg/eclipse/jdt/core/dom/SwitchCase;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SwitchCase;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getComponentType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1
.end method

.method public static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public match(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;Ljava/lang/Object;)Z
    .locals 3

    .line 7
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getDefault()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getDefault()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;Ljava/lang/Object;)Z
    .locals 1

    .line 14
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ArrayAccess;Ljava/lang/Object;)Z
    .locals 3

    .line 17
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ArrayAccess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 18
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ArrayAccess;

    .line 19
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->getArray()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->getArray()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->getIndex()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayAccess;->getIndex()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ArrayCreation;Ljava/lang/Object;)Z
    .locals 3

    .line 21
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ArrayCreation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 22
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ArrayCreation;

    .line 23
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->getType()Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->getType()Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->dimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->dimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->getInitializer()Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->getInitializer()Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ArrayInitializer;Ljava/lang/Object;)Z
    .locals 1

    .line 26
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 27
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    .line 28
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->expressions()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ArrayType;Ljava/lang/Object;)Z
    .locals 3

    .line 29
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ArrayType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 31
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 32
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->componentType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 33
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/AssertStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 35
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/AssertStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/AssertStatement;

    .line 37
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getMessage()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AssertStatement;->getMessage()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/Assignment;Ljava/lang/Object;)Z
    .locals 3

    .line 39
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/Assignment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/Assignment;

    .line 41
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getOperator()Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Assignment;->getOperator()Lorg/eclipse/jdt/core/dom/Assignment$Operator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getLeftHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Assignment;->getLeftHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/Block;Ljava/lang/Object;)Z
    .locals 1

    .line 44
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/Block;

    .line 46
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/BlockComment;Ljava/lang/Object;)Z
    .locals 0

    .line 47
    instance-of p1, p2, Lorg/eclipse/jdt/core/dom/BlockComment;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/BooleanLiteral;Ljava/lang/Object;)Z
    .locals 2

    .line 48
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    .line 50
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;->booleanValue()Z

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/BreakStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 51
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/BreakStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/BreakStatement;

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->isImplicit()Z

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BreakStatement;->isImplicit()Z

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/CastExpression;Ljava/lang/Object;)Z
    .locals 3

    .line 56
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/CastExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/CastExpression;

    .line 58
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CastExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CastExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CastExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CastExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/CatchClause;Ljava/lang/Object;)Z
    .locals 3

    .line 60
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/CatchClause;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/CatchClause;

    .line 62
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CatchClause;->getException()Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CatchClause;->getException()Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CatchClause;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CatchClause;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/CharacterLiteral;Ljava/lang/Object;)Z
    .locals 1

    .line 64
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    .line 66
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;Ljava/lang/Object;)Z
    .locals 4

    .line 67
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 70
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->internalGetName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->internalGetName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    .line 71
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 73
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object p1

    .line 76
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/lang/Object;)Z
    .locals 3

    .line 78
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    .line 80
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ConditionalExpression;Ljava/lang/Object;)Z
    .locals 3

    .line 84
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    .line 86
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getThenExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->getElseExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;Ljava/lang/Object;)Z
    .locals 3

    .line 89
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 90
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;

    .line 91
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 92
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 93
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ContinueStatement;Ljava/lang/Object;)Z
    .locals 1

    .line 94
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ContinueStatement;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ContinueStatement;

    .line 96
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ContinueStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ContinueStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/CreationReference;Ljava/lang/Object;)Z
    .locals 3

    .line 97
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/CreationReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/CreationReference;

    .line 99
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CreationReference;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CreationReference;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CreationReference;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CreationReference;->typeArguments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/Dimension;Ljava/lang/Object;)Z
    .locals 1

    .line 101
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/Dimension;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/Dimension;

    .line 103
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/DoStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 104
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/DoStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/DoStatement;

    .line 106
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/DoStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/DoStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/DoStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/EmptyStatement;Ljava/lang/Object;)Z
    .locals 0

    .line 108
    instance-of p1, p2, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/EnhancedForStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 109
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;

    .line 111
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getParameter()Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getParameter()Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;Ljava/lang/Object;)Z
    .locals 3

    .line 114
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    .line 116
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->arguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->arguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object p1

    .line 121
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object p2

    .line 122
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/EnumDeclaration;Ljava/lang/Object;)Z
    .locals 3

    .line 123
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    .line 125
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->enumConstants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    .line 131
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p2

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ExportsDirective;Ljava/lang/Object;)Z
    .locals 3

    .line 133
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ExportsDirective;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ExportsDirective;

    .line 135
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;Ljava/lang/Object;)Z
    .locals 3

    .line 137
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;

    .line 139
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ExpressionStatement;Ljava/lang/Object;)Z
    .locals 1

    .line 142
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    .line 144
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/FieldAccess;Ljava/lang/Object;)Z
    .locals 3

    .line 145
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/FieldAccess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/FieldAccess;

    .line 147
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldAccess;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/FieldAccess;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldAccess;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/FieldAccess;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/FieldDeclaration;Ljava/lang/Object;)Z
    .locals 4

    .line 149
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    .line 151
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 152
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 153
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 154
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ForStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 157
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ForStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 158
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ForStatement;

    .line 159
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ForStatement;->initializers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ForStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ForStatement;->updaters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ForStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/IfStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 163
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/IfStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/IfStatement;

    .line 165
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/IfStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getThenStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/IfStatement;->getThenStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IfStatement;->getElseStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/IfStatement;->getElseStatement()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ImportDeclaration;Ljava/lang/Object;)Z
    .locals 3

    .line 168
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    .line 170
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 171
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isStatic()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isStatic()Z

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 172
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isOnDemand()Z

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isOnDemand()Z

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/InfixExpression;Ljava/lang/Object;)Z
    .locals 3

    .line 174
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/InfixExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/InfixExpression;

    .line 176
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->hasExtendedOperands()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->hasExtendedOperands()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 178
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->hasExtendedOperands()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->hasExtendedOperands()Z

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 179
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/Initializer;Ljava/lang/Object;)Z
    .locals 4

    .line 182
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/Initializer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/Initializer;

    .line 184
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 185
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 186
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 187
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Initializer;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Initializer;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/InstanceofExpression;Ljava/lang/Object;)Z
    .locals 3

    .line 189
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/InstanceofExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 190
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/InstanceofExpression;

    .line 191
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/IntersectionType;Ljava/lang/Object;)Z
    .locals 1

    .line 193
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/IntersectionType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/IntersectionType;

    .line 195
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/IntersectionType;->types()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/Javadoc;Ljava/lang/Object;)Z
    .locals 1

    .line 196
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/Javadoc;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 197
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/Javadoc;

    .line 198
    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/ASTMatcher;->matchDocTags:Z

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Javadoc;->tags()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1

    .line 200
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->compareDeprecatedComment(Lorg/eclipse/jdt/core/dom/Javadoc;Lorg/eclipse/jdt/core/dom/Javadoc;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/LabeledStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 201
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/LabeledStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/LabeledStatement;

    .line 203
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LabeledStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/LabeledStatement;->getLabel()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LabeledStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/LabeledStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/LambdaExpression;Ljava/lang/Object;)Z
    .locals 3

    .line 205
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 206
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    .line 207
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->hasParentheses()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->hasParentheses()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 208
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->parameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->parameters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->getBody()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->getBody()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/LineComment;Ljava/lang/Object;)Z
    .locals 0

    .line 210
    instance-of p1, p2, Lorg/eclipse/jdt/core/dom/LineComment;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/MarkerAnnotation;Ljava/lang/Object;)Z
    .locals 1

    .line 211
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 212
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;

    .line 213
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/MemberRef;Ljava/lang/Object;)Z
    .locals 3

    .line 214
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/MemberRef;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 215
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/MemberRef;

    .line 216
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MemberRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberRef;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MemberRef;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/MemberValuePair;Ljava/lang/Object;)Z
    .locals 3

    .line 218
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/MemberValuePair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 219
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/MemberValuePair;

    .line 220
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MemberValuePair;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/MethodDeclaration;Ljava/lang/Object;)Z
    .locals 5

    .line 233
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    .line 235
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    .line 236
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v3

    if-ne v2, v3, :cond_4

    .line 237
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 238
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 242
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalGetReturnType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalGetReturnType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    .line 244
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 245
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverQualifier()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverQualifier()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 246
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-lt v0, v2, :cond_3

    .line 247
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getExtraDimensions()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getExtraDimensions()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 250
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalThrownExceptions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalThrownExceptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/MethodInvocation;Ljava/lang/Object;)Z
    .locals 3

    .line 252
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 253
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    .line 254
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 255
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 256
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodInvocation;->arguments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/MethodRef;Ljava/lang/Object;)Z
    .locals 3

    .line 222
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/MethodRef;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 223
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/MethodRef;

    .line 224
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodRef;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRef;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodRef;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRef;->parameters()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodRef;->parameters()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/MethodRefParameter;Ljava/lang/Object;)Z
    .locals 3

    .line 227
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 228
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    .line 229
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 230
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->isVarargs()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->isVarargs()Z

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 231
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/Modifier;Ljava/lang/Object;)Z
    .locals 2

    .line 259
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/Modifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 260
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/Modifier;

    .line 261
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->getKeyword()Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Modifier;->getKeyword()Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;Ljava/lang/Object;)Z
    .locals 3

    .line 262
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 263
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    .line 264
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->isOpen()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->isOpen()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 267
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->moduleStatements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->moduleStatements()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ModuleModifier;Ljava/lang/Object;)Z
    .locals 2

    .line 269
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 270
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    .line 271
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->getKeyword()Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->getKeyword()Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/NameQualifiedType;Ljava/lang/Object;)Z
    .locals 3

    .line 272
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 273
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    .line 274
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/NormalAnnotation;Ljava/lang/Object;)Z
    .locals 3

    .line 277
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 278
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    .line 279
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/NullLiteral;Ljava/lang/Object;)Z
    .locals 0

    .line 281
    instance-of p1, p2, Lorg/eclipse/jdt/core/dom/NullLiteral;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/NumberLiteral;Ljava/lang/Object;)Z
    .locals 1

    .line 282
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 283
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    .line 284
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/OpensDirective;Ljava/lang/Object;)Z
    .locals 3

    .line 285
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/OpensDirective;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 286
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/OpensDirective;

    .line 287
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/PackageDeclaration;Ljava/lang/Object;)Z
    .locals 3

    .line 289
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 290
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    .line 291
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 292
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 293
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 294
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ParameterizedType;Ljava/lang/Object;)Z
    .locals 3

    .line 295
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 296
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    .line 297
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;Ljava/lang/Object;)Z
    .locals 1

    .line 299
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 300
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    .line 301
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/PostfixExpression;Ljava/lang/Object;)Z
    .locals 3

    .line 302
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/PostfixExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 303
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/PostfixExpression;

    .line 304
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/PostfixExpression$Operator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PostfixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/PrefixExpression;Ljava/lang/Object;)Z
    .locals 3

    .line 306
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/PrefixExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/PrefixExpression;

    .line 308
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/PrefixExpression$Operator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PrefixExpression;->getOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/PrimitiveType;Ljava/lang/Object;)Z
    .locals 3

    .line 310
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 311
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    .line 312
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 313
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ProvidesDirective;Ljava/lang/Object;)Z
    .locals 3

    .line 315
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ProvidesDirective;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 316
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ProvidesDirective;

    .line 317
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->implementations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->implementations()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/QualifiedName;Ljava/lang/Object;)Z
    .locals 3

    .line 319
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/QualifiedName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 320
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/QualifiedName;

    .line 321
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/QualifiedType;Ljava/lang/Object;)Z
    .locals 4

    .line 323
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/QualifiedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 324
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/QualifiedType;

    .line 325
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    .line 326
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getQualifier()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getQualifier()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 327
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/RequiresDirective;Ljava/lang/Object;)Z
    .locals 3

    .line 329
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/RequiresDirective;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 330
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/RequiresDirective;

    .line 331
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/RequiresDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ReturnStatement;Ljava/lang/Object;)Z
    .locals 1

    .line 333
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 334
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    .line 335
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ReturnStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ReturnStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SimpleName;Ljava/lang/Object;)Z
    .locals 1

    .line 336
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 337
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SimpleName;

    .line 338
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SimpleType;Ljava/lang/Object;)Z
    .locals 3

    .line 339
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SimpleType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 340
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SimpleType;

    .line 341
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 342
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;Ljava/lang/Object;)Z
    .locals 3

    .line 344
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 345
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    .line 346
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Annotation;->getTypeName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Ljava/lang/Object;)Z
    .locals 6

    .line 348
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 349
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    .line 350
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 351
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getModifiers()I

    move-result v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getModifiers()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 353
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    if-lt v0, v3, :cond_2

    .line 354
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    if-lt v0, v2, :cond_3

    .line 356
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v4

    if-ne v2, v4, :cond_5

    .line 357
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-lt v0, v3, :cond_4

    .line 358
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 359
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 360
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/StringLiteral;Ljava/lang/Object;)Z
    .locals 1

    .line 361
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/StringLiteral;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 362
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/StringLiteral;

    .line 363
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/StringLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/StringLiteral;->getEscapedValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;Ljava/lang/Object;)Z
    .locals 3

    .line 364
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 365
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;

    .line 366
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 367
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 368
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->arguments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SuperFieldAccess;Ljava/lang/Object;)Z
    .locals 3

    .line 370
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 371
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    .line 372
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;Ljava/lang/Object;)Z
    .locals 3

    .line 374
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 375
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;

    .line 376
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 377
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 378
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->arguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->arguments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SuperMethodReference;Ljava/lang/Object;)Z
    .locals 3

    .line 381
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SuperMethodReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 382
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SuperMethodReference;

    .line 383
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SwitchCase;Ljava/lang/Object;)Z
    .locals 2

    .line 386
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SwitchCase;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 387
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SwitchCase;

    .line 388
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 389
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->expressions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SwitchCase;->expressions()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    .line 390
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->compareDeprecatedSwitchExpression(Lorg/eclipse/jdt/core/dom/SwitchCase;Lorg/eclipse/jdt/core/dom/SwitchCase;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SwitchExpression;Ljava/lang/Object;)Z
    .locals 3

    .line 391
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 392
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    .line 393
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->statements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SwitchExpression;->statements()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SwitchStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 395
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 396
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    .line 397
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->statements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SwitchStatement;->statements()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/SynchronizedStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 399
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 400
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;

    .line 401
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/TagElement;Ljava/lang/Object;)Z
    .locals 3

    .line 403
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/TagElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 404
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/TagElement;

    .line 405
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TagElement;->fragments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/TextElement;Ljava/lang/Object;)Z
    .locals 1

    .line 407
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/TextElement;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 408
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/TextElement;

    .line 409
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TextElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TextElement;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ThisExpression;Ljava/lang/Object;)Z
    .locals 1

    .line 410
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ThisExpression;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 411
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ThisExpression;

    .line 412
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ThisExpression;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ThisExpression;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/ThrowStatement;Ljava/lang/Object;)Z
    .locals 1

    .line 413
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/ThrowStatement;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 414
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/ThrowStatement;

    .line 415
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ThrowStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ThrowStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/TryStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 416
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/TryStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 417
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/TryStatement;

    .line 418
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 419
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TryStatement;->resources()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TryStatement;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->catchClauses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TryStatement;->catchClauses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TryStatement;->getFinally()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TryStatement;->getFinally()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/TypeDeclaration;Ljava/lang/Object;)Z
    .locals 4

    .line 423
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 424
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    .line 425
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 426
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 427
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalGetSuperclass()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalGetSuperclass()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 428
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalSuperInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalSuperInterfaces()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x3

    if-lt v0, v2, :cond_7

    .line 429
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 430
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 431
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 432
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 433
    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result v2

    if-ne v0, v2, :cond_8

    .line 434
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 435
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 436
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;Ljava/lang/Object;)Z
    .locals 1

    .line 437
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 438
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    .line 439
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/TypeLiteral;Ljava/lang/Object;)Z
    .locals 1

    .line 440
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/TypeLiteral;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 441
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/TypeLiteral;

    .line 442
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeLiteral;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeLiteral;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/TypeMethodReference;Ljava/lang/Object;)Z
    .locals 3

    .line 443
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/TypeMethodReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 444
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/TypeMethodReference;

    .line 445
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/TypeParameter;Ljava/lang/Object;)Z
    .locals 3

    .line 448
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/TypeParameter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 449
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/TypeParameter;

    .line 450
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 451
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeParameter;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->typeBounds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/TypeParameter;->typeBounds()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/UnionType;Ljava/lang/Object;)Z
    .locals 1

    .line 454
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/UnionType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 455
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/UnionType;

    .line 456
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/UnionType;->types()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/UnionType;->types()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/UsesDirective;Ljava/lang/Object;)Z
    .locals 1

    .line 457
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/UsesDirective;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 458
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/UsesDirective;

    .line 459
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/UsesDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/UsesDirective;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;Ljava/lang/Object;)Z
    .locals 4

    .line 460
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 461
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    .line 462
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 463
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getModifiers()I

    move-result v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getModifiers()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 464
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 465
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;Ljava/lang/Object;)Z
    .locals 4

    .line 467
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 468
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    .line 469
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    .line 470
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 471
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 473
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;Ljava/lang/Object;)Z
    .locals 4

    .line 474
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 475
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    .line 476
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 477
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getModifiers()I

    move-result v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getModifiers()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 478
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 479
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/WhileStatement;Ljava/lang/Object;)Z
    .locals 3

    .line 481
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/WhileStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 482
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/WhileStatement;

    .line 483
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/WhileStatement;->getBody()Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public match(Lorg/eclipse/jdt/core/dom/WildcardType;Ljava/lang/Object;)Z
    .locals 3

    .line 485
    instance-of v0, p2, Lorg/eclipse/jdt/core/dom/WildcardType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 486
    :cond_0
    check-cast p2, Lorg/eclipse/jdt/core/dom/WildcardType;

    .line 487
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 488
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WildcardType;->isUpperBound()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/WildcardType;->isUpperBound()Z

    move-result v2

    if-ne v0, v2, :cond_2

    .line 490
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/WildcardType;->getBound()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/WildcardType;->getBound()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final safeSubtreeListMatch(Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->subtreeMatch(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2
.end method

.method public final safeSubtreeMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->subtreeMatch(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
